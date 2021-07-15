from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('detail/', views.detail, name='detail'),
    path('save_data/', views.save_data, name='save_data')
]
