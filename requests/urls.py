from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.requestslisting, name="requestslisting"),
    url(r'^all-requests$', views.all_requests, name="all_requests"),
    url(r'^add$', views.add, name="add"),
    url(r'^requests-details/(?P<requestsId>\w{0,50})/$', views.requests_details, name="requests_details"),
    url(r'^update/(?P<requestsId>\w{0,50})/$', views.update, name="update"),
    url(r'^delete/(?P<requestsId>\w{0,50})/$', views.delete, name="delete"),
]
