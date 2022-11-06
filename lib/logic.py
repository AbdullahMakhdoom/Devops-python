import wikipedia
from textblob import TextBlob


def wiki(name="Cristiano Ronaldo", length=1):
    """This is a wikipedia fetcher"""

    return wikipedia.summary(name, length)


def search_wiki(name: str):
    """This searches for top matching results"""
    results = wikipedia.search(name)
    return results


def wiki_phrase(name: str):
    """Retrieve phrases from Wikipedia"""

    page = wiki(name)
    blob = TextBlob(page)
    return blob.noun_phrases
