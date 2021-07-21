import datetime
import json
import csv
from django import template
from django.shortcuts import render, HttpResponse

from textparse.models import Data
from textparse.models import Messages, Records
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
        print('saving data')
        print(request.POST.get('content'))
        print(request.POST.get('subject'))
        # if form.is_valid():
        #     print('saving data1')
        topic = request.POST.get('subject')
        body = request.POST.get('content')
        keys, final = parse(body)
        keys = json.dumps(keys)
        data = Data.objects.create(topic=topic, body=body, parsed=final, keys=keys)
        final = {"top": "Topic", "topic": topic, "bod": "Body", "final": final}
        return render(request, 'textparse/index.html',
                      {'topics': topics, 'body': body, 'parsed': parsed, 'b': body, 'oc': 'red', 'color': 'green',
                       'keys': keys, 'final': final, 'objects': objects})

    # else:
    #     form = InputText()
    else:
        return render(request, 'textparse/index.html',
                      {
                          'keys': keys_all,
                          'topics': topics,
                          'body': body,
                          'parsed': parsed,
                          'oc': 'green', 'color': 'red',
                          'objects': objects})


def detail(request):
    data = Messages.objects.filter(id=request.GET.get('id')).first()
    data_keys = Messages.objects.values('id')

    if data is not None:
        mail_body = data.message
        record_keys = [obj.get('id') for obj in data_keys]
        result = Data.objects.all()
        topics = [obj.topic for obj in result]
        parsed = [obj.parsed for obj in result]
        keys_all = [obj.keys for obj in result]
        body = [obj.body for obj in result]
        print(keys_all)
        return render(request, 'textparse/detail.html',
                      {'detail': data,
                       'keys_all': keys_all,
                       'topics': topics,
                       'body': body,
                       'mail_body': mail_body,
                       'parsed': parsed,
                       'oc': 'green', 'color': 'red',
                       'id': request.GET.get('id'),
                       'record_keys': record_keys
                       })


def save_record(request):
    duration = datetime.timedelta(seconds=int(request.GET.get('time')))
    now = datetime.datetime.now()
    end_time = now
    start_time = end_time - duration
    record = Records.objects.create(startTime=start_time, endTime=end_time)
    return HttpResponse(200)


def records_list(request):
    data = Records.objects.all()
    return render(request, 'textparse/records.html', {'data': data})


def export_users_csv(request):
    response = HttpResponse(content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename="records.csv"'

    writer = csv.writer(response)
    writer.writerow(['Start Time', 'End Time', 'Created At', 'Updated'])

    users = Records.objects.all().values_list('startTime', 'endTime', 'createdAt', 'updatedAt')
    for user in users:
        writer.writerow(user)

    return response
