from django.urls import path, include

from core import views


urlpatterns = [
    path("", views.hello_world, name="hello_world"),
    path("number/", views.random_number, name="random_number"),

    path("api-auth/", include("rest_framework.urls", namespace="rest_framework"))
]
