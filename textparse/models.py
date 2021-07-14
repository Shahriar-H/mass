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
    startTime = models.DateTimeField()
    endTime = models.DateTimeField()
    createdAt = models.DateTimeField()
    updatedAt = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'Messages'

