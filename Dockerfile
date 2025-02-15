ARG FEDORA_IMAGE_VERSION=rawhide
ARG FEDORA_IMAGE_ARCH=x86_64
ARG IMAGE_TYPE=silverblue
FROM fedora:${FEDORA_IMAGE_VERSION}

# Install the toolbox
RUN dnf -y upgrade && dnf -y install buildah dbus-daemon file flatpak git-core jq just lorax ostree podman python3-pyyaml rpm-ostree selinux-policy-targeted skopeo tar zstd && dnf clean all

# Set the env image to IMAGE_TYPE
ENV image=${IMAGE_TYPE}

COPY build.sh /fixed_build.sh
RUN chmod +x /fixed_build.sh

WORKDIR /build_dir

ENTRYPOINT ["/fixed_build.sh"]
