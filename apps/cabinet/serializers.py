from rest_framework import serializers
from idcs.serializers import IdcSerializer
from .models import Cabinet
from .models import Idc

class CabinetSerializer(serializers.Serializer):
    idc     = serializers.PrimaryKeyRelatedField(many=False, queryset=Idc.objects.all())
    name    = serializers.CharField(required=True)


    def to_representation(self, instance):
        idc_obj = instance.idc
        ret = super(CabinetSerializer, self).to_representation(instance)
        ret["idc"] = {
                "id": idc_obj.id,
                "name": idc_obj.name
            }
        return ret

    def to_internal_value(self, data):
        """
        反序列化第一步：拿到提交过来的原始数据: QueryDict => request.GET, request.POST

        :param data:
        :return:
        """
        return super(CabinetSerializer,self).to_internal_value(data)

    def create(self, validated_data):
        print(validated_data)
        return Cabinet.objects.create(**validated_data)
