#!/bin/bash

dir=$(dirname $1)
export PATH=$PATH:$dir

echo $PATH
