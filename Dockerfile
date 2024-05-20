FROM docker.io/fedora:latest

# update system
RUN dnf update -y

# Add terrafrom
RUN dnf install -y dnf-plugins-core \
    dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo \
    dnf -y install terraform

# Clean up for space
RUN dnf clean all -y