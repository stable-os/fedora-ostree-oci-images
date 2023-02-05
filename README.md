# Experimental Ostree Native Container images for rpm-ostree based Fedora desktop variants

## Overview

This repo is a fork of
[pagure.io/workstation-ostree-config](https://pagure.io/workstation-ostree-config)
with CI and minor changes on top to enable us to build experiemental Ostree
Native Container images for rpm-ostree based Fedora desktop variants.

The offcial upstream sources for Fedora Silverblue, Fedora Kinoite and Fedora
Sericea ([Fedora Change](https://fedoraproject.org/wiki/Changes/Fedora_Sway_Spin))
remain at [pagure.io/workstation-ostree-config](https://pagure.io/workstation-ostree-config)
and the official builds are only available from the Fedora ostree repo for now.

See [pagure.io/releng/issue/11047](https://pagure.io/releng/issue/11047) for
the progress to mirror the official builds into container images.

See also the tracking issue for Silverblue:
[github.com/fedora-silverblue/issue-tracker/issues/359](https://github.com/fedora-silverblue/issue-tracker/issues/359).

## Issues and PRs

Please submit PRs at
[pagure.io/workstation-ostree-config](https://pagure.io/workstation-ostree-config)
and file issues in the respective projects issue trackers:

- Fedora Silverblue issue tracker: [github.com/fedora-silverblue/issue-tracker](https://github.com/fedora-silverblue/issue-tracker/issues)
- Fedora Kinoite issue tracker: [pagure.io/fedora-kde/SIG](https://pagure.io/fedora-kde/SIG/issues)
- Fedora Sericea issue tracker: [gitlab.com/fedora/sigs/sway/SIG](https://gitlab.com/fedora/sigs/sway/SIG/-/issues)

## Images built

This project builds the following images:

- Fedora Silverblue:
    - Unofficial build based on the official Silverblue variant
    - Latest Fedora stable, branched releases and Rawhide
    - [quay.io/repository/fedora-ostree-desktops/silverblue](https://quay.io/repository/fedora-ostree-desktops/silverblue?tab=tags)
- Fedora Kinoite:
    - Unofficial build based on the official Kinoite variant
    - Latest Fedora stable, branched releases and Rawhide
    - [quay.io/repository/fedora-ostree-desktops/kinoite](https://quay.io/repository/fedora-ostree-desktops/kinoite?tab=tags)
- Fedora Sericea:
    - Unofficial build based on the official Sericea variant
    - Branched releases and Rawhide
    - [quay.io/repository/fedora-ostree-desktops/sericea](https://quay.io/repository/fedora-ostree-desktops/sericea?tab=tags)
- Fedora Kinoite Beta:
    - Unofficial Kinoite variant with KDE Plasma Beta packages from [@kdesig/kde-beta](https://copr.fedorainfracloud.org/coprs/g/kdesig/kde-beta/)
    - See [Introducing Kinoite Nightly (and Kinoite Beta)](https://tim.siosm.fr/blog/2023/01/20/introducing-kinoite-nightly-beta/)
    - Latest Fedora stable or branched release only
    - [quay.io/repository/fedora-ostree-desktops/kinoite-beta](https://quay.io/repository/fedora-ostree-desktops/kinoite-beta?tab=tags)
- Fedora Kinoite Nightly:
    - Unofficial Kinoite variant with nightly KDE packages from [@kdesig/kde-nightly](https://copr.fedorainfracloud.org/coprs/g/kdesig/kde-nightly/packages/)
    - See [Introducing Kinoite Nightly (and Kinoite Beta)](https://tim.siosm.fr/blog/2023/01/20/introducing-kinoite-nightly-beta/)
    - Latest Fedora stable or branched release only
    - [quay.io/repository/fedora-ostree-desktops/kinoite-nightly](https://quay.io/repository/fedora-ostree-desktops/kinoite-nightly?tab=tags)
- Fedora Vauxite:
    - Unofficial XFCE variant
    - Latest Fedora stable, branched releases and Rawhide
    - [quay.io/repository/fedora-ostree-desktops/vauxite](https://quay.io/repository/fedora-ostree-desktops/vauxite?tab=tags)
- Fedora Base:
    - Minimal image with no desktop environment
    - Latest Fedora stable, branched releases and Rawhide
    - [quay.io/repository/fedora-ostree-desktops/base](https://quay.io/repository/fedora-ostree-desktops/base?tab=tags)

## Can I add an image here? How do I add my image?

In this repo, we will only build images from official Fedora RPM packages or
from COPR repos maintained by official Fedora SIGs.

File an issue in this repo if you want another desktop variant to be built.

In all other cases, you will have to host your own CI and images. Take a look
at [github.com/ublue-os/base](https://github.com/ublue-os/base) for examples.
