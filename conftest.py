"""Fixtures for testing."""

import pytest

from app import app


@pytest.fixture
def test_api():
    """Returns a copy of the API."""
    return app.test_client()
