ARG FEDORA_IMAGE_VERSION=rawhide
ARG FEDORA_IMAGE_ARCH=x86_64
ARG IMAGE_TYPE=silverblue
FROM fedora:${FEDORA_IMAGE_VERSION}

# Install the toolbox
RUN dnf -y upgrade && dnf -y install buildah dbus-daemon file flatpak git-core jq just lorax ostree podman python3-pyyaml rpm-ostree selinux-policy-targeted skopeo tar zstd && dnf clean all

# Set the env image to IMAGE_TYPE
ENV image=${IMAGE_TYPE}

COPY build.sh /build_dir/fixed_build.sh
RUN chmod +x /build_dir/fixed_build.sh

ENTRYPOINT ["/build_dir/fixed_build.sh"]
