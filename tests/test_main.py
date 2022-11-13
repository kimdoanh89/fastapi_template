from fastapi.testclient import TestClient

from fastapi_template.main import app

client = TestClient(app)


def test_root():
    response = client.get("/")
    assert response.status_code == 200, response.text


def test_hello():
    response = client.get("/hello/doanh")
    assert response.status_code == 200, response.text
