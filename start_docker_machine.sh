docker-machine create --driver virtualbox jekyll || docker-machine start jekyll || true
echo Run this command to configure your shell:
echo 'eval $(docker-machine env jekyll)'
