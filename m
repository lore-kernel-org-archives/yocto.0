Subject: porting riscv on openjdk
To: yocto@lists.yoctoproject.org
From: abhishek.kumar@exaleapsemi.com
X-Originating-Location: Bengaluru, Karnataka, IN (122.166.120.168)
X-Originating-Platform: Linux Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 26 Aug 2021 02:48:55 -0700
Message-ID: <9YXg.1629971335581080377.YiDx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rM6ndAFDO4yoI3mQC9Qo"

--rM6ndAFDO4yoI3mQC9Qo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hi sir
i am trying to build openjdk on riscv but i am facing problem can you sugge=
st what steps i need to follow

root@exaleapsemi-3:~/abhi/jdk# bash configure
configure: Configuration created at Thu Aug 26 08:50:43 UTC 2021.
checking for basename... /usr/bin/basename
checking for dirname... /usr/bin/dirname
checking for file... /usr/bin/file
checking for ldd... no
checking for bash... /bin/bash
checking for cat... /bin/cat
checking for chmod... /bin/chmod
checking for cp... /bin/cp
checking for cut... /usr/bin/cut
checking for date... /bin/date
checking for gdiff... [not found]
checking for diff... /usr/bin/diff
checking for echo... echo [builtin]
checking for expr... /usr/bin/expr
checking for find... /usr/bin/find
checking for gunzip... /bin/gunzip
checking for pigz... [not found]
checking for gzip... /bin/gzip
checking for head... /usr/bin/head
checking for ln... /bin/ln
checking for ls... /bin/ls
checking for gmkdir... [not found]
checking for mkdir... /bin/mkdir
checking for mktemp... /bin/mktemp
checking for mv... /bin/mv
checking for gawk... /usr/bin/gawk
checking for printf... printf [builtin]
checking for rm... /bin/rm
checking for rmdir... /bin/rmdir
checking for sh... /bin/sh
checking for sort... /usr/bin/sort
checking for tail... /usr/bin/tail
checking for gtar... /bin/gtar
checking for tee... /usr/bin/tee
checking for touch... /bin/touch
checking for tr... /usr/bin/tr
checking for uname... /bin/uname
checking for wc... /usr/bin/wc
checking for xargs... /usr/bin/xargs
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for fgrep... /bin/grep -F
checking for a sed that does not truncate output... /bin/sed
checking for df... /bin/df
checking for nice... /bin/nice
checking for greadlink... [not found]
checking for readlink... /usr/bin/readlink
checking for cygpath... [not found]
checking for wslpath... [not found]
checking for lsb_release... [not found]
checking for cmd.exe... [not found]
checking for cmp... /usr/bin/cmp
checking for uniq... /usr/bin/uniq
checking build system type... riscv64-unknown-linux-gnu
checking host system type... riscv64-unknown-linux-gnu
checking target system type... riscv64-unknown-linux-gnu
checking openjdk-build os-cpu... linux-riscv64
checking openjdk-build C library... gnu
checking openjdk-target os-cpu... linux-riscv64
checking openjdk-target C library... gnu
checking compilation type... native
checking for top-level directory... /home/root/abhi/jdk
checking if custom source is suppressed (openjdk-only)... disabled, default
checking for --enable-debug... disabled, default
checking which debug level to use... release
checking which variants of the JVM to build... server
checking if absolute paths should be allowed in the build output... no, rel=
ease build
checking for sysroot...
checking for toolchain path...
checking for extra path...
checking where to store configuration... in default location
checking what configuration name to use... linux-riscv64-server-release
checking for zypper... [not found]
checking for apt-get... /usr/bin/apt-get
checking for pandoc... [not found]
checking for gmake... [not found]
checking for make... /usr/bin/make
configure: Testing potential make at /usr/bin/make, found using make in PAT=
H
configure: Using GNU make at /usr/bin/make (version: GNU Make 4.3)
checking if make --output-sync is supported... yes
checking for output-sync value... none
checking if find supports -delete... yes
checking what type of tar was found... gnu
checking that grep (/bin/grep) -Fx handles empty lines in the pattern list =
correctly... yes
checking for unzip... /usr/bin/unzip
checking for zip... /usr/bin/zip
checking for greadelf... [not found]
checking for readelf... /usr/bin/readelf
checking for dot... [not found]
checking for hg... [not found]
checking for git... /usr/bin/git
checking for stat... /bin/stat
checking for time... time [builtin]
checking for flock... /usr/bin/flock
checking for dtrace... [not found]
checking for gpatch... [not found]
checking for patch... /usr/bin/patch
checking for ulimit... ulimit [builtin]
checking bash version... 5.0.18
checking if bash supports pipefail... yes
checking if bash supports errexit (-e)... yes
checking for pkg-config... /usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for default LOG value...
checking if packaged modules are kept... enabled, default
checking for version string... 18-internal+0-adhoc.root.jdk
checking for javac... [not found]
checking for java... [not found]
configure: Could not find a valid Boot JDK. OpenJDK distributions are avail=
able at http://jdk.java.net/.
configure: This might be fixed by explicitly setting --with-boot-jdk
configure: error: Cannot continue
configure exiting with result code 1
root@exaleapsemi-3:~/abhi/jdk# apt-get install libcups2-dev
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Unable to locate package libcups2-dev
root@exaleapsemi-3:~/abhi/jdk# apt-get install libfontconfig1-dev
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Unable to locate package libfontconfig1-dev
root@exaleapsemi-3:~/abhi/jdk# apt-get install libasound2-dev
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Unable to locate package libasound2-dev
root@exaleapsemi-3:~/abhi/jdk# bash configure
configure: Configuration created at Thu Aug 26 08:52:37 UTC 2021.
checking for basename... /usr/bin/basename
checking for dirname... /usr/bin/dirname
checking for file... /usr/bin/file
checking for ldd... no
checking for bash... /bin/bash
checking for cat... /bin/cat
checking for chmod... /bin/chmod
checking for cp... /bin/cp
checking for cut... /usr/bin/cut
checking for date... /bin/date
checking for gdiff... [not found]
checking for diff... /usr/bin/diff
checking for echo... echo [builtin]
checking for expr... /usr/bin/expr
checking for find... /usr/bin/find
checking for gunzip... /bin/gunzip
checking for pigz... [not found]
checking for gzip... /bin/gzip
checking for head... /usr/bin/head
checking for ln... /bin/ln
checking for ls... /bin/ls
checking for gmkdir... [not found]
checking for mkdir... /bin/mkdir
checking for mktemp... /bin/mktemp
checking for mv... /bin/mv
checking for gawk... /usr/bin/gawk
checking for printf... printf [builtin]
checking for rm... /bin/rm
checking for rmdir... /bin/rmdir
checking for sh... /bin/sh
checking for sort... /usr/bin/sort
checking for tail... /usr/bin/tail
checking for gtar... /bin/gtar
checking for tee... /usr/bin/tee
checking for touch... /bin/touch
checking for tr... /usr/bin/tr
checking for uname... /bin/uname
checking for wc... /usr/bin/wc
checking for xargs... /usr/bin/xargs
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for fgrep... /bin/grep -F
checking for a sed that does not truncate output... /bin/sed
checking for df... /bin/df
checking for nice... /bin/nice
checking for greadlink... [not found]
checking for readlink... /usr/bin/readlink
checking for cygpath... [not found]
checking for wslpath... [not found]
checking for lsb_release... [not found]
checking for cmd.exe... [not found]
checking for cmp... /usr/bin/cmp
checking for uniq... /usr/bin/uniq
checking build system type... riscv64-unknown-linux-gnu
checking host system type... riscv64-unknown-linux-gnu
checking target system type... riscv64-unknown-linux-gnu
checking openjdk-build os-cpu... linux-riscv64
checking openjdk-build C library... gnu
checking openjdk-target os-cpu... linux-riscv64
checking openjdk-target C library... gnu
checking compilation type... native
checking for top-level directory... /home/root/abhi/jdk
checking if custom source is suppressed (openjdk-only)... disabled, default
checking for --enable-debug... disabled, default
checking which debug level to use... release
checking which variants of the JVM to build... server
checking if absolute paths should be allowed in the build output... no, rel=
ease build
checking for sysroot...
checking for toolchain path...
checking for extra path...
checking where to store configuration... in default location
checking what configuration name to use... linux-riscv64-server-release
checking for zypper... [not found]
checking for apt-get... /usr/bin/apt-get
checking for pandoc... [not found]
checking for gmake... [not found]
checking for make... /usr/bin/make
configure: Testing potential make at /usr/bin/make, found using make in PAT=
H
configure: Using GNU make at /usr/bin/make (version: GNU Make 4.3)
checking if make --output-sync is supported... yes
checking for output-sync value... none
checking if find supports -delete... yes
checking what type of tar was found... gnu
checking that grep (/bin/grep) -Fx handles empty lines in the pattern list =
correctly... yes
checking for unzip... /usr/bin/unzip
checking for zip... /usr/bin/zip
checking for greadelf... [not found]
checking for readelf... /usr/bin/readelf
checking for dot... [not found]
checking for hg... [not found]
checking for git... /usr/bin/git
checking for stat... /bin/stat
checking for time... time [builtin]
checking for flock... /usr/bin/flock
checking for dtrace... [not found]
checking for gpatch... [not found]
checking for patch... /usr/bin/patch
checking for ulimit... ulimit [builtin]
checking bash version... 5.0.18
checking if bash supports pipefail... yes
checking if bash supports errexit (-e)... yes
checking for pkg-config... /usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for default LOG value...
checking if packaged modules are kept... enabled, default
checking for version string... 18-internal+0-adhoc.root.jdk
checking for javac... [not found]
checking for java... [not found]
configure: Could not find a valid Boot JDK. OpenJDK distributions are avail=
able at http://jdk.java.net/.
configure: This might be fixed by explicitly setting --with-boot-jdk
configure: error: Cannot continue
configure exiting with result code 1

--rM6ndAFDO4yoI3mQC9Qo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hi sir<br />i am trying to build openjdk on riscv but i am facing problem c=
an you suggest what steps i need to follow<br /><br />root@exaleapsemi-3:~/=
abhi/jdk# bash configure<br />configure: Configuration created at Thu Aug 2=
6 08:50:43 UTC 2021.<br />checking for basename... /usr/bin/basename<br />c=
hecking for dirname... /usr/bin/dirname<br />checking for file... /usr/bin/=
file<br />checking for ldd... no<br />checking for bash... /bin/bash<br />c=
hecking for cat... /bin/cat<br />checking for chmod... /bin/chmod<br />chec=
king for cp... /bin/cp<br />checking for cut... /usr/bin/cut<br />checking =
for date... /bin/date<br />checking for gdiff... [not found]<br />checking =
for diff... /usr/bin/diff<br />checking for echo... echo [builtin]<br />che=
cking for expr... /usr/bin/expr<br />checking for find... /usr/bin/find<br =
/>checking for gunzip... /bin/gunzip<br />checking for pigz... [not found]<=
br />checking for gzip... /bin/gzip<br />checking for head... /usr/bin/head=
<br />checking for ln... /bin/ln<br />checking for ls... /bin/ls<br />check=
ing for gmkdir... [not found]<br />checking for mkdir... /bin/mkdir<br />ch=
ecking for mktemp... /bin/mktemp<br />checking for mv... /bin/mv<br />check=
ing for gawk... /usr/bin/gawk<br />checking for printf... printf [builtin]<=
br />checking for rm... /bin/rm<br />checking for rmdir... /bin/rmdir<br />=
checking for sh... /bin/sh<br />checking for sort... /usr/bin/sort<br />che=
cking for tail... /usr/bin/tail<br />checking for gtar... /bin/gtar<br />ch=
ecking for tee... /usr/bin/tee<br />checking for touch... /bin/touch<br />c=
hecking for tr... /usr/bin/tr<br />checking for uname... /bin/uname<br />ch=
ecking for wc... /usr/bin/wc<br />checking for xargs... /usr/bin/xargs<br /=
>checking for grep that handles long lines and -e... /bin/grep<br />checkin=
g for egrep... /bin/grep -E<br />checking for fgrep... /bin/grep -F<br />ch=
ecking for a sed that does not truncate output... /bin/sed<br />checking fo=
r df... /bin/df<br />checking for nice... /bin/nice<br />checking for gread=
link... [not found]<br />checking for readlink... /usr/bin/readlink<br />ch=
ecking for cygpath... [not found]<br />checking for wslpath... [not found]<=
br />checking for lsb_release... [not found]<br />checking for cmd.exe... [=
not found]<br />checking for cmp... /usr/bin/cmp<br />checking for uniq... =
/usr/bin/uniq<br />checking build system type... riscv64-unknown-linux-gnu<=
br />checking host system type... riscv64-unknown-linux-gnu<br />checking t=
arget system type... riscv64-unknown-linux-gnu<br />checking openjdk-build =
os-cpu... linux-riscv64<br />checking openjdk-build C library... gnu<br />c=
hecking openjdk-target os-cpu... linux-riscv64<br />checking openjdk-target=
 C library... gnu<br />checking compilation type... native<br />checking fo=
r top-level directory... /home/root/abhi/jdk<br />checking if custom source=
 is suppressed (openjdk-only)... disabled, default<br />checking for --enab=
le-debug... disabled, default<br />checking which debug level to use... rel=
ease<br />checking which variants of the JVM to build... server<br />checki=
ng if absolute paths should be allowed in the build output... no, release b=
uild<br />checking for sysroot... <br />checking for toolchain path... <br =
/>checking for extra path... <br />checking where to store configuration...=
 in default location<br />checking what configuration name to use... linux-=
riscv64-server-release<br />checking for zypper... [not found]<br />checkin=
g for apt-get... /usr/bin/apt-get<br />checking for pandoc... [not found]<b=
r />checking for gmake... [not found]<br />checking for make... /usr/bin/ma=
ke<br />configure: Testing potential make at /usr/bin/make, found using mak=
e in PATH<br />configure: Using GNU make at /usr/bin/make (version: GNU Mak=
e 4.3)<br />checking if make --output-sync is supported... yes<br />checkin=
g for output-sync value... none<br />checking if find supports -delete... y=
es<br />checking what type of tar was found... gnu<br />checking that grep =
(/bin/grep) -Fx handles empty lines in the pattern list correctly... yes<br=
 />checking for unzip... /usr/bin/unzip<br />checking for zip... /usr/bin/z=
ip<br />checking for greadelf... [not found]<br />checking for readelf... /=
usr/bin/readelf<br />checking for dot... [not found]<br />checking for hg..=
. [not found]<br />checking for git... /usr/bin/git<br />checking for stat.=
.. /bin/stat<br />checking for time... time [builtin]<br />checking for flo=
ck... /usr/bin/flock<br />checking for dtrace... [not found]<br />checking =
for gpatch... [not found]<br />checking for patch... /usr/bin/patch<br />ch=
ecking for ulimit... ulimit [builtin]<br />checking bash version... 5.0.18<=
br />checking if bash supports pipefail... yes<br />checking if bash suppor=
ts errexit (-e)... yes<br />checking for pkg-config... /usr/bin/pkg-config<=
br />checking pkg-config is at least version 0.9.0... yes<br />checking for=
 default LOG value... <br />checking if packaged modules are kept... enable=
d, default<br />checking for version string... 18-internal+0-adhoc.root.jdk=
<br />checking for javac... [not found]<br />checking for java... [not foun=
d]<br />configure: Could not find a valid Boot JDK. OpenJDK distributions a=
re available at http://jdk.java.net/.<br />configure: This might be fixed b=
y explicitly setting --with-boot-jdk<br />configure: error: Cannot continue=
<br />configure exiting with result code 1<br />root@exaleapsemi-3:~/abhi/j=
dk# apt-get install libcups2-dev<br />Reading package lists... Done<br />Bu=
ilding dependency tree&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />Reading st=
ate information... Done<br />E: Unable to locate package libcups2-dev<br />=
root@exaleapsemi-3:~/abhi/jdk# apt-get install libfontconfig1-dev<br />Read=
ing package lists... Done<br />Building dependency tree&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; &nbsp;<br />Reading state information... Done<br />E: Unable to =
locate package libfontconfig1-dev<br />root@exaleapsemi-3:~/abhi/jdk# apt-g=
et install libasound2-dev<br />Reading package lists... Done<br />Building =
dependency tree&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />Reading state inf=
ormation... Done<br />E: Unable to locate package libasound2-dev<br />root@=
exaleapsemi-3:~/abhi/jdk# bash configure<br />configure: Configuration crea=
ted at Thu Aug 26 08:52:37 UTC 2021.<br />checking for basename... /usr/bin=
/basename<br />checking for dirname... /usr/bin/dirname<br />checking for f=
ile... /usr/bin/file<br />checking for ldd... no<br />checking for bash... =
/bin/bash<br />checking for cat... /bin/cat<br />checking for chmod... /bin=
/chmod<br />checking for cp... /bin/cp<br />checking for cut... /usr/bin/cu=
t<br />checking for date... /bin/date<br />checking for gdiff... [not found=
]<br />checking for diff... /usr/bin/diff<br />checking for echo... echo [b=
uiltin]<br />checking for expr... /usr/bin/expr<br />checking for find... /=
usr/bin/find<br />checking for gunzip... /bin/gunzip<br />checking for pigz=
... [not found]<br />checking for gzip... /bin/gzip<br />checking for head.=
.. /usr/bin/head<br />checking for ln... /bin/ln<br />checking for ls... /b=
in/ls<br />checking for gmkdir... [not found]<br />checking for mkdir... /b=
in/mkdir<br />checking for mktemp... /bin/mktemp<br />checking for mv... /b=
in/mv<br />checking for gawk... /usr/bin/gawk<br />checking for printf... p=
rintf [builtin]<br />checking for rm... /bin/rm<br />checking for rmdir... =
/bin/rmdir<br />checking for sh... /bin/sh<br />checking for sort... /usr/b=
in/sort<br />checking for tail... /usr/bin/tail<br />checking for gtar... /=
bin/gtar<br />checking for tee... /usr/bin/tee<br />checking for touch... /=
bin/touch<br />checking for tr... /usr/bin/tr<br />checking for uname... /b=
in/uname<br />checking for wc... /usr/bin/wc<br />checking for xargs... /us=
r/bin/xargs<br />checking for grep that handles long lines and -e... /bin/g=
rep<br />checking for egrep... /bin/grep -E<br />checking for fgrep... /bin=
/grep -F<br />checking for a sed that does not truncate output... /bin/sed<=
br />checking for df... /bin/df<br />checking for nice... /bin/nice<br />ch=
ecking for greadlink... [not found]<br />checking for readlink... /usr/bin/=
readlink<br />checking for cygpath... [not found]<br />checking for wslpath=
... [not found]<br />checking for lsb_release... [not found]<br />checking =
for cmd.exe... [not found]<br />checking for cmp... /usr/bin/cmp<br />check=
ing for uniq... /usr/bin/uniq<br />checking build system type... riscv64-un=
known-linux-gnu<br />checking host system type... riscv64-unknown-linux-gnu=
<br />checking target system type... riscv64-unknown-linux-gnu<br />checkin=
g openjdk-build os-cpu... linux-riscv64<br />checking openjdk-build C libra=
ry... gnu<br />checking openjdk-target os-cpu... linux-riscv64<br />checkin=
g openjdk-target C library... gnu<br />checking compilation type... native<=
br />checking for top-level directory... /home/root/abhi/jdk<br />checking =
if custom source is suppressed (openjdk-only)... disabled, default<br />che=
cking for --enable-debug... disabled, default<br />checking which debug lev=
el to use... release<br />checking which variants of the JVM to build... se=
rver<br />checking if absolute paths should be allowed in the build output.=
.. no, release build<br />checking for sysroot... <br />checking for toolch=
ain path... <br />checking for extra path... <br />checking where to store =
configuration... in default location<br />checking what configuration name =
to use... linux-riscv64-server-release<br />checking for zypper... [not fou=
nd]<br />checking for apt-get... /usr/bin/apt-get<br />checking for pandoc.=
.. [not found]<br />checking for gmake... [not found]<br />checking for mak=
e... /usr/bin/make<br />configure: Testing potential make at /usr/bin/make,=
 found using make in PATH<br />configure: Using GNU make at /usr/bin/make (=
version: GNU Make 4.3)<br />checking if make --output-sync is supported... =
yes<br />checking for output-sync value... none<br />checking if find suppo=
rts -delete... yes<br />checking what type of tar was found... gnu<br />che=
cking that grep (/bin/grep) -Fx handles empty lines in the pattern list cor=
rectly... yes<br />checking for unzip... /usr/bin/unzip<br />checking for z=
ip... /usr/bin/zip<br />checking for greadelf... [not found]<br />checking =
for readelf... /usr/bin/readelf<br />checking for dot... [not found]<br />c=
hecking for hg... [not found]<br />checking for git... /usr/bin/git<br />ch=
ecking for stat... /bin/stat<br />checking for time... time [builtin]<br />=
checking for flock... /usr/bin/flock<br />checking for dtrace... [not found=
]<br />checking for gpatch... [not found]<br />checking for patch... /usr/b=
in/patch<br />checking for ulimit... ulimit [builtin]<br />checking bash ve=
rsion... 5.0.18<br />checking if bash supports pipefail... yes<br />checkin=
g if bash supports errexit (-e)... yes<br />checking for pkg-config... /usr=
/bin/pkg-config<br />checking pkg-config is at least version 0.9.0... yes<b=
r />checking for default LOG value... <br />checking if packaged modules ar=
e kept... enabled, default<br />checking for version string... 18-internal+=
0-adhoc.root.jdk<br />checking for javac... [not found]<br />checking for j=
ava... [not found]<br />configure: Could not find a valid Boot JDK. OpenJDK=
 distributions are available at http://jdk.java.net/.<br />configure: This =
might be fixed by explicitly setting --with-boot-jdk<br />configure: error:=
 Cannot continue<br />configure exiting with result code 1

--rM6ndAFDO4yoI3mQC9Qo--
