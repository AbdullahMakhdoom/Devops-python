from fastapi import FastAPI
import uvicorn
from lib.logic import search_wiki, wiki_phrase
from lib.logic import wiki as wiki_fetch

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Wikipedia API, call /search or /wiki"}


@app.get("/search/{value}")
async def search(value: str):
    """Page to search in wikipedia"""

    result = search_wiki(value)
    return {"results": result}


@app.get("/wiki/{name}")
async def wiki(name: str):
    """Retrive wikipedia page"""

    result = wiki_fetch(name)
    return {"results": result}


@app.get("/phrase/{name}")
async def phrase(name: str):
    """Retrive phrases from wikipedia page"""

    result = wiki_phrase(name)
    return {"results": result}


if __name__ == "__main__":
    uvicorn.run(app, port=8080, host="0.0.0.0")
