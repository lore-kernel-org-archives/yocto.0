Return-Path: <juergen.messerer@bbv.ch>
Received: from owa.outnet.ch (mail.outnet.ch [80.67.146.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A431E006CB
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 06:49:33 -0700 (PDT)
Received: from TKSSREX01.outnet.ch ([10.10.10.1]) by tkssrexhcu01.outnet.ch
	([172.17.220.45]) with mapi; Tue, 19 Mar 2013 14:49:31 +0100
From: =?iso-8859-1?Q?J=FCrgen_Messerer?= <juergen.messerer@bbv.ch>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 19 Mar 2013 14:49:30 +0100
Thread-Topic: ti-xdctools fails with yocto  1.3 on ubuntu 64bit
Thread-Index: AQHOJKiUjbi6D0SFt0yqa/RZ+X83Tg==
Message-ID: <A7B59F6D52627C44813C136D437B0832079834507C4C@TKSSREX01.outnet.ch>
Accept-Language: en-US, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, de-CH
MIME-Version: 1.0
Subject: ti-xdctools fails with yocto 1.3 on ubuntu 64bit
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Mar 2013 13:49:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi everyone.

I just tried to build an image for the beagleboard with Ti DSP support.
Unfortunately it failed with the message below.
On a 32bit system it worked but on the Ubuntu 12.10 64bit it failed with th=
e message below.

Is this beacause of the missing ia32-libs?

If yes can some one tell me exactly which 32bit-library is needed, because =
a  'apt-get install ia32-libs' will install 237MB of libraries.
I think it is not necessary to install all of those libs.

Thanks for the help.

Best regards

Juergen




testuser@ubuntu:~/myYocto/mybuilds/beagleboard-core-image-bbv$ bitbake ti-x=
dctools
Loading cache: 100% |######################################################=
#####################################| ETA:  00:00:00
Loaded 1267 entries from dependency cache.
=20
Build Configuration:
BB_VERSION        =3D "1.16.0"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "beagleboard"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.3"
TUNE_FEATURES     =3D "armv7a vfp neon cortexa8"
TARGET_FPU        =3D "vfp-neon"
meta            =20
meta-yocto      =20
meta-bbv          =3D "danny:e89f812a0af56beda951c1dce6113a61d6db8cda"
meta-ti           =3D "danny:900893454cc0639c767b3a2435097bdbfee28414"
=20
NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: TI installer requires 32bit glibc libraries for proper operation
run 'yum install glibc.i686' on Fedora or 'apt-get install ia32-libs' on Ub=
untu/Debian
ERROR: Command Error: exit status: 1  Output:
Applying patch fix-hardcoded-paths.diff
can't find file to patch at input line 4
Perhaps you used the wrong -p or --strip option?
The text leading up to this was:
--------------------------
|diff -ur a/packages/gnu/targets/ITarget.xs b/packages/gnu/targets/ITarget.=
xs
|--- a/packages/gnu/targets/ITarget.xs  2011-08-06 13:24:44.000000000 +0200
|+++ b/packages/gnu/targets/ITarget.xs               2011-08-06 13:23:37.00=
0000000 +0200
--------------------------
No file to patch.  Skipping patch.
2 out of 2 hunks ignored
Patch fix-hardcoded-paths.diff does not apply (enforce with -f)
ERROR: Function failed: patch_do_patch
ERROR: Logfile of failure stored in: /home/testuser/myYocto/mybuilds/beagle=
board-core-image-bbv/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/ti-xdctool=
s-3_23_00_32-r0/temp/log.do_patch.31449
ERROR: Task 1 (/home/testuser/myYocto/poky_danny/meta-ti/recipes-ti/devtool=
s/ti-xdctools_3.23.00.32.bb, do_patch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 720 tasks of which 713 didn't need to be rer=
un and 1 failed.
Waiting for 0 running tasks to finish:
=20
Summary: 1 task failed:
  /home/testuser/myYocto/poky_danny/meta-ti/recipes-ti/devtools/ti-xdctools=
_3.23.00.32.bb, do_patch
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.=

