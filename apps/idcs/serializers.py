from rest_framework import serializers

class IdcSerializer(serializers.Serializer):
    """
    Idc 序列化类
    """
    id      = serializers.IntegerField()
    name    = serializers.CharField()
    address = serializers.CharField()
    phone   = serializers.CharField()
    email   = serializers.EmailField()
    letter  = serializers.CharField()
