@Echo off
Pushd "%~dp0"
java -Xmx1024m -jar XSLTProcessor.jar
popd