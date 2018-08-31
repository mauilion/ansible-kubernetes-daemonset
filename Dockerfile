FROM williamyeh/ansible:alpine3-onbuild
ADD requirements.yaml /srv/ansible/requirements.yaml
ENV REQUIREMENTS /srv/ansible/requirements.yaml
ENV PLAYBOOK /srv/ansible/requirements.yaml
RUN apk add git && ansible-galaxy install -r ${REQUIREMENTS}
CMD ["ansible-playbook", "--version"]
