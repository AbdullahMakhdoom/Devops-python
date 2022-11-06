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
	# build docker 
	docker build -t fastapi .
run:
	# run docker
	docker run -p 8080:8080 fastapi
deploy:
	# deploy docker container to AWS ECR
	# aws ecr get-login-password --region us-west-1 | docker login --username AWS --password-stdin XXXXXXXXXXXX.dkr.ecr.us-west-1.amazonaws.com
	docker tag fastapi:latest 055338534628.dkr.ecr.us-west-1.amazonaws.com/fastapi-wiki:latest
	docker push 055338534628.dkr.ecr.us-west-1.amazonaws.com/fastapi-wiki:latest

	
all: install lint test build run deploy