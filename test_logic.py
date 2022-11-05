from lib.logic import wiki


def test_wiki():
    assert "footballer" in wiki()
