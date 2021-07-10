import spacy
import re

nlp = spacy.load("en_core_web_sm")

def check_phone(body):
    values = dict()
    phone = r'.*\d+'
    rule = re.compile(phone)
    ssn = r'\d{3}-\d{2}-\d{4}'
    rule1 = re.compile(ssn)
    for obj in body.split():
        try:
            search = rule.search(obj).span()
            pno = obj
            if pno[-1] in "?!.,:;":
                pno = pno[:-1]
            if rule.search(pno):
                values[pno] = 'SSN'
            obj = "".join([i for i in obj if i.isnumeric()])
            if obj[0] == '+':
                if len(obj) == 13:
                    values[pno[:14]] = 'COMMUNICATION'
            if len(obj) == 10:
                values[pno] = 'COMMUNICATION'
        except:
            continue
    return values

def check_email(body):
    values = dict()
    email = r'^[a-z0-9]+[\._]?[a-z0-9]+[@]\w+[.]\w{2,3}$'
    rule = re.compile(email)
    for obj in body.split():
        try:
            if obj[-1] in "?!.,:;":
                obj = obj[:-1]
            search = rule.search(obj).span()
            span = [body.find(obj), body.find(obj)+len(obj)]
            values[obj] = 'COMMUNICATION'
        except:
            continue
    return values

def parse(body):
    body = body.strip()
    keys = dict()
    keys.update(check_email(body))
    keys.update(check_phone(body))
    doc = nlp(body)
    for ent in doc.ents:
        text = ent.text
        label = ent.label_
        if label=="ORG":
            label = "ORGANIZATION"
        if label=="MONEY":
            label = "FINANCIAL"
        if label=="CARDINAL":
            continue
        if "Dear" in ent.text:
            text = ent.text.replace("Dear ", "")
        keys[text] = label

   # for key in keys:
    #    body = body.replace(key, keys[key])
    return keys, body
