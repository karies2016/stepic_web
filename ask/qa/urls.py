from django.conf.urls import url, patterns, include
from . import views

urlpatterns = [
    url(r'^/login/', views.test),
    url(r'^signup/', views.test),
    url(r'^question/(?P<article_id>\d+)/', views.test),
    url(r'^ask/', views.test),
    url(r'^popular/', views.test),
    url(r'^new/', views.test),
    url(r'^$', views.test),
]