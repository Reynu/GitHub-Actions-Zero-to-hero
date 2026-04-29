from app import app


def test_home_page_returns_success():
    client = app.test_client()

    response = client.get('/')

    assert response.status_code == 200


def test_health_endpoint_returns_success_message():
    client = app.test_client()

    response = client.get('/health')

    assert response.status_code == 200
    assert response.data == b'Server is up and running'
