#-*- coding:utf-8 -*-
from django.contrib import admin
from member.models import Person, Group, Membership

class PersonAdmin(admin.ModelAdmin):
    pass
class GroupAdmin(admin.ModelAdmin):
    pass
class MembershipAdmin(admin.ModelAdmin):
    pass
admin.site.register(Person,PersonAdmin)
admin.site.register(Group,GroupAdmin)
admin.site.register(Membership,MembershipAdmin)