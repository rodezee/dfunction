# dfunction

serve functions via docker containers to the browser using openresty(/nginx) 

## Install
Make sure you have installed [docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/install/).  
clone this repository, jump into it:  
``
git clone https://github.com/rodezee/dfunction && cd dfunction
``
  
and run: 
``
./test-dfunction.sh
``
  
## Usage
After installation open your browser [http://localhost:1080](http://localhost:1080) to try the hello world example.
``
curl http://localhost:1080/
``
  
## Steps

### step 1
configure openresty to run docker containers

### step 2
encapsule sessions within containers

### step 3
add examples
