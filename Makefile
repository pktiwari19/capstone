setup:
	python3 -m venv ~/.devops
	source ~/.devops/bin/activate

install:
	pip install --upgrade --no-cache-dir pip &&\
	pip install -r requirements.txt
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64
	chmod +x ./hadolint

test:
	python -m pytest test_app.py

lint:
	./hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint test