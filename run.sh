#!/bin/bash

cargo build
rm -rf out_dir/roboto
target/debug/build_pbf_glyphs ../roboto out_dir
rm -rf ../indexed-font/roboto
mv out_dir/roboto "../indexed-font/roboto"
