# Clone the repository
git clone https://github.com/hopingboyz/ubuntu22.04
cd ubuntu22.04

# Build the Docker image
docker build -t ubuntu-vm .

# Run the container if you have KVM access

docker run --rm -it \
 --device /dev/kvm:/dev/kvm \
 -p 6081:6080 -p 2025:2222 \
 -e VM_RAM=4096 \
 -e VM_CPU=2 \
 -e VM_DISK_SIZE=50G \
 -v /etc/vmdata:/data \
 hopingboyz/ubuntu22.04

# Run the container if you dont have KVM access

docker run --rm -it \
 -p 6081:6080 -p 2025:2222 \
 -e VM_RAM=4096 \
 -e VM_CPU=2 \
 -e VM_DISK_SIZE=50G \
 -v /etc/vmdata:/data \
 hopingboyz/ubuntu22.04
