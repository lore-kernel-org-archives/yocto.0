Return-Path: <jean-paul.saman@m2x.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C3DC43458
	for <webhook@archiver.kernel.org>; Fri, 10 Jul 2026 08:34:24 +0000 (UTC)
Subject: Howto solve pseudo abort issue? #bitbake #fakeroot #linux #raspberrypi #scarthgap
To: yocto@lists.yoctoproject.org
From: "Jean-Paul Saman" <jean-paul.saman@m2x.nl>
X-Originating-Location: Helmond, North Brabant, NL (82.168.56.144)
X-Originating-Platform: Mac Safari 26.5
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 10 Jul 2026 01:34:23 -0700
Message-ID: <OJgj.1783672463587758202.vk0n@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="tclj5r2krG3BKbKX15Jl"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Jul 2026 08:34:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66628

--tclj5r2krG3BKbKX15Jl
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The problem:

Our yocto build system suddenly started failing on =E2=80=98do_package=E2=
=80=99 due to a pseudo abort issue. Even packages that have not been change=
d recently. The same happened on my local development system.

Searching in Yocto discussions or other sources did not provide a solution =
that works in our case. I tried the following solutions (NOTE: this package=
 was not changed when the problem started):

1. bitbake -c cleanall miniflex-generate-salt && bitbake miniflex-generate-=
salt
2. bitbake -c cleansstate miniflex-generate-salt && bitbake miniflex-genera=
te-salt
3. examine with bitbake -c devshell miniflex-generate-salt
4. set parallel jobs to '-j 1=E2=80=99 in conf/local.conf
5. remove build/tmp and rebuild entire distribution

The logfile suggests there is a path mismatch.

I have =C2=A02 questions basically:

1. What I do not understand is how this can happen, suddenly without a clea=
r (at least for me) cause?
2. How to solve this situation?

---
Devshell output:

root@ubuntuyocto:~/Source/xxxxx/insight_test3/build-raspberrypi4-64/tmp/wor=
k/cortexa72-poky-linux/miniflex-generate-salt/1.0/git# ls ../
abort()ing pseudo client by server request. See https://wiki.yoctoproject.o=
rg/wiki/Pseudo_Abort for more details on this.
Check logfile: /home/jpsaman/Source/xxxxx/insight_test3/build-raspberrypi4-=
64/tmp/work/cortexa72-poky-linux/miniflex-generate-salt/1.0/pseudo//pseudo.=
log
Aborted (core dumped)

--
The pseudo.log logfile:

debug_logfile: fd 2
pid 20893 [parent 20892], doing new pid setup and server start
Setup complete, sending SIGUSR1 to pid 20892.
db cleanup for server shutdown, 07:51:05.094
memory-to-file backup complete, 07:51:05.094.
db cleanup finished, 07:51:05.094
debug_logfile: fd 2
pid 21968 [parent 21967], doing new pid setup and server start
Setup complete, sending SIGUSR1 to pid 21967.
path mismatch [4 links]: ino 7341206 db '/home/jpsaman/Source/xxxxx/insight=
_test3/build-raspberrypi4-64/tmp/work/cortexa72-poky-linux/miniflex-generat=
e-salt/1.0/image/usr/share/licenses/miniflex-generate-salt/xxxxx-LICENSE' r=
eq '/home/jpsaman/Source/xxxxx/insight_test3/build-raspberrypi4-64/tmp/work=
/cortexa72-poky-linux/miniflex-generate-salt/1.0/xxxxx-LICENSE'.
path mismatch [4 links]: ino 7341206 db '/home/jpsaman/Source/xxxxx/insight=
_test3/build-raspberrypi4-64/tmp/work/cortexa72-poky-linux/miniflex-generat=
e-salt/1.0/image/usr/share/licenses/miniflex-generate-salt/xxxxx-LICENSE' r=
eq '/home/jpsaman/Source/xxxxx/insight_test3/build-raspberrypi4-64/tmp/work=
/cortexa72-poky-linux/miniflex-generate-salt/1.0/xxxxx-LICENSE'.

--
The build output:

jpsaman@ubuntuyocto:~/Source/xxxxx/insight_test3/build-raspberrypi4-64$ bit=
bake miniflex-generate-salt
Loading cache: 100% |######################################################=
###########################################################################=
##############################################| Time: 0:00:00
Loaded 5053 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D =
"2.8.0"
BUILD_SYS =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=3D "aarch64-linux"
NATIVELSBSTRING =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D "universal"
TARGET_SYS =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D =
"aarch64-poky-linux"
MACHINE =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=3D "raspberrypi4-64"
DISTRO =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=3D "sewer"
DISTRO_VERSION =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D "5.0.4"
TUNE_FEATURES =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D "aarch64 crc co=
rtexa72"
TARGET_FPU =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D =
""
SDKMACHINE =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D =
"aarch64"
QT_VERSION =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D =
"6.8.1"
meta
meta-poky =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=3D "HEAD:2034fc38eb4e63984d9bd6b260aa1bf95ce562e4"
meta-raspberrypi =C2=A0=C2=A0=C2=A0=C2=A0=3D "HEAD:6df7e028a2b7b2d8cab0745d=
c0ed2eebc3742a17"
meta-oe
meta-python
meta-networking
meta-initramfs
meta-multimedia
meta-filesystems =C2=A0=C2=A0=C2=A0=C2=A0=3D "HEAD:72018ca1b1a471226917e824=
6e8bbf9a374ccf97"
meta-clang =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D =
"HEAD:2b7433611d80f6d0ee1b04156fa91fc73d3c2665"
meta-boot2qt
meta-boot2qt-distro =C2=A0=3D "HEAD:c53557c18ecc60ad9688eac8d4e6ce59b9cc365=
b"
meta-mingw =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D =
"HEAD:acbba477893ef87388effc4679b7f40ee49fc852"
meta-qt6 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=3D "HEAD:f4ef1331f0cc49bd4aa1e1aace6dc7f000b9651e"
meta-rauc =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=3D "scarthgap:8f35e94b406ef9ec466a6125971b40f51ae139eb"
meta-rauc-raspberrypi =3D "scarthgap:222c61275054974cdbd09bd5faa2b7a37ddbd8=
40"
meta-lts-mixins =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D "scarthgap/u-boot:a44882d=
b02a0ed0f149371831bfbe067665eb42b"
meta-webserver =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D "HEAD:72018ca1b1a471=
226917e8246e8bbf9a374ccf97"
meta-xxxxx =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D "test/error:ce1954759448402f4e=
f5f004c678aa4b4daef92f"

Sstate summary: Wanted 36 Local 25 Mirrors 0 Missed 11 Current 782 (69% mat=
ch, 98% complete)##########################################################=
############################ =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| ETA: =C2=A00:00:=
00
Initialising tasks: 100% |#################################################=
###########################################################################=
##############################################| Time: 0:00:00
NOTE: Executing Tasks
ERROR: miniflex-generate-salt-1.0-r0 do_package: Error executing a python f=
unction in exec_func_python() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
0001:
*** 0002:perform_packagecopy(d)
0003:
File: '/home/jpsaman/Source/xxxxx/insight_test3/sources/poky/meta/classes-g=
lobal/package.bbclass', lineno: 363, function: perform_packagecopy
0359: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rpath_replace (dvar, d)
0360:}
0361:perform_packagecopy[cleandirs] =3D "${PKGD}"
0362:perform_packagecopy[dirs] =3D "${PKGD}"
*** 0363:
0364:python populate_packages () {
0365: =C2=A0=C2=A0=C2=A0oe.package.populate_packages(d)
0366:}
0367:populate_packages[dirs] =3D "${D}"
File: '/usr/lib/python3.10/subprocess.py', lineno: 421, function: check_out=
put
0417: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else:
0418: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0emp=
ty =3D b''
0419: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kwargs['input'] =3D empty
0420:
*** 0421: =C2=A0=C2=A0=C2=A0return run(*popenargs, stdout=3DPIPE, timeout=
=3Dtimeout, check=3DTrue,
0422: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0**kwargs).stdout
0423:
0424:
0425:class CompletedProcess(object):
File: '/usr/lib/python3.10/subprocess.py', lineno: 526, function: run
0522: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# W=
e don't call process.wait() as .__exit__ does that for us.
0523: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rai=
se
0524: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0retcode =3D process.poll()
0525: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if check and retcode:
*** 0526: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0raise CalledProcessError(retcode, process.args,
0527: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0out=
put=3Dstdout, stderr=3Dstderr)
0528: =C2=A0=C2=A0=C2=A0return CompletedProcess(process.args, retcode, stdo=
ut, stderr)
0529:
0530:
Exception: subprocess.CalledProcessError: Command 'tar --exclude=3D./sysroo=
t-only -cf - -C /home/jpsaman/Source/xxxxx/insight_test3/build-raspberrypi4=
-64/tmp/work/cortexa72-poky-linux/miniflex-generate-salt/1.0/image -p -S . =
| tar -xf - -C /home/jpsaman/Source/xxxxx/insight_test3/build-raspberrypi4-=
64/tmp/work/cortexa72-poky-linux/miniflex-generate-salt/1.0/package' return=
ed non-zero exit status 2.

Subprocess output:
got *at() syscall for unknown directory, fd 4
unknown base path for fd 4, path bin
couldn't allocate absolute path for 'bin'.
tar: ./usr/bin: Cannot mkdir: Bad address
got *at() syscall for unknown directory, fd 4
unknown base path for fd 4, path bin
couldn't allocate absolute path for 'bin'.
got *at() syscall for unknown directory, fd 4
unknown base path for fd 4, path bin
couldn't allocate absolute path for 'bin'.
tar: ./usr/bin: Cannot mkdir: Bad address
tar: ./usr/bin/miniflex-generate-salt: Cannot open: No such file or directo=
ry
got *at() syscall for unknown directory, fd 4
unknown base path for fd 4, path share
couldn't allocate absolute path for 'share'.
tar: ./usr/share: Cannot mkdir: Bad address
got *at() syscall for unknown directory, fd 4
unknown base path for fd 4, path share
couldn't allocate absolute path for 'share'.
got *at() syscall for unknown directory, fd 4
unknown base path for fd 4, path share
couldn't allocate absolute path for 'share'.
tar: ./usr/share: Cannot mkdir: Bad address
tar: ./usr/share/licenses: Cannot mkdir: No such file or directory
got *at() syscall for unknown directory, fd 4
unknown base path for fd 4, path share
couldn't allocate absolute path for 'share'.
got *at() syscall for unknown directory, fd 4
unknown base path for fd 4, path share
couldn't allocate absolute path for 'share'.
tar: ./usr/share: Cannot mkdir: Bad address
tar: ./usr/share/licenses/miniflex-generate-salt: Cannot mkdir: No such fil=
e or directory
got *at() syscall for unknown directory, fd 4
unknown base path for fd 4, path share
couldn't allocate absolute path for 'share'.
got *at() syscall for unknown directory, fd 4
unknown base path for fd 4, path share
couldn't allocate absolute path for 'share'.
tar: ./usr/share: Cannot mkdir: Bad address
tar: ./usr/share/licenses/miniflex-generate-salt/xxxxx-LICENSE: Cannot open=
: No such file or directory
tar: Exiting with failure status due to previous errors

ERROR: Logfile of failure stored in: /home/jpsaman/Source/xxxxx/insight_tes=
t3/build-raspberrypi4-64/tmp/work/cortexa72-poky-linux/miniflex-generate-sa=
lt/1.0/temp/log.do_package.21002
ERROR: Task (/home/jpsaman/Source/xxxxx/insight_test3/sources/meta-xxxxx/re=
cipes-applications/miniflex-generate-salt/miniflex-generate-salt.bb:do_pack=
age) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1789 tasks of which 1775 didn't need to be r=
erun and 1 failed.
NOTE: Build completion summary:
NOTE: =C2=A0=C2=A0do_populate_sysroot: 0.0% sstate reuse(0 setscene, 1 scra=
tch)
NOTE: =C2=A0=C2=A0do_deploy_source_date_epoch: 0.0% sstate reuse(0 setscene=
, 1 scratch)
NOTE: =C2=A0=C2=A0do_deploy_archives: 0.0% sstate reuse(0 setscene, 1 scrat=
ch)
NOTE: =C2=A0=C2=A0do_recipe_qa: 0.0% sstate reuse(0 setscene, 1 scratch)
NOTE: =C2=A0=C2=A0do_package: 0.0% sstate reuse(0 setscene, 1 scratch)
NOTE: =C2=A0=C2=A0do_populate_lic: 0.0% sstate reuse(0 setscene, 1 scratch)
NOTE: Writing buildhistory
NOTE: Writing buildhistory took: 1 seconds

Summary: 1 task failed:
/home/jpsaman/Source/xxxxx/insight_test3/sources/meta-xxxxx/recipes-applica=
tions/miniflex-generate-salt/miniflex-generate-salt.bb:do_package
Summary: There was 1 ERROR message, returning a non-zero exit code.

=E2=80=94
Kind regards,
Jean-Paul Saman

--tclj5r2krG3BKbKX15Jl
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div><span style=3D"font-style: normal; font-variant-caps: normal; font-wei=
ght: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inden=
t: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing:=
 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: #=
ffffff; color: #000000; font-family: Helvetica; font-size: 12px; float: non=
e; display: inline !important;">The problem:</span><br style=3D"font-style:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration-line: none; text-decoration-thickness: auto; text-de=
coration-style: solid; caret-color: #ffffff; color: #ffffff; font-family: H=
elvetica; font-size: 12px;" /><br style=3D"font-style: normal; font-variant=
-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-a=
lign: start; text-indent: 0px; text-transform: none; white-space: normal; w=
idows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoratio=
n-line: none; text-decoration-thickness: auto; text-decoration-style: solid=
; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: =
12px;" /><span style=3D"font-style: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-colo=
r: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; float:=
 none; display: inline !important;">Our yocto build system suddenly started=
 failing on &lsquo;do_package&rsquo; due to a pseudo abort issue. Even pack=
ages that have not been changed recently. The same happened on my local dev=
elopment system. </span><br style=3D"font-style: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; widows:=
 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line=
: none; text-decoration-thickness: auto; text-decoration-style: solid; care=
t-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;"=
 /><br style=3D"font-style: normal; font-variant-caps: normal; font-weight:=
 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px=
; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-decorati=
on-thickness: auto; text-decoration-style: solid; caret-color: #ffffff; col=
or: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"fon=
t-style: normal; font-variant-caps: normal; font-weight: 400; letter-spacin=
g: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform:=
 none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #000000;=
 font-family: Helvetica; font-size: 12px; float: none; display: inline !imp=
ortant;">Searching in Yocto discussions or other sources did not provide a =
solution that works in our case. I tried the following solutions (NOTE: thi=
s package was not changed when the problem started):</span><br style=3D"fon=
t-style: normal; font-variant-caps: normal; font-weight: 400; letter-spacin=
g: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform:=
 none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; text-decoration-line: none; text-decoration-thickness: auto;=
 text-decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-f=
amily: Helvetica; font-size: 12px;" /><br style=3D"font-style: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; white-space: n=
ormal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-d=
ecoration-line: none; text-decoration-thickness: auto; text-decoration-styl=
e: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; fon=
t-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; w=
ord-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; ca=
ret-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px=
; float: none; display: inline !important;">1. bitbake -c cleanall miniflex=
-generate-salt &amp;&amp; bitbake miniflex-generate-salt</span><br style=3D=
"font-style: normal; font-variant-caps: normal; font-weight: 400; letter-sp=
acing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transf=
orm: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-=
stroke-width: 0px; text-decoration-line: none; text-decoration-thickness: a=
uto; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff; fo=
nt-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; white-sp=
ace: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; caret-color: #ffffff; color: #000000; font-family: H=
elvetica; font-size: 12px; float: none; display: inline !important;">2. bit=
bake -c cleansstate miniflex-generate-salt &amp;&amp; bitbake miniflex-gene=
rate-salt</span><br style=3D"font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; t=
ext-indent: 0px; text-transform: none; white-space: normal; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid; caret-color:=
 #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span=
 style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; te=
xt-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; co=
lor: #000000; font-family: Helvetica; font-size: 12px; float: none; display=
: inline !important;">3. examine with bitbake -c devshell miniflex-generate=
-salt</span><br style=3D"font-style: normal; font-variant-caps: normal; fon=
t-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text=
-decoration-thickness: auto; text-decoration-style: solid; caret-color: #ff=
ffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span sty=
le=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; lett=
er-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-t=
ransform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; color:=
 #000000; font-family: Helvetica; font-size: 12px; float: none; display: in=
line !important;">4. set parallel jobs to '-j 1&rsquo; in conf/local.conf</=
span><br style=3D"font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent:=
 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-decora=
tion-thickness: auto; text-decoration-style: solid; caret-color: #ffffff; c=
olor: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"f=
ont-style: normal; font-variant-caps: normal; font-weight: 400; letter-spac=
ing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #00000=
0; font-family: Helvetica; font-size: 12px; float: none; display: inline !i=
mportant;">5. remove build/tmp and rebuild entire distribution</span><br st=
yle=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; let=
ter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-=
transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit=
-text-stroke-width: 0px; text-decoration-line: none; text-decoration-thickn=
ess: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ffff=
ff; font-family: Helvetica; font-size: 12px;" /><br style=3D"font-style: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; text-decoration-line: none; text-decoration-thickness: auto; text-decor=
ation-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helv=
etica; font-size: 12px;" /><span style=3D"font-style: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-al=
ign: start; text-indent: 0px; text-transform: none; white-space: normal; wi=
dows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration=
: none; caret-color: #ffffff; color: #000000; font-family: Helvetica; font-=
size: 12px; float: none; display: inline !important;">The logfile suggests =
there is a path mismatch. </span><br style=3D"font-style: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; white-space: normal=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion-line: none; text-decoration-thickness: auto; text-decoration-style: so=
lid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-siz=
e: 12px;" /><br style=3D"font-style: normal; font-variant-caps: normal; fon=
t-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text=
-decoration-thickness: auto; text-decoration-style: solid; caret-color: #ff=
ffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span sty=
le=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; lett=
er-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-t=
ransform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; color:=
 #000000; font-family: Helvetica; font-size: 12px; float: none; display: in=
line !important;">I have &nbsp;2 questions basically:</span><br style=3D"fo=
nt-style: normal; font-variant-caps: normal; font-weight: 400; letter-spaci=
ng: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-str=
oke-width: 0px; text-decoration-line: none; text-decoration-thickness: auto=
; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-=
family: Helvetica; font-size: 12px;" /><br style=3D"font-style: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-=
decoration-line: none; text-decoration-thickness: auto; text-decoration-sty=
le: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; fo=
nt-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: nor=
mal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: star=
t; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; c=
aret-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12p=
x; float: none; display: inline !important;">1. What I do not understand is=
 how this can happen, suddenly without a clear (at least for me) cause?</sp=
an><br style=3D"font-style: normal; font-variant-caps: normal; font-weight:=
 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px=
; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-decorati=
on-thickness: auto; text-decoration-style: solid; caret-color: #ffffff; col=
or: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"fon=
t-style: normal; font-variant-caps: normal; font-weight: 400; letter-spacin=
g: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform:=
 none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #000000;=
 font-family: Helvetica; font-size: 12px; float: none; display: inline !imp=
ortant;">2. How to solve this situation?</span><br style=3D"font-style: nor=
mal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; o=
rphans: 2; text-align: start; text-indent: 0px; text-transform: none; white=
-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; text-decoration-line: none; text-decoration-thickness: auto; text-decora=
tion-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helve=
tica; font-size: 12px;" /><br style=3D"font-style: normal; font-variant-cap=
s: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align=
: start; text-indent: 0px; text-transform: none; white-space: normal; widow=
s: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-li=
ne: none; text-decoration-thickness: auto; text-decoration-style: solid; ca=
ret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px=
;" /><span style=3D"font-style: normal; font-variant-caps: normal; font-wei=
ght: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inden=
t: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing:=
 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: #=
ffffff; color: #000000; font-family: Helvetica; font-size: 12px; float: non=
e; display: inline !important;">---</span><br style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: start; text-indent: 0px; text-transform: none; white-spac=
e: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; te=
xt-decoration-line: none; text-decoration-thickness: auto; text-decoration-=
style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica;=
 font-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: s=
tart; text-indent: 0px; text-transform: none; white-space: normal; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none=
; caret-color: #ffffff; color: #000000; font-family: Helvetica; font-size: =
12px; float: none; display: inline !important;">Devshell output:</span><br =
style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; l=
etter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; tex=
t-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webk=
it-text-stroke-width: 0px; text-decoration-line: none; text-decoration-thic=
kness: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ff=
ffff; font-family: Helvetica; font-size: 12px;" /><br style=3D"font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal=
; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wh=
ite-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration-line: none; text-decoration-thickness: auto; text-dec=
oration-style: solid; caret-color: #ffffff; color: #ffffff; font-family: He=
lvetica; font-size: 12px;" /><span style=3D"font-style: normal; font-varian=
t-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decorati=
on: none; caret-color: #ffffff; color: #000000; font-family: Helvetica; fon=
t-size: 12px; float: none; display: inline !important;">root@ubuntuyocto:~/=
Source/xxxxx/insight_test3/build-raspberrypi4-64/tmp/work/cortexa72-poky-li=
nux/miniflex-generate-salt/1.0/git# ls ../</span><br style=3D"font-style: n=
ormal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal;=
 orphans: 2; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration-line: none; text-decoration-thickness: auto; text-deco=
ration-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Hel=
vetica; font-size: 12px;" /><span style=3D"color: #000000;"><span style=3D"=
font-style: normal; font-variant-caps: normal; font-weight: 400; letter-spa=
cing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-s=
troke-width: 0px; text-decoration: none; caret-color: #ffffff; font-family:=
 Helvetica; font-size: 12px; float: none; display: inline !important;">abor=
t()ing pseudo client by server request. See </span><a style=3D"font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal=
; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wh=
ite-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; font-family: Helvetica; font-size: 12px; color: #000000;" href=3D"htt=
ps://wiki.yoctoproject.org/wiki/Pseudo_Abort">https://wiki.yoctoproject.org=
/wiki/Pseudo_Abort</a><span style=3D"font-style: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; widows:=
 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: non=
e; caret-color: #ffffff; font-family: Helvetica; font-size: 12px; float: no=
ne; display: inline !important;"> for more details on this.</span></span><b=
r style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400;=
 letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; t=
ext-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; text-decoration-line: none; text-decoration-th=
ickness: auto; text-decoration-style: solid; caret-color: #ffffff; color: #=
ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-sty=
le: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: no=
rmal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none=
; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; font=
-family: Helvetica; font-size: 12px; float: none; display: inline !importan=
t;">Check logfile: /home/jpsaman/Source/xxxxx/insight_test3/build-raspberry=
pi4-64/tmp/work/cortexa72-poky-linux/miniflex-generate-salt/1.0/pseudo//pse=
udo.log</span><br style=3D"font-style: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-s=
pacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; te=
xt-decoration-thickness: auto; text-decoration-style: solid; caret-color: #=
ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span s=
tyle=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webki=
t-text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; colo=
r: #000000; font-family: Helvetica; font-size: 12px; float: none; display: =
inline !important;">Aborted (core dumped)</span><br style=3D"font-style: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; text-decoration-line: none; text-decoration-thickness: auto; text-decor=
ation-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helv=
etica; font-size: 12px;" /><br style=3D"font-style: normal; font-variant-ca=
ps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-alig=
n: start; text-indent: 0px; text-transform: none; white-space: normal; wido=
ws: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-l=
ine: none; text-decoration-thickness: auto; text-decoration-style: solid; c=
aret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12p=
x;" /><span style=3D"font-style: normal; font-variant-caps: normal; font-we=
ight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: =
#ffffff; color: #000000; font-family: Helvetica; font-size: 12px; float: no=
ne; display: inline !important;">--</span><br style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: start; text-indent: 0px; text-transform: none; white-spac=
e: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; te=
xt-decoration-line: none; text-decoration-thickness: auto; text-decoration-=
style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica;=
 font-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: s=
tart; text-indent: 0px; text-transform: none; white-space: normal; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none=
; caret-color: #ffffff; color: #000000; font-family: Helvetica; font-size: =
12px; float: none; display: inline !important;">The pseudo.log logfile:</sp=
an><br style=3D"font-style: normal; font-variant-caps: normal; font-weight:=
 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px=
; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-decorati=
on-thickness: auto; text-decoration-style: solid; caret-color: #ffffff; col=
or: #ffffff; font-family: Helvetica; font-size: 12px;" /><br style=3D"font-=
style: normal; font-variant-caps: normal; font-weight: 400; letter-spacing:=
 normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: n=
one; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke=
-width: 0px; text-decoration-line: none; text-decoration-thickness: auto; t=
ext-decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-fam=
ily: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; white-space: n=
ormal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-d=
ecoration: none; caret-color: #ffffff; color: #000000; font-family: Helveti=
ca; font-size: 12px; float: none; display: inline !important;">debug_logfil=
e: fd 2</span><br style=3D"font-style: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-s=
pacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; te=
xt-decoration-thickness: auto; text-decoration-style: solid; caret-color: #=
ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span s=
tyle=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webki=
t-text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; colo=
r: #000000; font-family: Helvetica; font-size: 12px; float: none; display: =
inline !important;">pid 20893 [parent 20892], doing new pid setup and serve=
r start</span><br style=3D"font-style: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-s=
pacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; te=
xt-decoration-thickness: auto; text-decoration-style: solid; caret-color: #=
ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span s=
tyle=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webki=
t-text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; colo=
r: #000000; font-family: Helvetica; font-size: 12px; float: none; display: =
inline !important;">Setup complete, sending SIGUSR1 to pid 20892.</span><br=
 style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; te=
xt-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; text-decoration-line: none; text-decoration-thi=
ckness: auto; text-decoration-style: solid; caret-color: #ffffff; color: #f=
fffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-styl=
e: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-wid=
th: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; font-=
family: Helvetica; font-size: 12px; float: none; display: inline !important=
;">db cleanup for server shutdown, 07:51:05.094</span><br style=3D"font-sty=
le: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: no=
rmal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none=
; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; text-decoration-line: none; text-decoration-thickness: auto; text=
-decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-family=
: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; font-va=
riant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; t=
ext-align: start; text-indent: 0px; text-transform: none; white-space: norm=
al; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-deco=
ration: none; caret-color: #ffffff; color: #000000; font-family: Helvetica;=
 font-size: 12px; float: none; display: inline !important;">memory-to-file =
backup complete, 07:51:05.094.</span><br style=3D"font-style: normal; font-=
variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2;=
 text-align: start; text-indent: 0px; text-transform: none; white-space: no=
rmal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-de=
coration-line: none; text-decoration-thickness: auto; text-decoration-style=
: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font=
-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: norma=
l; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start;=
 text-indent: 0px; text-transform: none; white-space: normal; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; car=
et-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px;=
 float: none; display: inline !important;">db cleanup finished, 07:51:05.09=
4</span><br style=3D"font-style: normal; font-variant-caps: normal; font-we=
ight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-dec=
oration-thickness: auto; text-decoration-style: solid; caret-color: #ffffff=
; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #=
000000; font-family: Helvetica; font-size: 12px; float: none; display: inli=
ne !important;">debug_logfile: fd 2</span><br style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: start; text-indent: 0px; text-transform: none; white-spac=
e: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; te=
xt-decoration-line: none; text-decoration-thickness: auto; text-decoration-=
style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica;=
 font-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: s=
tart; text-indent: 0px; text-transform: none; white-space: normal; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none=
; caret-color: #ffffff; color: #000000; font-family: Helvetica; font-size: =
12px; float: none; display: inline !important;">pid 21968 [parent 21967], d=
oing new pid setup and server start</span><br style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: start; text-indent: 0px; text-transform: none; white-spac=
e: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; te=
xt-decoration-line: none; text-decoration-thickness: auto; text-decoration-=
style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica;=
 font-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: s=
tart; text-indent: 0px; text-transform: none; white-space: normal; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none=
; caret-color: #ffffff; color: #000000; font-family: Helvetica; font-size: =
12px; float: none; display: inline !important;">Setup complete, sending SIG=
USR1 to pid 21967.</span><br style=3D"font-style: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; white-space: normal; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-lin=
e: none; text-decoration-thickness: auto; text-decoration-style: solid; car=
et-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;=
" /><span style=3D"font-style: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent=
: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: #f=
fffff; color: #000000; font-family: Helvetica; font-size: 12px; float: none=
; display: inline !important;">path mismatch [4 links]: ino 7341206 db '/ho=
me/jpsaman/Source/xxxxx/insight_test3/build-raspberrypi4-64/tmp/work/cortex=
a72-poky-linux/miniflex-generate-salt/1.0/image/usr/share/licenses/miniflex=
-generate-salt/xxxxx-LICENSE' req '/home/jpsaman/Source/xxxxx/insight_test3=
/build-raspberrypi4-64/tmp/work/cortexa72-poky-linux/miniflex-generate-salt=
/1.0/xxxxx-LICENSE'.</span><br style=3D"font-style: normal; font-variant-ca=
ps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-alig=
n: start; text-indent: 0px; text-transform: none; white-space: normal; wido=
ws: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-l=
ine: none; text-decoration-thickness: auto; text-decoration-style: solid; c=
aret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12p=
x;" /><span style=3D"font-style: normal; font-variant-caps: normal; font-we=
ight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: =
#ffffff; color: #000000; font-family: Helvetica; font-size: 12px; float: no=
ne; display: inline !important;">path mismatch [4 links]: ino 7341206 db '/=
home/jpsaman/Source/xxxxx/insight_test3/build-raspberrypi4-64/tmp/work/cort=
exa72-poky-linux/miniflex-generate-salt/1.0/image/usr/share/licenses/minifl=
ex-generate-salt/xxxxx-LICENSE' req '/home/jpsaman/Source/xxxxx/insight_tes=
t3/build-raspberrypi4-64/tmp/work/cortexa72-poky-linux/miniflex-generate-sa=
lt/1.0/xxxxx-LICENSE'.</span><br style=3D"font-style: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-al=
ign: start; text-indent: 0px; text-transform: none; white-space: normal; wi=
dows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration=
-line: none; text-decoration-thickness: auto; text-decoration-style: solid;=
 caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 1=
2px;" /><br style=3D"font-style: normal; font-variant-caps: normal; font-we=
ight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-dec=
oration-thickness: auto; text-decoration-style: solid; caret-color: #ffffff=
; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #=
000000; font-family: Helvetica; font-size: 12px; float: none; display: inli=
ne !important;">--</span><br style=3D"font-style: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; white-space: normal; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-lin=
e: none; text-decoration-thickness: auto; text-decoration-style: solid; car=
et-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;=
" /><span style=3D"font-style: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent=
: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: #f=
fffff; color: #000000; font-family: Helvetica; font-size: 12px; float: none=
; display: inline !important;">The build output:</span><br style=3D"font-st=
yle: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: n=
ormal; orphans: 2; text-align: start; text-indent: 0px; text-transform: non=
e; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-w=
idth: 0px; text-decoration-line: none; text-decoration-thickness: auto; tex=
t-decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-famil=
y: Helvetica; font-size: 12px;" /><br style=3D"font-style: normal; font-var=
iant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decor=
ation-line: none; text-decoration-thickness: auto; text-decoration-style: s=
olid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-si=
ze: 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; te=
xt-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-=
spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-=
color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; fl=
oat: none; display: inline !important;">jpsaman@ubuntuyocto:~/Source/xxxxx/=
insight_test3/build-raspberrypi4-64$ bitbake miniflex-generate-salt</span><=
br style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; text-decoration-line: none; text-decoration-t=
hickness: auto; text-decoration-style: solid; caret-color: #ffffff; color: =
#ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-st=
yle: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: n=
ormal; orphans: 2; text-align: start; text-indent: 0px; text-transform: non=
e; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-w=
idth: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; fon=
t-family: Helvetica; font-size: 12px; float: none; display: inline !importa=
nt;">Loading cache: 100% |#################################################=
###########################################################################=
###################################################| Time: 0:00:00</span><b=
r style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400;=
 letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; t=
ext-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; text-decoration-line: none; text-decoration-th=
ickness: auto; text-decoration-style: solid; caret-color: #ffffff; color: #=
ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-sty=
le: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: no=
rmal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none=
; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; font=
-family: Helvetica; font-size: 12px; float: none; display: inline !importan=
t;">Loaded 5053 entries from dependency cache.</span><br style=3D"font-styl=
e: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-wid=
th: 0px; text-decoration-line: none; text-decoration-thickness: auto; text-=
decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-family:=
 Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; font-var=
iant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decor=
ation: none; caret-color: #ffffff; color: #000000; font-family: Helvetica; =
font-size: 12px; float: none; display: inline !important;">NOTE: Resolving =
any missing task queue dependencies</span><br style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: start; text-indent: 0px; text-transform: none; white-spac=
e: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; te=
xt-decoration-line: none; text-decoration-thickness: auto; text-decoration-=
style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica;=
 font-size: 12px;" /><br style=3D"font-style: normal; font-variant-caps: no=
rmal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: sta=
rt; text-indent: 0px; text-transform: none; white-space: normal; widows: 2;=
 word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: n=
one; text-decoration-thickness: auto; text-decoration-style: solid; caret-c=
olor: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" />=
<span style=3D"font-style: normal; font-variant-caps: normal; font-weight: =
400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0p=
x; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;=
 -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: #fffff=
f; color: #000000; font-family: Helvetica; font-size: 12px; float: none; di=
splay: inline !important;">Build Configuration:</span><br style=3D"font-sty=
le: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: no=
rmal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none=
; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; text-decoration-line: none; text-decoration-thickness: auto; text=
-decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-family=
: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; font-va=
riant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; t=
ext-align: start; text-indent: 0px; text-transform: none; white-space: norm=
al; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-deco=
ration: none; caret-color: #ffffff; color: #000000; font-family: Helvetica;=
 font-size: 12px; float: none; display: inline !important;">BB_VERSION &nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "2.8.0"</span><=
br style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; text-decoration-line: none; text-decoration-t=
hickness: auto; text-decoration-style: solid; caret-color: #ffffff; color: =
#ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-st=
yle: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: n=
ormal; orphans: 2; text-align: start; text-indent: 0px; text-transform: non=
e; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-w=
idth: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; fon=
t-family: Helvetica; font-size: 12px; float: none; display: inline !importa=
nt;">BUILD_SYS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;=3D "aarch64-linux"</span><br style=3D"font-style: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: start; text-indent: 0px; text-transform: none; white-space: normal;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decorat=
ion-line: none; text-decoration-thickness: auto; text-decoration-style: sol=
id; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size=
: 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal; fo=
nt-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text=
-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-co=
lor: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; floa=
t: none; display: inline !important;">NATIVELSBSTRING &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;=3D "universal"</span><br style=3D"font-style: normal; font-varian=
t-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decorati=
on-line: none; text-decoration-thickness: auto; text-decoration-style: soli=
d; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size:=
 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal; fon=
t-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-col=
or: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; float=
: none; display: inline !important;">TARGET_SYS &nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "aarch64-poky-linux"</span><br style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration-line: none; text-decoration-thickness=
: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff;=
 font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: nor=
mal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; o=
rphans: 2; text-align: start; text-indent: 0px; text-transform: none; white=
-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; text-decoration: none; caret-color: #ffffff; color: #000000; font-family=
: Helvetica; font-size: 12px; float: none; display: inline !important;">MAC=
HINE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;=3D "raspberrypi4-64"</span><br style=3D"font-style: normal; font-v=
ariant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; =
text-align: start; text-indent: 0px; text-transform: none; white-space: nor=
mal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-dec=
oration-line: none; text-decoration-thickness: auto; text-decoration-style:=
 solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-=
size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal=
; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; care=
t-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; =
float: none; display: inline !important;">DISTRO &nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "sewer"</span=
><br style=3D"font-style: normal; font-variant-caps: normal; font-weight: 4=
00; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px=
; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; text-decoration=
-thickness: auto; text-decoration-style: solid; caret-color: #ffffff; color=
: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-=
style: normal; font-variant-caps: normal; font-weight: 400; letter-spacing:=
 normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: n=
one; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke=
-width: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; f=
ont-family: Helvetica; font-size: 12px; float: none; display: inline !impor=
tant;">DISTRO_VERSION &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "5.0.4"</span=
><br style=3D"font-style: normal; font-variant-caps: normal; font-weight: 4=
00; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px=
; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; text-decoration=
-thickness: auto; text-decoration-style: solid; caret-color: #ffffff; color=
: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-=
style: normal; font-variant-caps: normal; font-weight: 400; letter-spacing:=
 normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: n=
one; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke=
-width: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; f=
ont-family: Helvetica; font-size: 12px; float: none; display: inline !impor=
tant;">TUNE_FEATURES &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "aarch64=
 crc cortexa72"</span><br style=3D"font-style: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: st=
art; text-indent: 0px; text-transform: none; white-space: normal; widows: 2=
; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: =
none; text-decoration-thickness: auto; text-decoration-style: solid; caret-=
color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /=
><span style=3D"font-style: normal; font-variant-caps: normal; font-weight:=
 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px=
; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: #ffff=
ff; color: #000000; font-family: Helvetica; font-size: 12px; float: none; d=
isplay: inline !important;">TARGET_FPU &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;=3D ""</span><br style=3D"font-style: normal; font-=
variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2;=
 text-align: start; text-indent: 0px; text-transform: none; white-space: no=
rmal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-de=
coration-line: none; text-decoration-thickness: auto; text-decoration-style=
: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font=
-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: norma=
l; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start;=
 text-indent: 0px; text-transform: none; white-space: normal; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; car=
et-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px;=
 float: none; display: inline !important;">SDKMACHINE &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "aarch64"</span><br style=3D"fon=
t-style: normal; font-variant-caps: normal; font-weight: 400; letter-spacin=
g: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform:=
 none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; text-decoration-line: none; text-decoration-thickness: auto;=
 text-decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-f=
amily: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; fo=
nt-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans:=
 2; text-align: start; text-indent: 0px; text-transform: none; white-space:=
 normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text=
-decoration: none; caret-color: #ffffff; color: #000000; font-family: Helve=
tica; font-size: 12px; float: none; display: inline !important;">QT_VERSION=
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "6.8.1"</s=
pan><br style=3D"font-style: normal; font-variant-caps: normal; font-weight=
: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-decorat=
ion-thickness: auto; text-decoration-style: solid; caret-color: #ffffff; co=
lor: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"fo=
nt-style: normal; font-variant-caps: normal; font-weight: 400; letter-spaci=
ng: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-str=
oke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #000000=
; font-family: Helvetica; font-size: 12px; float: none; display: inline !im=
portant;">meta &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br style=3D"font-style: normal;=
 font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orpha=
ns: 2; text-align: start; text-indent: 0px; text-transform: none; white-spa=
ce: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; t=
ext-decoration-line: none; text-decoration-thickness: auto; text-decoration=
-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica=
; font-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; widows:=
 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: non=
e; caret-color: #ffffff; color: #000000; font-family: Helvetica; font-size:=
 12px; float: none; display: inline !important;">meta-poky &nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "HEAD:2034fc38eb4e639=
84d9bd6b260aa1bf95ce562e4"</span><br style=3D"font-style: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; white-space: normal=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion-line: none; text-decoration-thickness: auto; text-decoration-style: so=
lid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-siz=
e: 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-s=
pacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-c=
olor: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; flo=
at: none; display: inline !important;">meta-raspberrypi &nbsp;&nbsp;&nbsp;&=
nbsp;=3D "HEAD:6df7e028a2b7b2d8cab0745dc0ed2eebc3742a17"</span><br style=3D=
"font-style: normal; font-variant-caps: normal; font-weight: 400; letter-sp=
acing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transf=
orm: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-=
stroke-width: 0px; text-decoration-line: none; text-decoration-thickness: a=
uto; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff; fo=
nt-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; white-sp=
ace: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; caret-color: #ffffff; color: #000000; font-family: H=
elvetica; font-size: 12px; float: none; display: inline !important;">meta-o=
e &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;</span><br style=3D"font-style: normal; font-variant-caps: normal; fon=
t-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text=
-decoration-thickness: auto; text-decoration-style: solid; caret-color: #ff=
ffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span sty=
le=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; lett=
er-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-t=
ransform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; color:=
 #000000; font-family: Helvetica; font-size: 12px; float: none; display: in=
line !important;">meta-python &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;</span><br style=3D"font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; t=
ext-indent: 0px; text-transform: none; white-space: normal; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid; caret-color:=
 #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span=
 style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; te=
xt-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; co=
lor: #000000; font-family: Helvetica; font-size: 12px; float: none; display=
: inline !important;">meta-networking &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>=
<br style=3D"font-style: normal; font-variant-caps: normal; font-weight: 40=
0; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px;=
 text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -=
webkit-text-stroke-width: 0px; text-decoration-line: none; text-decoration-=
thickness: auto; text-decoration-style: solid; caret-color: #ffffff; color:=
 #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-s=
tyle: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: no=
ne; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; fo=
nt-family: Helvetica; font-size: 12px; float: none; display: inline !import=
ant;">meta-initramfs &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration-line: none; text-decoration-thickness=
: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff;=
 font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: nor=
mal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; o=
rphans: 2; text-align: start; text-indent: 0px; text-transform: none; white=
-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; text-decoration: none; caret-color: #ffffff; color: #000000; font-family=
: Helvetica; font-size: 12px; float: none; display: inline !important;">met=
a-multimedia &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br style=3D"font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal=
; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wh=
ite-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration-line: none; text-decoration-thickness: auto; text-dec=
oration-style: solid; caret-color: #ffffff; color: #ffffff; font-family: He=
lvetica; font-size: 12px;" /><span style=3D"font-style: normal; font-varian=
t-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decorati=
on: none; caret-color: #ffffff; color: #000000; font-family: Helvetica; fon=
t-size: 12px; float: none; display: inline !important;">meta-filesystems &n=
bsp;&nbsp;&nbsp;&nbsp;=3D "HEAD:72018ca1b1a471226917e8246e8bbf9a374ccf97"</=
span><br style=3D"font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent:=
 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-decora=
tion-thickness: auto; text-decoration-style: solid; caret-color: #ffffff; c=
olor: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"f=
ont-style: normal; font-variant-caps: normal; font-weight: 400; letter-spac=
ing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #00000=
0; font-family: Helvetica; font-size: 12px; float: none; display: inline !i=
mportant;">meta-clang &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;=3D "HEAD:2b7433611d80f6d0ee1b04156fa91fc73d3c2665"</span><br style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration-line: none; text-decoration-thickness=
: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff;=
 font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: nor=
mal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; o=
rphans: 2; text-align: start; text-indent: 0px; text-transform: none; white=
-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; text-decoration: none; caret-color: #ffffff; color: #000000; font-family=
: Helvetica; font-size: 12px; float: none; display: inline !important;">met=
a-boot2qt &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration-line: none; text-decoration-thickness=
: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff;=
 font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: nor=
mal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; o=
rphans: 2; text-align: start; text-indent: 0px; text-transform: none; white=
-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; text-decoration: none; caret-color: #ffffff; color: #000000; font-family=
: Helvetica; font-size: 12px; float: none; display: inline !important;">met=
a-boot2qt-distro &nbsp;=3D "HEAD:c53557c18ecc60ad9688eac8d4e6ce59b9cc365b"<=
/span><br style=3D"font-style: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent=
: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-decor=
ation-thickness: auto; text-decoration-style: solid; caret-color: #ffffff; =
color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"=
font-style: normal; font-variant-caps: normal; font-weight: 400; letter-spa=
cing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-s=
troke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #0000=
00; font-family: Helvetica; font-size: 12px; float: none; display: inline !=
important;">meta-mingw &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;=3D "HEAD:acbba477893ef87388effc4679b7f40ee49fc852"</span><br style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration-line: none; text-decoration-thickness=
: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff;=
 font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: nor=
mal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; o=
rphans: 2; text-align: start; text-indent: 0px; text-transform: none; white=
-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; text-decoration: none; caret-color: #ffffff; color: #000000; font-family=
: Helvetica; font-size: 12px; float: none; display: inline !important;">met=
a-qt6 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;=3D "HEAD:f4ef1331f0cc49bd4aa1e1aace6dc7f000b9651e"</span><br style=3D"f=
ont-style: normal; font-variant-caps: normal; font-weight: 400; letter-spac=
ing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; text-decoration-line: none; text-decoration-thickness: aut=
o; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff; font=
-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: start; text-indent: 0px; text-transform: none; white-spac=
e: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; te=
xt-decoration: none; caret-color: #ffffff; color: #000000; font-family: Hel=
vetica; font-size: 12px; float: none; display: inline !important;">meta-rau=
c &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "sc=
arthgap:8f35e94b406ef9ec466a6125971b40f51ae139eb"</span><br style=3D"font-s=
tyle: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: no=
ne; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; text-decoration-line: none; text-decoration-thickness: auto; te=
xt-decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-fami=
ly: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; font-=
variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2;=
 text-align: start; text-indent: 0px; text-transform: none; white-space: no=
rmal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-de=
coration: none; caret-color: #ffffff; color: #000000; font-family: Helvetic=
a; font-size: 12px; float: none; display: inline !important;">meta-rauc-ras=
pberrypi =3D "scarthgap:222c61275054974cdbd09bd5faa2b7a37ddbd840"</span><br=
 style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; te=
xt-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; text-decoration-line: none; text-decoration-thi=
ckness: auto; text-decoration-style: solid; caret-color: #ffffff; color: #f=
fffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-styl=
e: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-wid=
th: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; font-=
family: Helvetica; font-size: 12px; float: none; display: inline !important=
;">meta-lts-mixins &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "scarthgap/u-boot:a448=
82db02a0ed0f149371831bfbe067665eb42b"</span><br style=3D"font-style: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; white-sp=
ace: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration-line: none; text-decoration-thickness: auto; text-decoratio=
n-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetic=
a; font-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; white-space: normal; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: no=
ne; caret-color: #ffffff; color: #000000; font-family: Helvetica; font-size=
: 12px; float: none; display: inline !important;">meta-webserver &nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;=3D "HEAD:72018ca1b1a471226917e8246e8bbf9a374ccf9=
7"</span><br style=3D"font-style: normal; font-variant-caps: normal; font-w=
eight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-ind=
ent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacin=
g: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-de=
coration-thickness: auto; text-decoration-style: solid; caret-color: #fffff=
f; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #=
000000; font-family: Helvetica; font-size: 12px; float: none; display: inli=
ne !important;">meta-xxxxx &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "test/error:ce=
1954759448402f4ef5f004c678aa4b4daef92f"</span><br style=3D"font-style: norm=
al; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; or=
phans: 2; text-align: start; text-indent: 0px; text-transform: none; white-=
space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px=
; text-decoration-line: none; text-decoration-thickness: auto; text-decorat=
ion-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvet=
ica; font-size: 12px;" /><br style=3D"font-style: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; white-space: normal; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-lin=
e: none; text-decoration-thickness: auto; text-decoration-style: solid; car=
et-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;=
" /><span style=3D"font-style: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent=
: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: #f=
fffff; color: #000000; font-family: Helvetica; font-size: 12px; float: none=
; display: inline !important;">Sstate summary: Wanted 36 Local 25 Mirrors 0=
 Missed 11 Current 782 (69% match, 98% complete)###########################=
########################################################### &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;| ETA: &nbsp;0:00:00</span><br style=3D"font-style: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-=
decoration-line: none; text-decoration-thickness: auto; text-decoration-sty=
le: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; fo=
nt-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: nor=
mal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: star=
t; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; c=
aret-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12p=
x; float: none; display: inline !important;">Initialising tasks: 100% |####=
###########################################################################=
###########################################################################=
################| Time: 0:00:00</span><br style=3D"font-style: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; white-space: n=
ormal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-d=
ecoration-line: none; text-decoration-thickness: auto; text-decoration-styl=
e: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; fon=
t-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; w=
ord-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; ca=
ret-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px=
; float: none; display: inline !important;">NOTE: Executing Tasks</span><br=
 style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; te=
xt-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; text-decoration-line: none; text-decoration-thi=
ckness: auto; text-decoration-style: solid; caret-color: #ffffff; color: #f=
fffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-styl=
e: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-wid=
th: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; font-=
family: Helvetica; font-size: 12px; float: none; display: inline !important=
;">ERROR: miniflex-generate-salt-1.0-r0 do_package: Error executing a pytho=
n function in exec_func_python() autogenerated:</span><br style=3D"font-sty=
le: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: no=
rmal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none=
; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; text-decoration-line: none; text-decoration-thickness: auto; text=
-decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-family=
: Helvetica; font-size: 12px;" /><br style=3D"font-style: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; white-space: normal=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion-line: none; text-decoration-thickness: auto; text-decoration-style: so=
lid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-siz=
e: 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-s=
pacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-c=
olor: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; flo=
at: none; display: inline !important;">The stack trace of python calls that=
 resulted in this exception/failure was:</span><br style=3D"font-style: nor=
mal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; o=
rphans: 2; text-align: start; text-indent: 0px; text-transform: none; white=
-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; text-decoration-line: none; text-decoration-thickness: auto; text-decora=
tion-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helve=
tica; font-size: 12px;" /><span style=3D"font-style: normal; font-variant-c=
aps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-ali=
gn: start; text-indent: 0px; text-transform: none; white-space: normal; wid=
ows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration:=
 none; caret-color: #ffffff; color: #000000; font-family: Helvetica; font-s=
ize: 12px; float: none; display: inline !important;">File: 'exec_func_pytho=
n() autogenerated', lineno: 2, function: &lt;module&gt;</span><br style=3D"=
font-style: normal; font-variant-caps: normal; font-weight: 400; letter-spa=
cing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-s=
troke-width: 0px; text-decoration-line: none; text-decoration-thickness: au=
to; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff; fon=
t-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal;=
 font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orpha=
ns: 2; text-align: start; text-indent: 0px; text-transform: none; white-spa=
ce: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; t=
ext-decoration: none; caret-color: #ffffff; color: #000000; font-family: He=
lvetica; font-size: 12px; float: none; display: inline !important;">&nbsp;&=
nbsp;&nbsp;&nbsp;0001:</span><br style=3D"font-style: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-al=
ign: start; text-indent: 0px; text-transform: none; white-space: normal; wi=
dows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration=
-line: none; text-decoration-thickness: auto; text-decoration-style: solid;=
 caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 1=
2px;" /><span style=3D"font-style: normal; font-variant-caps: normal; font-=
weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-in=
dent: 0px; text-transform: none; white-space: normal; widows: 2; word-spaci=
ng: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color=
: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; float: =
none; display: inline !important;">*** 0002:perform_packagecopy(d)</span><b=
r style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400;=
 letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; t=
ext-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; text-decoration-line: none; text-decoration-th=
ickness: auto; text-decoration-style: solid; caret-color: #ffffff; color: #=
ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-sty=
le: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: no=
rmal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none=
; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; font=
-family: Helvetica; font-size: 12px; float: none; display: inline !importan=
t;">&nbsp;&nbsp;&nbsp;&nbsp;0003:</span><br style=3D"font-style: normal; fo=
nt-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans:=
 2; text-align: start; text-indent: 0px; text-transform: none; white-space:=
 normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text=
-decoration-line: none; text-decoration-thickness: auto; text-decoration-st=
yle: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; f=
ont-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: no=
rmal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: sta=
rt; text-indent: 0px; text-transform: none; white-space: normal; widows: 2;=
 word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; =
caret-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12=
px; float: none; display: inline !important;">File: '/home/jpsaman/Source/x=
xxxx/insight_test3/sources/poky/meta/classes-global/package.bbclass', linen=
o: 363, function: perform_packagecopy</span><br style=3D"font-style: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; white-sp=
ace: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration-line: none; text-decoration-thickness: auto; text-decoratio=
n-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetic=
a; font-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; white-space: normal; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: no=
ne; caret-color: #ffffff; color: #000000; font-family: Helvetica; font-size=
: 12px; float: none; display: inline !important;">&nbsp;&nbsp;&nbsp;&nbsp;0=
359: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rpath_replace (dvar, d)</spa=
n><br style=3D"font-style: normal; font-variant-caps: normal; font-weight: =
400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0p=
x; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;=
 -webkit-text-stroke-width: 0px; text-decoration-line: none; text-decoratio=
n-thickness: auto; text-decoration-style: solid; caret-color: #ffffff; colo=
r: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font=
-style: normal; font-variant-caps: normal; font-weight: 400; letter-spacing=
: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-strok=
e-width: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; =
font-family: Helvetica; font-size: 12px; float: none; display: inline !impo=
rtant;">&nbsp;&nbsp;&nbsp;&nbsp;0360:}</span><br style=3D"font-style: norma=
l; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orp=
hans: 2; text-align: start; text-indent: 0px; text-transform: none; white-s=
pace: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
 text-decoration-line: none; text-decoration-thickness: auto; text-decorati=
on-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helveti=
ca; font-size: 12px;" /><span style=3D"font-style: normal; font-variant-cap=
s: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align=
: start; text-indent: 0px; text-transform: none; white-space: normal; widow=
s: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: n=
one; caret-color: #ffffff; color: #000000; font-family: Helvetica; font-siz=
e: 12px; float: none; display: inline !important;">&nbsp;&nbsp;&nbsp;&nbsp;=
0361:perform_packagecopy[cleandirs] =3D "${PKGD}"</span><br style=3D"font-s=
tyle: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: no=
ne; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; text-decoration-line: none; text-decoration-thickness: auto; te=
xt-decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-fami=
ly: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; font-=
variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2;=
 text-align: start; text-indent: 0px; text-transform: none; white-space: no=
rmal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-de=
coration: none; caret-color: #ffffff; color: #000000; font-family: Helvetic=
a; font-size: 12px; float: none; display: inline !important;">&nbsp;&nbsp;&=
nbsp;&nbsp;0362:perform_packagecopy[dirs] =3D "${PKGD}"</span><br style=3D"=
font-style: normal; font-variant-caps: normal; font-weight: 400; letter-spa=
cing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-s=
troke-width: 0px; text-decoration-line: none; text-decoration-thickness: au=
to; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff; fon=
t-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal;=
 font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orpha=
ns: 2; text-align: start; text-indent: 0px; text-transform: none; white-spa=
ce: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; t=
ext-decoration: none; caret-color: #ffffff; color: #000000; font-family: He=
lvetica; font-size: 12px; float: none; display: inline !important;">*** 036=
3:</span><br style=3D"font-style: normal; font-variant-caps: normal; font-w=
eight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-ind=
ent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacin=
g: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-de=
coration-thickness: auto; text-decoration-style: solid; caret-color: #fffff=
f; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #=
000000; font-family: Helvetica; font-size: 12px; float: none; display: inli=
ne !important;">&nbsp;&nbsp;&nbsp;&nbsp;0364:python populate_packages () {<=
/span><br style=3D"font-style: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent=
: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-decor=
ation-thickness: auto; text-decoration-style: solid; caret-color: #ffffff; =
color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"=
font-style: normal; font-variant-caps: normal; font-weight: 400; letter-spa=
cing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-s=
troke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #0000=
00; font-family: Helvetica; font-size: 12px; float: none; display: inline !=
important;">&nbsp;&nbsp;&nbsp;&nbsp;0365: &nbsp;&nbsp;&nbsp;oe.package.popu=
late_packages(d)</span><br style=3D"font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: s=
tart; text-indent: 0px; text-transform: none; white-space: normal; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line:=
 none; text-decoration-thickness: auto; text-decoration-style: solid; caret=
-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" =
/><span style=3D"font-style: normal; font-variant-caps: normal; font-weight=
: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: #fff=
fff; color: #000000; font-family: Helvetica; font-size: 12px; float: none; =
display: inline !important;">&nbsp;&nbsp;&nbsp;&nbsp;0366:}</span><br style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration-line: none; text-decoration-thickness=
: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff;=
 font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: nor=
mal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; o=
rphans: 2; text-align: start; text-indent: 0px; text-transform: none; white=
-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; text-decoration: none; caret-color: #ffffff; color: #000000; font-family=
: Helvetica; font-size: 12px; float: none; display: inline !important;">&nb=
sp;&nbsp;&nbsp;&nbsp;0367:populate_packages[dirs] =3D "${D}"</span><br styl=
e=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tr=
ansform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; text-decoration-line: none; text-decoration-thicknes=
s: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff=
; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; text-decoration: none; caret-color: #ffffff; color: #000000; font-famil=
y: Helvetica; font-size: 12px; float: none; display: inline !important;">Fi=
le: '/usr/lib/python3.10/subprocess.py', lineno: 421, function: check_outpu=
t</span><br style=3D"font-style: normal; font-variant-caps: normal; font-we=
ight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-dec=
oration-thickness: auto; text-decoration-style: solid; caret-color: #ffffff=
; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #=
000000; font-family: Helvetica; font-size: 12px; float: none; display: inli=
ne !important;">&nbsp;&nbsp;&nbsp;&nbsp;0417: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;else:</span><br style=3D"font-style: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; white-space: normal; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-lin=
e: none; text-decoration-thickness: auto; text-decoration-style: solid; car=
et-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;=
" /><span style=3D"font-style: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent=
: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: #f=
fffff; color: #000000; font-family: Helvetica; font-size: 12px; float: none=
; display: inline !important;">&nbsp;&nbsp;&nbsp;&nbsp;0418: &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;empty =3D b''</span><br=
 style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; te=
xt-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; text-decoration-line: none; text-decoration-thi=
ckness: auto; text-decoration-style: solid; caret-color: #ffffff; color: #f=
fffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-styl=
e: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-wid=
th: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; font-=
family: Helvetica; font-size: 12px; float: none; display: inline !important=
;">&nbsp;&nbsp;&nbsp;&nbsp;0419: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
kwargs['input'] =3D empty</span><br style=3D"font-style: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: start; text-indent: 0px; text-transform: none; white-space: normal;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decorat=
ion-line: none; text-decoration-thickness: auto; text-decoration-style: sol=
id; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size=
: 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal; fo=
nt-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text=
-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-co=
lor: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; floa=
t: none; display: inline !important;">&nbsp;&nbsp;&nbsp;&nbsp;0420:</span><=
br style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; text-decoration-line: none; text-decoration-t=
hickness: auto; text-decoration-style: solid; caret-color: #ffffff; color: =
#ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-st=
yle: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: n=
ormal; orphans: 2; text-align: start; text-indent: 0px; text-transform: non=
e; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-w=
idth: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; fon=
t-family: Helvetica; font-size: 12px; float: none; display: inline !importa=
nt;">*** 0421: &nbsp;&nbsp;&nbsp;return run(*popenargs, stdout=3DPIPE, time=
out=3Dtimeout, check=3DTrue,</span><br style=3D"font-style: normal; font-va=
riant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; t=
ext-align: start; text-indent: 0px; text-transform: none; white-space: norm=
al; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-deco=
ration-line: none; text-decoration-thickness: auto; text-decoration-style: =
solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-s=
ize: 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; t=
ext-indent: 0px; text-transform: none; white-space: normal; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret=
-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; f=
loat: none; display: inline !important;">&nbsp;&nbsp;&nbsp;&nbsp;0422: &nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;**kwargs).stdout</span><br style=3D"font-style: normal; font-variant-c=
aps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-ali=
gn: start; text-indent: 0px; text-transform: none; white-space: normal; wid=
ows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-=
line: none; text-decoration-thickness: auto; text-decoration-style: solid; =
caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12=
px;" /><span style=3D"font-style: normal; font-variant-caps: normal; font-w=
eight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-ind=
ent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacin=
g: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color:=
 #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; float: n=
one; display: inline !important;">&nbsp;&nbsp;&nbsp;&nbsp;0423:</span><br s=
tyle=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webki=
t-text-stroke-width: 0px; text-decoration-line: none; text-decoration-thick=
ness: auto; text-decoration-style: solid; caret-color: #ffffff; color: #fff=
fff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; font-fa=
mily: Helvetica; font-size: 12px; float: none; display: inline !important;"=
>&nbsp;&nbsp;&nbsp;&nbsp;0424:</span><br style=3D"font-style: normal; font-=
variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2;=
 text-align: start; text-indent: 0px; text-transform: none; white-space: no=
rmal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-de=
coration-line: none; text-decoration-thickness: auto; text-decoration-style=
: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font=
-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: norma=
l; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start;=
 text-indent: 0px; text-transform: none; white-space: normal; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; car=
et-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px;=
 float: none; display: inline !important;">&nbsp;&nbsp;&nbsp;&nbsp;0425:cla=
ss CompletedProcess(object):</span><br style=3D"font-style: normal; font-va=
riant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; t=
ext-align: start; text-indent: 0px; text-transform: none; white-space: norm=
al; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-deco=
ration-line: none; text-decoration-thickness: auto; text-decoration-style: =
solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-s=
ize: 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; t=
ext-indent: 0px; text-transform: none; white-space: normal; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret=
-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; f=
loat: none; display: inline !important;">File: '/usr/lib/python3.10/subproc=
ess.py', lineno: 526, function: run</span><br style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: start; text-indent: 0px; text-transform: none; white-spac=
e: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; te=
xt-decoration-line: none; text-decoration-thickness: auto; text-decoration-=
style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica;=
 font-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: s=
tart; text-indent: 0px; text-transform: none; white-space: normal; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none=
; caret-color: #ffffff; color: #000000; font-family: Helvetica; font-size: =
12px; float: none; display: inline !important;">&nbsp;&nbsp;&nbsp;&nbsp;052=
2: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# We d=
on't call process.wait() as .__exit__ does that for us.</span><br style=3D"=
font-style: normal; font-variant-caps: normal; font-weight: 400; letter-spa=
cing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-s=
troke-width: 0px; text-decoration-line: none; text-decoration-thickness: au=
to; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff; fon=
t-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal;=
 font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orpha=
ns: 2; text-align: start; text-indent: 0px; text-transform: none; white-spa=
ce: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; t=
ext-decoration: none; caret-color: #ffffff; color: #000000; font-family: He=
lvetica; font-size: 12px; float: none; display: inline !important;">&nbsp;&=
nbsp;&nbsp;&nbsp;0523: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;raise</span><br style=3D"font-style: normal; font-variant-cap=
s: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align=
: start; text-indent: 0px; text-transform: none; white-space: normal; widow=
s: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-li=
ne: none; text-decoration-thickness: auto; text-decoration-style: solid; ca=
ret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px=
;" /><span style=3D"font-style: normal; font-variant-caps: normal; font-wei=
ght: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inden=
t: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing:=
 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: #=
ffffff; color: #000000; font-family: Helvetica; font-size: 12px; float: non=
e; display: inline !important;">&nbsp;&nbsp;&nbsp;&nbsp;0524: &nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;retcode =3D process.poll()</span><br style=3D"=
font-style: normal; font-variant-caps: normal; font-weight: 400; letter-spa=
cing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-s=
troke-width: 0px; text-decoration-line: none; text-decoration-thickness: au=
to; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff; fon=
t-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal;=
 font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orpha=
ns: 2; text-align: start; text-indent: 0px; text-transform: none; white-spa=
ce: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; t=
ext-decoration: none; caret-color: #ffffff; color: #000000; font-family: He=
lvetica; font-size: 12px; float: none; display: inline !important;">&nbsp;&=
nbsp;&nbsp;&nbsp;0525: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if check a=
nd retcode:</span><br style=3D"font-style: normal; font-variant-caps: norma=
l; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start;=
 text-indent: 0px; text-transform: none; white-space: normal; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none=
; text-decoration-thickness: auto; text-decoration-style: solid; caret-colo=
r: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><sp=
an style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; =
color: #000000; font-family: Helvetica; font-size: 12px; float: none; displ=
ay: inline !important;">*** 0526: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;raise CalledProcessError(retcode, process.args,</s=
pan><br style=3D"font-style: normal; font-variant-caps: normal; font-weight=
: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-decorat=
ion-thickness: auto; text-decoration-style: solid; caret-color: #ffffff; co=
lor: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"fo=
nt-style: normal; font-variant-caps: normal; font-weight: 400; letter-spaci=
ng: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-str=
oke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #000000=
; font-family: Helvetica; font-size: 12px; float: none; display: inline !im=
portant;">&nbsp;&nbsp;&nbsp;&nbsp;0527: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;output=3Dstdout, stderr=3Dstderr)</span><br =
style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; l=
etter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; tex=
t-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webk=
it-text-stroke-width: 0px; text-decoration-line: none; text-decoration-thic=
kness: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ff=
ffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style=
: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norm=
al; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-widt=
h: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; font-f=
amily: Helvetica; font-size: 12px; float: none; display: inline !important;=
">&nbsp;&nbsp;&nbsp;&nbsp;0528: &nbsp;&nbsp;&nbsp;return CompletedProcess(p=
rocess.args, retcode, stdout, stderr)</span><br style=3D"font-style: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; white-sp=
ace: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration-line: none; text-decoration-thickness: auto; text-decoratio=
n-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetic=
a; font-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; white-space: normal; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: no=
ne; caret-color: #ffffff; color: #000000; font-family: Helvetica; font-size=
: 12px; float: none; display: inline !important;">&nbsp;&nbsp;&nbsp;&nbsp;0=
529:</span><br style=3D"font-style: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-=
decoration-thickness: auto; text-decoration-style: solid; caret-color: #fff=
fff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span styl=
e=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tr=
ansform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; color: =
#000000; font-family: Helvetica; font-size: 12px; float: none; display: inl=
ine !important;">&nbsp;&nbsp;&nbsp;&nbsp;0530:</span><br style=3D"font-styl=
e: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-wid=
th: 0px; text-decoration-line: none; text-decoration-thickness: auto; text-=
decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-family:=
 Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; font-var=
iant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decor=
ation: none; caret-color: #ffffff; color: #000000; font-family: Helvetica; =
font-size: 12px; float: none; display: inline !important;">Exception: subpr=
ocess.CalledProcessError: Command 'tar --exclude=3D./sysroot-only -cf - -C =
/home/jpsaman/Source/xxxxx/insight_test3/build-raspberrypi4-64/tmp/work/cor=
texa72-poky-linux/miniflex-generate-salt/1.0/image -p -S . | tar -xf - -C /=
home/jpsaman/Source/xxxxx/insight_test3/build-raspberrypi4-64/tmp/work/cort=
exa72-poky-linux/miniflex-generate-salt/1.0/package' returned non-zero exit=
 status 2.</span><br style=3D"font-style: normal; font-variant-caps: normal=
; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none;=
 text-decoration-thickness: auto; text-decoration-style: solid; caret-color=
: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><br =
style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; l=
etter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; tex=
t-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webk=
it-text-stroke-width: 0px; text-decoration-line: none; text-decoration-thic=
kness: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ff=
ffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style=
: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norm=
al; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-widt=
h: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; font-f=
amily: Helvetica; font-size: 12px; float: none; display: inline !important;=
">Subprocess output:</span><br style=3D"font-style: normal; font-variant-ca=
ps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-alig=
n: start; text-indent: 0px; text-transform: none; white-space: normal; wido=
ws: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-l=
ine: none; text-decoration-thickness: auto; text-decoration-style: solid; c=
aret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12p=
x;" /><span style=3D"font-style: normal; font-variant-caps: normal; font-we=
ight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: =
#ffffff; color: #000000; font-family: Helvetica; font-size: 12px; float: no=
ne; display: inline !important;">got *at() syscall for unknown directory, f=
d 4</span><br style=3D"font-style: normal; font-variant-caps: normal; font-=
weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-in=
dent: 0px; text-transform: none; white-space: normal; widows: 2; word-spaci=
ng: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-d=
ecoration-thickness: auto; text-decoration-style: solid; caret-color: #ffff=
ff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #=
000000; font-family: Helvetica; font-size: 12px; float: none; display: inli=
ne !important;">unknown base path for fd 4, path bin</span><br style=3D"fon=
t-style: normal; font-variant-caps: normal; font-weight: 400; letter-spacin=
g: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform:=
 none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; text-decoration-line: none; text-decoration-thickness: auto;=
 text-decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-f=
amily: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; fo=
nt-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans:=
 2; text-align: start; text-indent: 0px; text-transform: none; white-space:=
 normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text=
-decoration: none; caret-color: #ffffff; color: #000000; font-family: Helve=
tica; font-size: 12px; float: none; display: inline !important;">couldn't a=
llocate absolute path for 'bin'.</span><br style=3D"font-style: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-=
decoration-line: none; text-decoration-thickness: auto; text-decoration-sty=
le: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; fo=
nt-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: nor=
mal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: star=
t; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; c=
aret-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12p=
x; float: none; display: inline !important;">tar: ./usr/bin: Cannot mkdir: =
Bad address</span><br style=3D"font-style: normal; font-variant-caps: norma=
l; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start;=
 text-indent: 0px; text-transform: none; white-space: normal; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none=
; text-decoration-thickness: auto; text-decoration-style: solid; caret-colo=
r: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><sp=
an style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; =
color: #000000; font-family: Helvetica; font-size: 12px; float: none; displ=
ay: inline !important;">got *at() syscall for unknown directory, fd 4</span=
><br style=3D"font-style: normal; font-variant-caps: normal; font-weight: 4=
00; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px=
; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; text-decoration=
-thickness: auto; text-decoration-style: solid; caret-color: #ffffff; color=
: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-=
style: normal; font-variant-caps: normal; font-weight: 400; letter-spacing:=
 normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: n=
one; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke=
-width: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; f=
ont-family: Helvetica; font-size: 12px; float: none; display: inline !impor=
tant;">unknown base path for fd 4, path bin</span><br style=3D"font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal=
; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wh=
ite-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration-line: none; text-decoration-thickness: auto; text-dec=
oration-style: solid; caret-color: #ffffff; color: #ffffff; font-family: He=
lvetica; font-size: 12px;" /><span style=3D"font-style: normal; font-varian=
t-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decorati=
on: none; caret-color: #ffffff; color: #000000; font-family: Helvetica; fon=
t-size: 12px; float: none; display: inline !important;">couldn't allocate a=
bsolute path for 'bin'.</span><br style=3D"font-style: normal; font-variant=
-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-a=
lign: start; text-indent: 0px; text-transform: none; white-space: normal; w=
idows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoratio=
n-line: none; text-decoration-thickness: auto; text-decoration-style: solid=
; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: =
12px;" /><span style=3D"font-style: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-colo=
r: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; float:=
 none; display: inline !important;">got *at() syscall for unknown directory=
, fd 4</span><br style=3D"font-style: normal; font-variant-caps: normal; fo=
nt-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text=
-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; tex=
t-decoration-thickness: auto; text-decoration-style: solid; caret-color: #f=
fffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span st=
yle=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; let=
ter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-=
transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit=
-text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; color=
: #000000; font-family: Helvetica; font-size: 12px; float: none; display: i=
nline !important;">unknown base path for fd 4, path bin</span><br style=3D"=
font-style: normal; font-variant-caps: normal; font-weight: 400; letter-spa=
cing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-s=
troke-width: 0px; text-decoration-line: none; text-decoration-thickness: au=
to; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff; fon=
t-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal;=
 font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orpha=
ns: 2; text-align: start; text-indent: 0px; text-transform: none; white-spa=
ce: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; t=
ext-decoration: none; caret-color: #ffffff; color: #000000; font-family: He=
lvetica; font-size: 12px; float: none; display: inline !important;">couldn'=
t allocate absolute path for 'bin'.</span><br style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: start; text-indent: 0px; text-transform: none; white-spac=
e: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; te=
xt-decoration-line: none; text-decoration-thickness: auto; text-decoration-=
style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica;=
 font-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: s=
tart; text-indent: 0px; text-transform: none; white-space: normal; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none=
; caret-color: #ffffff; color: #000000; font-family: Helvetica; font-size: =
12px; float: none; display: inline !important;">tar: ./usr/bin: Cannot mkdi=
r: Bad address</span><br style=3D"font-style: normal; font-variant-caps: no=
rmal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: sta=
rt; text-indent: 0px; text-transform: none; white-space: normal; widows: 2;=
 word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: n=
one; text-decoration-thickness: auto; text-decoration-style: solid; caret-c=
olor: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" />=
<span style=3D"font-style: normal; font-variant-caps: normal; font-weight: =
400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0p=
x; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;=
 -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: #fffff=
f; color: #000000; font-family: Helvetica; font-size: 12px; float: none; di=
splay: inline !important;">tar: ./usr/bin/miniflex-generate-salt: Cannot op=
en: No such file or directory</span><br style=3D"font-style: normal; font-v=
ariant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; =
text-align: start; text-indent: 0px; text-transform: none; white-space: nor=
mal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-dec=
oration-line: none; text-decoration-thickness: auto; text-decoration-style:=
 solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-=
size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal=
; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; care=
t-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; =
float: none; display: inline !important;">got *at() syscall for unknown dir=
ectory, fd 4</span><br style=3D"font-style: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; w=
ord-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: non=
e; text-decoration-thickness: auto; text-decoration-style: solid; caret-col=
or: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><s=
pan style=3D"font-style: normal; font-variant-caps: normal; font-weight: 40=
0; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px;=
 text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -=
webkit-text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff;=
 color: #000000; font-family: Helvetica; font-size: 12px; float: none; disp=
lay: inline !important;">unknown base path for fd 4, path share</span><br s=
tyle=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webki=
t-text-stroke-width: 0px; text-decoration-line: none; text-decoration-thick=
ness: auto; text-decoration-style: solid; caret-color: #ffffff; color: #fff=
fff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; font-fa=
mily: Helvetica; font-size: 12px; float: none; display: inline !important;"=
>couldn't allocate absolute path for 'share'.</span><br style=3D"font-style=
: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norm=
al; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-widt=
h: 0px; text-decoration-line: none; text-decoration-thickness: auto; text-d=
ecoration-style: solid; caret-color: #ffffff; color: #ffffff; font-family: =
Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; white-space: normal=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion: none; caret-color: #ffffff; color: #000000; font-family: Helvetica; f=
ont-size: 12px; float: none; display: inline !important;">tar: ./usr/share:=
 Cannot mkdir: Bad address</span><br style=3D"font-style: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; white-space: normal=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion-line: none; text-decoration-thickness: auto; text-decoration-style: so=
lid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-siz=
e: 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-s=
pacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-c=
olor: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; flo=
at: none; display: inline !important;">got *at() syscall for unknown direct=
ory, fd 4</span><br style=3D"font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; t=
ext-indent: 0px; text-transform: none; white-space: normal; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid; caret-color:=
 #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span=
 style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; te=
xt-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; co=
lor: #000000; font-family: Helvetica; font-size: 12px; float: none; display=
: inline !important;">unknown base path for fd 4, path share</span><br styl=
e=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tr=
ansform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; text-decoration-line: none; text-decoration-thicknes=
s: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff=
; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; text-decoration: none; caret-color: #ffffff; color: #000000; font-famil=
y: Helvetica; font-size: 12px; float: none; display: inline !important;">co=
uldn't allocate absolute path for 'share'.</span><br style=3D"font-style: n=
ormal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal;=
 orphans: 2; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration-line: none; text-decoration-thickness: auto; text-deco=
ration-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Hel=
vetica; font-size: 12px;" /><span style=3D"font-style: normal; font-variant=
-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-a=
lign: start; text-indent: 0px; text-transform: none; white-space: normal; w=
idows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoratio=
n: none; caret-color: #ffffff; color: #000000; font-family: Helvetica; font=
-size: 12px; float: none; display: inline !important;">got *at() syscall fo=
r unknown directory, fd 4</span><br style=3D"font-style: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: start; text-indent: 0px; text-transform: none; white-space: normal;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decorat=
ion-line: none; text-decoration-thickness: auto; text-decoration-style: sol=
id; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size=
: 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal; fo=
nt-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text=
-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-co=
lor: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; floa=
t: none; display: inline !important;">unknown base path for fd 4, path shar=
e</span><br style=3D"font-style: normal; font-variant-caps: normal; font-we=
ight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-dec=
oration-thickness: auto; text-decoration-style: solid; caret-color: #ffffff=
; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #=
000000; font-family: Helvetica; font-size: 12px; float: none; display: inli=
ne !important;">couldn't allocate absolute path for 'share'.</span><br styl=
e=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tr=
ansform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; text-decoration-line: none; text-decoration-thicknes=
s: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff=
; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; text-decoration: none; caret-color: #ffffff; color: #000000; font-famil=
y: Helvetica; font-size: 12px; float: none; display: inline !important;">ta=
r: ./usr/share: Cannot mkdir: Bad address</span><br style=3D"font-style: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; text-decoration-line: none; text-decoration-thickness: auto; text-decor=
ation-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helv=
etica; font-size: 12px;" /><span style=3D"font-style: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-al=
ign: start; text-indent: 0px; text-transform: none; white-space: normal; wi=
dows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration=
: none; caret-color: #ffffff; color: #000000; font-family: Helvetica; font-=
size: 12px; float: none; display: inline !important;">tar: ./usr/share/lice=
nses: Cannot mkdir: No such file or directory</span><br style=3D"font-style=
: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norm=
al; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-widt=
h: 0px; text-decoration-line: none; text-decoration-thickness: auto; text-d=
ecoration-style: solid; caret-color: #ffffff; color: #ffffff; font-family: =
Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; white-space: normal=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion: none; caret-color: #ffffff; color: #000000; font-family: Helvetica; f=
ont-size: 12px; float: none; display: inline !important;">got *at() syscall=
 for unknown directory, fd 4</span><br style=3D"font-style: normal; font-va=
riant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; t=
ext-align: start; text-indent: 0px; text-transform: none; white-space: norm=
al; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-deco=
ration-line: none; text-decoration-thickness: auto; text-decoration-style: =
solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-s=
ize: 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; t=
ext-indent: 0px; text-transform: none; white-space: normal; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret=
-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; f=
loat: none; display: inline !important;">unknown base path for fd 4, path s=
hare</span><br style=3D"font-style: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-=
decoration-thickness: auto; text-decoration-style: solid; caret-color: #fff=
fff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span styl=
e=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tr=
ansform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; color: =
#000000; font-family: Helvetica; font-size: 12px; float: none; display: inl=
ine !important;">couldn't allocate absolute path for 'share'.</span><br sty=
le=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; lett=
er-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-t=
ransform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration-line: none; text-decoration-thickne=
ss: auto; text-decoration-style: solid; caret-color: #ffffff; color: #fffff=
f; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: n=
ormal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal;=
 orphans: 2; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration: none; caret-color: #ffffff; color: #000000; font-fami=
ly: Helvetica; font-size: 12px; float: none; display: inline !important;">g=
ot *at() syscall for unknown directory, fd 4</span><br style=3D"font-style:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration-line: none; text-decoration-thickness: auto; text-de=
coration-style: solid; caret-color: #ffffff; color: #ffffff; font-family: H=
elvetica; font-size: 12px;" /><span style=3D"font-style: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: start; text-indent: 0px; text-transform: none; white-space: normal;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decorat=
ion: none; caret-color: #ffffff; color: #000000; font-family: Helvetica; fo=
nt-size: 12px; float: none; display: inline !important;">unknown base path =
for fd 4, path share</span><br style=3D"font-style: normal; font-variant-ca=
ps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-alig=
n: start; text-indent: 0px; text-transform: none; white-space: normal; wido=
ws: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-l=
ine: none; text-decoration-thickness: auto; text-decoration-style: solid; c=
aret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12p=
x;" /><span style=3D"font-style: normal; font-variant-caps: normal; font-we=
ight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: =
#ffffff; color: #000000; font-family: Helvetica; font-size: 12px; float: no=
ne; display: inline !important;">couldn't allocate absolute path for 'share=
'.</span><br style=3D"font-style: normal; font-variant-caps: normal; font-w=
eight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-ind=
ent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacin=
g: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-de=
coration-thickness: auto; text-decoration-style: solid; caret-color: #fffff=
f; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #=
000000; font-family: Helvetica; font-size: 12px; float: none; display: inli=
ne !important;">tar: ./usr/share: Cannot mkdir: Bad address</span><br style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration-line: none; text-decoration-thickness=
: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff;=
 font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: nor=
mal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; o=
rphans: 2; text-align: start; text-indent: 0px; text-transform: none; white=
-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; text-decoration: none; caret-color: #ffffff; color: #000000; font-family=
: Helvetica; font-size: 12px; float: none; display: inline !important;">tar=
: ./usr/share/licenses/miniflex-generate-salt: Cannot mkdir: No such file o=
r directory</span><br style=3D"font-style: normal; font-variant-caps: norma=
l; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start;=
 text-indent: 0px; text-transform: none; white-space: normal; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none=
; text-decoration-thickness: auto; text-decoration-style: solid; caret-colo=
r: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><sp=
an style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; =
color: #000000; font-family: Helvetica; font-size: 12px; float: none; displ=
ay: inline !important;">got *at() syscall for unknown directory, fd 4</span=
><br style=3D"font-style: normal; font-variant-caps: normal; font-weight: 4=
00; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px=
; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; text-decoration=
-thickness: auto; text-decoration-style: solid; caret-color: #ffffff; color=
: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-=
style: normal; font-variant-caps: normal; font-weight: 400; letter-spacing:=
 normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: n=
one; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke=
-width: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; f=
ont-family: Helvetica; font-size: 12px; float: none; display: inline !impor=
tant;">unknown base path for fd 4, path share</span><br style=3D"font-style=
: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norm=
al; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-widt=
h: 0px; text-decoration-line: none; text-decoration-thickness: auto; text-d=
ecoration-style: solid; caret-color: #ffffff; color: #ffffff; font-family: =
Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; white-space: normal=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion: none; caret-color: #ffffff; color: #000000; font-family: Helvetica; f=
ont-size: 12px; float: none; display: inline !important;">couldn't allocate=
 absolute path for 'share'.</span><br style=3D"font-style: normal; font-var=
iant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decor=
ation-line: none; text-decoration-thickness: auto; text-decoration-style: s=
olid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-si=
ze: 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; te=
xt-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-=
spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-=
color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; fl=
oat: none; display: inline !important;">got *at() syscall for unknown direc=
tory, fd 4</span><br style=3D"font-style: normal; font-variant-caps: normal=
; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none;=
 text-decoration-thickness: auto; text-decoration-style: solid; caret-color=
: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><spa=
n style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400;=
 letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; t=
ext-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; c=
olor: #000000; font-family: Helvetica; font-size: 12px; float: none; displa=
y: inline !important;">unknown base path for fd 4, path share</span><br sty=
le=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; lett=
er-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-t=
ransform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration-line: none; text-decoration-thickne=
ss: auto; text-decoration-style: solid; caret-color: #ffffff; color: #fffff=
f; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style: n=
ormal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal;=
 orphans: 2; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration: none; caret-color: #ffffff; color: #000000; font-fami=
ly: Helvetica; font-size: 12px; float: none; display: inline !important;">c=
ouldn't allocate absolute path for 'share'.</span><br style=3D"font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal=
; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wh=
ite-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration-line: none; text-decoration-thickness: auto; text-dec=
oration-style: solid; caret-color: #ffffff; color: #ffffff; font-family: He=
lvetica; font-size: 12px;" /><span style=3D"font-style: normal; font-varian=
t-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decorati=
on: none; caret-color: #ffffff; color: #000000; font-family: Helvetica; fon=
t-size: 12px; float: none; display: inline !important;">tar: ./usr/share: C=
annot mkdir: Bad address</span><br style=3D"font-style: normal; font-varian=
t-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decorati=
on-line: none; text-decoration-thickness: auto; text-decoration-style: soli=
d; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size:=
 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal; fon=
t-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-col=
or: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; float=
: none; display: inline !important;">tar: ./usr/share/licenses/miniflex-gen=
erate-salt/xxxxx-LICENSE: Cannot open: No such file or directory</span><br =
style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; l=
etter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; tex=
t-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webk=
it-text-stroke-width: 0px; text-decoration-line: none; text-decoration-thic=
kness: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ff=
ffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style=
: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norm=
al; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-widt=
h: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; font-f=
amily: Helvetica; font-size: 12px; float: none; display: inline !important;=
">tar: Exiting with failure status due to previous errors</span><br style=
=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration-line: none; text-decoration-thickness=
: auto; text-decoration-style: solid; caret-color: #ffffff; color: #ffffff;=
 font-family: Helvetica; font-size: 12px;" /><br style=3D"font-style: norma=
l; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orp=
hans: 2; text-align: start; text-indent: 0px; text-transform: none; white-s=
pace: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
 text-decoration-line: none; text-decoration-thickness: auto; text-decorati=
on-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helveti=
ca; font-size: 12px;" /><span style=3D"font-style: normal; font-variant-cap=
s: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align=
: start; text-indent: 0px; text-transform: none; white-space: normal; widow=
s: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: n=
one; caret-color: #ffffff; color: #000000; font-family: Helvetica; font-siz=
e: 12px; float: none; display: inline !important;">ERROR: Logfile of failur=
e stored in: /home/jpsaman/Source/xxxxx/insight_test3/build-raspberrypi4-64=
/tmp/work/cortexa72-poky-linux/miniflex-generate-salt/1.0/temp/log.do_packa=
ge.21002</span><br style=3D"font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; te=
xt-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-=
spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; t=
ext-decoration-thickness: auto; text-decoration-style: solid; caret-color: =
#ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span =
style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; l=
etter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; tex=
t-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webk=
it-text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; col=
or: #000000; font-family: Helvetica; font-size: 12px; float: none; display:=
 inline !important;">ERROR: Task (/home/jpsaman/Source/xxxxx/insight_test3/=
sources/meta-xxxxx/recipes-applications/miniflex-generate-salt/miniflex-gen=
erate-salt.bb:do_package) failed with exit code '1'</span><br style=3D"font=
-style: normal; font-variant-caps: normal; font-weight: 400; letter-spacing=
: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-strok=
e-width: 0px; text-decoration-line: none; text-decoration-thickness: auto; =
text-decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-fa=
mily: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-=
decoration: none; caret-color: #ffffff; color: #000000; font-family: Helvet=
ica; font-size: 12px; float: none; display: inline !important;">NOTE: Tasks=
 Summary: Attempted 1789 tasks of which 1775 didn't need to be rerun and 1 =
failed.</span><br style=3D"font-style: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-s=
pacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; te=
xt-decoration-thickness: auto; text-decoration-style: solid; caret-color: #=
ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><span s=
tyle=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webki=
t-text-stroke-width: 0px; text-decoration: none; caret-color: #ffffff; colo=
r: #000000; font-family: Helvetica; font-size: 12px; float: none; display: =
inline !important;">NOTE: Build completion summary:</span><br style=3D"font=
-style: normal; font-variant-caps: normal; font-weight: 400; letter-spacing=
: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-strok=
e-width: 0px; text-decoration-line: none; text-decoration-thickness: auto; =
text-decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-fa=
mily: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-=
decoration: none; caret-color: #ffffff; color: #000000; font-family: Helvet=
ica; font-size: 12px; float: none; display: inline !important;">NOTE: &nbsp=
;&nbsp;do_populate_sysroot: 0.0% sstate reuse(0 setscene, 1 scratch)</span>=
<br style=3D"font-style: normal; font-variant-caps: normal; font-weight: 40=
0; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px;=
 text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -=
webkit-text-stroke-width: 0px; text-decoration-line: none; text-decoration-=
thickness: auto; text-decoration-style: solid; caret-color: #ffffff; color:=
 #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-s=
tyle: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: no=
ne; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; fo=
nt-family: Helvetica; font-size: 12px; float: none; display: inline !import=
ant;">NOTE: &nbsp;&nbsp;do_deploy_source_date_epoch: 0.0% sstate reuse(0 se=
tscene, 1 scratch)</span><br style=3D"font-style: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; white-space: normal; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-lin=
e: none; text-decoration-thickness: auto; text-decoration-style: solid; car=
et-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;=
" /><span style=3D"font-style: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent=
: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: #f=
fffff; color: #000000; font-family: Helvetica; font-size: 12px; float: none=
; display: inline !important;">NOTE: &nbsp;&nbsp;do_deploy_archives: 0.0% s=
state reuse(0 setscene, 1 scratch)</span><br style=3D"font-style: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-align: start; text-indent: 0px; text-transform: none; white-space=
: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; tex=
t-decoration-line: none; text-decoration-thickness: auto; text-decoration-s=
tyle: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; =
font-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: st=
art; text-indent: 0px; text-transform: none; white-space: normal; widows: 2=
; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;=
 caret-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 1=
2px; float: none; display: inline !important;">NOTE: &nbsp;&nbsp;do_recipe_=
qa: 0.0% sstate reuse(0 setscene, 1 scratch)</span><br style=3D"font-style:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration-line: none; text-decoration-thickness: auto; text-de=
coration-style: solid; caret-color: #ffffff; color: #ffffff; font-family: H=
elvetica; font-size: 12px;" /><span style=3D"font-style: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: start; text-indent: 0px; text-transform: none; white-space: normal;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decorat=
ion: none; caret-color: #ffffff; color: #000000; font-family: Helvetica; fo=
nt-size: 12px; float: none; display: inline !important;">NOTE: &nbsp;&nbsp;=
do_package: 0.0% sstate reuse(0 setscene, 1 scratch)</span><br style=3D"fon=
t-style: normal; font-variant-caps: normal; font-weight: 400; letter-spacin=
g: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform:=
 none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; text-decoration-line: none; text-decoration-thickness: auto;=
 text-decoration-style: solid; caret-color: #ffffff; color: #ffffff; font-f=
amily: Helvetica; font-size: 12px;" /><span style=3D"font-style: normal; fo=
nt-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans:=
 2; text-align: start; text-indent: 0px; text-transform: none; white-space:=
 normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text=
-decoration: none; caret-color: #ffffff; color: #000000; font-family: Helve=
tica; font-size: 12px; float: none; display: inline !important;">NOTE: &nbs=
p;&nbsp;do_populate_lic: 0.0% sstate reuse(0 setscene, 1 scratch)</span><br=
 style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; te=
xt-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; text-decoration-line: none; text-decoration-thi=
ckness: auto; text-decoration-style: solid; caret-color: #ffffff; color: #f=
fffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-styl=
e: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-wid=
th: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; font-=
family: Helvetica; font-size: 12px; float: none; display: inline !important=
;">NOTE: Writing buildhistory</span><br style=3D"font-style: normal; font-v=
ariant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; =
text-align: start; text-indent: 0px; text-transform: none; white-space: nor=
mal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-dec=
oration-line: none; text-decoration-thickness: auto; text-decoration-style:=
 solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-=
size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal=
; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; care=
t-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; =
float: none; display: inline !important;">NOTE: Writing buildhistory took: =
1 seconds</span><br style=3D"font-style: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; t=
ext-indent: 0px; text-transform: none; white-space: normal; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid; caret-color:=
 #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" /><br s=
tyle=3D"font-style: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webki=
t-text-stroke-width: 0px; text-decoration-line: none; text-decoration-thick=
ness: auto; text-decoration-style: solid; caret-color: #ffffff; color: #fff=
fff; font-family: Helvetica; font-size: 12px;" /><span style=3D"font-style:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none; caret-color: #ffffff; color: #000000; font-fa=
mily: Helvetica; font-size: 12px; float: none; display: inline !important;"=
>Summary: 1 task failed:</span><br style=3D"font-style: normal; font-varian=
t-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decorati=
on-line: none; text-decoration-thickness: auto; text-decoration-style: soli=
d; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size:=
 12px;" /><span style=3D"font-style: normal; font-variant-caps: normal; fon=
t-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; caret-col=
or: #ffffff; color: #000000; font-family: Helvetica; font-size: 12px; float=
: none; display: inline !important;">&nbsp;/home/jpsaman/Source/xxxxx/insig=
ht_test3/sources/meta-xxxxx/recipes-applications/miniflex-generate-salt/min=
iflex-generate-salt.bb:do_package</span><br style=3D"font-style: normal; fo=
nt-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans:=
 2; text-align: start; text-indent: 0px; text-transform: none; white-space:=
 normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text=
-decoration-line: none; text-decoration-thickness: auto; text-decoration-st=
yle: solid; caret-color: #ffffff; color: #ffffff; font-family: Helvetica; f=
ont-size: 12px;" /><span style=3D"font-style: normal; font-variant-caps: no=
rmal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: sta=
rt; text-indent: 0px; text-transform: none; white-space: normal; widows: 2;=
 word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; =
caret-color: #ffffff; color: #000000; font-family: Helvetica; font-size: 12=
px; float: none; display: inline !important;">Summary: There was 1 ERROR me=
ssage, returning a non-zero exit code.</span><br style=3D"font-style: norma=
l; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orp=
hans: 2; text-align: start; text-indent: 0px; text-transform: none; white-s=
pace: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
 text-decoration-line: none; text-decoration-thickness: auto; text-decorati=
on-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Helveti=
ca; font-size: 12px;" /><br style=3D"font-style: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; widows:=
 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line=
: none; text-decoration-thickness: auto; text-decoration-style: solid; care=
t-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;"=
 /><br style=3D"font-style: normal; font-variant-caps: normal; font-weight:=
 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px=
; -webkit-text-stroke-width: 0px; text-decoration-line: none; text-decorati=
on-thickness: auto; text-decoration-style: solid; caret-color: #ffffff; col=
or: #ffffff; font-family: Helvetica; font-size: 12px;" /><span style=3D"fon=
t-style: normal; font-variant-caps: normal; font-weight: 400; letter-spacin=
g: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform:=
 none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; text-decoration: none; caret-color: #ffffff; color: #000000;=
 font-family: Helvetica; font-size: 12px; float: none; display: inline !imp=
ortant;">&mdash;</span><br style=3D"font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: s=
tart; text-indent: 0px; text-transform: none; white-space: normal; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line:=
 none; text-decoration-thickness: auto; text-decoration-style: solid; caret=
-color: #ffffff; color: #ffffff; font-family: Helvetica; font-size: 12px;" =
/><span style=3D"font-style: normal; font-variant-caps: normal; font-weight=
: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: #fff=
fff; color: #000000; font-family: Helvetica; font-size: 12px; float: none; =
display: inline !important;">Kind regards,</span><br style=3D"font-style: n=
ormal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal;=
 orphans: 2; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration-line: none; text-decoration-thickness: auto; text-deco=
ration-style: solid; caret-color: #ffffff; color: #ffffff; font-family: Hel=
vetica; font-size: 12px;" /><span style=3D"font-style: normal; font-variant=
-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-a=
lign: start; text-indent: 0px; text-transform: none; white-space: normal; w=
idows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoratio=
n: none; caret-color: #ffffff; color: #000000; font-family: Helvetica; font=
-size: 12px; float: none; display: inline !important;">Jean-Paul Saman</spa=
n></div>

--tclj5r2krG3BKbKX15Jl--

