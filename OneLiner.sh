#!/bin/bash
dscl . list /Users | grep -v '_' | while read line; do if groups $line | grep -q -w admin; then echo "$line is admin"; else echo "$line is not admin"; fi; done
