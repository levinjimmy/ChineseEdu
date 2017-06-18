from django.conf.urls import include, url
from django.contrib import admin
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from CEdu import views
urlpatterns=[
	url(r'^$',views.index,name='index'),
]