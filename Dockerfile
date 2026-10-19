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
root@b8f97f649c27:~/my-image# exit
exit
root@ip-172-31-21-227:~# vi Dockerfile 
root@ip-172-31-21-227:~# docker build -t my-image:v2
ERROR: docker: 'docker buildx build' requires 1 argument

Usage:  docker buildx build [OPTIONS] PATH | URL | -

Run 'docker buildx build --help' for more information
root@ip-172-31-21-227:~# docker build -t my-image:v2 .
[+] Building 11.7s (7/7) FINISHED                                                                                                                                           docker:default
 => [internal] load build definition from Dockerfile                                                                                                                                  0.0s
 => => transferring dockerfile: 114B                                                                                                                                                  0.0s
 => [internal] load metadata for docker.io/library/ubuntu:22.04                                                                                                                       1.2s
 => [internal] load .dockerignore                                                                                                                                                     0.0s
 => => transferring context: 2B                                                                                                                                                       0.0s
 => [1/4] FROM docker.io/library/ubuntu:22.04@sha256:0a9887931b0e38af2e3487ed39e29436b0535c4f3f52e57745baaf79d1898956                                                                 0.0s
 => => resolve docker.io/library/ubuntu:22.04@sha256:0a9887931b0e38af2e3487ed39e29436b0535c4f3f52e57745baaf79d1898956                                                                 0.0s
 => CACHED [2/4] WORKDIR /root/my-image                                                                                                                                               0.0s
 => [3/4] RUN apt update                                                                                                                                                              7.7s
 => ERROR [4/4] RUN apt install curl                                                                                                                                                  2.6s 
------                                                                                                                                                                                     
 > [4/4] RUN apt install curl:                                                                                                                                                             
0.207                                                                                                                                                                                      
0.207 WARNING: apt does not have a stable CLI interface. Use with caution in scripts.                                                                                                      
0.207                                                                                                                                                                                      
0.248 Reading package lists...                                                                                                                                                             
1.681 Building dependency tree...
2.010 Reading state information...
2.405 The following additional packages will be installed:
2.406   ca-certificates libbrotli1 libcurl4 libldap-2.5-0 libldap-common
2.407   libnghttp2-14 libpsl5 librtmp1 libsasl2-2 libsasl2-modules
2.408   libsasl2-modules-db libssh-4 openssl publicsuffix
2.410 Suggested packages:
2.410   libsasl2-modules-gssapi-mit | libsasl2-modules-gssapi-heimdal
2.410   libsasl2-modules-ldap libsasl2-modules-otp libsasl2-modules-sql
2.510 The following NEW packages will be installed:
2.511   ca-certificates curl libbrotli1 libcurl4 libldap-2.5-0 libldap-common
2.511   libnghttp2-14 libpsl5 librtmp1 libsasl2-2 libsasl2-modules
2.513   libsasl2-modules-db libssh-4 openssl publicsuffix
2.529 0 upgraded, 15 newly installed, 0 to remove and 2 not upgraded.
2.529 Need to get 2984 kB of archives.
2.529 After this operation, 7097 kB of additional disk space will be used.
2.529 Do you want to continue? [Y/n] Abort.
------
Dockerfile:4
--------------------
   2 |     WORKDIR /root/my-image
   3 |     RUN apt update
   4 | >>> RUN apt install curl
   5 |     
--------------------
ERROR: failed to build: failed to solve: process "/bin/sh -c apt install curl" did not complete successfully: exit code: 1
root@ip-172-31-21-227:~# vi Dockerfile 
root@ip-172-31-21-227:~# docker build -t my-image:v2 .
[+] Building 14.2s (8/8) FINISHED                                                                                                                                           docker:default
 => [internal] load build definition from Dockerfile                                                                                                                                  0.0s
 => => transferring dockerfile: 117B                                                                                                                                                  0.0s
 => [internal] load metadata for docker.io/library/ubuntu:22.04                                                                                                                       0.8s
 => [internal] load .dockerignore                                                                                                                                                     0.0s
 => => transferring context: 2B                                                                                                                                                       0.0s
 => [1/4] FROM docker.io/library/ubuntu:22.04@sha256:0a9887931b0e38af2e3487ed39e29436b0535c4f3f52e57745baaf79d1898956                                                                 0.0s
 => => resolve docker.io/library/ubuntu:22.04@sha256:0a9887931b0e38af2e3487ed39e29436b0535c4f3f52e57745baaf79d1898956                                                                 0.0s
 => CACHED [2/4] WORKDIR /root/my-image                                                                                                                                               0.0s
 => CACHED [3/4] RUN apt update                                                                                                                                                       0.0s
 => [4/4] RUN apt install curl -y                                                                                                                                                     8.0s
 => exporting to image                                                                                                                                                                5.3s 
 => => exporting layers                                                                                                                                                               4.3s 
 => => exporting manifest sha256:e1a187c4c04764347717dd1eb28ffa75f4c2da3205cda7d50dd816906d89035a                                                                                     0.0s 
 => => exporting config sha256:7d1887f15222278c0bc35b6ca18cd17b29102ae46bb0149298bb988b50ac31fb                                                                                       0.0s 
 => => exporting attestation manifest sha256:d3c5266e4623f42bd00fb7f59bfb1f7dfa6eb00784b4fc60dc9a39391d08dee0                                                                         0.0s 
 => => exporting manifest list sha256:a50a7d641a0c5f4b2739699c84acfb114feb54f49ef408b35f71272c6f1b2f95                                                                                0.0s 
 => => naming to docker.io/library/my-image:v2                                                                                                                                        0.0s
 => => unpacking to docker.io/library/my-image:v2                                                                                                                                     0.9s
root@ip-172-31-21-227:~# docker images
                                                                                                                                                                       i Info →   U  In Use
IMAGE                 ID             DISK USAGE   CONTENT SIZE   EXTRA
jenkins/jenkins:lts   a660310e39ad        720MB          246MB    U   
my-image:latest       50a663d51c63        117MB         29.8MB    U   
my-image:v1           8aa1063b7604        117MB         29.8MB    U   
my-image:v2           a50a7d641a0c        265MB         87.4MB        
root@ip-172-31-21-227:~# docker run -it my-image:v2
root@31823c030c45:~/my-image# curl --version
curl 7.81.0 (x86_64-pc-linux-gnu) libcurl/7.81.0 OpenSSL/3.0.2 zlib/1.2.11 brotli/1.0.9 zstd/1.4.8 libidn2/2.3.2 libpsl/0.21.0 (+libidn2/2.3.2) libssh/0.9.6/openssl/zlib nghttp2/1.43.0 librtmp/2.3 OpenLDAP/2.5.20
Release-Date: 2022-01-05
Protocols: dict file ftp ftps gopher gophers http https imap imaps ldap ldaps mqtt pop3 pop3s rtmp rtsp scp sftp smb smbs smtp smtps telnet tftp 
Features: alt-svc AsynchDNS brotli GSS-API HSTS HTTP2 HTTPS-proxy IDN IPv6 Kerberos Largefile libz NTLM NTLM_WB PSL SPNEGO SSL TLS-SRP UnixSockets zstd
root@31823c030c45:~/my-image# 


