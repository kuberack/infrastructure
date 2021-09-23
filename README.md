# infrastructure
 docker run -v ~/Shiva/terraform/temp/:/container/temp/ -it b5af6904080a /bin/bash
 root@dfe224369fbe:/app# export GOOGLE_APPLICATION_CREDENTIALS=/container/temp/virtual-lab-1-xxxx.json 
 root@dfe224369fbe:/app# ./create_infra.py 

 Need to add delete_infra.py file which will 
   - delete VMs
   - network,
   - delete the firestore db entries
   - delete the kubeadm_extra.yaml file
