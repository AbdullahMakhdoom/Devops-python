install: 
	# install necessary pacakges 
	pip install --upgrade pip &&\
		pip install -r requirements.txt
post-install:
	python -m textblob.download_corpora
format:
	# format python code
	black *.py lib/*.py
lint:
	# lint python code
	pylint --disable=R,C *.py lib/*.py
test:
	# run tests
	python -m pytest -vv --cov=lib test_logic.py
build: 
	# build app
deploy:
	# deploy app
	
all: install post-install format lint test deploy