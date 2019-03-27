from django.shortcuts import render
from rest_framework import viewsets
from .models import Manufacturer
from .serializers import ManufacturerSerializer

class ManufacturerViewset(viewsets.ReadOnlyModelViewSet):

    """
    retrieve:
        返回指定机柜信息
    list：
        返回机柜列表
    update：
        更新机柜信息
    destroy：
        删除机柜记录
    create：
        创建机柜记录
    partial_update:
        更新部分记录

    """

    queryset = Manufacturer.objects.all()
    serializer_class = ManufacturerSerializer
