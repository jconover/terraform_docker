Build the file:

podman build --tag fedora:terraform -f ./Dockerfile.terrafrom

podman run --name terraform fedora:terraform 

podman run --name=terraform -d -it localhost/fedora:terraform bash

MOUNT a local directory to one in the pod

podman run --name=terraform -v ./TERRAFORM012:/code -d -it localhost/fedora:terraform

podman exec -it terraform bash

I use Podman, do your thing

podman build --tag ubuntu:terraform -f ./Dockerfile_Ubuntu.terrafrom

For my macbook I need to use an ARM version:

podman build --tag ubuntu:terraform -f ./Dockerfile_Ubuntu_ARM.terrafrom

(terraform_code = a director I am currently working out of. Change it for your needs.)

podman run --name=terraform -v ./terraform_code:/code -d -it localhost/ubuntu:terraform

podman exec -it terraform bash
