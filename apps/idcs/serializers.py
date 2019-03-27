from rest_framework import serializers
from .models import Idc


class IdcSerializer(serializers.Serializer):
    """
    Idc 序列化类
    """
    id      = serializers.IntegerField(read_only=True)
    name    = serializers.CharField(required=True, max_length=32,
                                    label="机房名称",
                                    help_text="机房名称",
                                    error_messages={"blank": "机房名不能为空",
                                                    "required": "这个字段是必填的"})
    address = serializers.CharField(required=True, max_length=256, label="机房地址", help_text="IDC详细地址")
    phone   = serializers.CharField(required=True, max_length=15, label="联系电话", help_text="联系电话")
    email   = serializers.EmailField(required=True, label="联系email", help_text="邮件地址")
    letter  = serializers.CharField(required=True, max_length=5, label="字母简称", help_text="机房字母简称")

    def create(self, validated_data):
        return Idc.objects.create(**validated_data)

    def update(self, instance, validated_data):
        instance.name = validated_data.get("name", instance.name)
        instance.address = validated_data.get("address", instance.address)
        instance.phone = validated_data.get("phone", instance.phone)
        instance.email = validated_data.get("email", instance.email)
        instance.save()
        return instance