import wikipedia


def wiki(name="Cristiano Ronaldo", length=1):
    """This is a wikipedia fetcher"""

    return wikipedia.summary(name, length)

def search_wiki(name : str):
    
    results = wikipedia.search(name)
    return results