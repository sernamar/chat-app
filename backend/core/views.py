import random

from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response


@api_view(["GET"])
@permission_classes([IsAuthenticated])
def hello_world(request):
    return Response({"message": "Hello, World!"})


@api_view(["GET"])
def random_number(request):
    number = random.randint(0, 100)
    return Response({"number": number})
