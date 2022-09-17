import random

from rest_framework.decorators import api_view
from rest_framework.response import Response


@api_view()
def hello_world(request):
    return Response({"message": "Hello, World!"})


@api_view()
def random_number(request):
    number = random.randint(0, 100)
    return Response({"number": number})
