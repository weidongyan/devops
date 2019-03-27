from django.db import models

# Create your models here.
class Idc(models.Model):
    name    = models.CharField("机房名称",max_length=32, help_text="机房名称")
    address = models.CharField("机房地址",max_length=256, help_text="IDC详细地址")
    phone   = models.CharField("联系人",max_length=15, help_text="联系电话")
    email   = models.EmailField("邮件地址",default="null", help_text="邮件地址")
    letter  = models.CharField("IDC简称",max_length=5, help_text="机房字母简称")

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'resource_idc'
