Build the file:

podman build --tag fedora:terraform -f ./Dockerfile.terrafrom

podman run --name terraform fedora:terraform 

podman run --name=terraform -d -it localhost/fedora:terraform bash

MOUNT a local directory to one in the pod

podman run --name=terraform -v ./TERRAFORM012:/code -d -it localhost/fedora:terraform

podman exec -it terraform bash

I use Podman, do your thing
