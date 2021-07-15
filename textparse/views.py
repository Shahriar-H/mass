import json

from django import template
from django.shortcuts import render

from textparse.models import Data
from textparse.models import Messages
from .forms import InputText
from .parse import parse


# Create your views here.
def index(request):
    objects = Messages.objects.all()
    data = Data.objects.all()
    topics = [obj.topic for obj in data]
    body = [obj.body for obj in data]
    parsed = [obj.parsed for obj in data]
    keys_all = [obj.keys for obj in data]

    print(keys_all)
    if request.method == "POST":
        form = InputText(request.POST)
        if form.is_valid():
            topic = form.cleaned_data['topic']
            body = form.cleaned_data['body']
            keys, final = parse(body)
            keys = json.dumps(keys)
            data = Data.objects.create(topic=topic, body=body, parsed=final, keys=keys)
            final = {"top": "Topic", "topic": topic, "bod": "Body", "final": final}
            return render(request, 'textparse/index1.html',
                          {'topics': topics, 'body': body, 'parsed': parsed, 'b': body, 'oc': 'red', 'color': 'green',
                           'keys': keys, 'final': final})
    else:
        form = InputText()

    return render(request, 'textparse/index.html',
                  {
                      'keys': keys_all,
                      'topics': topics,
                      'body': body,
                      'parsed': parsed,
                      'oc': 'green', 'color': 'red',
                      'form': form,
                      'objects': objects})


def detail(request):
    data = Messages.objects.filter(id=request.GET.get('id')).first()
    data_keys = Messages.objects.values('id')
    print(data_keys)
    if data is not None:
        body = data.message
        record_keys = [obj.get('id') for obj in data_keys]
        # result = Data.objects.all()
        # topics = [obj.topic for obj in result]
        # parsed = [obj.parsed for obj in result]
        # keys_all = [obj.keys for obj in result]
        return render(request, 'textparse/detail.html',
                      {'detail': data,
                       # 'keys': keys_all,
                       # 'topics': topics,
                       'body': body,
                       # 'parsed': parsed,
                       # 'oc': 'green', 'color': 'red',
                       'id': request.GET.get('id'),
                       'record_keys': record_keys
                       })


def save_data(request):
    data = request.POST
    record = Data.objects.create(topic=data.get('subject'), body=data.get('content'), parsed=data.get('content'),
                                 keys=data.get('keys'))
    return {'status': 1, 'message': 'Record saved successfully'}


register = template.Library()


@register.filter
def add_str(arg1, arg2):
    """concatenate arg1 & arg2"""
    return str(arg1) + str(arg2)
