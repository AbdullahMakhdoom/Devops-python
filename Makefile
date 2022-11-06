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
	python -m pytest -vv --cov=lib --cov=main test_*.py
build: 
	# build app
	docker build -t fastapi .
run:
	# run docker
	docker run -p 8080:8080 fastapi
deploy:
	# deploy app
	
all: install lint test build run deploy