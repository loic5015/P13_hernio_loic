from django.test import TestCase
from django.test import Client
from django.urls import reverse
import pytest

def test_index(client):
    r = client.get(reverse('lettings_index'), follow=True)
    assert r.status_code == 200
    assert r.data.decode().find('Lettings') != -1