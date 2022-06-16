all: 
dependencies:

	pip install -r requirements.txt
build:
	mvn install -f app/pom.xml
build_control:
	docker build -f Dockerfile.control -t steventongsf/control:latest .
run_control:
	docker compose up control -d --build
	docker ps
