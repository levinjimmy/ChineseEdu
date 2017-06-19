#coding=utf-8
from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect,JsonResponse
from django.core.urlresolvers import reverse
def index(req):
	return render(req,'index.html')
def contact(req):
	return render(req,'contact.html')
def about(req):
	return render(req,'about.html')
# Create your views here.
