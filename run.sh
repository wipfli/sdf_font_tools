#!/bin/bash

cargo build
target/debug/build_pbf_glyphs font_dir out_dir
rm -rf out_dir/Open\ Sans\ Semibold
mv out_dir/roboto "out_dir/Open Sans Semibold"
npx serve --debug . -p 3001
