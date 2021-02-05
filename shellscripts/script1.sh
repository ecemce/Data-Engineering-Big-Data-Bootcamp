#!/bin/bash
echo 111213212223313233 | sed 's/2/\n/g'
echo 111213212223313233 | sed 's/2/\n/g' | grep 3
echo 111213212223313233 | sed 's/2/\n/g' | grep -v 3
