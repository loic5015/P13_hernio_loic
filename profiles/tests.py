from django.test import TestCase
from django.test import Client
from django.urls import reverse
from .models import Profile
from django.contrib.auth.models import User

import pytest


@pytest.mark.django_db
def test_user_model():
    user = User.objects.create(
            username='HeadlinesGazer',
            email='jssssss33@acee9.live',
            first_name='Jamie',
            last_name='Lal',
    )
    expected_value = 'HeadlinesGazer'
    assert str(user) == expected_value
    return user


@pytest.mark.django_db
def test_profile_model():
    user = test_user_model()
    profile = Profile.objects.create(
        user=user,
        favorite_city = 'Sin City'
    )
    expected_value = 'HeadlinesGazer'
    assert str(profile) == expected_value


@pytest.mark.django_db
def test_index(client):
    r = client.get(reverse('profiles_index'), follow=True)
    assert r.status_code == 200
    assert r.content.decode().find('Profiles') != -1

@pytest.mark.django_db
def test_profile(client):
    test_profile_model()
    r = client.get(reverse('profile', kwargs={'username':'HeadlinesGazer'}), follow=True)
    assert r.status_code == 200
    assert r.content.decode().find('HeadlinesGazer') != -1
