#!/bin/bash

cd /build_dir

uname -a
just compose-image $image
echo DONE!