#coding=utf-8
from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect,JsonResponse
from django.core.urlresolvers import reverse
def index(req):
	return render(req,'index.html')
# Create your views here.
