install: 
	# install necessary pacakges 
	pip install --upgrade pip && pip install -r requirements.txt
post-install:
	python -m textblob.download_corpora

format:
	# format python code
lint:
	# lint python code
test:
	# run tests
build: 
	# build app
deploy:
	# deploy app
all: install format lint test deploy