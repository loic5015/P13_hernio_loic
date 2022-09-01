from django.test import TestCase
from django.test import Client
from django.urls import reverse
import pytest


def test_index(client):
    r = client.get(reverse('index'))
    assert r.status_code == 200
    assert r.content.decode().find('Holiday Homes') != -1