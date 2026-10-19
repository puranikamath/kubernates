root@ip-172-31-21-227:~# vi Dockerfile
root@ip-172-31-21-227:~# docker build -t my-image .
[+] Building 4.1s (5/5) FINISHED                                                                                                                                            docker:default
 => [internal] load build definition from Dockerfile                                                                                                                                  0.0s
 => => transferring dockerfile: 55B                                                                                                                                                   0.0s
 => [internal] load metadata for docker.io/library/ubuntu:22.04                                                                                                                       2.1s
 => [internal] load .dockerignore                                                                                                                                                     0.0s
 => => transferring context: 2B                                                                                                                                                       0.0s
 => [1/1] FROM docker.io/library/ubuntu:22.04@sha256:0a9887931b0e38af2e3487ed39e29436b0535c4f3f52e57745baaf79d1898956                                                                 0.6s
 => => resolve docker.io/library/ubuntu:22.04@sha256:0a9887931b0e38af2e3487ed39e29436b0535c4f3f52e57745baaf79d1898956                                                                 0.0s
 => => sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e 29.75MB / 29.75MB                                                                                      0.5s
 => exporting to image                                                                                                                                                                1.7s
 => => exporting layers                                                                                                                                                               0.0s
 => => exporting manifest sha256:1ca190ab574c70c70fde928852c53d0153779c6027b55d515fe3818c82060c64                                                                                     0.0s
 => => exporting config sha256:9a808dc36def4857cdc9a1cdee7c817377df98e655cd8d8a5a03b98fec9990af                                                                                       0.0s
 => => exporting attestation manifest sha256:662e0a8b784d6824d65b8835ae80b252dd407824fd63b499eee51b69d17de5cd                                                                         0.0s
 => => exporting manifest list sha256:50a663d51c63b4f9ac8018adf3c6b072b46693c116391ad49a1d5e44262642c3                                                                                0.0s
 => => naming to docker.io/library/my-image:latest                                                                                                                                    0.0s
 => => unpacking to docker.io/library/my-image:latest                                                                                                                                 1.6s
root@ip-172-31-21-227:~# ll
total 40
drwx------  5 root root 4096 Oct 19 09:36 ./
drwxr-xr-x 19 root root 4096 Oct 19 08:16 ../
-rw-------  1 root root  721 Oct 19 08:37 .bash_history
-rw-r--r--  1 root root 3106 Apr 20 08:46 .bashrc
drwx------  3 root root 4096 Oct 19 09:36 .docker/
-rw-r--r--  1 root root  132 Apr 20 08:46 .profile
drwx------  2 root root 4096 Oct  9 18:04 .ssh/
-rw-------  1 root root  746 Oct 19 09:35 .viminfo
-rw-r--r--  1 root root   18 Oct 19 09:35 Dockerfile
drwx------  3 root root 4096 Oct  9 18:04 snap/
root@ip-172-31-21-227:~# dokcer images
Command 'dokcer' not found, did you mean:
  command 'docker' from deb docker.io (29.1.3-0ubuntu4.1)
  command 'docker' from deb podman-docker (5.7.0+ds2-3build1)
Try: apt install <deb name>
root@ip-172-31-21-227:~# docker images 
                                                                                                                                                                       i Info →   U  In Use
IMAGE                 ID             DISK USAGE   CONTENT SIZE   EXTRA
jenkins/jenkins:lts   a660310e39ad        720MB          246MB    U   
my-image:latest       50a663d51c63        117MB         29.8MB        
root@ip-172-31-21-227:~# pwd
/root
root@ip-172-31-21-227:~# vi Dockerfile 
root@ip-172-31-21-227:~# docker build -t my-image:v1 .
[+] Building 3.2s (6/6) FINISHED                                                                                                                                            docker:default
 => [internal] load build definition from Dockerfile                                                                                                                                  0.0s
 => => transferring dockerfile: 78B                                                                                                                                                   0.0s
 => [internal] load metadata for docker.io/library/ubuntu:22.04                                                                                                                       1.2s
 => [internal] load .dockerignore                                                                                                                                                     0.0s
 => => transferring context: 2B                                                                                                                                                       0.0s
 => [1/2] FROM docker.io/library/ubuntu:22.04@sha256:0a9887931b0e38af2e3487ed39e29436b0535c4f3f52e57745baaf79d1898956                                                                 1.1s
 => => resolve docker.io/library/ubuntu:22.04@sha256:0a9887931b0e38af2e3487ed39e29436b0535c4f3f52e57745baaf79d1898956                                                                 0.0s
 => => extracting sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e                                                                                             1.0s
 => [2/2] WORKDIR /root/my-image                                                                                                                                                      0.6s
 => exporting to image                                                                                                                                                                0.2s
 => => exporting layers                                                                                                                                                               0.1s
 => => exporting manifest sha256:27f820bfd025d4a7e63ae6416c6e825cf2105fc9e69080c5e9ceb29ee92f600f                                                                                     0.0s
 => => exporting config sha256:d3c5dfaaf1a75051ffbbe140e68e5fcb242aa5054d9f73020890ca6d506ec218                                                                                       0.0s
 => => exporting attestation manifest sha256:e07ace947ca18837ee6abcdaa4a80988ec4be8e6f2ec38f30d09b62baaf5fb46                                                                         0.0s
 => => exporting manifest list sha256:8aa1063b7604d03c81205c8b8744914e46a9f46aa285acbd9f9cb488a701e016                                                                                0.0s
 => => naming to docker.io/library/my-image:v1                                                                                                                                        0.0s
 => => unpacking to docker.io/library/my-image:v1                                                                                                                                     0.0s
root@ip-172-31-21-227:~# docker images
                                                                                                                                                                       i Info →   U  In Use
IMAGE                 ID             DISK USAGE   CONTENT SIZE   EXTRA
jenkins/jenkins:lts   a660310e39ad        720MB          246MB    U   
my-image:latest       50a663d51c63        117MB         29.8MB        
my-image:v1           8aa1063b7604        117MB         29.8MB        
root@ip-172-31-21-227:~# docker run -it my-image:latest 
root@bc0d1c31c7ed:/# pwd
/
root@bc0d1c31c7ed:/# exit
exit
root@ip-172-31-21-227:~# docker run -it my-image:v1 
root@b8f97f649c27:~/my-image# pwd
/root/my-image
root@b8f97f649c27:~/my-image# 
