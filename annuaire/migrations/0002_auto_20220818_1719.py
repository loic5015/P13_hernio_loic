# Generated by Django 3.0 on 2022-08-18 15:19

from django.db import migrations
from oc_lettings_site.models import Address, Letting
from ..models import AdresseNew, LettingNew
from copy import deepcopy


def migrate_data(apps, schema_migration):
    adresses = Address.objects.all()
    for adresse in adresses:
        adresse_new = AdresseNew()
        adresse_new.number = adresse.number
        adresse_new.street = adresse.street
        adresse_new.city = adresse.city
        adresse_new.state = adresse.state
        adresse_new.zip_code = adresse.zip_code
        adresse_new.country_iso_code = adresse.country_iso_code
        adresse_new.save()
    lettings = Letting.objects.all()
    for letting in lettings:
        letting_new = LettingNew()
        letting_new.title = letting.title
        letting_new.address = AdresseNew.objects.get(id=letting.address.id)
        letting_new.save()

class Migration(migrations.Migration):

    dependencies = [
        ('annuaire', '0001_initial'),
    ]

    operations = [
        migrations.RunPython(migrate_data)
    ]
