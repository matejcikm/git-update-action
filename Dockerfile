FROM alpine

LABEL "com.github.actions.name"="Git Update Action"
LABEL "com.github.actions.description"="Update repository from another remote"
LABEL "com.github.actions.icon"="git-merge"
LABEL "com.github.actions.color"="black"

LABEL "repository"="https://github.com/matejcikm/git-update-action"
LABEL "homepage"="https://github.com/matejcikm/git-update-action"
LABEL "maintainer"="Martin Matejcik <matejcik.martin@gmail.com>"

RUN apk add --no-cache git openssh-client && \
	echo "StrictHostKeyChecking no" >> /etc/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
