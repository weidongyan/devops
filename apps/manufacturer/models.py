from django.db import models

# Create your models here.

class Manufacturer(models.Model):
    vender_name     = models.CharField("厂商名称", max_length=32, db_index=True, unique=True)
    tel             = models.CharField("联系电话", null=True, max_length=15)
    mail            = models.CharField("联系邮件", null=True, max_length=32)
    remark          = models.CharField("备注", max_length=300, null=True)

    def __str__(self):
        return self.vender_name

    class Meta:
        db_table = "resources_manufacturer"
        ordering = ["id"]


class ProductModel(models.Model):
    model_name      = models.CharField("型号名称", max_length=20)
    vender          = models.ForeignKey(Manufacturer, verbose_name="所属制造商")

    def __str__(self):
        return self.model_name

    class Meta:
        db_table = "resources_productmodel"
        ordering = ["id"]