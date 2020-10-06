%This is the change file for the original Docker's Documentation file.
%This is part of Japanese translation version for Docker's Documantation.

@x
---
description: Log into or run a command on a machine using SSH.
keywords: machine, ssh, subcommand
title: docker-machine ssh
hide_from_sitemap: true
---
@y
---
description: SSH を使ってマシンにログインしたりコマンドを実行したりします。
keywords: machine, ssh, subcommand
title: docker-machine ssh
hide_from_sitemap: true
---
@z

@x
Log into or run a command on a machine using SSH.
@y
{% comment %}
Log into or run a command on a machine using SSH.
{% endcomment %}
SSH を使ってマシンにログインしたりコマンドを実行したりします。
@z

@x
To login, just run `docker-machine ssh machinename`:
@y
{% comment %}
To login, just run `docker-machine ssh machinename`:
{% endcomment %}
ログインするには単に `docker-machine ssh マシン名` を実行します。
@z

@x
```bash
$ docker-machine ssh dev
@y
```bash
$ docker-machine ssh dev
@z

@x
                        ##        .
                  ## ## ##       ==
               ## ## ## ##      ===
           /""""""""""""""""\___/ ===
      ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~
           \______ o          __/
             \    \        __/
              \____\______/
 _                 _   ____     _            _
| |__   ___   ___ | |_|___ \ __| | ___   ___| | _____ _ __
| '_ \ / _ \ / _ \| __| __) / _` |/ _ \ / __| |/ / _ \ '__|
| |_) | (_) | (_) | |_ / __/ (_| | (_) | (__|   <  __/ |
|_.__/ \___/ \___/ \__|_____\__,_|\___/ \___|_|\_\___|_|
Boot2Docker version 1.4.0, build master : 69cf398 - Fri Dec 12 01:39:42 UTC 2014
docker@boot2docker:~$ ls /
Users/   dev/     home/    lib/     mnt/     proc/    run/     sys/     usr/
bin/     etc/     init     linuxrc  opt/     root/    sbin/    tmp      var/
```
@y
                        ##        .
                  ## ## ##       ==
               ## ## ## ##      ===
           /""""""""""""""""\___/ ===
      ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~
           \______ o          __/
             \    \        __/
              \____\______/
 _                 _   ____     _            _
| |__   ___   ___ | |_|___ \ __| | ___   ___| | _____ _ __
| '_ \ / _ \ / _ \| __| __) / _` |/ _ \ / __| |/ / _ \ '__|
| |_) | (_) | (_) | |_ / __/ (_| | (_) | (__|   <  __/ |
|_.__/ \___/ \___/ \__|_____\__,_|\___/ \___|_|\_\___|_|
Boot2Docker version 1.4.0, build master : 69cf398 - Fri Dec 12 01:39:42 UTC 2014
docker@boot2docker:~$ ls /
Users/   dev/     home/    lib/     mnt/     proc/    run/     sys/     usr/
bin/     etc/     init     linuxrc  opt/     root/    sbin/    tmp      var/
```
@z

@x
You can also specify commands to run remotely by appending them directly to the
`docker-machine ssh` command, much like the regular `ssh` program works:
@y
{% comment %}
You can also specify commands to run remotely by appending them directly to the
`docker-machine ssh` command, much like the regular `ssh` program works:
{% endcomment %}
コマンドを指定してリモートから実行することが可能であり、その場合は `docker-machine ssh` コマンドに直接、コマンドをつけ加えて実行します。
通常の `ssh` プログラムが、そのようにして動作する様子と同じです。
@z

@x
```bash
$ docker-machine ssh dev free
@y
```bash
$ docker-machine ssh dev free
@z

@x
total         used         free       shared      buffers
Mem:       1023556       183136       840420            0        30920
-/+ buffers:             152216       871340
Swap:      1212036            0      1212036
```
@y
total         used         free       shared      buffers
Mem:       1023556       183136       840420            0        30920
-/+ buffers:             152216       871340
Swap:      1212036            0      1212036
```
@z

@x
Commands with flags work as well:
@y
{% comment %}
Commands with flags work as well:
{% endcomment %}
同様に、フラグをつけたコマンド実行も動作します。
@z

@x
```bash
$ docker-machine ssh dev df -h
@y
```bash
$ docker-machine ssh dev df -h
@z

@x
Filesystem                Size      Used Available Use% Mounted on
rootfs                  899.6M     85.9M    813.7M  10% /
tmpfs                   899.6M     85.9M    813.7M  10% /
tmpfs                   499.8M         0    499.8M   0% /dev/shm
/dev/sda1                18.2G     58.2M     17.2G   0% /mnt/sda1
cgroup                  499.8M         0    499.8M   0% /sys/fs/cgroup
/dev/sda1                18.2G     58.2M     17.2G   0%
/mnt/sda1/var/lib/docker/aufs
```
@y
Filesystem                Size      Used Available Use% Mounted on
rootfs                  899.6M     85.9M    813.7M  10% /
tmpfs                   899.6M     85.9M    813.7M  10% /
tmpfs                   499.8M         0    499.8M   0% /dev/shm
/dev/sda1                18.2G     58.2M     17.2G   0% /mnt/sda1
cgroup                  499.8M         0    499.8M   0% /sys/fs/cgroup
/dev/sda1                18.2G     58.2M     17.2G   0%
/mnt/sda1/var/lib/docker/aufs
```
@z

@x
If you are using the "external" SSH type as detailed in the next section, you
can include additional arguments to pass through to the `ssh` binary in the
generated command (unless they conflict with any of the default arguments for
the command generated by Docker Machine).  For instance, the following command
forwards port 8080 from the `default` machine to `localhost` on your host
computer:
@y
{% comment %}
If you are using the "external" SSH type as detailed in the next section, you
can include additional arguments to pass through to the `ssh` binary in the
generated command (unless they conflict with any of the default arguments for
the command generated by Docker Machine).  For instance, the following command
forwards port 8080 from the `default` machine to `localhost` on your host
computer:
{% endcomment %}
If you are using the "external" SSH type as detailed in the next section, you
can include additional arguments to pass through to the `ssh` binary in the
generated command (unless they conflict with any of the default arguments for
the command generated by Docker Machine).  For instance, the following command
forwards port 8080 from the `default` machine to `localhost` on your host
computer:
@z

@x
```bash
$ docker-machine ssh default -L 8080:localhost:8080
```
@y
```bash
$ docker-machine ssh default -L 8080:localhost:8080
```
@z

@x
## Different types of SSH
@y
{% comment %}
## Different types of SSH
{% endcomment %}
{: #different-types-of-ssh }
## Different types of SSH
@z

@x
When Docker Machine is invoked, it checks to see if you have the venerable
`ssh` binary around locally and attempts to use that for the SSH commands it
needs to run, whether they are a part of an operation such as creation or have
been requested by the user directly. If it does not find an external `ssh`
binary locally, it defaults to using a native Go implementation from
[crypto/ssh](https://godoc.org/golang.org/x/crypto/ssh). This is useful in
situations where you may not have access to traditional UNIX tools, such as if
you are using Docker Machine on Windows without having msysgit installed
alongside of it.
@y
{% comment %}
When Docker Machine is invoked, it checks to see if you have the venerable
`ssh` binary around locally and attempts to use that for the SSH commands it
needs to run, whether they are a part of an operation such as creation or have
been requested by the user directly. If it does not find an external `ssh`
binary locally, it defaults to using a native Go implementation from
[crypto/ssh](https://godoc.org/golang.org/x/crypto/ssh). This is useful in
situations where you may not have access to traditional UNIX tools, such as if
you are using Docker Machine on Windows without having msysgit installed
alongside of it.
{% endcomment %}
When Docker Machine is invoked, it checks to see if you have the venerable
`ssh` binary around locally and attempts to use that for the SSH commands it
needs to run, whether they are a part of an operation such as creation or have
been requested by the user directly. If it does not find an external `ssh`
binary locally, it defaults to using a native Go implementation from
[crypto/ssh](https://godoc.org/golang.org/x/crypto/ssh). This is useful in
situations where you may not have access to traditional UNIX tools, such as if
you are using Docker Machine on Windows without having msysgit installed
alongside of it.
@z

@x
In most situations, you do not need to worry about this implementation detail
and Docker Machine acts sensibly out of the box. However, if you
deliberately want to use the Go native version, you can do so with a global
command line flag / environment variable like so:
@y
{% comment %}
In most situations, you do not need to worry about this implementation detail
and Docker Machine acts sensibly out of the box. However, if you
deliberately want to use the Go native version, you can do so with a global
command line flag / environment variable like so:
{% endcomment %}
In most situations, you do not need to worry about this implementation detail
and Docker Machine acts sensibly out of the box. However, if you
deliberately want to use the Go native version, you can do so with a global
command line flag / environment variable like so:
@z

@x
```bash
$ docker-machine --native-ssh ssh dev
```
@y
```bash
$ docker-machine --native-ssh ssh dev
```
@z

@x
There are some variations in behavior between the two methods, so report
any issues or inconsistencies if you come across them.
@y
{% comment %}
There are some variations in behavior between the two methods, so report
any issues or inconsistencies if you come across them.
{% endcomment %}
There are some variations in behavior between the two methods, so report
any issues or inconsistencies if you come across them.
@z