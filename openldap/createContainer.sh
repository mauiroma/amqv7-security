#docker run --name AMQ-openldap --volume $PWD/db:/var/lib/ldap --volume $PWD/config:/etc/ldap/slapd.d  --volume $PWD/initdb:/container/service/slapd/assets/config/bootstrap/ldif/custom -e LDAP_ORGANISATION=rhamq -e LDAP_DOMAIN=rhamq.com -e LDAP_ADMIN_PASSWORD=admin -p 1389:389 -p 1636:636  --detach osixia/openldap:latest --copy-service
docker run --volume $PWD/initdb:/container/service/slapd/assets/config/bootstrap/ldif/custom -e LDAP_ORGANISATION=rhamq -e LDAP_DOMAIN=rhamq.com -e LDAP_ADMIN_PASSWORD=admin -p 1389:389 -p 1636:636  --detach osixia/openldap:latest --copy-service