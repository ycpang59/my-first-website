from app import app


def test_index():
    client = app.test_client()
    resp = client.get('/')
    assert resp.status_code == 200
    assert resp.is_json
    data = resp.get_json()
    assert data.get('message') == 'Hello from Flask in .venv (Python 3.13)!'
