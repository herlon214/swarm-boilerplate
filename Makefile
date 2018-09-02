deploy:
		docker stack deploy ${STACK} --compose-file ${FILE} --with-registry-auth

# Load Balancer with Service Discovery
lbsd:
	make deploy STACK=lbsd FILE=general/lbsd.yml

# Testing service
test-service:
	make deploy STACK=testing FILE=testing/whoami.yml