# infrastructure
 docker run -v ~/Shiva/terraform/temp/:/container/temp/ -it b5af6904080a /bin/bash
 root@dfe224369fbe:/app# export GOOGLE_APPLICATION_CREDENTIALS=/container/temp/virtual-lab-1-xxxx.json 
 root@dfe224369fbe:/app# ./create_infra.py 
