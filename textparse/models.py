import datetime

from django.db import models


# Create your models here.
class Data(models.Model):
    topic = models.CharField(max_length=90)
    body = models.CharField(max_length=900)
    parsed = models.CharField(max_length=90)
    keys = models.CharField(max_length=1000)


class Messages(models.Model):
    id = models.AutoField(db_column='_id', primary_key=True)
    to = models.CharField(max_length=90)
    message = models.CharField(max_length=900)
    subject = models.CharField(max_length=90)
    startTime = models.DateTimeField(default=datetime.datetime.now())
    endTime = models.DateTimeField(default=datetime.datetime.now())
    createdAt = models.DateTimeField(default=datetime.datetime.now())
    updatedAt = models.DateTimeField(default=datetime.datetime.now())

    class Meta:
        managed = False
        db_table = 'Messages'


class Records(models.Model):
    id = models.AutoField(db_column='_id', primary_key=True)
    startTime = models.DateTimeField()
    endTime = models.DateTimeField()
    createdAt = models.DateTimeField(default=datetime.datetime.now())
    updatedAt = models.DateTimeField(default=datetime.datetime.now())

    class Meta:
        managed = False
        db_table = 'Records'