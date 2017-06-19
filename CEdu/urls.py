from django.conf.urls import include, url
from django.contrib import admin
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from CEdu import views
urlpatterns=[
	url(r'^$',views.index,name='index'),
	url(r'^about$',views.about,name='about'),
	url(r'^contact$',views.contact,name='contact'),
]