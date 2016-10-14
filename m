Return-Path: <paultsai111@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B175E00E73; Fri, 14 Oct 2016 02:33:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (paultsai111[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8858E00CCD
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 02:33:55 -0700 (PDT)
Received: by mail-qk0-f181.google.com with SMTP id o68so182965230qkf.3
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 02:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=pUZwL1HJItM5n75prpeYhB6nx0rcMGTA92amKarmUgQ=;
	b=AZqlHBrmpePh3KF89uvmP209/nJrr1z+JbkGMxelbheJlB0N5t2KMGMpDBVTn4Vved
	4Uk+bFEw6d+O2+g8UiCgVM5lWzvyjC1j23g8XVyQYQRCUFL4w59sQMZxHh4Rgyti8ibm
	hCZ5XFOHG5xRRpvRgHt9yeeRP8AOE/jKor/Mr6XN0ooeo0v03n43aWkSzgR6gADpwI8u
	1KICI2uiyA6HNx6UnU1dOdpwXTQOiI4jL2D7XdNo9Uv+Ob5WsyNQ1hMlrTEAvImWArB0
	CBB0Mdm8HDv1evBMIL5wzhCf4UmfQDL79yDaWhLkqiNYeaXUyJ6KqOP2tDkXN1RwXviI
	vf5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=pUZwL1HJItM5n75prpeYhB6nx0rcMGTA92amKarmUgQ=;
	b=j4HYdtztnsacrsoHuEaRQqfzcndagA0gFUTgRw2+/39rlhVWiHp3kE1axNfbFxf+ZS
	L7oNz5ugHqiUqcr1qdsGgZr2oNEaI7XW1x2YfR2HffjNVsz9TUSicWoGGJgr4ZTdjRCj
	azRcFz8aTF+DBc2zwEQ/0kB0PI1lrAL+JWbhN6YsvKgZ3UlqgLrmnjnAnbJAH/4zVM/M
	4TFGcEiah8rGtebWewy/y5sv6PZYCu4d2kUe2N4mmmy2dm9Etfy1Hlnt2+h7o4kzIoDe
	2zxUvnHqkCgo65nDlAyTJoFHw3B6WAwG7zGU1mIWRGRC9GjOv5+X6KVHNNHTpRnzaJ1D
	mO0Q==
X-Gm-Message-State: AA6/9RkF3s6Yk4EUJzuks4SyhcbbSCWCzgA1yYvzLnjnEdhXQLWiw39GaX4c10bvcp8ELrZAGgnkSrWEondAFQ==
X-Received: by 10.194.154.227 with SMTP id vr3mr1408601wjb.127.1476437634579; 
	Fri, 14 Oct 2016 02:33:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.70.129 with HTTP; Fri, 14 Oct 2016 02:33:53 -0700 (PDT)
In-Reply-To: <CAD+7r0dT+be6j72uiR2aS2jze8GmYH0JoLVKyrAG4SkCc_jhSQ@mail.gmail.com>
References: <CAD+7r0dT+be6j72uiR2aS2jze8GmYH0JoLVKyrAG4SkCc_jhSQ@mail.gmail.com>
From: =?UTF-8?B?6JSh5bCa576p?= <paultsai111@gmail.com>
Date: Fri, 14 Oct 2016 17:33:53 +0800
Message-ID: <CAD+7r0dpANdSZ8mWW8XHdY0vPVOdHD59FKg3aCS9V3L7LQGRrw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Failed to build image, output error "ERROR: Worker process (11579) exited unexpectedly (-9), shutting down..."
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
X-List-Received-Date: Fri, 14 Oct 2016 09:33:59 -0000
Content-Type: multipart/alternative; boundary=047d7b86d05abe0380053ecfec6d

--047d7b86d05abe0380053ecfec6d
Content-Type: text/plain; charset=UTF-8

Hi ALL:

I am an software engineer in Askey. I have one question about building the
apq-8053 device image. The main question is that I can not build well.
Below  is the error messages which show unexpected shutdown.
I have studied from the web site and google and found the following links
shows that

https://bugzilla.yoctoproject.org/show_bug.cgi?id=6570
https://wiki.yoctoproject.org/wiki/WW35_-_2014-08-26_-_Weekly_-_1.7_M3

yocto seems provide an updated version and has fix this kind of issue. So
how can I get the updated one for fixing this problem ?Why this happened ?
Does it relate to the workstation hardware requirement? How Can I fix this
problems ? What Information should I provide for the judgement about this
issue ?


paultsai@paultsai-VirtualBox:~/poky/build$ build-8053-image
WARNING: Unable to chmod TMPDIR: [Errno 1] Operation not permitted:
'/home/paultsai/poky/build/tmp-glibc'
WARNING: Getting checksum for lib32-subsystem-ramdump SRC_URI entry : file
not found except in DL_DIR
WARNING: Getting checksum for subsystem-ramdump SRC_URI entry : file not
found except in DL_DIR
WARNING: Getting checksum for llvm-arm-toolchain-native SRC_URI entry :
file not found except in DL_DIR
WARNING: Getting checksum for lib32-mcm-core SRC_URI entry : file not found
except in DL_DIR
WARNING: Getting checksum for mcm-core SRC_URI entry : file not found
except in DL_DIR
WARNING: Getting checksum for lib32-loc-mcm-test-shim SRC_URI entry : file
not found except in DL_DIR
WARNING: Getting checksum for loc-mcm-test-shim SRC_URI entry : file not
found except in DL_DIR
WARNING: Getting checksum for lib32-loc-mcm-qmi-test-shim SRC_URI entry :
file not found except in DL_DIR
WARNING: Getting checksum for loc-mcm-qmi-test-shim SRC_URI entry : file
not found except in DL_DIR
WARNING: Getting checksum for lib32-loc-mcm-type-conv SRC_URI entry : file
not found except in DL_DIR
WARNING: Getting checksum for loc-mcm-type-conv SRC_URI entry : file not
found except in DL_DIR
WARNING: Getting checksum for lib32-mcmlocserver SRC_URI entry : file not
found except in DL_DIR
WARNING: Getting checksum for mcmlocserver SRC_URI entry : file not found
except in DL_DIR
WARNING: Getting checksum for lib32-loc-base-util SRC_URI entry : file not
found except in DL_DIR
WARNING: Getting checksum for loc-base-util SRC_URI entry : file not found
except in DL_DIR
WARNING: Getting checksum for lib32-loc-mq-client SRC_URI entry : file not
found except in DL_DIR
WARNING: Getting checksum for loc-mq-client SRC_URI entry : file not found
except in DL_DIR
WARNING: Unable to get checksum for lib32-glesproto SRC_URI entry include:
file could not be found
WARNING: Unable to get checksum for glesproto SRC_URI entry include: file
could not be found
WARNING: Getting checksum for lib32-mm-video-oss SRC_URI entry
mm-video-oss: file not found except in DL_DIR
WARNING: Getting checksum for mm-video-oss SRC_URI entry mm-video-oss: file
not found except in DL_DIR
WARNING: Unable to get checksum for lib32-libtbm-msm SRC_URI entry
libtbm-msm: file could not be found
WARNING: Unable to get checksum for libtbm-msm SRC_URI entry libtbm-msm:
file could not be found
WARNING: Unable to get checksum for lib32-libtbm SRC_URI entry libtbm: file
could not be found
WARNING: Unable to get checksum for libtbm SRC_URI entry libtbm: file could
not be found
WARNING: Unable to get checksum for
lib32-start-scripts-find-recovery-partitions
SRC_URI entry find_recovery_partitions.sh: file could not be found
WARNING: Unable to get checksum for start-scripts-find-recovery-partitions
SRC_URI entry find_recovery_partitions.sh: file could not be found
WARNING: Unable to get checksum for lib32-msm7k SRC_URI entry msm7k: file
could not be found
WARNING: Unable to get checksum for msm7k SRC_URI entry msm7k: file could
not be found
WARNING: Unable to get checksum for lib32-dlog SRC_URI entry dlog: file
could not be found
WARNING: Unable to get checksum for dlog SRC_URI entry dlog: file could not
be found
WARNING: Unable to get checksum for lib32-iptables SRC_URI entry
types.h-add-defines-that-are-required-for-if_packet.patch: file could not
be found
WARNING: Unable to get checksum for lib32-webserver SRC_URI entry
webserver: file could not be found
WARNING: Unable to get checksum for webserver SRC_URI entry webserver: file
could not be found
WARNING: Unable to get checksum for lib32-mm-image-codec SRC_URI entry
mm-image-codec: file could not be found
WARNING: Unable to get checksum for mm-image-codec SRC_URI entry
mm-image-codec: file could not be found
WARNING: Getting checksum for yaffs2-utils-native SRC_URI entry : file not
found except in DL_DIR
WARNING: Unable to get checksum for lib32-utils-lib SRC_URI entry utils:
file could not be found
WARNING: Unable to get checksum for utils-lib SRC_URI entry utils: file
could not be found
WARNING: Getting checksum for fsconfig-native SRC_URI entry : file not
found except in DL_DIR
WARNING: Getting checksum for fsconfig SRC_URI entry : file not found
except in DL_DIR
WARNING: Getting checksum for lib32-qrngd SRC_URI entry : file not found
except in DL_DIR
WARNING: Getting checksum for qrngd SRC_URI entry : file not found except
in DL_DIR
WARNING: Variable key LICENSE_${PN} (GPL) replaces original key
LICENSE_dnsmasq (GPLv2only).
WARNING: Unable to get checksum for lib32-hostap SRC_URI entry hostap: file
could not be found
WARNING: Unable to get checksum for hostap SRC_URI entry hostap: file could
not be found
WARNING: Unable to get checksum for lib32-libgenlock SRC_URI entry
libgenlock: file could not be found
WARNING: Unable to get checksum for libgenlock SRC_URI entry libgenlock:
file could not be found
WARNING: Unable to get checksum for lib32-mm-core-oss SRC_URI entry
mm-core: file could not be found
WARNING: Unable to get checksum for mm-core-oss SRC_URI entry mm-core: file
could not be found
Parsing recipes: 100% |########################| Time: 00:04:29
Parsing of 1238 .bb files complete (0 cached, 1238 parsed). 2936 targets,
529 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
NOTE: multiple providers are available for lib32-jpeg (lib32-jpeg,
lib32-libjpeg-turbo)
NOTE: consider defining a PREFERRED_PROVIDER entry to match lib32-jpeg

Build Configuration:
BB_VERSION        = "1.28.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "aarch64-oe-linux"
MACHINE           = "apq8053"
DISTRO            = "msm"
DISTRO_VERSION    = "LV.HB.1.1.2-24200-8x96.0"
TUNE_FEATURES     = "aarch64"
TARGET_FPU        = ""
meta-qti-bsp-prop = "HEAD:2ff9d30dac1d0734547b0793bd5d1efb00d00f4e"
meta-qti-bsp      = "HEAD:1d1ee2d6a9b1b8d949aaaace89e561145938f55b"
meta-yocto
meta
meta-yocto-bsp    = "HEAD:2ff9d30dac1d0734547b0793bd5d1efb00d00f4e"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
Currently 14 running tasks (36 of 1883):
Currently 15 running tasks (36 of 1883):
0: pseudo-native-1.7.4-r0 do_populate_sysroot_setscene (pid 11586)
Currently 16 running tasks (36 of 1883):
0: pseudo-native-1.7.4-r0 do_populate_sysroot_setscene (pid 11586)
1: opkg-utils-native-0.1.8+gitAUTOINC+53274f0875-r0
do_populate_lic_setscene (pid 11590)
Currently 15 running tasks (36 of 1883):
0: pseudo-native-1.7.4-r0 do_populate_sysroot_setscene (pid 11586)
Currently 16 running tasks (36 of 1883):
0: pseudo-native-1.7.4-r0 do_populate_sysroot_setscene (pid 11586)
1: pseudo-native-1.7.4-r0 do_populate_lic_setscene (pid 11587)
2: pigz-native-2.3.3-r0 do_populate_lic_setscene (pid 11585)
Currently 15 running tasks (36 of 1883):
0: pseudo-native-1.7.4-r0 do_populate_sysroot_setscene (pid 11586)
1: pigz-native-2.3.3-r0 do_populate_lic_setscene (pid 11585)
Currently 15 running tasks (37 of 1883):
0: pseudo-native-1.7.4-r0 do_populate_sysroot_setscene (pid 11586)
1: pigz-native-2.3.3-r0 do_populate_lic_setscene (pid 11585)
Currently 15 running tasks (41 of 1883):
0: pseudo-native-1.7.4-r0 do_populate_sysroot_setscene (pid 11586)
1: pigz-native-2.3.3-r0 do_populate_lic_setscene (pid 11585)
Currently 14 running tasks (41 of 1883):
0: pseudo-native-1.7.4-r0 do_populate_sysroot_setscene (pid 11586)
Currently 13 running tasks (41 of 1883):
Currently 14 running tasks (41 of 1883):
0: ext4-utils-native-git-r1 do_populate_sysroot_setscene (pid 11600)
Currently 14 running tasks (47 of 1883):
0: ext4-utils-native-git-r1 do_populate_sysroot_setscene (pid 11600)
WARNING: Variable key LICENSE_${PN} (GPL) replaces original key
LICENSE_dnsmasq (GPLv2only).
Currently 15 running tasks (932 of 1883):
Currently 15 running tasks (932 of 1883):
Currently 16 running tasks (1042 of 1883):
Currently 16 running tasks (1042 of 1883):
Currently 16 running tasks (1046 of 1883):
Currently 13 running tasks (1745 of 1883):
0: lib32-go-bootstrap-1.4.3-r0 do_populate_sysroot_setscene (piCurrently 14
running tasks (1745 of 1883):
0: lib32-go-bootstrap-1.4.3-r0 do_populate_sysroot_setscene (pid 16955)
Currently 13 running tasks (1745 of 1883):
Currently 14 running tasks (1840 of 1883):
NOTE: Executing RunQueue Tasks
WARNING: Variable key LICENSE_${PN} (GPL) replaces original key
LICENSE_dnsmasq (GPLv2only).
WARNING: Variable key LICENSE_${PN} (GPL) replaces original key
LICENSE_dnsmasq (GPLv2only).
WARNING: Variable key LICENSE_${PN} (GPL) replaces original key
LICENSE_dnsmasq (GPLv2only).
ERROR: Worker process (11579) exited unexpectedly (-9), shutting down...
ERROR: Fakeroot process (18615) exited unexpectedly (-9), shutting down...
ERROR: Worker process (11579) exited unexpectedly (-9), shutting down...
ERROR: Fakeroot process (18615) exited unexpectedly (-9), shutting down...
ERROR: Worker process (11579) exited unexpectedly (-9), shutting down...
ERROR: Fakeroot process (18615) exited unexpectedly (-9), shutting down...
ERROR: Worker process (11579) exited unexpectedly (-9), shutting down...
ERROR: Fakeroot process (18615) exited unexpectedly (-9), shutting down...
NOTE: Tasks Summary: Attempted 1798 tasks of which 980 didn't need to be
rerun and all succeeded.
Currently 7 running tasks (1805 of 4110):
0: binutils-cross-aarch64-2.25.1-r0 do_compile (pid 6624)
1: lib32-binutils-cross-arm-2.25.1-r0 do_compile (pid 20571)
2: binutils-native-2.25.1-r0 do_compile (pid 21996)
3: gdb-cross-aarch64-7.9.1-r0 do_compile (pid 26758)
4: libxml2-native-2.9.2-r0 do_compile (pid 9605)
5: cmake-native-3.3.1-r0 do_compile (pid 24523)
6: rpm-native-5.4.14-r0 do_compile (pid 13615)

Summary: There were 55 WARNING messages shown.
Summary: There were 8 ERROR messages shown, returning a non-zero exit code.
Delaying shutdown due to active processes which appear to be holding
bitbake.lock:
COMMAND   PID     USER   FD   TYPE DEVICE SIZE/OFF    NODE NAME
python  18625 paultsai   12u   REG    8,1        0 5116995
/home/paultsai/poky/build/bitbake.lock

Delaying shutdown due to active processes which appear to be holding
bitbake.lock:
COMMAND   PID     USER   FD   TYPE DEVICE SIZE/OFF    NODE NAME
python  18625 paultsai   12u   REG    8,1        0 5116995
/home/paultsai/poky/build/bitbake.lock

Delaying shutdown due to active processes which appear to be holding
bitbake.lock:
COMMAND   PID     USER   FD   TYPE DEVICE SIZE/OFF    NODE NAME
python  18625 paultsai   12u   REG    8,1        0 5116995
/home/paultsai/poky/build/bitbake.lock

Delaying shutdown due to active processes which appear to be holding
bitbake.lock:
COMMAND   PID     USER   FD   TYPE DEVICE SIZE/OFF    NODE NAME
python  18625 paultsai   12u   REG    8,1        0 5116995
/home/paultsai/poky/build/bitbake.lock

Process ProcessServer-1:
Traceback (most recent call last):
  File "/usr/lib/python2.7/multiprocessing/process.py", line 258, in
_bootstrap
    self.run()
  File "/home/paultsai/poky/bitbake/lib/bb/server/process.py", line 102, in
run
    bb.cooker.server_main(self.cooker, self.main)
  File "/home/paultsai/poky/bitbake/lib/bb/cooker.py", line 1684, in
server_main
    cooker.post_serve()
  File "/home/paultsai/poky/bitbake/lib/bb/cooker.py", line 1622, in
post_serve
    procs = subprocess.check_output(["lsof", '-w', lockfile],
stderr=subprocess.STDOUT)
  File "/usr/lib/python2.7/subprocess.py", line 573, in check_output
    raise CalledProcessError(retcode, cmd, output=output)
CalledProcessError: Command '['lsof', '-w',
'/home/paultsai/poky/build/bitbake.lock']'
returned non-zero exit status 1
/home/paultsai/poky/build
paultsai@paultsai-VirtualBox:~/poky/build$

Thanks and Best Regards

--047d7b86d05abe0380053ecfec6d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><br><div dir=3D"ltr"><div>Hi AL=
L:</div><div><br></div><div>I am an software engineer in Askey. I have one =
question about building the apq-8053 device image. The main question is tha=
t=C2=A0I can not build well.</div><div>Below =C2=A0is the error messages wh=
ich show unexpected shutdown.=C2=A0</div><div>I have studied from the web s=
ite and google and found the following links shows that=C2=A0</div><div><br=
></div><div><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
6570">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6570</a></div><di=
v><a href=3D"https://wiki.yoctoproject.org/wiki/WW35_-_2014-08-26_-_Weekly_=
-_1.7_M3">https://wiki.yoctoproject.org/wiki/WW35_-_2014-08-26_-_Weekly_-_1=
.7_M3</a><br></div><div><br></div><div>yocto seems provide an updated versi=
on and has fix this kind of issue. So how can I get the updated one for fix=
ing this problem ?Why this happened ? Does it relate to the workstation har=
dware requirement? How Can I fix this problems ? What Information should I =
provide for the judgement about this issue ?</div><div><br></div><div><br><=
/div><div>paultsai@paultsai-VirtualBox:~<wbr>/poky/build$ build-8053-image<=
/div><div>WARNING: Unable to chmod TMPDIR: [Errno 1] Operation not permitte=
d: &#39;/home/paultsai/poky/build/<wbr>tmp-glibc&#39;</div><div>WARNING: Ge=
tting checksum for lib32-subsystem-ramdump SRC_URI entry : file not found e=
xcept in DL_DIR</div><div>WARNING: Getting checksum for subsystem-ramdump S=
RC_URI entry : file not found except in DL_DIR</div><div>WARNING: Getting c=
hecksum for llvm-arm-toolchain-native SRC_URI entry : file not found except=
 in DL_DIR</div><div>WARNING: Getting checksum for lib32-mcm-core SRC_URI e=
ntry : file not found except in DL_DIR</div><div>WARNING: Getting checksum =
for mcm-core SRC_URI entry : file not found except in DL_DIR</div><div>WARN=
ING: Getting checksum for lib32-loc-mcm-test-shim SRC_URI entry : file not =
found except in DL_DIR</div><div>WARNING: Getting checksum for loc-mcm-test=
-shim SRC_URI entry : file not found except in DL_DIR</div><div>WARNING: Ge=
tting checksum for lib32-loc-mcm-qmi-test-shim SRC_URI entry : file not fou=
nd except in DL_DIR</div><div>WARNING: Getting checksum for loc-mcm-qmi-tes=
t-shim SRC_URI entry : file not found except in DL_DIR</div><div>WARNING: G=
etting checksum for lib32-loc-mcm-type-conv SRC_URI entry : file not found =
except in DL_DIR</div><div>WARNING: Getting checksum for loc-mcm-type-conv =
SRC_URI entry : file not found except in DL_DIR</div><div>WARNING: Getting =
checksum for lib32-mcmlocserver SRC_URI entry : file not found except in DL=
_DIR</div><div>WARNING: Getting checksum for mcmlocserver SRC_URI entry : f=
ile not found except in DL_DIR</div><div>WARNING: Getting checksum for lib3=
2-loc-base-util SRC_URI entry : file not found except in DL_DIR</div><div>W=
ARNING: Getting checksum for loc-base-util SRC_URI entry : file not found e=
xcept in DL_DIR</div><div>WARNING: Getting checksum for lib32-loc-mq-client=
 SRC_URI entry : file not found except in DL_DIR</div><div>WARNING: Getting=
 checksum for loc-mq-client SRC_URI entry : file not found except in DL_DIR=
</div><div>WARNING: Unable to get checksum for lib32-glesproto SRC_URI entr=
y include: file could not be found</div><div>WARNING: Unable to get checksu=
m for glesproto SRC_URI entry include: file could not be found</div><div>WA=
RNING: Getting checksum for lib32-mm-video-oss SRC_URI entry mm-video-oss: =
file not found except in DL_DIR</div><div>WARNING: Getting checksum for mm-=
video-oss SRC_URI entry mm-video-oss: file not found except in DL_DIR</div>=
<div>WARNING: Unable to get checksum for lib32-libtbm-msm SRC_URI entry lib=
tbm-msm: file could not be found</div><div>WARNING: Unable to get checksum =
for libtbm-msm SRC_URI entry libtbm-msm: file could not be found</div><div>=
WARNING: Unable to get checksum for lib32-libtbm SRC_URI entry libtbm: file=
 could not be found</div><div>WARNING: Unable to get checksum for libtbm SR=
C_URI entry libtbm: file could not be found</div><div>WARNING: Unable to ge=
t checksum for lib32-start-scripts-find-<wbr>recovery-partitions SRC_URI en=
try find_recovery_partitions.sh: file could not be found</div><div>WARNING:=
 Unable to get checksum for start-scripts-find-recovery-<wbr>partitions SRC=
_URI entry find_recovery_partitions.sh: file could not be found</div><div>W=
ARNING: Unable to get checksum for lib32-msm7k SRC_URI entry msm7k: file co=
uld not be found</div><div>WARNING: Unable to get checksum for msm7k SRC_UR=
I entry msm7k: file could not be found</div><div>WARNING: Unable to get che=
cksum for lib32-dlog SRC_URI entry dlog: file could not be found</div><div>=
WARNING: Unable to get checksum for dlog SRC_URI entry dlog: file could not=
 be found</div><div>WARNING: Unable to get checksum for lib32-iptables SRC_=
URI entry types.h-add-defines-that-are-<wbr>required-for-if_packet.patch: f=
ile could not be found</div><div>WARNING: Unable to get checksum for lib32-=
webserver SRC_URI entry webserver: file could not be found</div><div>WARNIN=
G: Unable to get checksum for webserver SRC_URI entry webserver: file could=
 not be found</div><div>WARNING: Unable to get checksum for lib32-mm-image-=
codec SRC_URI entry mm-image-codec: file could not be found</div><div>WARNI=
NG: Unable to get checksum for mm-image-codec SRC_URI entry mm-image-codec:=
 file could not be found</div><div>WARNING: Getting checksum for yaffs2-uti=
ls-native SRC_URI entry : file not found except in DL_DIR</div><div>WARNING=
: Unable to get checksum for lib32-utils-lib SRC_URI entry utils: file coul=
d not be found</div><div>WARNING: Unable to get checksum for utils-lib SRC_=
URI entry utils: file could not be found</div><div>WARNING: Getting checksu=
m for fsconfig-native SRC_URI entry : file not found except in DL_DIR</div>=
<div>WARNING: Getting checksum for fsconfig SRC_URI entry : file not found =
except in DL_DIR</div><div>WARNING: Getting checksum for lib32-qrngd SRC_UR=
I entry : file not found except in DL_DIR</div><div>WARNING: Getting checks=
um for qrngd SRC_URI entry : file not found except in DL_DIR</div><div>WARN=
ING: Variable key LICENSE_${PN} (GPL) replaces original key LICENSE_dnsmasq=
 (GPLv2only).</div><div>WARNING: Unable to get checksum for lib32-hostap SR=
C_URI entry hostap: file could not be found</div><div>WARNING: Unable to ge=
t checksum for hostap SRC_URI entry hostap: file could not be found</div><d=
iv>WARNING: Unable to get checksum for lib32-libgenlock SRC_URI entry libge=
nlock: file could not be found</div><div>WARNING: Unable to get checksum fo=
r libgenlock SRC_URI entry libgenlock: file could not be found</div><div>WA=
RNING: Unable to get checksum for lib32-mm-core-oss SRC_URI entry mm-core: =
file could not be found</div><div>WARNING: Unable to get checksum for mm-co=
re-oss SRC_URI entry mm-core: file could not be found</div><div>Parsing rec=
ipes: 100% |########################| Time: 00:04:29</div><div>Parsing of 1=
238 .bb files complete (0 cached, 1238 parsed). 2936 targets, 529 skipped, =
0 masked, 0 errors.</div><div>NOTE: Resolving any missing task queue depend=
encies</div><div>NOTE: multiple providers are available for lib32-jpeg (lib=
32-jpeg, lib32-libjpeg-turbo)</div><div>NOTE: consider defining a PREFERRED=
_PROVIDER entry to match lib32-jpeg</div><div><br></div><div>Build Configur=
ation:</div><div>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.28.0&quo=
t;</div><div>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&q=
uot;</div><div>NATIVELSBSTRING =C2=A0 =3D &quot;Ubuntu-14.04&quot;</div><di=
v>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;aarch64-oe-linux&quot;</d=
iv><div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;apq8053&quot;<=
/div><div>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;msm&quo=
t;</div><div>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;LV.HB.1.1.2-24200-8x96.0=
&quot;</div><div>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;aarch64&quot;</div><=
div>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;</div><div>meta-q=
ti-bsp-prop =3D &quot;HEAD:<wbr>2ff9d30dac1d0734547b0793bd5d1e<wbr>fb00d00f=
4e&quot;</div><div>meta-qti-bsp =C2=A0 =C2=A0 =C2=A0=3D &quot;HEAD:<wbr>1d1=
ee2d6a9b1b8d949aaaace89e561<wbr>145938f55b&quot;</div><div>meta-yocto =C2=
=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0</div><div>meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;HEAD:<wbr>2ff=
9d30dac1d0734547b0793bd5d1e<wbr>fb00d00f4e&quot;</div><div><br></div><div>N=
OTE: Preparing RunQueue</div><div>NOTE: Executing SetScene Tasks</div><div>=
Currently 14 running tasks (36 of 1883):</div><div>Currently 15 running tas=
ks (36 of 1883):</div><div>0: pseudo-native-1.7.4-r0 do_populate_sysroot_se=
tscene (pid 11586)</div><div>Currently 16 running tasks (36 of 1883):</div>=
<div>0: pseudo-native-1.7.4-r0 do_populate_sysroot_setscene (pid 11586)</di=
v><div>1: opkg-utils-native-0.1.8+<wbr>gitAUTOINC+53274f0875-r0 do_populate=
_lic_setscene (pid 11590)</div><div>Currently 15 running tasks (36 of 1883)=
:</div><div>0: pseudo-native-1.7.4-r0 do_populate_sysroot_setscene (pid 115=
86)</div><div>Currently 16 running tasks (36 of 1883):</div><div>0: pseudo-=
native-1.7.4-r0 do_populate_sysroot_setscene (pid 11586)</div><div>1: pseud=
o-native-1.7.4-r0 do_populate_lic_setscene (pid 11587)</div><div>2: pigz-na=
tive-2.3.3-r0 do_populate_lic_setscene (pid 11585)</div><div>Currently 15 r=
unning tasks (36 of 1883):</div><div>0: pseudo-native-1.7.4-r0 do_populate_=
sysroot_setscene (pid 11586)</div><div>1: pigz-native-2.3.3-r0 do_populate_=
lic_setscene (pid 11585)</div><div>Currently 15 running tasks (37 of 1883):=
</div><div>0: pseudo-native-1.7.4-r0 do_populate_sysroot_setscene (pid 1158=
6)</div><div>1: pigz-native-2.3.3-r0 do_populate_lic_setscene (pid 11585)</=
div><div>Currently 15 running tasks (41 of 1883):</div><div>0: pseudo-nativ=
e-1.7.4-r0 do_populate_sysroot_setscene (pid 11586)</div><div>1: pigz-nativ=
e-2.3.3-r0 do_populate_lic_setscene (pid 11585)</div><div>Currently 14 runn=
ing tasks (41 of 1883):</div><div>0: pseudo-native-1.7.4-r0 do_populate_sys=
root_setscene (pid 11586)</div><div>Currently 13 running tasks (41 of 1883)=
:</div><div>Currently 14 running tasks (41 of 1883):</div><div>0: ext4-util=
s-native-git-r1 do_populate_sysroot_setscene (pid 11600)</div><div>Currentl=
y 14 running tasks (47 of 1883):</div><div>0: ext4-utils-native-git-r1 do_p=
opulate_sysroot_setscene (pid 11600)</div><div>WARNING: Variable key LICENS=
E_${PN} (GPL) replaces original key LICENSE_dnsmasq (GPLv2only).</div><div>=
Currently 15 running tasks (932 of 1883):</div><div>Currently 15 running ta=
sks (932 of 1883):</div><div>Currently 16 running tasks (1042 of 1883):</di=
v><div>Currently 16 running tasks (1042 of 1883):</div><div>Currently 16 ru=
nning tasks (1046 of 1883):</div><div>Currently 13 running tasks (1745 of 1=
883):</div><div>0: lib32-go-bootstrap-1.4.3-r0 do_populate_sysroot_setscene=
 (piCurrently 14 running tasks (1745 of 1883):</div><div>0: lib32-go-bootst=
rap-1.4.3-r0 do_populate_sysroot_setscene (pid 16955)</div><div>Currently 1=
3 running tasks (1745 of 1883):</div><div>Currently 14 running tasks (1840 =
of 1883):</div><div>NOTE: Executing RunQueue Tasks</div><div>WARNING: Varia=
ble key LICENSE_${PN} (GPL) replaces original key LICENSE_dnsmasq (GPLv2onl=
y).</div><div>WARNING: Variable key LICENSE_${PN} (GPL) replaces original k=
ey LICENSE_dnsmasq (GPLv2only).</div><div>WARNING: Variable key LICENSE_${P=
N} (GPL) replaces original key LICENSE_dnsmasq (GPLv2only).</div><div><font=
 color=3D"#ff0000">ERROR: Worker process (11579) exited unexpectedly (-9), =
shutting down...</font></div><div><font color=3D"#ff0000">ERROR: Fakeroot p=
rocess (18615) exited unexpectedly (-9), shutting down...</font></div><div>=
<font color=3D"#ff0000">ERROR: Worker process (11579) exited unexpectedly (=
-9), shutting down...</font></div><div><font color=3D"#ff0000">ERROR: Faker=
oot process (18615) exited unexpectedly (-9), shutting down...</font></div>=
<div><font color=3D"#ff0000">ERROR: Worker process (11579) exited unexpecte=
dly (-9), shutting down...</font></div><div><font color=3D"#ff0000">ERROR: =
Fakeroot process (18615) exited unexpectedly (-9), shutting down...</font><=
/div><div><font color=3D"#ff0000">ERROR: Worker process (11579) exited unex=
pectedly (-9), shutting down...</font></div><div><font color=3D"#ff0000">ER=
ROR: Fakeroot process (18615) exited unexpectedly (-9), shutting down...</f=
ont></div><div><font color=3D"#ff0000">NOTE: Tasks Summary: Attempted 1798 =
tasks of which 980 didn&#39;t need to be rerun and all succeeded.</font></d=
iv><div>Currently 7 running tasks (1805 of 4110):</div><div>0: binutils-cro=
ss-aarch64-2.25.1-<wbr>r0 do_compile (pid 6624)</div><div>1: lib32-binutils=
-cross-arm-2.25.<wbr>1-r0 do_compile (pid 20571)</div><div>2: binutils-nati=
ve-2.25.1-r0 do_compile (pid 21996)</div><div>3: gdb-cross-aarch64-7.9.1-r0=
 do_compile (pid 26758)</div><div>4: libxml2-native-2.9.2-r0 do_compile (pi=
d 9605)</div><div>5: cmake-native-3.3.1-r0 do_compile (pid 24523)</div><div=
>6: rpm-native-5.4.14-r0 do_compile (pid 13615)</div><div><br></div><div>Su=
mmary: There were 55 WARNING messages shown.</div><div>Summary: There were =
8 ERROR messages shown, returning a non-zero exit code.</div><div>Delaying =
shutdown due to active processes which appear to be holding bitbake.lock:</=
div><div>COMMAND =C2=A0 PID =C2=A0 =C2=A0 USER =C2=A0 FD =C2=A0 TYPE DEVICE=
 SIZE/OFF =C2=A0 =C2=A0NODE NAME</div><div>python =C2=A018625 paultsai =C2=
=A0 12u =C2=A0 REG =C2=A0 =C2=A08,1 =C2=A0 =C2=A0 =C2=A0 =C2=A00 5116995 /h=
ome/paultsai/poky/build/<wbr>bitbake.lock</div><div><br></div><div>Delaying=
 shutdown due to active processes which appear to be holding bitbake.lock:<=
/div><div>COMMAND =C2=A0 PID =C2=A0 =C2=A0 USER =C2=A0 FD =C2=A0 TYPE DEVIC=
E SIZE/OFF =C2=A0 =C2=A0NODE NAME</div><div>python =C2=A018625 paultsai =C2=
=A0 12u =C2=A0 REG =C2=A0 =C2=A08,1 =C2=A0 =C2=A0 =C2=A0 =C2=A00 5116995 /h=
ome/paultsai/poky/build/<wbr>bitbake.lock</div><div><br></div><div>Delaying=
 shutdown due to active processes which appear to be holding bitbake.lock:<=
/div><div>COMMAND =C2=A0 PID =C2=A0 =C2=A0 USER =C2=A0 FD =C2=A0 TYPE DEVIC=
E SIZE/OFF =C2=A0 =C2=A0NODE NAME</div><div>python =C2=A018625 paultsai =C2=
=A0 12u =C2=A0 REG =C2=A0 =C2=A08,1 =C2=A0 =C2=A0 =C2=A0 =C2=A00 5116995 /h=
ome/paultsai/poky/build/<wbr>bitbake.lock</div><div><br></div><div>Delaying=
 shutdown due to active processes which appear to be holding bitbake.lock:<=
/div><div>COMMAND =C2=A0 PID =C2=A0 =C2=A0 USER =C2=A0 FD =C2=A0 TYPE DEVIC=
E SIZE/OFF =C2=A0 =C2=A0NODE NAME</div><div>python =C2=A018625 paultsai =C2=
=A0 12u =C2=A0 REG =C2=A0 =C2=A08,1 =C2=A0 =C2=A0 =C2=A0 =C2=A00 5116995 /h=
ome/paultsai/poky/build/<wbr>bitbake.lock</div><div><br></div><div>Process =
ProcessServer-1:</div><div>Traceback (most recent call last):</div><div>=C2=
=A0 File &quot;/usr/lib/python2.7/<wbr>multiprocessing/process.py&quot;, li=
ne 258, in _bootstrap</div><div>=C2=A0 =C2=A0 self.run()</div><div>=C2=A0 F=
ile &quot;/home/paultsai/poky/bitbake/<wbr>lib/bb/server/process.py&quot;, =
line 102, in run</div><div>=C2=A0 =C2=A0 bb.cooker.server_main(self.<wbr>co=
oker, self.main)</div><div>=C2=A0 File &quot;/home/paultsai/poky/bitbake/<w=
br>lib/bb/cooker.py&quot;, line 1684, in server_main</div><div>=C2=A0 =C2=
=A0 cooker.post_serve()</div><div>=C2=A0 File &quot;/home/paultsai/poky/bit=
bake/<wbr>lib/bb/cooker.py&quot;, line 1622, in post_serve</div><div>=C2=A0=
 =C2=A0 procs =3D subprocess.check_output([&quot;<wbr>lsof&quot;, &#39;-w&#=
39;, lockfile], stderr=3Dsubprocess.STDOUT)</div><div>=C2=A0 File &quot;/us=
r/lib/python2.7/<wbr>subprocess.py&quot;, line 573, in check_output</div><d=
iv>=C2=A0 =C2=A0 raise CalledProcessError(retcode, cmd, output=3Doutput)</d=
iv><div>CalledProcessError: Command &#39;[&#39;lsof&#39;, &#39;-w&#39;, &#3=
9;/home/paultsai/poky/build/<wbr>bitbake.lock&#39;]&#39; returned non-zero =
exit status 1</div><div>/home/paultsai/poky/build</div><div>paultsai@paults=
ai-VirtualBox:~<wbr>/poky/build$=C2=A0</div><div><br></div><div>Thanks and =
Best Regards</div><div><br></div></div>
</div><br></div>

--047d7b86d05abe0380053ecfec6d--
