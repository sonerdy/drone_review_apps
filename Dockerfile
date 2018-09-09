FROM sonerdy/ansible

WORKDIR /

ADD ./entrypoint.sh /entrypoint.sh
ADD ./review_app.yml /review_app.yml

ENTRYPOINT /entrypoint.sh

