FROM osixia/openldap

LABEL maintainer="wshihadeh.devx@gmail.com"

ENV LDAP_ORGANISATION="Al-waleed Test Org" \
    LDAP_DOMAIN="shihadeh.intern"

COPY bootstrap.ldif /container/service/slapd/assets/config/bootstrap/ldif/50-bootstrap.ldif
