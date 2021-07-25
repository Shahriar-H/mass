import datetime

from django.db import models


# Create your models here.
class Data(models.Model):
    id = models.AutoField(primary_key=True)
    topic = models.CharField(max_length=90)  # subject
    body = models.CharField(max_length=900)  # message
    parsed = models.CharField(max_length=90)
    keys = models.CharField(max_length=1000)
    to = models.CharField(max_length=90)
    startTime = models.DateTimeField(default=datetime.datetime.now())
    endTime = models.DateTimeField(default=datetime.datetime.now())
    createdAt = models.DateTimeField(default=datetime.datetime.now())
    updatedAt = models.DateTimeField(default=datetime.datetime.now())

    class Meta:
        managed = True
        db_table = 'textparse_data'


class Records(models.Model):
    id = models.AutoField(db_column='_id', primary_key=True)
    startTime = models.DateTimeField()
    endTime = models.DateTimeField()
    createdAt = models.DateTimeField(default=datetime.datetime.now())
    updatedAt = models.DateTimeField(default=datetime.datetime.now())

    class Meta:
        managed = False
        db_table = 'Records'
