all: build provision build_jenkins run_jenkins
dependencies:

	pip install -r requirements.txt
build:
	mvn install -f app/pom.xml
provision:
	vagrant up	
build_control:
	docker build -f Dockerfile.control -t steventongsf/control:latest .
run_control:
	docker compose up control -d --build
	docker ps
build_jenkins:
	docker build -f Dockerfile.jenkins -t steventongsf/jenkins:latest .
run_jenkins:
	docker compose up jenkins -d
	docker ps
jenkins: build_jenkins run_jenkins
sandbox:
	docker build -f Dockerfile.jenkins -t steventongsf/jenkins:latest .
	docker -D run -it --rm -p "8080:8080" -v e:/gitws/devops-projects/multitier-webstack-local/jenkins_home:/var/lib/jenkins docker.io/steventongsf/jenkins:latest
clean:
	docker compose down
	rm -rf jenkins_home
shell:
	docker exec -it $(docker ps -a -q) bash