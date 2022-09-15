from django.test import TestCase
from django.test import Client
from django.urls import reverse
from .models import Adresse, Letting
import pytest


@pytest.mark.django_db
def test_adresse_model():
    adresse = Adresse.objects.create(
        number=1,
        street = 'rue dupont',
        city = 'Lyon',
        state = 'france',
        zip_code = '69000',
        country_iso_code = 'france',
    )
    expected_value = "1 rue dupont"
    assert str(adresse) == expected_value
    return adresse

@pytest.mark.django_db
def test_Letting_model():
    adresse = test_adresse_model()
    letting = Letting.objects.create(
        title='test 1',
        address = adresse,
    )
    expected_value = "test 2"
    assert str(letting) == expected_value


@pytest.mark.django_db
def test_index(client):
    test_adresse_model()
    test_Letting_model()
    r = client.get(reverse('lettings_index'))
    assert r.status_code == 200
    assert r.content.decode().find('Lettings') != -1

@pytest.mark.django_db
def test_letting(client):
    test_adresse_model()
    test_Letting_model()
    r = client.get(reverse('letting', kwargs={'letting_id':1}), follow=True)
    assert r.status_code == 200
    assert r.content.decode().find('test 1') != -1