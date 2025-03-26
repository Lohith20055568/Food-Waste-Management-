from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.foodlisting, name="foodlisting"),
    url(r'^all-foods$', views.all_foods, name="all_foods"),
    url(r'^add$', views.add, name="add"),
    url(r'^food-details/(?P<foodId>\w{0,50})/$', views.food_details, name="food_details"),
    url(r'^update/(?P<foodId>\w{0,50})/$', views.update, name="update"),
    url(r'^delete/(?P<foodId>\w{0,50})/$', views.delete, name="delete"),
]
