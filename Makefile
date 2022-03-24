all: build provision
dependencies:

	pip install -r requirements.txt
build:
	mvn install -f app/pom.xml
provision:
	vagrant up	
	