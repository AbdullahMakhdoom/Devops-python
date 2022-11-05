import wikipedia


def wiki(name="Cristiano Ronaldo", length=1):
    """This is a wikipedia fetcher"""

    return wikipedia.summary(name, length)
