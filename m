Return-Path: <srivijayjain94@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29379C4167B
	for <webhook@archiver.kernel.org>; Fri,  8 Dec 2023 06:14:11 +0000 (UTC)
Subject: bitbake error  need help  #kernel #yocto
To: yocto@lists.yoctoproject.org
From: srivijayjain94@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (49.205.192.170)
X-Originating-Platform: Linux Firefox 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 07 Dec 2023 22:14:01 -0800
Message-ID: <v1zo.1702016041207076678.wq4D@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cpjY6NOHiVbHRmanziw8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Dec 2023 06:14:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61836

--cpjY6NOHiVbHRmanziw8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Friends
i am facing below issue kindly sugest me to build :
Loading cache: 100% |######################################################=
###########################################################################=
#######################################################| Time: 0:00:00
Loaded 1845 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"2.6.0"
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "ubuntu-22.04"
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"arm-poky-linux-gnueabi"
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "beaglebone-yocto"
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D "poky"
DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "4.3.1"
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "arm vfp cortex=
a8 neon callconvention-hard"
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"hard"
meta
meta-poky
meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "my-nanbield:508acf3=
ab70684338f562bd065d64d42d8cceee9"

NOTE: Fetching uninative binary shim http://downloads.yoctoproject.org/rele=
ases/uninative/4.3/x86_64-nativesdk-libc-4.3.tar.xz;sha256sum=3D1c35f09a75c=
4096749bbe1e009df4e3968cde151424062cf4aa3ed89db22b030 (will check PREMIRROR=
S first)
WARNING: Failed to fetch URL http://downloads.yoctoproject.org/releases/uni=
native/4.3/x86_64-nativesdk-libc-4.3.tar.xz;sha256sum=3D1c35f09a75c4096749b=
be1e009df4e3968cde151424062cf4aa3ed89db22b030, attempting MIRRORS if availa=
ble
ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export DB=
US_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export SSH_AUTH_=
SOCK=3D"/run/user/1000/keyring/ssh"; export PATH=3D"/home/vijay/Workspace/Y=
octo_BB/poky/scripts:${sources}/tmp/work/cortexa8hf-neon-poky-linux-gnueabi=
/defaultpkgname/1.0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi:${=
sources}/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/defaultpkgname/1.0/rec=
ipe-sysroot/usr/bin/crossscripts:${sources}/tmp/work/cortexa8hf-neon-poky-l=
inux-gnueabi/defaultpkgname/1.0/recipe-sysroot-native/usr/sbin:${sources}/t=
mp/work/cortexa8hf-neon-poky-linux-gnueabi/defaultpkgname/1.0/recipe-sysroo=
t-native/usr/bin:${sources}/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/def=
aultpkgname/1.0/recipe-sysroot-native/sbin:${sources}/tmp/work/cortexa8hf-n=
eon-poky-linux-gnueabi/defaultpkgname/1.0/recipe-sysroot-native/bin:/home/v=
ijay/Workspace/Yocto_BB/poky/bitbake/bin:${sources}/tmp/hosttools"; export =
HOME=3D"/home/vijay"; /usr/bin/env wget -t 2 -T 30 --passive-ftp -O '${sour=
ces}/downloads/uninative/1c35f09a75c4096749bbe1e009df4e3968cde151424062cf4a=
a3ed89db22b030/x86_64-nativesdk-libc-4.3.tar.xz.tmp' -P ${sources}/download=
s/uninative/1c35f09a75c4096749bbe1e009df4e3968cde151424062cf4aa3ed89db22b03=
0 'http://downloads.yoctoproject.org/releases/uninative/4.3/x86_64-nativesd=
k-libc-4.3.tar.xz' --progress=3Ddot -v failed with exit code 127, no output
WARNING: Disabling uninative as unable to fetch uninative tarball: Fetcher =
failure for URL: 'http://downloads.yoctoproject.org/releases/uninative/4.3/=
x86_64-nativesdk-libc-4.3.tar.xz;sha256sum=3D1c35f09a75c4096749bbe1e009df4e=
3968cde151424062cf4aa3ed89db22b030'. Unable to fetch URL from any source.
WARNING: To build your own uninative loader, please bitbake uninative-tarba=
ll and set UNINATIVE_TARBALL appropriately.
Initialising tasks: 100% |#################################################=
###########################################################################=
#######################################################| Time: 0:00:06
Sstate summary: Wanted 4520 Local 0 Mirrors 0 Missed 4520 Current 0 (0% mat=
ch, 0% complete)
NOTE: Executing Tasks
ERROR: packagegroup-core-x11-xserver-1.0-r0 do_populate_lic: Error executin=
g a python function in exec_func_python() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
0001:
*** 0002:sstate_task_postfunc(d)
0003:
File: '/home/vijay/Workspace/Yocto_BB/poky/meta/classes-global/sstate.bbcla=
ss', lineno: 801, function: sstate_task_postfunc
0797:
0798:=C2=A0=C2=A0=C2=A0 omask =3D os.umask(0o002)
0799:=C2=A0=C2=A0=C2=A0 if omask !=3D 0o002:
0800:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bb.note("Using umask 0o002 (not %=
0o) for sstate packaging" % omask)
*** 0801:=C2=A0=C2=A0=C2=A0 sstate_package(shared_state, d)
0802:=C2=A0=C2=A0=C2=A0 os.umask(omask)
0803:
0804:=C2=A0=C2=A0=C2=A0 sstateinst =3D d.getVar("SSTATE_INSTDIR")
0805:=C2=A0=C2=A0=C2=A0 d.setVar('SSTATE_FIXMEDIR', shared_state['fixmedir'=
])
File: '/home/vijay/Workspace/Yocto_BB/poky/meta/classes-global/sstate.bbcla=
ss', lineno: 660, function: sstate_package
0656:
0657:=C2=A0=C2=A0=C2=A0 sstatebuild =3D d.expand("${WORKDIR}/sstate-build-%=
s/" % ss['task'])
0658:=C2=A0=C2=A0=C2=A0 sde =3D int(d.getVar("SOURCE_DATE_EPOCH") or time.t=
ime())
0659:=C2=A0=C2=A0=C2=A0 d.setVar("SSTATE_CURRTASK", ss['task'])
*** 0660:=C2=A0=C2=A0=C2=A0 bb.utils.remove(sstatebuild, recurse=3DTrue)
0661:=C2=A0=C2=A0=C2=A0 bb.utils.mkdirhier(sstatebuild)
0662:=C2=A0=C2=A0=C2=A0 for state in ss['dirs']:
0663:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if not os.path.exists(state=
[1]):
0664:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
tinue
File: '/home/vijay/Workspace/Yocto_BB/poky/bitbake/lib/bb/utils.py', lineno=
: 728, function: remove
0724:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # shutil.rmtree(name) would=
 be ideal but its too slow
0725:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd =3D []
0726:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if ionice:
0727:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd=
 =3D ['ionice', '-c', '3']
*** 0728:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 subprocess.check_call(c=
md + ['rm', '-rf'] + glob.glob(path))
0729:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return
0730:=C2=A0=C2=A0=C2=A0 for name in glob.glob(path):
0731:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:
0732:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 os.=
unlink(name)
File: '/usr/lib/python3.10/subprocess.py', lineno: 364, function: check_cal=
l
0360:=C2=A0=C2=A0=C2=A0 The arguments are the same as for the call function=
.=C2=A0 Example:
0361:
0362:=C2=A0=C2=A0=C2=A0 check_call(["ls", "-l"])
0363:=C2=A0=C2=A0=C2=A0 """
*** 0364:=C2=A0=C2=A0=C2=A0 retcode =3D call(*popenargs, **kwargs)
0365:=C2=A0=C2=A0=C2=A0 if retcode:
0366:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd =3D kwargs.get("args")
0367:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if cmd is None:
0368:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd=
 =3D popenargs[0]
File: '/usr/lib/python3.10/subprocess.py', lineno: 345, function: call
0341:=C2=A0=C2=A0=C2=A0 The arguments are the same as for the Popen constru=
ctor.=C2=A0 Example:
0342:
0343:=C2=A0=C2=A0=C2=A0 retcode =3D call(["ls", "-l"])
0344:=C2=A0=C2=A0=C2=A0 """
*** 0345:=C2=A0=C2=A0=C2=A0 with Popen(*popenargs, **kwargs) as p:
0346:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:
0347:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret=
urn p.wait(timeout=3Dtimeout)
0348:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 except:=C2=A0 # Including K=
eyboardInterrupt, wait handled that.
0349:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 p.k=
ill()
File: '/usr/lib/python3.10/subprocess.py', lineno: 971, function: __init__
0967:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if self.text_mode:
0968:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.stderr =3D io.TextIOWrap=
per(self.stderr,
0969:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 encoding=3Dencoding, errors=3Derrors)
0970:
*** 0971:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self._execute_child(args, executable, preexec_fn, close_fds,
0972:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pass_fds, cwd, env,
0973:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 startupinfo, creationflags, shel=
l,
0974:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 p2cread, p2cwrite,
0975:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 c2pread, c2pwrite,
File: '/usr/lib/python3.10/subprocess.py', lineno: 1863, function: _execute=
_child
1859:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:
1860:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err_f=
ilename =3D orig_executable
1861:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if errno_num !=3D 0:
1862:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err_m=
sg =3D os.strerror(errno_num)
*** 1863:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise child_exception_type=
(errno_num, err_msg, err_filename)
1864:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 raise child_exception_type(err_msg)
1865:
1866:
1867:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def _handle_exitstatus(self=
, sts,
Exception: FileNotFoundError: [Errno 2] No such file or directory: 'rm'

ERROR: Logfile of failure stored in: ${sources}/tmp/work/beaglebone_yocto-p=
oky-linux-gnueabi/packagegroup-core-x11-xserver/1.0/temp/log.do_populate_li=
c.7663
ERROR: glibc-locale-2.38-r0 do_populate_lic: Error executing a python funct=
ion in exec_func_python() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
0001:
*** 0002:sstate_task_postfunc(d)
0003:
File: '/home/vijay/Workspace/Yocto_BB/poky/meta/classes-global/sstate.bbcla=
ss', lineno: 801, function: sstate_task_postfunc
0797:
0798:=C2=A0=C2=A0=C2=A0 omask =3D os.umask(0o002)
0799:=C2=A0=C2=A0=C2=A0 if omask !=3D 0o002:
0800:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bb.note("Using umask 0o002 (not %=
0o) for sstate packaging" % omask)
*** 0801:=C2=A0=C2=A0=C2=A0 sstate_package(shared_state, d)
0802:=C2=A0=C2=A0=C2=A0 os.umask(omask)
0803:
0804:=C2=A0=C2=A0=C2=A0 sstateinst =3D d.getVar("SSTATE_INSTDIR")
0805:=C2=A0=C2=A0=C2=A0 d.setVar('SSTATE_FIXMEDIR', shared_state['fixmedir'=
])
File: '/home/vijay/Workspace/Yocto_BB/poky/meta/classes-global/sstate.bbcla=
ss', lineno: 660, function: sstate_package
0656:
0657:=C2=A0=C2=A0=C2=A0 sstatebuild =3D d.expand("${WORKDIR}/sstate-build-%=
s/" % ss['task'])
0658:=C2=A0=C2=A0=C2=A0 sde =3D int(d.getVar("SOURCE_DATE_EPOCH") or time.t=
ime())
0659:=C2=A0=C2=A0=C2=A0 d.setVar("SSTATE_CURRTASK", ss['task'])
*** 0660:=C2=A0=C2=A0=C2=A0 bb.utils.remove(sstatebuild, recurse=3DTrue)
0661:=C2=A0=C2=A0=C2=A0 bb.utils.mkdirhier(sstatebuild)
0662:=C2=A0=C2=A0=C2=A0 for state in ss['dirs']:
0663:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if not os.path.exists(state=
[1]):
0664:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
tinue
File: '/home/vijay/Workspace/Yocto_BB/poky/bitbake/lib/bb/utils.py', lineno=
: 728, function: remove
0724:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # shutil.rmtree(name) would=
 be ideal but its too slow
0725:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd =3D []
0726:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if ionice:
0727:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd=
 =3D ['ionice', '-c', '3']
*** 0728:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 subprocess.check_call(c=
md + ['rm', '-rf'] + glob.glob(path))
0729:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return
0730:=C2=A0=C2=A0=C2=A0 for name in glob.glob(path):
0731:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:
0732:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 os.=
unlink(name)
File: '/usr/lib/python3.10/subprocess.py', lineno: 364, function: check_cal=
l
0360:=C2=A0=C2=A0=C2=A0 The arguments are the same as for the call function=
.=C2=A0 Example:
0361:
0362:=C2=A0=C2=A0=C2=A0 check_call(["ls", "-l"])
0363:=C2=A0=C2=A0=C2=A0 """
*** 0364:=C2=A0=C2=A0=C2=A0 retcode =3D call(*popenargs, **kwargs)
0365:=C2=A0=C2=A0=C2=A0 if retcode:
0366:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd =3D kwargs.get("args")
0367:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if cmd is None:
0368:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd=
 =3D popenargs[0]
File: '/usr/lib/python3.10/subprocess.py', lineno: 345, function: call
0341:=C2=A0=C2=A0=C2=A0 The arguments are the same as for the Popen constru=
ctor.=C2=A0 Example:
0342:
0343:=C2=A0=C2=A0=C2=A0 retcode =3D call(["ls", "-l"])
0344:=C2=A0=C2=A0=C2=A0 """
*** 0345:=C2=A0=C2=A0=C2=A0 with Popen(*popenargs, **kwargs) as p:
0346:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:
0347:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret=
urn p.wait(timeout=3Dtimeout)
0348:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 except:=C2=A0 # Including K=
eyboardInterrupt, wait handled that.
0349:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 p.k=
ill()
File: '/usr/lib/python3.10/subprocess.py', lineno: 971, function: __init__
0967:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if self.text_mode:
0968:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.stderr =3D io.TextIOWrap=
per(self.stderr,
0969:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 encoding=3Dencoding, errors=3Derrors)
0970:
*** 0971:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self._execute_child(args, executable, preexec_fn, close_fds,
0972:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pass_fds, cwd, env,
0973:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 startupinfo, creationflags, shel=
l,
0974:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 p2cread, p2cwrite,
0975:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 c2pread, c2pwrite,
File: '/usr/lib/python3.10/subprocess.py', lineno: 1863, function: _execute=
_child
1859:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:
1860:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err_f=
ilename =3D orig_executable
1861:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if errno_num !=3D 0:
1862:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err_m=
sg =3D os.strerror(errno_num)
*** 1863:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise child_exception_type=
(errno_num, err_msg, err_filename)
1864:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 raise child_exception_type(err_msg)
1865:
1866:
1867:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def _handle_exitstatus(self=
, sts,
Exception: FileNotFoundError: [Errno 2] No such file or directory: 'rm'

ERROR: Logfile of failure stored in: ${sources}/tmp/work/cortexa8hf-neon-po=
ky-linux-gnueabi/glibc-locale/2.38/temp/log.do_populate_lic.7664
ERROR: Task (/home/vijay/Workspace/Yocto_BB/poky/meta/recipes-graphics/pack=
agegroups/packagegroup-core-x11-xserver.bb:do_populate_lic) failed with exi=
t code '1'
ERROR: Task (/home/vijay/Workspace/Yocto_BB/poky/meta/recipes-core/glibc/gl=
ibc-locale_2.38.bb:do_populate_lic) failed with exit code '1'
ERROR: packagegroup-core-x11-1.0-r0 do_populate_lic: Error executing a pyth=
on function in exec_func_python() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
0001:
*** 0002:sstate_task_postfunc(d)
0003:
File: '/home/vijay/Workspace/Yocto_BB/poky/meta/classes-global/sstate.bbcla=
ss', lineno: 801, function: sstate_task_postfunc
0797:
0798:=C2=A0=C2=A0=C2=A0 omask =3D os.umask(0o002)
0799:=C2=A0=C2=A0=C2=A0 if omask !=3D 0o002:
0800:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bb.note("Using umask 0o002 (not %=
0o) for sstate packaging" % omask)
*** 0801:=C2=A0=C2=A0=C2=A0 sstate_package(shared_state, d)
0802:=C2=A0=C2=A0=C2=A0 os.umask(omask)
0803:
0804:=C2=A0=C2=A0=C2=A0 sstateinst =3D d.getVar("SSTATE_INSTDIR")
0805:=C2=A0=C2=A0=C2=A0 d.setVar('SSTATE_FIXMEDIR', shared_state['fixmedir'=
])
File: '/home/vijay/Workspace/Yocto_BB/poky/meta/classes-global/sstate.bbcla=
ss', lineno: 660, function: sstate_package
0656:
0657:=C2=A0=C2=A0=C2=A0 sstatebuild =3D d.expand("${WORKDIR}/sstate-build-%=
s/" % ss['task'])
0658:=C2=A0=C2=A0=C2=A0 sde =3D int(d.getVar("SOURCE_DATE_EPOCH") or time.t=
ime())
0659:=C2=A0=C2=A0=C2=A0 d.setVar("SSTATE_CURRTASK", ss['task'])
*** 0660:=C2=A0=C2=A0=C2=A0 bb.utils.remove(sstatebuild, recurse=3DTrue)
0661:=C2=A0=C2=A0=C2=A0 bb.utils.mkdirhier(sstatebuild)
0662:=C2=A0=C2=A0=C2=A0 for state in ss['dirs']:
0663:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if not os.path.exists(state=
[1]):
0664:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
tinue
File: '/home/vijay/Workspace/Yocto_BB/poky/bitbake/lib/bb/utils.py', lineno=
: 728, function: remove
0724:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # shutil.rmtree(name) would=
 be ideal but its too slow
0725:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd =3D []
0726:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if ionice:
0727:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd=
 =3D ['ionice', '-c', '3']
*** 0728:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 subprocess.check_call(c=
md + ['rm', '-rf'] + glob.glob(path))
0729:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return
0730:=C2=A0=C2=A0=C2=A0 for name in glob.glob(path):
0731:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:
0732:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 os.=
unlink(name)
File: '/usr/lib/python3.10/subprocess.py', lineno: 364, function: check_cal=
l
0360:=C2=A0=C2=A0=C2=A0 The arguments are the same as for the call function=
.=C2=A0 Example:
0361:
0362:=C2=A0=C2=A0=C2=A0 check_call(["ls", "-l"])
0363:=C2=A0=C2=A0=C2=A0 """
*** 0364:=C2=A0=C2=A0=C2=A0 retcode =3D call(*popenargs, **kwargs)
0365:=C2=A0=C2=A0=C2=A0 if retcode:
0366:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd =3D kwargs.get("args")
0367:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if cmd is None:
0368:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd=
 =3D popenargs[0]
File: '/usr/lib/python3.10/subprocess.py', lineno: 345, function: call
0341:=C2=A0=C2=A0=C2=A0 The arguments are the same as for the Popen constru=
ctor.=C2=A0 Example:
0342:
0343:=C2=A0=C2=A0=C2=A0 retcode =3D call(["ls", "-l"])
0344:=C2=A0=C2=A0=C2=A0 """
*** 0345:=C2=A0=C2=A0=C2=A0 with Popen(*popenargs, **kwargs) as p:
0346:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:
0347:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret=
urn p.wait(timeout=3Dtimeout)
0348:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 except:=C2=A0 # Including K=
eyboardInterrupt, wait handled that.
0349:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 p.k=
ill()
File: '/usr/lib/python3.10/subprocess.py', lineno: 971, function: __init__
0967:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if self.text_mode:
0968:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.stderr =3D io.TextIOWrap=
per(self.stderr,
0969:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 encoding=3Dencoding, errors=3Derrors)
0970:
*** 0971:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self._execute_child(args, executable, preexec_fn, close_fds,
0972:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pass_fds, cwd, env,
0973:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 startupinfo, creationflags, shel=
l,
0974:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 p2cread, p2cwrite,
0975:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 c2pread, c2pwrite,
File: '/usr/lib/python3.10/subprocess.py', lineno: 1863, function: _execute=
_child
1859:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:
1860:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err_f=
ilename =3D orig_executable
1861:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if errno_num !=3D 0:
1862:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err_m=
sg =3D os.strerror(errno_num)
*** 1863:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise child_exception_type=
(errno_num, err_msg, err_filename)
1864:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 raise child_exception_type(err_msg)
1865:
1866:
1867:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def _handle_exitstatus(self=
, sts,
Exception: FileNotFoundError: [Errno 2] No such file or directory: 'rm'

ERROR: Logfile of failure stored in: ${sources}/tmp/work/all-poky-linux/pac=
kagegroup-core-x11/1.0/temp/log.do_populate_lic.7662
ERROR: Task (/home/vijay/Workspace/Yocto_BB/poky/meta/recipes-graphics/pack=
agegroups/packagegroup-core-x11.bb:do_populate_lic) failed with exit code '=
1'
ERROR: packagegroup-core-x11-sato-1.0-r0 do_populate_lic: Error executing a=
 python function in exec_func_python() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
0001:
*** 0002:sstate_task_postfunc(d)
0003:
File: '/home/vijay/Workspace/Yocto_BB/poky/meta/classes-global/sstate.bbcla=
ss', lineno: 801, function: sstate_task_postfunc
0797:
0798:=C2=A0=C2=A0=C2=A0 omask =3D os.umask(0o002)
0799:=C2=A0=C2=A0=C2=A0 if omask !=3D 0o002:
0800:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bb.note("Using umask 0o002 (not %=
0o) for sstate packaging" % omask)
*** 0801:=C2=A0=C2=A0=C2=A0 sstate_package(shared_state, d)
0802:=C2=A0=C2=A0=C2=A0 os.umask(omask)
0803:
0804:=C2=A0=C2=A0=C2=A0 sstateinst =3D d.getVar("SSTATE_INSTDIR")
0805:=C2=A0=C2=A0=C2=A0 d.setVar('SSTATE_FIXMEDIR', shared_state['fixmedir'=
])
File: '/home/vijay/Workspace/Yocto_BB/poky/meta/classes-global/sstate.bbcla=
ss', lineno: 660, function: sstate_package
0656:
0657:=C2=A0=C2=A0=C2=A0 sstatebuild =3D d.expand("${WORKDIR}/sstate-build-%=
s/" % ss['task'])
0658:=C2=A0=C2=A0=C2=A0 sde =3D int(d.getVar("SOURCE_DATE_EPOCH") or time.t=
ime())
0659:=C2=A0=C2=A0=C2=A0 d.setVar("SSTATE_CURRTASK", ss['task'])
*** 0660:=C2=A0=C2=A0=C2=A0 bb.utils.remove(sstatebuild, recurse=3DTrue)
0661:=C2=A0=C2=A0=C2=A0 bb.utils.mkdirhier(sstatebuild)
0662:=C2=A0=C2=A0=C2=A0 for state in ss['dirs']:
0663:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if not os.path.exists(state=
[1]):
0664:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
tinue
File: '/home/vijay/Workspace/Yocto_BB/poky/bitbake/lib/bb/utils.py', lineno=
: 728, function: remove
0724:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # shutil.rmtree(name) would=
 be ideal but its too slow
0725:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd =3D []
0726:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if ionice:
0727:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd=
 =3D ['ionice', '-c', '3']
*** 0728:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 subprocess.check_call(c=
md + ['rm', '-rf'] + glob.glob(path))
0729:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return
0730:=C2=A0=C2=A0=C2=A0 for name in glob.glob(path):
0731:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:
0732:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 os.=
unlink(name)
File: '/usr/lib/python3.10/subprocess.py', lineno: 364, function: check_cal=
l
0360:=C2=A0=C2=A0=C2=A0 The arguments are the same as for the call function=
.=C2=A0 Example:
0361:
0362:=C2=A0=C2=A0=C2=A0 check_call(["ls", "-l"])
0363:=C2=A0=C2=A0=C2=A0 """
*** 0364:=C2=A0=C2=A0=C2=A0 retcode =3D call(*popenargs, **kwargs)
0365:=C2=A0=C2=A0=C2=A0 if retcode:
0366:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd =3D kwargs.get("args")
0367:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if cmd is None:
0368:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd=
 =3D popenargs[0]
File: '/usr/lib/python3.10/subprocess.py', lineno: 345, function: call
0341:=C2=A0=C2=A0=C2=A0 The arguments are the same as for the Popen constru=
ctor.=C2=A0 Example:
0342:
0343:=C2=A0=C2=A0=C2=A0 retcode =3D call(["ls", "-l"])
0344:=C2=A0=C2=A0=C2=A0 """
*** 0345:=C2=A0=C2=A0=C2=A0 with Popen(*popenargs, **kwargs) as p:
0346:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:
0347:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret=
urn p.wait(timeout=3Dtimeout)
0348:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 except:=C2=A0 # Including K=
eyboardInterrupt, wait handled that.
0349:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 p.k=
ill()
File: '/usr/lib/python3.10/subprocess.py', lineno: 971, function: __init__
0967:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if self.text_mode:
0968:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.stderr =3D io.TextIOWrap=
per(self.stderr,
0969:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 encoding=3Dencoding, errors=3Derrors)
0970:
*** 0971:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self._execute_child(args, executable, preexec_fn, close_fds,
0972:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pass_fds, cwd, env,
0973:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 startupinfo, creationflags, shel=
l,
0974:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 p2cread, p2cwrite,
0975:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 c2pread, c2pwrite,
File: '/usr/lib/python3.10/subprocess.py', lineno: 1863, function: _execute=
_child
1859:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:
1860:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err_f=
ilename =3D orig_executable
1861:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if errno_num !=3D 0:
1862:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err_m=
sg =3D os.strerror(errno_num)
*** 1863:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise child_exception_type=
(errno_num, err_msg, err_filename)
1864:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 raise child_exception_type(err_msg)
1865:
1866:
1867:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def _handle_exitstatus(self=
, sts,
Exception: FileNotFoundError: [Errno 2] No such file or directory: 'rm'

ERROR: Logfile of failure stored in: ${sources}/tmp/work/beaglebone_yocto-p=
oky-linux-gnueabi/packagegroup-core-x11-sato/1.0/temp/log.do_populate_lic.7=
665
ERROR: Task (/home/vijay/Workspace/Yocto_BB/poky/meta/recipes-sato/packageg=
roups/packagegroup-core-x11-sato.bb:do_populate_lic) failed with exit code =
'1'
ERROR: packagegroup-core-x11-base-1.0-r0 do_populate_lic: Error executing a=
 python function in exec_func_python() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
0001:
*** 0002:sstate_task_postfunc(d)
0003:
File: '/home/vijay/Workspace/Yocto_BB/poky/meta/classes-global/sstate.bbcla=
ss', lineno: 801, function: sstate_task_postfunc
0797:
0798:=C2=A0=C2=A0=C2=A0 omask =3D os.umask(0o002)
0799:=C2=A0=C2=A0=C2=A0 if omask !=3D 0o002:
0800:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bb.note("Using umask 0o002 (not %=
0o) for sstate packaging" % omask)
*** 0801:=C2=A0=C2=A0=C2=A0 sstate_package(shared_state, d)
0802:=C2=A0=C2=A0=C2=A0 os.umask(omask)
0803:
0804:=C2=A0=C2=A0=C2=A0 sstateinst =3D d.getVar("SSTATE_INSTDIR")
0805:=C2=A0=C2=A0=C2=A0 d.setVar('SSTATE_FIXMEDIR', shared_state['fixmedir'=
])
File: '/home/vijay/Workspace/Yocto_BB/poky/meta/classes-global/sstate.bbcla=
ss', lineno: 660, function: sstate_package
0656:
0657:=C2=A0=C2=A0=C2=A0 sstatebuild =3D d.expand("${WORKDIR}/sstate-build-%=
s/" % ss['task'])
0658:=C2=A0=C2=A0=C2=A0 sde =3D int(d.getVar("SOURCE_DATE_EPOCH") or time.t=
ime())
0659:=C2=A0=C2=A0=C2=A0 d.setVar("SSTATE_CURRTASK", ss['task'])
*** 0660:=C2=A0=C2=A0=C2=A0 bb.utils.remove(sstatebuild, recurse=3DTrue)
0661:=C2=A0=C2=A0=C2=A0 bb.utils.mkdirhier(sstatebuild)
0662:=C2=A0=C2=A0=C2=A0 for state in ss['dirs']:
0663:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if not os.path.exists(state=
[1]):
0664:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
tinue
File: '/home/vijay/Workspace/Yocto_BB/poky/bitbake/lib/bb/utils.py', lineno=
: 728, function: remove
0724:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # shutil.rmtree(name) would=
 be ideal but its too slow
0725:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd =3D []
0726:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if ionice:
0727:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd=
 =3D ['ionice', '-c', '3']
*** 0728:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 subprocess.check_call(c=
md + ['rm', '-rf'] + glob.glob(path))
0729:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return
0730:=C2=A0=C2=A0=C2=A0 for name in glob.glob(path):
0731:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:
0732:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 os.=
unlink(name)
File: '/usr/lib/python3.10/subprocess.py', lineno: 364, function: check_cal=
l
0360:=C2=A0=C2=A0=C2=A0 The arguments are the same as for the call function=
.=C2=A0 Example:
0361:
0362:=C2=A0=C2=A0=C2=A0 check_call(["ls", "-l"])
0363:=C2=A0=C2=A0=C2=A0 """
*** 0364:=C2=A0=C2=A0=C2=A0 retcode =3D call(*popenargs, **kwargs)
0365:=C2=A0=C2=A0=C2=A0 if retcode:
0366:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd =3D kwargs.get("args")
0367:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if cmd is None:
0368:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd=
 =3D popenargs[0]
File: '/usr/lib/python3.10/subprocess.py', lineno: 345, function: call
0341:=C2=A0=C2=A0=C2=A0 The arguments are the same as for the Popen constru=
ctor.=C2=A0 Example:
0342:
0343:=C2=A0=C2=A0=C2=A0 retcode =3D call(["ls", "-l"])
0344:=C2=A0=C2=A0=C2=A0 """
*** 0345:=C2=A0=C2=A0=C2=A0 with Popen(*popenargs, **kwargs) as p:
0346:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:
0347:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret=
urn p.wait(timeout=3Dtimeout)
0348:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 except:=C2=A0 # Including K=
eyboardInterrupt, wait handled that.
0349:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 p.k=
ill()
File: '/usr/lib/python3.10/subprocess.py', lineno: 971, function: __init__
0967:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if self.text_mode:
0968:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.stderr =3D io.TextIOWrap=
per(self.stderr,
0969:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 encoding=3Dencoding, errors=3Derrors)
0970:
*** 0971:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self._execute_child(args, executable, preexec_fn, close_fds,
0972:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pass_fds, cwd, env,
0973:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 startupinfo, creationflags, shel=
l,
0974:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 p2cread, p2cwrite,
0975:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 c2pread, c2pwrite,
File: '/usr/lib/python3.10/subprocess.py', lineno: 1863, function: _execute=
_child
1859:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:
1860:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err_f=
ilename =3D orig_executable
1861:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if errno_num !=3D 0:
1862:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err_m=
sg =3D os.strerror(errno_num)
*** 1863:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise child_exception_type=
(errno_num, err_msg, err_filename)
1864:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 raise child_exception_type(err_msg)
1865:
1866:
1867:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def _handle_exitstatus(self=
, sts,
Exception: FileNotFoundError: [Errno 2] No such file or directory: 'rm'

ERROR: Logfile of failure stored in: ${sources}/tmp/work/all-poky-linux/pac=
kagegroup-core-x11-base/1.0/temp/log.do_populate_lic.7670
ERROR: Task (/home/vijay/Workspace/Yocto_BB/poky/meta/recipes-graphics/pack=
agegroups/packagegroup-core-x11-base.bb:do_populate_lic) failed with exit c=
ode '1'
NOTE: Tasks Summary: Attempted 5 tasks of which 0 didn't need to be rerun a=
nd 5 failed.

Summary: 5 tasks failed:
/home/vijay/Workspace/Yocto_BB/poky/meta/recipes-graphics/packagegroups/pac=
kagegroup-core-x11-xserver.bb:do_populate_lic
/home/vijay/Workspace/Yocto_BB/poky/meta/recipes-core/glibc/glibc-locale_2.=
38.bb:do_populate_lic
/home/vijay/Workspace/Yocto_BB/poky/meta/recipes-graphics/packagegroups/pac=
kagegroup-core-x11.bb:do_populate_lic
/home/vijay/Workspace/Yocto_BB/poky/meta/recipes-sato/packagegroups/package=
group-core-x11-sato.bb:do_populate_lic
/home/vijay/Workspace/Yocto_BB/poky/meta/recipes-graphics/packagegroups/pac=
kagegroup-core-x11-base.bb:do_populate_lic
Summary: There were 3 WARNING messages.
Summary: There were 6 ERROR messages, returning a non-zero exit code.

thank you
vijay

--cpjY6NOHiVbHRmanziw8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Friends <br />&nbsp;&nbsp; i am facing below issue kindly sugest me to=
 build :<br />Loading cache: 100% |########################################=
###########################################################################=
#####################################################################| Time=
: 0:00:00<br />Loaded 1845 entries from dependency cache.<br />NOTE: Resolv=
ing any missing task queue dependencies<br /><br />Build Configuration:<br =
/>BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D "2.6.0"<br />BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; =3D "x86_64-linux"<br />NATIVELSBSTRING&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; =3D "ubuntu-22.04"<br />TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm-poky-linux-gnueabi"<br />MACHINE&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; =3D "beaglebone-yocto"<br />DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "poky"<br />DISTRO_VERSI=
ON&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "4.3.1"<br />TUNE_FEATURES&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm vfp cortexa8 neon callconvent=
ion-hard"<br />TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; =3D "hard"<br />meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />meta-poky&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />meta-yoct=
o-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "my-nanbield:508acf3ab7068433=
8f562bd065d64d42d8cceee9"<br /><br />NOTE: Fetching uninative binary shim h=
ttp://downloads.yoctoproject.org/releases/uninative/4.3/x86_64-nativesdk-li=
bc-4.3.tar.xz;sha256sum=3D1c35f09a75c4096749bbe1e009df4e3968cde151424062cf4=
aa3ed89db22b030 (will check PREMIRRORS first)<br />WARNING: Failed to fetch=
 URL http://downloads.yoctoproject.org/releases/uninative/4.3/x86_64-native=
sdk-libc-4.3.tar.xz;sha256sum=3D1c35f09a75c4096749bbe1e009df4e3968cde151424=
062cf4aa3ed89db22b030, attempting MIRRORS if available<br />ERROR: Fetcher =
failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_=
ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export SSH_AUTH_SOCK=3D"/run/us=
er/1000/keyring/ssh"; export PATH=3D"/home/vijay/Workspace/Yocto_BB/poky/sc=
ripts:${sources}/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/defaultpkgname=
/1.0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi:${sources}/tmp/wo=
rk/cortexa8hf-neon-poky-linux-gnueabi/defaultpkgname/1.0/recipe-sysroot/usr=
/bin/crossscripts:${sources}/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/de=
faultpkgname/1.0/recipe-sysroot-native/usr/sbin:${sources}/tmp/work/cortexa=
8hf-neon-poky-linux-gnueabi/defaultpkgname/1.0/recipe-sysroot-native/usr/bi=
n:${sources}/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/defaultpkgname/1.0=
/recipe-sysroot-native/sbin:${sources}/tmp/work/cortexa8hf-neon-poky-linux-=
gnueabi/defaultpkgname/1.0/recipe-sysroot-native/bin:/home/vijay/Workspace/=
Yocto_BB/poky/bitbake/bin:${sources}/tmp/hosttools"; export HOME=3D"/home/v=
ijay"; /usr/bin/env wget -t 2 -T 30 --passive-ftp -O '${sources}/downloads/=
uninative/1c35f09a75c4096749bbe1e009df4e3968cde151424062cf4aa3ed89db22b030/=
x86_64-nativesdk-libc-4.3.tar.xz.tmp' -P ${sources}/downloads/uninative/1c3=
5f09a75c4096749bbe1e009df4e3968cde151424062cf4aa3ed89db22b030 'http://downl=
oads.yoctoproject.org/releases/uninative/4.3/x86_64-nativesdk-libc-4.3.tar.=
xz' --progress=3Ddot -v failed with exit code 127, no output<br />WARNING: =
Disabling uninative as unable to fetch uninative tarball: Fetcher failure f=
or URL: 'http://downloads.yoctoproject.org/releases/uninative/4.3/x86_64-na=
tivesdk-libc-4.3.tar.xz;sha256sum=3D1c35f09a75c4096749bbe1e009df4e3968cde15=
1424062cf4aa3ed89db22b030'. Unable to fetch URL from any source.<br />WARNI=
NG: To build your own uninative loader, please bitbake uninative-tarball an=
d set UNINATIVE_TARBALL appropriately.<br />Initialising tasks: 100% |#####=
###########################################################################=
###########################################################################=
########################| Time: 0:00:06<br />Sstate summary: Wanted 4520 Lo=
cal 0 Mirrors 0 Missed 4520 Current 0 (0% match, 0% complete)<br />NOTE: Ex=
ecuting Tasks<br />ERROR: packagegroup-core-x11-xserver-1.0-r0 do_populate_=
lic: Error executing a python function in exec_func_python() autogenerated:=
<br /><br />The stack trace of python calls that resulted in this exception=
/failure was:<br />File: 'exec_func_python() autogenerated', lineno: 2, fun=
ction: &lt;module&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp; 0001:<br />&nbsp;*** 00=
02:sstate_task_postfunc(d)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0003:<br />File: '=
/home/vijay/Workspace/Yocto_BB/poky/meta/classes-global/sstate.bbclass', li=
neno: 801, function: sstate_task_postfunc<br />&nbsp;&nbsp;&nbsp;&nbsp; 079=
7:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0798:&nbsp;&nbsp;&nbsp; omask =3D os.umask=
(0o002)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0799:&nbsp;&nbsp;&nbsp; if omask !=3D=
 0o002:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0800:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; bb.note("Using umask 0o002 (not %0o) for sstate packaging" % omask)<br=
 />&nbsp;*** 0801:&nbsp;&nbsp;&nbsp; sstate_package(shared_state, d)<br />&=
nbsp;&nbsp;&nbsp;&nbsp; 0802:&nbsp;&nbsp;&nbsp; os.umask(omask)<br />&nbsp;=
&nbsp;&nbsp;&nbsp; 0803:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0804:&nbsp;&nbsp;&nb=
sp; sstateinst =3D d.getVar("SSTATE_INSTDIR")<br />&nbsp;&nbsp;&nbsp;&nbsp;=
 0805:&nbsp;&nbsp;&nbsp; d.setVar('SSTATE_FIXMEDIR', shared_state['fixmedir=
'])<br />File: '/home/vijay/Workspace/Yocto_BB/poky/meta/classes-global/sst=
ate.bbclass', lineno: 660, function: sstate_package<br />&nbsp;&nbsp;&nbsp;=
&nbsp; 0656:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0657:&nbsp;&nbsp;&nbsp; sstatebu=
ild =3D d.expand("${WORKDIR}/sstate-build-%s/" % ss['task'])<br />&nbsp;&nb=
sp;&nbsp;&nbsp; 0658:&nbsp;&nbsp;&nbsp; sde =3D int(d.getVar("SOURCE_DATE_E=
POCH") or time.time())<br />&nbsp;&nbsp;&nbsp;&nbsp; 0659:&nbsp;&nbsp;&nbsp=
; d.setVar("SSTATE_CURRTASK", ss['task'])<br />&nbsp;*** 0660:&nbsp;&nbsp;&=
nbsp; bb.utils.remove(sstatebuild, recurse=3DTrue)<br />&nbsp;&nbsp;&nbsp;&=
nbsp; 0661:&nbsp;&nbsp;&nbsp; bb.utils.mkdirhier(sstatebuild)<br />&nbsp;&n=
bsp;&nbsp;&nbsp; 0662:&nbsp;&nbsp;&nbsp; for state in ss['dirs']:<br />&nbs=
p;&nbsp;&nbsp;&nbsp; 0663:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if not=
 os.path.exists(state[1]):<br />&nbsp;&nbsp;&nbsp;&nbsp; 0664:&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue<br />File: '=
/home/vijay/Workspace/Yocto_BB/poky/bitbake/lib/bb/utils.py', lineno: 728, =
function: remove<br />&nbsp;&nbsp;&nbsp;&nbsp; 0724:&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; # shutil.rmtree(name) would be ideal but its too slow<b=
r />&nbsp;&nbsp;&nbsp;&nbsp; 0725:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; cmd =3D []<br />&nbsp;&nbsp;&nbsp;&nbsp; 0726:&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; if ionice:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0727:&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =3D ['ionice', '-=
c', '3']<br />&nbsp;*** 0728:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sub=
process.check_call(cmd + ['rm', '-rf'] + glob.glob(path))<br />&nbsp;&nbsp;=
&nbsp;&nbsp; 0729:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return<br />&n=
bsp;&nbsp;&nbsp;&nbsp; 0730:&nbsp;&nbsp;&nbsp; for name in glob.glob(path):=
<br />&nbsp;&nbsp;&nbsp;&nbsp; 0731:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; try:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0732:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; os.unlink(name)<br />File: '/usr/lib/py=
thon3.10/subprocess.py', lineno: 364, function: check_call<br />&nbsp;&nbsp=
;&nbsp;&nbsp; 0360:&nbsp;&nbsp;&nbsp; The arguments are the same as for the=
 call function.&nbsp; Example:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0361:<br />&nb=
sp;&nbsp;&nbsp;&nbsp; 0362:&nbsp;&nbsp;&nbsp; check_call(["ls", "-l"])<br /=
>&nbsp;&nbsp;&nbsp;&nbsp; 0363:&nbsp;&nbsp;&nbsp; """<br />&nbsp;*** 0364:&=
nbsp;&nbsp;&nbsp; retcode =3D call(*popenargs, **kwargs)<br />&nbsp;&nbsp;&=
nbsp;&nbsp; 0365:&nbsp;&nbsp;&nbsp; if retcode:<br />&nbsp;&nbsp;&nbsp;&nbs=
p; 0366:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =3D kwargs.get("args=
")<br />&nbsp;&nbsp;&nbsp;&nbsp; 0367:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; if cmd is None:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0368:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =3D popenargs[0]<br />=
File: '/usr/lib/python3.10/subprocess.py', lineno: 345, function: call<br /=
>&nbsp;&nbsp;&nbsp;&nbsp; 0341:&nbsp;&nbsp;&nbsp; The arguments are the sam=
e as for the Popen constructor.&nbsp; Example:<br />&nbsp;&nbsp;&nbsp;&nbsp=
; 0342:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0343:&nbsp;&nbsp;&nbsp; retcode =3D c=
all(["ls", "-l"])<br />&nbsp;&nbsp;&nbsp;&nbsp; 0344:&nbsp;&nbsp;&nbsp; """=
<br />&nbsp;*** 0345:&nbsp;&nbsp;&nbsp; with Popen(*popenargs, **kwargs) as=
 p:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0346:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; try:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0347:&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return p.wait(timeout=3Dtimeout)<br =
/>&nbsp;&nbsp;&nbsp;&nbsp; 0348:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
except:&nbsp; # Including KeyboardInterrupt, wait handled that.<br />&nbsp;=
&nbsp;&nbsp;&nbsp; 0349:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; p.kill()<br />File: '/usr/lib/python3.10/subprocess.py', li=
neno: 971, function: __init__<br />&nbsp;&nbsp;&nbsp;&nbsp; 0967:&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; if self.text_mode:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0968:&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; self.stderr =3D io.TextIOWrapper(self.stderr,<br /=
>&nbsp;&nbsp;&nbsp;&nbsp; 0969:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; encoding=3Dencoding, errors=3De=
rrors)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0970:<br />&nbsp;*** 0971:&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self._execute_child(=
args, executable, preexec_fn, close_fds,<br />&nbsp;&nbsp;&nbsp;&nbsp; 0972=
:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pass_fds, cwd, env,<br />&nbsp;&nbsp;=
&nbsp;&nbsp; 0973:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; startupinfo, creatio=
nflags, shell,<br />&nbsp;&nbsp;&nbsp;&nbsp; 0974:&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; p2cread, p2cwrite,<br />&nbsp;&nbsp;&nbsp;&nbsp; 0975:&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; c2pread, c2pwrite,<br />File: '/usr/lib/python3=
.10/subprocess.py', lineno: 1863, function: _execute_child<br />&nbsp;&nbsp=
;&nbsp;&nbsp; 1859:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else:<br />&nbsp=
;&nbsp;&nbsp;&nbsp; 1860:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; err_filename =3D orig_executable<br />&nbsp;&nbsp;&nbsp;&nbsp=
; 1861:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if errno_num !=3D 0:<br />&n=
bsp;&nbsp;&nbsp;&nbsp; 1862:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; err_msg =3D os.strerror(errno_num)<br />&nbsp;*** 1863:&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise child_exception_type(errno_num, =
err_msg, err_filename)<br />&nbsp;&nbsp;&nbsp;&nbsp; 1864:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; r=
aise child_exception_type(err_msg)<br />&nbsp;&nbsp;&nbsp;&nbsp; 1865:<br /=
>&nbsp;&nbsp;&nbsp;&nbsp; 1866:<br />&nbsp;&nbsp;&nbsp;&nbsp; 1867:&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; def _handle_exitstatus(self, sts,<br />E=
xception: FileNotFoundError: [Errno 2] No such file or directory: 'rm'<br /=
><br />ERROR: Logfile of failure stored in: ${sources}/tmp/work/beaglebone_=
yocto-poky-linux-gnueabi/packagegroup-core-x11-xserver/1.0/temp/log.do_popu=
late_lic.7663<br />ERROR: glibc-locale-2.38-r0 do_populate_lic: Error execu=
ting a python function in exec_func_python() autogenerated:<br /><br />The =
stack trace of python calls that resulted in this exception/failure was:<br=
 />File: 'exec_func_python() autogenerated', lineno: 2, function: &lt;modul=
e&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp; 0001:<br />&nbsp;*** 0002:sstate_task_p=
ostfunc(d)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0003:<br />File: '/home/vijay/Work=
space/Yocto_BB/poky/meta/classes-global/sstate.bbclass', lineno: 801, funct=
ion: sstate_task_postfunc<br />&nbsp;&nbsp;&nbsp;&nbsp; 0797:<br />&nbsp;&n=
bsp;&nbsp;&nbsp; 0798:&nbsp;&nbsp;&nbsp; omask =3D os.umask(0o002)<br />&nb=
sp;&nbsp;&nbsp;&nbsp; 0799:&nbsp;&nbsp;&nbsp; if omask !=3D 0o002:<br />&nb=
sp;&nbsp;&nbsp;&nbsp; 0800:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.note("Us=
ing umask 0o002 (not %0o) for sstate packaging" % omask)<br />&nbsp;*** 080=
1:&nbsp;&nbsp;&nbsp; sstate_package(shared_state, d)<br />&nbsp;&nbsp;&nbsp=
;&nbsp; 0802:&nbsp;&nbsp;&nbsp; os.umask(omask)<br />&nbsp;&nbsp;&nbsp;&nbs=
p; 0803:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0804:&nbsp;&nbsp;&nbsp; sstateinst =
=3D d.getVar("SSTATE_INSTDIR")<br />&nbsp;&nbsp;&nbsp;&nbsp; 0805:&nbsp;&nb=
sp;&nbsp; d.setVar('SSTATE_FIXMEDIR', shared_state['fixmedir'])<br />File: =
'/home/vijay/Workspace/Yocto_BB/poky/meta/classes-global/sstate.bbclass', l=
ineno: 660, function: sstate_package<br />&nbsp;&nbsp;&nbsp;&nbsp; 0656:<br=
 />&nbsp;&nbsp;&nbsp;&nbsp; 0657:&nbsp;&nbsp;&nbsp; sstatebuild =3D d.expan=
d("${WORKDIR}/sstate-build-%s/" % ss['task'])<br />&nbsp;&nbsp;&nbsp;&nbsp;=
 0658:&nbsp;&nbsp;&nbsp; sde =3D int(d.getVar("SOURCE_DATE_EPOCH") or time.=
time())<br />&nbsp;&nbsp;&nbsp;&nbsp; 0659:&nbsp;&nbsp;&nbsp; d.setVar("SST=
ATE_CURRTASK", ss['task'])<br />&nbsp;*** 0660:&nbsp;&nbsp;&nbsp; bb.utils.=
remove(sstatebuild, recurse=3DTrue)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0661:&nbs=
p;&nbsp;&nbsp; bb.utils.mkdirhier(sstatebuild)<br />&nbsp;&nbsp;&nbsp;&nbsp=
; 0662:&nbsp;&nbsp;&nbsp; for state in ss['dirs']:<br />&nbsp;&nbsp;&nbsp;&=
nbsp; 0663:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if not os.path.exists=
(state[1]):<br />&nbsp;&nbsp;&nbsp;&nbsp; 0664:&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue<br />File: '/home/vijay/Wor=
kspace/Yocto_BB/poky/bitbake/lib/bb/utils.py', lineno: 728, function: remov=
e<br />&nbsp;&nbsp;&nbsp;&nbsp; 0724:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; # shutil.rmtree(name) would be ideal but its too slow<br />&nbsp;&nbsp=
;&nbsp;&nbsp; 0725:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =3D []<br=
 />&nbsp;&nbsp;&nbsp;&nbsp; 0726:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 if ionice:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0727:&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =3D ['ionice', '-c', '3']<br />&=
nbsp;*** 0728:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; subprocess.check_c=
all(cmd + ['rm', '-rf'] + glob.glob(path))<br />&nbsp;&nbsp;&nbsp;&nbsp; 07=
29:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return<br />&nbsp;&nbsp;&nbsp=
;&nbsp; 0730:&nbsp;&nbsp;&nbsp; for name in glob.glob(path):<br />&nbsp;&nb=
sp;&nbsp;&nbsp; 0731:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br />&=
nbsp;&nbsp;&nbsp;&nbsp; 0732:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; os.unlink(name)<br />File: '/usr/lib/python3.10/subpro=
cess.py', lineno: 364, function: check_call<br />&nbsp;&nbsp;&nbsp;&nbsp; 0=
360:&nbsp;&nbsp;&nbsp; The arguments are the same as for the call function.=
&nbsp; Example:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0361:<br />&nbsp;&nbsp;&nbsp;=
&nbsp; 0362:&nbsp;&nbsp;&nbsp; check_call(["ls", "-l"])<br />&nbsp;&nbsp;&n=
bsp;&nbsp; 0363:&nbsp;&nbsp;&nbsp; """<br />&nbsp;*** 0364:&nbsp;&nbsp;&nbs=
p; retcode =3D call(*popenargs, **kwargs)<br />&nbsp;&nbsp;&nbsp;&nbsp; 036=
5:&nbsp;&nbsp;&nbsp; if retcode:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0366:&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =3D kwargs.get("args")<br />&nbsp;&=
nbsp;&nbsp;&nbsp; 0367:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if cmd is=
 None:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0368:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =3D popenargs[0]<br />File: '/usr/lib=
/python3.10/subprocess.py', lineno: 345, function: call<br />&nbsp;&nbsp;&n=
bsp;&nbsp; 0341:&nbsp;&nbsp;&nbsp; The arguments are the same as for the Po=
pen constructor.&nbsp; Example:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0342:<br />&n=
bsp;&nbsp;&nbsp;&nbsp; 0343:&nbsp;&nbsp;&nbsp; retcode =3D call(["ls", "-l"=
])<br />&nbsp;&nbsp;&nbsp;&nbsp; 0344:&nbsp;&nbsp;&nbsp; """<br />&nbsp;***=
 0345:&nbsp;&nbsp;&nbsp; with Popen(*popenargs, **kwargs) as p:<br />&nbsp;=
&nbsp;&nbsp;&nbsp; 0346:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br =
/>&nbsp;&nbsp;&nbsp;&nbsp; 0347:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; return p.wait(timeout=3Dtimeout)<br />&nbsp;&nbsp;&=
nbsp;&nbsp; 0348:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; except:&nbsp; #=
 Including KeyboardInterrupt, wait handled that.<br />&nbsp;&nbsp;&nbsp;&nb=
sp; 0349:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 p.kill()<br />File: '/usr/lib/python3.10/subprocess.py', lineno: 971, func=
tion: __init__<br />&nbsp;&nbsp;&nbsp;&nbsp; 0967:&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if self.t=
ext_mode:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0968:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; self.stderr =3D io.TextIOWrapper(self.stderr,<br />&nbsp;&nbsp;&n=
bsp;&nbsp; 0969:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; encoding=3Dencoding, errors=3Derrors)<br />&nb=
sp;&nbsp;&nbsp;&nbsp; 0970:<br />&nbsp;*** 0971:&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self._execute_child(args, executabl=
e, preexec_fn, close_fds,<br />&nbsp;&nbsp;&nbsp;&nbsp; 0972:&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; pass_fds, cwd, env,<br />&nbsp;&nbsp;&nbsp;&nbsp; 09=
73:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; startupinfo, creationflags, shell,<=
br />&nbsp;&nbsp;&nbsp;&nbsp; 0974:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; p2c=
read, p2cwrite,<br />&nbsp;&nbsp;&nbsp;&nbsp; 0975:&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; c2pread, c2pwrite,<br />File: '/usr/lib/python3.10/subprocess.=
py', lineno: 1863, function: _execute_child<br />&nbsp;&nbsp;&nbsp;&nbsp; 1=
859:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else:<br />&nbsp;&nbsp;&nbsp;&n=
bsp; 1860:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e=
rr_filename =3D orig_executable<br />&nbsp;&nbsp;&nbsp;&nbsp; 1861:&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if errno_num !=3D 0:<br />&nbsp;&nbsp;&nbsp=
;&nbsp; 1862:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; err_msg =3D os.strerror(errno_num)<br />&nbsp;*** 1863:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; raise child_exception_type(errno_num, err_msg, err_fi=
lename)<br />&nbsp;&nbsp;&nbsp;&nbsp; 1864:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise child_exce=
ption_type(err_msg)<br />&nbsp;&nbsp;&nbsp;&nbsp; 1865:<br />&nbsp;&nbsp;&n=
bsp;&nbsp; 1866:<br />&nbsp;&nbsp;&nbsp;&nbsp; 1867:&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; def _handle_exitstatus(self, sts,<br />Exception: FileN=
otFoundError: [Errno 2] No such file or directory: 'rm'<br /><br />ERROR: L=
ogfile of failure stored in: ${sources}/tmp/work/cortexa8hf-neon-poky-linux=
-gnueabi/glibc-locale/2.38/temp/log.do_populate_lic.7664<br />ERROR: Task (=
/home/vijay/Workspace/Yocto_BB/poky/meta/recipes-graphics/packagegroups/pac=
kagegroup-core-x11-xserver.bb:do_populate_lic) failed with exit code '1'<br=
 />ERROR: Task (/home/vijay/Workspace/Yocto_BB/poky/meta/recipes-core/glibc=
/glibc-locale_2.38.bb:do_populate_lic) failed with exit code '1'<br />ERROR=
: packagegroup-core-x11-1.0-r0 do_populate_lic: Error executing a python fu=
nction in exec_func_python() autogenerated:<br /><br />The stack trace of p=
ython calls that resulted in this exception/failure was:<br />File: 'exec_f=
unc_python() autogenerated', lineno: 2, function: &lt;module&gt;<br />&nbsp=
;&nbsp;&nbsp;&nbsp; 0001:<br />&nbsp;*** 0002:sstate_task_postfunc(d)<br />=
&nbsp;&nbsp;&nbsp;&nbsp; 0003:<br />File: '/home/vijay/Workspace/Yocto_BB/p=
oky/meta/classes-global/sstate.bbclass', lineno: 801, function: sstate_task=
_postfunc<br />&nbsp;&nbsp;&nbsp;&nbsp; 0797:<br />&nbsp;&nbsp;&nbsp;&nbsp;=
 0798:&nbsp;&nbsp;&nbsp; omask =3D os.umask(0o002)<br />&nbsp;&nbsp;&nbsp;&=
nbsp; 0799:&nbsp;&nbsp;&nbsp; if omask !=3D 0o002:<br />&nbsp;&nbsp;&nbsp;&=
nbsp; 0800:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.note("Using umask 0o002 =
(not %0o) for sstate packaging" % omask)<br />&nbsp;*** 0801:&nbsp;&nbsp;&n=
bsp; sstate_package(shared_state, d)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0802:&nb=
sp;&nbsp;&nbsp; os.umask(omask)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0803:<br />&n=
bsp;&nbsp;&nbsp;&nbsp; 0804:&nbsp;&nbsp;&nbsp; sstateinst =3D d.getVar("SST=
ATE_INSTDIR")<br />&nbsp;&nbsp;&nbsp;&nbsp; 0805:&nbsp;&nbsp;&nbsp; d.setVa=
r('SSTATE_FIXMEDIR', shared_state['fixmedir'])<br />File: '/home/vijay/Work=
space/Yocto_BB/poky/meta/classes-global/sstate.bbclass', lineno: 660, funct=
ion: sstate_package<br />&nbsp;&nbsp;&nbsp;&nbsp; 0656:<br />&nbsp;&nbsp;&n=
bsp;&nbsp; 0657:&nbsp;&nbsp;&nbsp; sstatebuild =3D d.expand("${WORKDIR}/sst=
ate-build-%s/" % ss['task'])<br />&nbsp;&nbsp;&nbsp;&nbsp; 0658:&nbsp;&nbsp=
;&nbsp; sde =3D int(d.getVar("SOURCE_DATE_EPOCH") or time.time())<br />&nbs=
p;&nbsp;&nbsp;&nbsp; 0659:&nbsp;&nbsp;&nbsp; d.setVar("SSTATE_CURRTASK", ss=
['task'])<br />&nbsp;*** 0660:&nbsp;&nbsp;&nbsp; bb.utils.remove(sstatebuil=
d, recurse=3DTrue)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0661:&nbsp;&nbsp;&nbsp; bb=
.utils.mkdirhier(sstatebuild)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0662:&nbsp;&nbs=
p;&nbsp; for state in ss['dirs']:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0663:&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if not os.path.exists(state[1]):<br />=
&nbsp;&nbsp;&nbsp;&nbsp; 0664:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; continue<br />File: '/home/vijay/Workspace/Yocto_BB/p=
oky/bitbake/lib/bb/utils.py', lineno: 728, function: remove<br />&nbsp;&nbs=
p;&nbsp;&nbsp; 0724:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # shutil.rmt=
ree(name) would be ideal but its too slow<br />&nbsp;&nbsp;&nbsp;&nbsp; 072=
5:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =3D []<br />&nbsp;&nbsp;&n=
bsp;&nbsp; 0726:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if ionice:<br />=
&nbsp;&nbsp;&nbsp;&nbsp; 0727:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; cmd =3D ['ionice', '-c', '3']<br />&nbsp;*** 0728:&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; subprocess.check_call(cmd + ['rm', =
'-rf'] + glob.glob(path))<br />&nbsp;&nbsp;&nbsp;&nbsp; 0729:&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; return<br />&nbsp;&nbsp;&nbsp;&nbsp; 0730:&nbs=
p;&nbsp;&nbsp; for name in glob.glob(path):<br />&nbsp;&nbsp;&nbsp;&nbsp; 0=
731:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br />&nbsp;&nbsp;&nbsp;=
&nbsp; 0732:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; os.unlink(name)<br />File: '/usr/lib/python3.10/subprocess.py', lineno:=
 364, function: check_call<br />&nbsp;&nbsp;&nbsp;&nbsp; 0360:&nbsp;&nbsp;&=
nbsp; The arguments are the same as for the call function.&nbsp; Example:<b=
r />&nbsp;&nbsp;&nbsp;&nbsp; 0361:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0362:&nbsp=
;&nbsp;&nbsp; check_call(["ls", "-l"])<br />&nbsp;&nbsp;&nbsp;&nbsp; 0363:&=
nbsp;&nbsp;&nbsp; """<br />&nbsp;*** 0364:&nbsp;&nbsp;&nbsp; retcode =3D ca=
ll(*popenargs, **kwargs)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0365:&nbsp;&nbsp;&nb=
sp; if retcode:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0366:&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; cmd =3D kwargs.get("args")<br />&nbsp;&nbsp;&nbsp;&nbsp;=
 0367:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if cmd is None:<br />&nbsp=
;&nbsp;&nbsp;&nbsp; 0368:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; cmd =3D popenargs[0]<br />File: '/usr/lib/python3.10/subpr=
ocess.py', lineno: 345, function: call<br />&nbsp;&nbsp;&nbsp;&nbsp; 0341:&=
nbsp;&nbsp;&nbsp; The arguments are the same as for the Popen constructor.&=
nbsp; Example:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0342:<br />&nbsp;&nbsp;&nbsp;&=
nbsp; 0343:&nbsp;&nbsp;&nbsp; retcode =3D call(["ls", "-l"])<br />&nbsp;&nb=
sp;&nbsp;&nbsp; 0344:&nbsp;&nbsp;&nbsp; """<br />&nbsp;*** 0345:&nbsp;&nbsp=
;&nbsp; with Popen(*popenargs, **kwargs) as p:<br />&nbsp;&nbsp;&nbsp;&nbsp=
; 0346:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br />&nbsp;&nbsp;&nb=
sp;&nbsp; 0347:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; return p.wait(timeout=3Dtimeout)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0348:=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; except:&nbsp; # Including Keyboa=
rdInterrupt, wait handled that.<br />&nbsp;&nbsp;&nbsp;&nbsp; 0349:&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; p.kill()<br />Fi=
le: '/usr/lib/python3.10/subprocess.py', lineno: 971, function: __init__<br=
 />&nbsp;&nbsp;&nbsp;&nbsp; 0967:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if self.text_mode:<br />&n=
bsp;&nbsp;&nbsp;&nbsp; 0968:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.st=
derr =3D io.TextIOWrapper(self.stderr,<br />&nbsp;&nbsp;&nbsp;&nbsp; 0969:&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; encoding=3Dencoding, errors=3Derrors)<br />&nbsp;&nbsp;&nbsp;&n=
bsp; 0970:<br />&nbsp;*** 0971:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; self._execute_child(args, executable, preexec_fn, cl=
ose_fds,<br />&nbsp;&nbsp;&nbsp;&nbsp; 0972:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; pass_fds, cwd, env,<br />&nbsp;&nbsp;&nbsp;&nbsp; 0973:&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; startupinfo, creationflags, shell,<br />&nbsp;&nbsp;=
&nbsp;&nbsp; 0974:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; p2cread, p2cwrite,<b=
r />&nbsp;&nbsp;&nbsp;&nbsp; 0975:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c2pr=
ead, c2pwrite,<br />File: '/usr/lib/python3.10/subprocess.py', lineno: 1863=
, function: _execute_child<br />&nbsp;&nbsp;&nbsp;&nbsp; 1859:&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; else:<br />&nbsp;&nbsp;&nbsp;&nbsp; 1860:&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; err_filename =3D o=
rig_executable<br />&nbsp;&nbsp;&nbsp;&nbsp; 1861:&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; if errno_num !=3D 0:<br />&nbsp;&nbsp;&nbsp;&nbsp; 1862:&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; err_msg =3D os.=
strerror(errno_num)<br />&nbsp;*** 1863:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; raise child_exception_type(errno_num, err_msg, err_filename)<br />&nbs=
p;&nbsp;&nbsp;&nbsp; 1864:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise child_exception_type(err_ms=
g)<br />&nbsp;&nbsp;&nbsp;&nbsp; 1865:<br />&nbsp;&nbsp;&nbsp;&nbsp; 1866:<=
br />&nbsp;&nbsp;&nbsp;&nbsp; 1867:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; def _handle_exitstatus(self, sts,<br />Exception: FileNotFoundError: [Er=
rno 2] No such file or directory: 'rm'<br /><br />ERROR: Logfile of failure=
 stored in: ${sources}/tmp/work/all-poky-linux/packagegroup-core-x11/1.0/te=
mp/log.do_populate_lic.7662<br />ERROR: Task (/home/vijay/Workspace/Yocto_B=
B/poky/meta/recipes-graphics/packagegroups/packagegroup-core-x11.bb:do_popu=
late_lic) failed with exit code '1'<br />ERROR: packagegroup-core-x11-sato-=
1.0-r0 do_populate_lic: Error executing a python function in exec_func_pyth=
on() autogenerated:<br /><br />The stack trace of python calls that resulte=
d in this exception/failure was:<br />File: 'exec_func_python() autogenerat=
ed', lineno: 2, function: &lt;module&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp; 0001=
:<br />&nbsp;*** 0002:sstate_task_postfunc(d)<br />&nbsp;&nbsp;&nbsp;&nbsp;=
 0003:<br />File: '/home/vijay/Workspace/Yocto_BB/poky/meta/classes-global/=
sstate.bbclass', lineno: 801, function: sstate_task_postfunc<br />&nbsp;&nb=
sp;&nbsp;&nbsp; 0797:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0798:&nbsp;&nbsp;&nbsp;=
 omask =3D os.umask(0o002)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0799:&nbsp;&nbsp;&=
nbsp; if omask !=3D 0o002:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0800:&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; bb.note("Using umask 0o002 (not %0o) for sstate pac=
kaging" % omask)<br />&nbsp;*** 0801:&nbsp;&nbsp;&nbsp; sstate_package(shar=
ed_state, d)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0802:&nbsp;&nbsp;&nbsp; os.umask=
(omask)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0803:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0=
804:&nbsp;&nbsp;&nbsp; sstateinst =3D d.getVar("SSTATE_INSTDIR")<br />&nbsp=
;&nbsp;&nbsp;&nbsp; 0805:&nbsp;&nbsp;&nbsp; d.setVar('SSTATE_FIXMEDIR', sha=
red_state['fixmedir'])<br />File: '/home/vijay/Workspace/Yocto_BB/poky/meta=
/classes-global/sstate.bbclass', lineno: 660, function: sstate_package<br /=
>&nbsp;&nbsp;&nbsp;&nbsp; 0656:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0657:&nbsp;&n=
bsp;&nbsp; sstatebuild =3D d.expand("${WORKDIR}/sstate-build-%s/" % ss['tas=
k'])<br />&nbsp;&nbsp;&nbsp;&nbsp; 0658:&nbsp;&nbsp;&nbsp; sde =3D int(d.ge=
tVar("SOURCE_DATE_EPOCH") or time.time())<br />&nbsp;&nbsp;&nbsp;&nbsp; 065=
9:&nbsp;&nbsp;&nbsp; d.setVar("SSTATE_CURRTASK", ss['task'])<br />&nbsp;***=
 0660:&nbsp;&nbsp;&nbsp; bb.utils.remove(sstatebuild, recurse=3DTrue)<br />=
&nbsp;&nbsp;&nbsp;&nbsp; 0661:&nbsp;&nbsp;&nbsp; bb.utils.mkdirhier(sstateb=
uild)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0662:&nbsp;&nbsp;&nbsp; for state in ss=
['dirs']:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0663:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; if not os.path.exists(state[1]):<br />&nbsp;&nbsp;&nbsp;&nbsp;=
 0664:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; co=
ntinue<br />File: '/home/vijay/Workspace/Yocto_BB/poky/bitbake/lib/bb/utils=
.py', lineno: 728, function: remove<br />&nbsp;&nbsp;&nbsp;&nbsp; 0724:&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # shutil.rmtree(name) would be ideal=
 but its too slow<br />&nbsp;&nbsp;&nbsp;&nbsp; 0725:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; cmd =3D []<br />&nbsp;&nbsp;&nbsp;&nbsp; 0726:&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if ionice:<br />&nbsp;&nbsp;&nbsp;&nbsp;=
 0727:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cm=
d =3D ['ionice', '-c', '3']<br />&nbsp;*** 0728:&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; subprocess.check_call(cmd + ['rm', '-rf'] + glob.glob(path)=
)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0729:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; return<br />&nbsp;&nbsp;&nbsp;&nbsp; 0730:&nbsp;&nbsp;&nbsp; for name =
in glob.glob(path):<br />&nbsp;&nbsp;&nbsp;&nbsp; 0731:&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; try:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0732:&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; os.unlink(name)<br /=
>File: '/usr/lib/python3.10/subprocess.py', lineno: 364, function: check_ca=
ll<br />&nbsp;&nbsp;&nbsp;&nbsp; 0360:&nbsp;&nbsp;&nbsp; The arguments are =
the same as for the call function.&nbsp; Example:<br />&nbsp;&nbsp;&nbsp;&n=
bsp; 0361:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0362:&nbsp;&nbsp;&nbsp; check_call=
(["ls", "-l"])<br />&nbsp;&nbsp;&nbsp;&nbsp; 0363:&nbsp;&nbsp;&nbsp; """<br=
 />&nbsp;*** 0364:&nbsp;&nbsp;&nbsp; retcode =3D call(*popenargs, **kwargs)=
<br />&nbsp;&nbsp;&nbsp;&nbsp; 0365:&nbsp;&nbsp;&nbsp; if retcode:<br />&nb=
sp;&nbsp;&nbsp;&nbsp; 0366:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =
=3D kwargs.get("args")<br />&nbsp;&nbsp;&nbsp;&nbsp; 0367:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; if cmd is None:<br />&nbsp;&nbsp;&nbsp;&nbsp; 036=
8:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =
=3D popenargs[0]<br />File: '/usr/lib/python3.10/subprocess.py', lineno: 34=
5, function: call<br />&nbsp;&nbsp;&nbsp;&nbsp; 0341:&nbsp;&nbsp;&nbsp; The=
 arguments are the same as for the Popen constructor.&nbsp; Example:<br />&=
nbsp;&nbsp;&nbsp;&nbsp; 0342:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0343:&nbsp;&nbs=
p;&nbsp; retcode =3D call(["ls", "-l"])<br />&nbsp;&nbsp;&nbsp;&nbsp; 0344:=
&nbsp;&nbsp;&nbsp; """<br />&nbsp;*** 0345:&nbsp;&nbsp;&nbsp; with Popen(*p=
openargs, **kwargs) as p:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0346:&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0347:&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return p.wait(=
timeout=3Dtimeout)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0348:&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; except:&nbsp; # Including KeyboardInterrupt, wait han=
dled that.<br />&nbsp;&nbsp;&nbsp;&nbsp; 0349:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; p.kill()<br />File: '/usr/lib/python3=
.10/subprocess.py', lineno: 971, function: __init__<br />&nbsp;&nbsp;&nbsp;=
&nbsp; 0967:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; if self.text_mode:<br />&nbsp;&nbsp;&nbsp;&nbsp=
; 0968:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.stderr =3D io.TextIOWra=
pper(self.stderr,<br />&nbsp;&nbsp;&nbsp;&nbsp; 0969:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; encoding=
=3Dencoding, errors=3Derrors)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0970:<br />&nbs=
p;*** 0971:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; self._execute_child(args, executable, preexec_fn, close_fds,<br />&nbsp;=
&nbsp;&nbsp;&nbsp; 0972:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pass_fds, cwd,=
 env,<br />&nbsp;&nbsp;&nbsp;&nbsp; 0973:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; startupinfo, creationflags, shell,<br />&nbsp;&nbsp;&nbsp;&nbsp; 0974:&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; p2cread, p2cwrite,<br />&nbsp;&nbsp;&nbs=
p;&nbsp; 0975:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c2pread, c2pwrite,<br />=
File: '/usr/lib/python3.10/subprocess.py', lineno: 1863, function: _execute=
_child<br />&nbsp;&nbsp;&nbsp;&nbsp; 1859:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; else:<br />&nbsp;&nbsp;&nbsp;&nbsp; 1860:&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; err_filename =3D orig_executable<br />=
&nbsp;&nbsp;&nbsp;&nbsp; 1861:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if er=
rno_num !=3D 0:<br />&nbsp;&nbsp;&nbsp;&nbsp; 1862:&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; err_msg =3D os.strerror(errno_num)<=
br />&nbsp;*** 1863:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise child_exc=
eption_type(errno_num, err_msg, err_filename)<br />&nbsp;&nbsp;&nbsp;&nbsp;=
 1864:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; raise child_exception_type(err_msg)<br />&nbsp;&nbsp;=
&nbsp;&nbsp; 1865:<br />&nbsp;&nbsp;&nbsp;&nbsp; 1866:<br />&nbsp;&nbsp;&nb=
sp;&nbsp; 1867:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; def _handle_exits=
tatus(self, sts,<br />Exception: FileNotFoundError: [Errno 2] No such file =
or directory: 'rm'<br /><br />ERROR: Logfile of failure stored in: ${source=
s}/tmp/work/beaglebone_yocto-poky-linux-gnueabi/packagegroup-core-x11-sato/=
1.0/temp/log.do_populate_lic.7665<br />ERROR: Task (/home/vijay/Workspace/Y=
octo_BB/poky/meta/recipes-sato/packagegroups/packagegroup-core-x11-sato.bb:=
do_populate_lic) failed with exit code '1'<br />ERROR: packagegroup-core-x1=
1-base-1.0-r0 do_populate_lic: Error executing a python function in exec_fu=
nc_python() autogenerated:<br /><br />The stack trace of python calls that =
resulted in this exception/failure was:<br />File: 'exec_func_python() auto=
generated', lineno: 2, function: &lt;module&gt;<br />&nbsp;&nbsp;&nbsp;&nbs=
p; 0001:<br />&nbsp;*** 0002:sstate_task_postfunc(d)<br />&nbsp;&nbsp;&nbsp=
;&nbsp; 0003:<br />File: '/home/vijay/Workspace/Yocto_BB/poky/meta/classes-=
global/sstate.bbclass', lineno: 801, function: sstate_task_postfunc<br />&n=
bsp;&nbsp;&nbsp;&nbsp; 0797:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0798:&nbsp;&nbsp=
;&nbsp; omask =3D os.umask(0o002)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0799:&nbsp;=
&nbsp;&nbsp; if omask !=3D 0o002:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0800:&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.note("Using umask 0o002 (not %0o) for sst=
ate packaging" % omask)<br />&nbsp;*** 0801:&nbsp;&nbsp;&nbsp; sstate_packa=
ge(shared_state, d)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0802:&nbsp;&nbsp;&nbsp; o=
s.umask(omask)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0803:<br />&nbsp;&nbsp;&nbsp;&=
nbsp; 0804:&nbsp;&nbsp;&nbsp; sstateinst =3D d.getVar("SSTATE_INSTDIR")<br =
/>&nbsp;&nbsp;&nbsp;&nbsp; 0805:&nbsp;&nbsp;&nbsp; d.setVar('SSTATE_FIXMEDI=
R', shared_state['fixmedir'])<br />File: '/home/vijay/Workspace/Yocto_BB/po=
ky/meta/classes-global/sstate.bbclass', lineno: 660, function: sstate_packa=
ge<br />&nbsp;&nbsp;&nbsp;&nbsp; 0656:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0657:&=
nbsp;&nbsp;&nbsp; sstatebuild =3D d.expand("${WORKDIR}/sstate-build-%s/" % =
ss['task'])<br />&nbsp;&nbsp;&nbsp;&nbsp; 0658:&nbsp;&nbsp;&nbsp; sde =3D i=
nt(d.getVar("SOURCE_DATE_EPOCH") or time.time())<br />&nbsp;&nbsp;&nbsp;&nb=
sp; 0659:&nbsp;&nbsp;&nbsp; d.setVar("SSTATE_CURRTASK", ss['task'])<br />&n=
bsp;*** 0660:&nbsp;&nbsp;&nbsp; bb.utils.remove(sstatebuild, recurse=3DTrue=
)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0661:&nbsp;&nbsp;&nbsp; bb.utils.mkdirhier(=
sstatebuild)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0662:&nbsp;&nbsp;&nbsp; for stat=
e in ss['dirs']:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0663:&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if not os.path.exists(state[1]):<br />&nbsp;&nbsp;&nbsp=
;&nbsp; 0664:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; continue<br />File: '/home/vijay/Workspace/Yocto_BB/poky/bitbake/lib/b=
b/utils.py', lineno: 728, function: remove<br />&nbsp;&nbsp;&nbsp;&nbsp; 07=
24:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # shutil.rmtree(name) would b=
e ideal but its too slow<br />&nbsp;&nbsp;&nbsp;&nbsp; 0725:&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =3D []<br />&nbsp;&nbsp;&nbsp;&nbsp; 0726:&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if ionice:<br />&nbsp;&nbsp;&nbsp=
;&nbsp; 0727:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; cmd =3D ['ionice', '-c', '3']<br />&nbsp;*** 0728:&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; subprocess.check_call(cmd + ['rm', '-rf'] + glob.glo=
b(path))<br />&nbsp;&nbsp;&nbsp;&nbsp; 0729:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; return<br />&nbsp;&nbsp;&nbsp;&nbsp; 0730:&nbsp;&nbsp;&nbsp; fo=
r name in glob.glob(path):<br />&nbsp;&nbsp;&nbsp;&nbsp; 0731:&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0732:&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; os.unlink(nam=
e)<br />File: '/usr/lib/python3.10/subprocess.py', lineno: 364, function: c=
heck_call<br />&nbsp;&nbsp;&nbsp;&nbsp; 0360:&nbsp;&nbsp;&nbsp; The argumen=
ts are the same as for the call function.&nbsp; Example:<br />&nbsp;&nbsp;&=
nbsp;&nbsp; 0361:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0362:&nbsp;&nbsp;&nbsp; che=
ck_call(["ls", "-l"])<br />&nbsp;&nbsp;&nbsp;&nbsp; 0363:&nbsp;&nbsp;&nbsp;=
 """<br />&nbsp;*** 0364:&nbsp;&nbsp;&nbsp; retcode =3D call(*popenargs, **=
kwargs)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0365:&nbsp;&nbsp;&nbsp; if retcode:<b=
r />&nbsp;&nbsp;&nbsp;&nbsp; 0366:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; cmd =3D kwargs.get("args")<br />&nbsp;&nbsp;&nbsp;&nbsp; 0367:&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if cmd is None:<br />&nbsp;&nbsp;&nbsp;&nbs=
p; 0368:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
cmd =3D popenargs[0]<br />File: '/usr/lib/python3.10/subprocess.py', lineno=
: 345, function: call<br />&nbsp;&nbsp;&nbsp;&nbsp; 0341:&nbsp;&nbsp;&nbsp;=
 The arguments are the same as for the Popen constructor.&nbsp; Example:<br=
 />&nbsp;&nbsp;&nbsp;&nbsp; 0342:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0343:&nbsp;=
&nbsp;&nbsp; retcode =3D call(["ls", "-l"])<br />&nbsp;&nbsp;&nbsp;&nbsp; 0=
344:&nbsp;&nbsp;&nbsp; """<br />&nbsp;*** 0345:&nbsp;&nbsp;&nbsp; with Pope=
n(*popenargs, **kwargs) as p:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0346:&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br />&nbsp;&nbsp;&nbsp;&nbsp; 0347:&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return p.w=
ait(timeout=3Dtimeout)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0348:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; except:&nbsp; # Including KeyboardInterrupt, wait=
 handled that.<br />&nbsp;&nbsp;&nbsp;&nbsp; 0349:&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; p.kill()<br />File: '/usr/lib/pyt=
hon3.10/subprocess.py', lineno: 971, function: __init__<br />&nbsp;&nbsp;&n=
bsp;&nbsp; 0967:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if self.text_mode:<br />&nbsp;&nbsp;&nbsp;&=
nbsp; 0968:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.stderr =3D io.TextI=
OWrapper(self.stderr,<br />&nbsp;&nbsp;&nbsp;&nbsp; 0969:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; encod=
ing=3Dencoding, errors=3Derrors)<br />&nbsp;&nbsp;&nbsp;&nbsp; 0970:<br />&=
nbsp;*** 0971:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; self._execute_child(args, executable, preexec_fn, close_fds,<br />&nb=
sp;&nbsp;&nbsp;&nbsp; 0972:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pass_fds, c=
wd, env,<br />&nbsp;&nbsp;&nbsp;&nbsp; 0973:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; startupinfo, creationflags, shell,<br />&nbsp;&nbsp;&nbsp;&nbsp; 0974=
:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; p2cread, p2cwrite,<br />&nbsp;&nbsp;&=
nbsp;&nbsp; 0975:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c2pread, c2pwrite,<br=
 />File: '/usr/lib/python3.10/subprocess.py', lineno: 1863, function: _exec=
ute_child<br />&nbsp;&nbsp;&nbsp;&nbsp; 1859:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; else:<br />&nbsp;&nbsp;&nbsp;&nbsp; 1860:&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; err_filename =3D orig_executable<br=
 />&nbsp;&nbsp;&nbsp;&nbsp; 1861:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if=
 errno_num !=3D 0:<br />&nbsp;&nbsp;&nbsp;&nbsp; 1862:&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; err_msg =3D os.strerror(errno_nu=
m)<br />&nbsp;*** 1863:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise child_=
exception_type(errno_num, err_msg, err_filename)<br />&nbsp;&nbsp;&nbsp;&nb=
sp; 1864:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; raise child_exception_type(err_msg)<br />&nbsp;&nb=
sp;&nbsp;&nbsp; 1865:<br />&nbsp;&nbsp;&nbsp;&nbsp; 1866:<br />&nbsp;&nbsp;=
&nbsp;&nbsp; 1867:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; def _handle_ex=
itstatus(self, sts,<br />Exception: FileNotFoundError: [Errno 2] No such fi=
le or directory: 'rm'<br /><br />ERROR: Logfile of failure stored in: ${sou=
rces}/tmp/work/all-poky-linux/packagegroup-core-x11-base/1.0/temp/log.do_po=
pulate_lic.7670<br />ERROR: Task (/home/vijay/Workspace/Yocto_BB/poky/meta/=
recipes-graphics/packagegroups/packagegroup-core-x11-base.bb:do_populate_li=
c) failed with exit code '1'<br />NOTE: Tasks Summary: Attempted 5 tasks of=
 which 0 didn't need to be rerun and 5 failed.<br /><br />Summary: 5 tasks =
failed:<br />&nbsp; /home/vijay/Workspace/Yocto_BB/poky/meta/recipes-graphi=
cs/packagegroups/packagegroup-core-x11-xserver.bb:do_populate_lic<br />&nbs=
p; /home/vijay/Workspace/Yocto_BB/poky/meta/recipes-core/glibc/glibc-locale=
_2.38.bb:do_populate_lic<br />&nbsp; /home/vijay/Workspace/Yocto_BB/poky/me=
ta/recipes-graphics/packagegroups/packagegroup-core-x11.bb:do_populate_lic<=
br />&nbsp; /home/vijay/Workspace/Yocto_BB/poky/meta/recipes-sato/packagegr=
oups/packagegroup-core-x11-sato.bb:do_populate_lic<br />&nbsp; /home/vijay/=
Workspace/Yocto_BB/poky/meta/recipes-graphics/packagegroups/packagegroup-co=
re-x11-base.bb:do_populate_lic<br />Summary: There were 3 WARNING messages.=
<br />Summary: There were 6 ERROR messages, returning a non-zero exit code.=
<br /><br /><br />thank you<br />vijay

--cpjY6NOHiVbHRmanziw8--

