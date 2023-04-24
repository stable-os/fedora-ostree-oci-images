#!/bin/bash

cd /build_dir

ls

uname -a
just compose-image $image
echo DONE!