from django import forms


class InputText(forms.Form):
    topic = forms.CharField(label='Topic', widget=forms.Textarea(attrs={'cols': 60, 'rows': 1}), max_length=100)
    body = forms.CharField(label='\nBody', widget=forms.Textarea(attrs={'cols': 80, 'rows': 30}), max_length=900)
