from django.db import models

# Create your models here.
class Data(models.Model):
    topic = models.CharField(max_length = 90)
    body = models.CharField(max_length = 900)
    parsed = models.CharField(max_length = 90)
    keys = models.CharField(max_length = 1000)
