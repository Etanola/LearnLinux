FROM ubuntu:22.04
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN apt update && apt upgrade
RUN apt install -y binutils build-essential golang sysstat python3-matplotlib python3-pil fonts-takao fio qemu-kvm virt-manager libvirt-clients virtinst jq docker.io containerd libvirt-daemon-system
RUN adduser etano
RUN adduser etano libvirt
RUN adduser etano libvirt-qemu
RUN adduser etano kvm
WORKDIR /home
User etano
