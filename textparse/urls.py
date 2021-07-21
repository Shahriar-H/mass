from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('detail/', views.detail, name='detail'),
    path('save_record/', views.save_record, name='save_record'),
    path('records/', views.records_list, name='records')
]
