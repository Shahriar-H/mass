from django.shortcuts import render
from django.http import HttpResponse
from .forms import InputText
from .parse import parse
import json
from textparse.models import Data

# Create your views here.
def index(request):
    objects = Data.objects.all()
    topics = [obj.topic for obj in objects]
    body = [obj.body for obj in objects]
    parsed = [obj.parsed for obj in objects]
    keys_all = [obj.keys for obj in objects]
    if request.method == "POST":
        form = InputText(request.POST)
        if form.is_valid():
            topic = form.cleaned_data['topic']
            body = form.cleaned_data['body']
            keys, final = parse(body)
            keys = json.dumps(keys)
            data = Data.objects.create(topic = topic, body = body, parsed = final, keys = keys)
            final = {"top": "Topic", "topic": topic, "bod": "Body", "final": final}
            return render(request, 'textparse/index1.html', {'topics': topics, 'body': body, 'parsed': parsed, 'b':body,'oc':'red','color': 'green','keys': keys, 'final': final})
    else:
        form = InputText()
        
    return render(request, 'textparse/index.html', {'keys': keys_all,'topics': topics, 'body': body, 'parsed': parsed, 'oc':'green','color': 'red', 'form': form})
