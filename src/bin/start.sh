#!/bin/bash
cd "$(dirname "$0")" || exit

java -Xmx1024m -jar XSLTProcessor.jar
