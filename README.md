# jenkins-DevopsProject >> using it u can run Jenkin/ansible+centos+mysql+php+gitlab containers 

pre-installation :
+git
+docker +docker-auto-completion
+docker-compose +docker-compose-auto-completion
>create a folder struture inside / as /data/jenknins/{clone this repository contents .}

>start  dockcer service 
>dokcer-compose build
>dokcer-commpose up -d
>{will have issue with jenkins container running]

***

"touch: cannot touch 
'/var/jenkins_home/copy_reference_file.log': Permission denied
Can not write to 
/var/jenkins_home/copy_reference_file.log. Wrong volume permissions?"     


"Apply 1000 permissions to your jenkins-data folder, and then restart the container.

sudo chown 1000:1000 -R ~/jenkins-data 


* Inside of the Jenkins container,
 there's a user named ""jenkins"" 
 which has a Linux uid of 1000.

* You are mounting a docker volume 
to /var/jenkins_home which is the 
home directory of that user. 
If the directory doesn't have 1000 permissions,
 then the user won't be able to write/delete files, 
 which causes the container to exit."           

***
enable the firewall port for jenkins+gitlab+phpwebapp
firewall-cmd --permanent --zone=public --add-port=8080/tcp
firewall-cmd --permanent --zone=public --add-port=8081/tcp
firewall-cmd --permanent --zone=public --add-port=80/tcp






