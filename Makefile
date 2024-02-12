build:
	docker run --rm --privileged -v /dev:/dev -v ${PWD}:/build packer-builder-arm build boards/orange-pi-zero-3/ubuntu_server_20.04_arm64.json

flash:
	sudo dd if=orangepi.img of=/dev/sdb bs=1M status=progress
