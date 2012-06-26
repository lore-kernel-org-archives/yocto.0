Return-Path: <mhubig@imko.de>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25217E0141D
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 04:08:47 -0700 (PDT)
Received: by wibhn17 with SMTP id hn17so886759wib.11
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 04:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Jwq4AW2HUtXFpAnFbo9eVJ3LHtvu0FZxs855ywnxRPQ=;
	b=NzlABdzjbf9nHw00JqWgbITDyMvpjdDWqLiHhyZstTGxXH0KWrf6mupXOWZxY15QtY
	a3KgltSfgdQ3kJmIdkOVcrLfj/0qo+kS5OPfP7VtuMb9DlKsys9AOuhq0NRDLeTdHkAi
	JbDvtCoobtKw5Hf93MFNHbSndpiKsL03akByE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=Jwq4AW2HUtXFpAnFbo9eVJ3LHtvu0FZxs855ywnxRPQ=;
	b=bkzx9J6MfofgdFwjNZNABKMpZFP7FhvCxiLy7X3lGORhDzh1UtOOE9Ug5pBmNvu1Mz
	bNbH8+41u0+jwX+vSaV/6NLb9PU+2jRz6M6XTuCqnAPgMuZE5h8n7TosEJVpZMefU2vr
	ciTCFmXzSN/Y1KQZx371wzeA6+sRc1rLzg7AoiWA5sM/ch2bO+f/H+CEhOZjiO6pJxsH
	wMTDK6Wp/iIJl7mQkJ6M9SZTHsjDBpb6BAAE5ZQZ2kPodjdCCr20PDBxBBtfZW3zaDMn
	Pb2ScZmR3d1RL69baUZRB6R89DJzpG/w3WdCoOuJSsIbMYUn7FGxsn2Hrpx0n6lisnUH
	f+ZA==
MIME-Version: 1.0
Received: by 10.180.102.136 with SMTP id fo8mr31850019wib.19.1340708926723;
	Tue, 26 Jun 2012 04:08:46 -0700 (PDT)
Received: by 10.180.94.194 with HTTP; Tue, 26 Jun 2012 04:08:46 -0700 (PDT)
Date: Tue, 26 Jun 2012 13:08:46 +0200
Message-ID: <CAGws1TuNe+=5YzBOMJv30KgY7o+N9_1kqryRPKpB+27Un0=CZQ@mail.gmail.com>
From: Markus Hubig <mhubig@imko.de>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQmXBQdxu4W9GkHRBZOOGYhSaGZc36oj5yrOnFqN6H1ihgagAcxsJnS98rIqe9o1z1nLZXa3
Subject: BSP for taskit stamp9g20
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Jun 2012 11:08:48 -0000
Content-Type: multipart/alternative; boundary=f46d044481d753159d04c35e1ff1

--f46d044481d753159d04c35e1ff1
Content-Type: text/plain; charset=ISO-8859-1

Hello @all,

as part of my bachelor thesis, I'm in the process of creating a custom
Linux OS
for the taskit Stamp9G20<http://www.taskit.de/en/products/stamp9g20/index.htm>(a
small AT91SAM9G20 based CPU board). This is when
I came across the YoctoProject. Now I'm trying to build a BSP Layer for
this Board.

There are a lot of documentation out there, but I still miss the whole
picture ... :-(

This is what I've done so far:

$ yocto-bsp create stamp9g20 arm
-> kernel 3.2 [y]
-> new machine branch [y]
-> machine branch to base this BSP on
[standard/default/arm-versatile-926ejs]
-> Do you need SMP support? [n]
-> Which machine tuning would you like to use? [arm926ejs]
-> value for UBOOT_MACHINE [default: omap3_beagle_config]
-> UBOOT_ENTRYPOINT: [default: 0x80008000]
-> UBOOT_LOADADDRESS: [default: 0x80008000]
-> Do you need support for X? [n]
-> Does your BSP have a touchscreen? [default: n]
-> Does your BSP have a keyboard? [n]

(U-Boot stuff needs some adjustments but I save this for later ...)

Now I have a nice BSP layer for the Stamp9G20. Year! But whats the next
step? To get the right
kernel configuration for the stamp9g20 I can easily configure the kernel
with:

$ make ARCH=arm stamp9g20_defconfig

Here is what I "think" I have to do next. Please, please correct me if I
got it all wrong!

# make a bare clone
$ git clone --bare git://git.yoctoproject.org/linux-yocto-3.2
 linux-yocto-3.2.git

# make a *working clone* of the *bare clone*
$ git clone linux-yocto-3.2.git linux-yocto-3.2-work

# create a new branch based on arm-versatile-926ejs *inside my working clone
*
$ git checkout -b
yocto/standard/stamp9g20 remotes/origin/standard/default/arm-versatile-926ejs

# push the new branch back to the *bare clone*. Now I have a branch my
bsp-layer is based on?!
$ git push origin yocto/standard/stamp9g20:standard/default/stamp9g20

# check out the *meta branch* inside the *working clone*
$ git checkout -b meta-stamp9g20 remotes/origin/meta

# now I just copy the *arm-versatile-926ejs* dir to *stamp9g20* and rename
everything ...
$ cd meta/cfg/kernel-cache/bsp
$ cp -a arm-versatile-926ejs stamp9g20
$ cd stamp9g20
$ rename 's/arm-versatile-926ejs/stamp9g20/' *
$ sed -i 's/arm-versatile-926ejs/stamp9g20/' *

Now it get's in to the details. Since I have a working kernel config from "make
ARCH=arm stamp9g20_defconfig" I *think*
all I have to do is using the resulting .config file and put *parts of it*into
stamp9g20.cfg, right? Later more on this, but since
I'm more interested in the "big picture" I will leave these files as they
are for now.

# Add, commit and push the changes to the bare clone
$ git add stamp9g20
$ git commit -a -s
$ git push origin meta-stamp9g20:meta

# Now I change meta-stamp9g20/recipes-kernel/linux/linux-yocto_3.2.bbappend
# to point to my new branch
KBRANCH_stamp9g20 = "standard/default/stamp9g20"
YOCTO_KERNEL_EXTERNAL_BRANCH_stamp9g20  = "standard/default/stamp9g20"

# Clone poky-extras *into poky* ...
$ git clone git://git.yoctoproject.org/poky-extras poky-extras

#
edit poky-extras/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.2.bbappend
KSRC_linux_yocto_3_2 ?= "/home/mhubig/Development/linux-yocto-3.2.git"
SRC_URI =
"git://${KSRC_linux_yocto_3_2};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"

# Now lets try a build.
$ cd ~/poky
$ source oe-init-build-env

# Edit conf/bblayers.conf
BBLAYERS ?= " \
  /home/mhubig/Development/poky/meta \
  /home/mhubig/Development/poky/meta-yocto \
  /home/mhubig/Development/poky/meta-stamp9g20 \
  /home/mhubig/Development/poky/poky-extras/meta-kernel-dev \
  "

# Edit conf/local.conf
MACHINE ??= "stamp9g20"

and go ...

$ bitbake -c cleanall linux-yocto
$ bitbake -k core-image-minimal

This fails with a bunch of errors, all related to linux-yocto ...

$ bitbake -v -k linux-yocto
WARNING: Host distribution "Ubuntu 12.04 LTS" has not been validated with
this version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.
Loading cache: 100%
|#############################################################################|
ETA:  00:00:00
Loaded 1104 entries from dependency cache.
Parsing recipes: 100%
|###########################################################################|
Time: 00:00:00
Parsing of 829 .bb files complete (827 cached, 2 parsed). 1105 targets, 37
skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        = "1.15.1"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "stamp9g20"
DISTRO            = "poky"
DISTRO_VERSION    = "1.2"
TUNE_FEATURES     = "armv5 dsp thumb arm926ejs"
TARGET_FPU        = "soft"
meta
meta-yocto
meta-stamp9g20    = "denzil:d20a24310eb43fed9a3f3e75752c9ad45a18cbe4"
meta-kernel-dev   = "master:42f1aba1c52da20edd65709152fec3529b3b516f"

NOTE: Resolving any missing task queue dependencies
NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due to
PREFERRED_PROVIDERS
NOTE: selecting eglibc to satisfy virtual/libc due to PREFERRED_PROVIDERS
NOTE: selecting gcc-cross to satisfy virtual/arm-poky-linux-gnueabi-gcc due
to PREFERRED_PROVIDERS
NOTE: selecting linux-yocto to satisfy runtime kernel-base due to
PREFERRED_PROVIDER_virtual/kernel = linux-yocto
NOTE: selecting linux-yocto to satisfy runtime kernel-image due to
PREFERRED_PROVIDER_virtual/kernel = linux-yocto
NOTE: selecting eglibc to satisfy runtime eglibc-dev due to
PREFERRED_PROVIDER_virtual/libc = eglibc
NOTE: selecting eglibc to satisfy runtime libsegfault due to
PREFERRED_PROVIDER_virtual/libc = eglibc
NOTE: selecting eglibc to satisfy runtime eglibc due to
PREFERRED_PROVIDER_virtual/libc = eglibc
NOTE: selecting gcc-cross-intermediate to satisfy
virtual/arm-poky-linux-gnueabi-gcc-intermediate due to PREFERRED_PROVIDERS
NOTE: selecting linux-libc-headers to satisfy linux-libc-headers due to
PREFERRED_PROVIDERS
NOTE: selecting gettext to satisfy virtual/gettext due to
PREFERRED_PROVIDERS
NOTE: selecting gcc-runtime to satisfy
virtual/arm-poky-linux-gnueabi-compilerlibs due to PREFERRED_PROVIDERS
NOTE: selecting binutils-cross to satisfy
virtual/arm-poky-linux-gnueabi-binutils due to PREFERRED_PROVIDERS
NOTE: selecting eglibc to satisfy
virtual/arm-poky-linux-gnueabi-libc-for-gcc due to PREFERRED_PROVIDERS
NOTE: selecting db to satisfy virtual/db due to PREFERRED_PROVIDERS
NOTE: selecting linux-libc-headers to satisfy runtime
linux-libc-headers-dev due to PREFERRED_PROVIDER_linux-libc-headers =
linux-libc-headers
NOTE: selecting gettext to satisfy runtime gettext-dev due to
PREFERRED_PROVIDER_virtual/gettext = gettext
NOTE: selecting gettext to satisfy runtime gettext due to
PREFERRED_PROVIDER_virtual/gettext = gettext
NOTE: selecting db to satisfy runtime db-dev due to
PREFERRED_PROVIDER_virtual/db = db
NOTE: selecting db to satisfy runtime db due to
PREFERRED_PROVIDER_virtual/db = db
NOTE: selecting pigz-native to satisfy gzip-native due to
PREFERRED_PROVIDERS
NOTE: selecting eglibc-initial to satisfy
virtual/arm-poky-linux-gnueabi-libc-initial due to PREFERRED_PROVIDERS
NOTE: selecting eglibc to satisfy virtual/libiconv due to
PREFERRED_PROVIDERS
NOTE: selecting gcc-cross to satisfy virtual/arm-poky-linux-gnueabi-g++ due
to PREFERRED_PROVIDERS
NOTE: selecting libgcc to satisfy libgcc due to PREFERRED_PROVIDERS
NOTE: selecting libgcc to satisfy runtime libgcc due to
PREFERRED_PROVIDER_libgcc = libgcc
NOTE: selecting gcc-cross-initial to satisfy
virtual/arm-poky-linux-gnueabi-gcc-initial due to PREFERRED_PROVIDERS
NOTE: Preparing runqueue
NOTE: Marking Active Tasks
NOTE: Pruned 1364 inactive tasks, 992 left
NOTE: Assign Weightings
NOTE: Compute totals (have 1 endpoint(s))
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 422 of 992 (ID: 3,
/home/mhubig/Development/poky/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
do_patch)
NOTE: package
linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1:
task do_patch: Started
+ cd
/home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1
+ do_patch
+ cd
/home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux
+ [ -f
/home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01
627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/defconfig
]
+ [ -f
/home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux/scripts/util/configme
]
+ kbranch=standard/default/stamp9g20
+ [ -n standard/default/stamp9g20 ]
+ kbranch=standard/default/stamp9g20
+ [ -n t ]
+ createme_flags=--disable-meta-gen
+ createme --disable-meta-gen arm st
andard/default/stamp9g20
[INFO]: checkpoint is already restored, nothing to do
+ [ 0 -ne 0 ]
+
sccs=/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20-standard.scc
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.scc
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kern
el/linux/files/user-patches.scc
+ patches=
+ set +e
+ [ -n features/netfilter features/taskstats ]
+ addon_features= --feature features/netfilter
+ addon_features= --feature features/netfilter --feature features/taskstats
+ updateme --branch standard/default/stamp9g20 -DKDESC=stamp9g20:standard
--feature features/netfilter --feature features/taskstats arm stamp9g20
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20-standard.scc
/home/mhubig/Development/poky/meta-stamp9g20/reci
pes-kernel/linux/files/stamp9g20.scc
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-patches.scc
+ [ 0 -ne 0 ]
+ patchme standard/default/stamp9g20
ERROR. Could not locate meta series for standard/default/stamp9g20
+ [ 1 -ne 0 ]
+ echo ERROR. Could not modify standard/default/stamp9g20
ERROR. Could not modif
ERROR: Function failed: do_patch (see
/home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/temp/log.do_patch.31485
for further information)
ERROR: Logfile of failure stored in:
/home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/temp/log.do_patch.31485
Log data follows:
| + cd
/home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1
| + do_patch
| + cd
/home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux
| + [ -f
/home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01
|
627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/defconfig
]
| + [ -f
/home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux/scripts/util/configme
]
| + kbranch=standard/default/stamp9g20
| + [ -n standard/default/stamp9g20 ]
| + kbranch=standard/default/stamp9g20
| + [ -n t ]
| + createme_flags=--disable-meta-gen
| + createme --disable-meta-gen arm st
| andard/default/stamp9g20
| [INFO]: checkpoint is already restored, nothing to do
| + [ 0 -ne 0 ]
| +
sccs=/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20-standard.scc
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.scc
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kern
| el/linux/files/user-patches.scc
| + patches=
| + set +e
| + [ -n features/netfilter features/taskstats ]
| + addon_features= --feature features/netfilter
| + addon_features= --feature features/netfilter --feature
features/taskstats
| + updateme --branch standard/default/stamp9g20 -DKDESC=stamp9g20:standard
--feature features/netfilter --feature features/taskstats arm stamp9g20
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20-standard.scc
/home/mhubig/Development/poky/meta-stamp9g20/reci
| pes-kernel/linux/files/stamp9g20.scc
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-patches.scc
| + [ 0 -ne 0 ]
| + patchme standard/default/stamp9g20
| ERROR. Could not locate meta series for standard/default/stamp9g20
| + [ 1 -ne 0 ]
| + echo ERROR. Could not modify standard/default/stamp9g20
| ERROR. Could not modif
| ERROR: Function failed: do_patch (see
/home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/temp/log.do_patch.31485
for further information)
| + cd
/home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1
| + do_patch
| + cd
/home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux
| + [ -f
/home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/defconfig
]
| + [ -f
/home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux/scripts/util/configme
]
| + kbranch=standard/default/stamp9g20
| + [ -n standard/default/stamp9g20 ]
| + kbranch=standard/default/stamp9g20
| + [ -n t ]
| + createme_flags=--disable-meta-gen
| + createme --disable-meta-gen arm standard/default/stamp9g20
| [INFO]: checkpoint is already restored, nothing to do
| + [ 0 -ne 0 ]
| +
sccs=/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20-standard.scc
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.scc
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-patches.scc
| + patches=
| + set +e
| + [ -n features/netfilter features/taskstats ]
| + addon_features= --feature features/netfilter
| + addon_features= --feature features/netfilter --feature
features/taskstats
| + updateme --branch standard/default/stamp9g20 -DKDESC=stamp9g20:standard
--feature features/netfilter --feature features/taskstats arm stamp9g20
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20-standard.scc
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.scc
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg
/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-patches.scc
| + [ 0 -ne 0 ]
| + patchme standard/default/stamp9g20
| ERROR. Could not locate meta series for standard/default/stamp9g20
| + [ 1 -ne 0 ]
| + echo ERROR. Could not modify standard/default/stamp9g20
| ERROR. Could not modif
NOTE: package
linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1:
task do_patch: Failed
ERROR: Task 3 (/home/mhubig/Development/poky/meta/recipes-kernel/linux/
linux-yocto_3.2.bb, do_patch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 975 tasks of which 974 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  /home/mhubig/Development/poky/meta/recipes-kernel/linux/linux-yocto_3.2.bb,
do_patch
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

--f46d044481d753159d04c35e1ff1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello @all,<div><br></div><div>as part of my bachelor thesis, I&#39;m in th=
e process of creating a custom Linux OS</div><div>for the taskit <a href=3D=
"http://www.taskit.de/en/products/stamp9g20/index.htm" target=3D"_blank">St=
amp9G20</a> (a small=A0AT91SAM9G20 based CPU board). This is when</div>



<div>I came across the YoctoProject. Now I&#39;m trying to build a BSP Laye=
r for this Board.</div><div><br></div><div>There are a lot of documentation=
 out there, but I still miss the whole picture ... :-(</div><div><br></div>



<div>This is what I&#39;ve done so far:</div><div><br></div><font face=3D"c=
ourier new, monospace">$ yocto-bsp create stamp9g20 arm<br>-&gt; kernel 3.2=
 [y]<br>-&gt; new machine branch [y]<br>-&gt;=A0machine branch to base this=
 BSP on [standard/default/arm-versatile-926ejs]<br>


-&gt;=A0Do you need SMP support? [n]<br>-&gt;=A0Which machine tuning would =
you like to use? [arm926ejs]<br>-&gt;=A0value for UBOOT_MACHINE=A0[default:=
 omap3_beagle_config]<br>-&gt;=A0UBOOT_ENTRYPOINT: [default: 0x80008000]<br=
>-&gt;=A0UBOOT_LOADADDRESS: [default: 0x80008000]<br>


-&gt;=A0Do you need support for X? [n]<br>-&gt; Does your BSP have a touchs=
creen? [default: n]=A0<br>-&gt; Does your BSP have a keyboard? [n]</font><d=
iv><span style=3D"line-height:14px"><div><br></div><div>(U-Boot stuff needs=
 some adjustments but I save this for later ...)</div>


<div><br></div></span></div><div>Now I have a nice BSP layer for the Stamp9=
G20. Year! But whats the next step?=A0To get the right</div><div>kernel con=
figuration for the stamp9g20 I can easily configure the kernel with:</div>


<div><br></div><div><font face=3D"courier new, monospace">$ make ARCH=3Darm=
 stamp9g20_defconfig</font></div><div><br></div><div>Here is what I &quot;t=
hink&quot; I have to do next. Please, please correct me if I got it all wro=
ng!</div>


<div><br></div><div><span style=3D"font-family:&#39;courier new&#39;,monosp=
ace"># make a bare clone</span></div><div><font face=3D"courier new, monosp=
ace">$=A0git clone --bare git://<a href=3D"http://git.yoctoproject.org/linu=
x-yocto-3.2" target=3D"_blank">git.yoctoproject.org/linux-yocto-3.2</a>=A0l=
inux-yocto-3.2.git</font></div>


<div><font face=3D"courier new, monospace"><br></font></div><div><font face=
=3D"courier new, monospace"># make a <b>working clone</b> of the <b>bare cl=
one</b></font></div><div><font face=3D"courier new, monospace">$=A0git clon=
e linux-yocto-3.2.git linux-yocto-3.2-work</font></div>


<div><font face=3D"courier new, monospace"><br></font></div><div><font face=
=3D"courier new, monospace"># create a new branch based on arm-versatile-92=
6ejs=A0<b>inside my working clone</b></font></div><div><font face=3D"courie=
r new, monospace">$ git checkout -b yocto/standard/stamp9g20=A0remotes/orig=
in/standard/default/arm-versatile-926ejs</font></div>


<div><font face=3D"courier new, monospace"><br></font></div><div><font face=
=3D"courier new, monospace"># push the new branch back to the <b>bare clone=
</b>. Now I have a branch my bsp-layer is based on?!</font></div><div><font=
 face=3D"courier new, monospace">$ git push origin yocto/standard/stamp9g20=
:standard/default/stamp9g20</font></div>


<div><font face=3D"courier new, monospace"><br></font></div><div><font face=
=3D"courier new, monospace"># check out the <b>meta branch</b> inside the <=
b>working clone</b></font></div><div><font face=3D"courier new, monospace">=
$=A0git checkout -b meta-stamp9g20 remotes/origin/meta</font></div>


<div><font face=3D"courier new, monospace"><br></font></div><div><font face=
=3D"courier new, monospace"># now I just copy the=A0<b>arm-versatile-926ejs=
</b> dir to <b>stamp9g20</b>=A0and rename everything ...</font></div><div><=
font face=3D"courier new, monospace">$ cd meta/cfg/kernel-cache/bsp</font><=
/div>


<div><font face=3D"courier new, monospace">$=A0cp -a arm-versatile-926ejs s=
tamp9g20</font></div><div><font face=3D"courier new, monospace">$ cd stamp9=
g20</font></div><div><font face=3D"courier new, monospace">$=A0rename &#39;=
s/arm-versatile-926ejs/stamp9g20/&#39; *</font></div>


<div><font face=3D"courier new, monospace">$ sed -i &#39;s/arm-versatile-92=
6ejs/stamp9g20/&#39; *</font></div><div><br></div><div><div>Now it get&#39;=
s in to the details. Since I have a working kernel config from &quot;<font =
face=3D"courier new, monospace">make ARCH=3Darm=A0stamp9g20_defconfig&quot;=
</font> I <b>think</b></div>


<div>all I have to=A0do is using the=A0resulting=A0<font face=3D"courier ne=
w, monospace">.config</font> file and put <b>parts of it</b> into=A0<span s=
tyle=3D"font-family:&#39;courier new&#39;,monospace">stamp9g20.cfg</span>, =
right? Later more on this, but since</div>


<div>I&#39;m more interested in the &quot;big picture&quot; I will leave th=
ese files as they are for now.</div><div><br></div><div><font face=3D"couri=
er new, monospace"># Add, commit and push the changes to the bare clone</fo=
nt></div>


<div><font face=3D"courier new, monospace">$=A0git add stamp9g20</font></di=
v><div><font face=3D"courier new, monospace">$ git commit -a -s</font></div=
><div><font face=3D"courier new, monospace">$ git push origin meta-stamp9g2=
0:meta</font></div>


<div><br></div><div><font face=3D"courier new, monospace"># Now I change=A0=
meta-stamp9g20/recipes-kernel/linux/linux-yocto_3.2.bbappend</font></div><d=
iv><font face=3D"courier new, monospace"># to point to my new branch</font>=
</div>


<div><font face=3D"courier new, monospace">KBRANCH_stamp9g20 =3D &quot;stan=
dard/default/stamp9g20&quot;</font></div><div><font face=3D"courier new, mo=
nospace">YOCTO_KERNEL_EXTERNAL_BRANCH_stamp9g20 =A0=3D &quot;standard/defau=
lt/stamp9g20&quot;</font></div>


<div><br></div><div><font face=3D"courier new, monospace"># Clone poky-extr=
as <b>into poky</b> ...=A0</font></div><div><font face=3D"courier new, mono=
space">$ git clone git://<a href=3D"http://git.yoctoproject.org/poky-extras=
" target=3D"_blank">git.yoctoproject.org/poky-extras</a> poky-extras</font>=
</div>


<div><font face=3D"courier new, monospace"><br></font></div><div><font face=
=3D"courier new, monospace"># edit=A0poky-extras/meta-kernel-dev/recipes-ke=
rnel/linux/linux-yocto_3.2.bbappend</font></div><div><div><span style=3D"fo=
nt-family:&#39;courier new&#39;,monospace">KSRC_linux_yocto_3_2 ?=3D &quot;=
/home/mhubig/Development/</span><span style=3D"font-family:&#39;courier new=
&#39;,monospace">linux-yocto-3.2.git&quot;</span></div>

</div><div><font face=3D"courier new, monospace">SRC_URI =3D &quot;git://${=
KSRC_linux_yocto_3_2};protocol=3Dfile;nocheckout=3D1;branch=3D${KBRANCH},me=
ta;name=3Dmachine,meta&quot;</font></div><div><br></div><div><font face=3D"=
courier new, monospace"># Now lets try a build.</font></div>

<div><font face=3D"courier new, monospace">$ cd ~/poky</font></div><div><fo=
nt face=3D"courier new, monospace">$ source=A0oe-init-build-env</font></div=
>
<div><font face=3D"courier new, monospace"><br></font></div><div><font face=
=3D"courier new, monospace"># Edit conf/bblayers.conf=A0</font></div><div><=
div><font face=3D"courier new, monospace">BBLAYERS ?=3D &quot; \</font></di=
v><div>

<font face=3D"courier new, monospace">=A0 /home/mhubig/Development/poky/met=
a \</font></div><div><font face=3D"courier new, monospace">=A0 /home/mhubig=
/Development/poky/meta-yocto \</font></div><div><font face=3D"courier new, =
monospace">=A0 /home/mhubig/Development/poky/meta-stamp9g20 \</font></div>

<div><font face=3D"courier new, monospace">=A0 /home/mhubig/Development/pok=
y/poky-extras/meta-kernel-dev \</font></div><div><font face=3D"courier new,=
 monospace">=A0 &quot;</font></div></div><div><font face=3D"courier new, mo=
nospace"><br>

</font></div><div><font face=3D"courier new, monospace"># Edit conf/local.c=
onf</font></div><div><div><font face=3D"courier new, monospace">MACHINE ??=
=3D &quot;stamp9g20&quot;</font></div></div><div><font face=3D"courier new,=
 monospace"><br>

</font></div>and go ...<div><font face=3D"courier new, monospace"><br></fon=
t></div><div><font face=3D"courier new, monospace">$=A0bitbake -c cleanall =
linux-yocto</font></div>
<div><font face=3D"courier new, monospace">$ bitbake -k core-image-minimal<=
/font></div><div><font face=3D"courier new, monospace"><br></font></div>Thi=
s fails with a bunch of errors, all related to linux-yocto ...=A0<div><font=
 face=3D"courier new, monospace"><br>
</font></div><div><font face=3D"courier new, monospace">$=A0bitbake -v -k l=
inux-yocto</font></div><div><span style=3D"font-family:&#39;courier new&#39=
;,monospace">WARNING: Host distribution &quot;Ubuntu 12.04 LTS&quot; has no=
t been validated with this version of the build system; you may possibly ex=
perience unexpected failures. It is recommended that you use a tested distr=
ibution.</span></div>
<div><font face=3D"courier new, monospace"><div>Loading cache: 100% |######=
#######################################################################| ET=
A: =A000:00:00</div><div>Loaded 1104 entries from dependency cache.</div><d=
iv>
Parsing recipes: 100% |####################################################=
#######################| Time: 00:00:00</div><div>Parsing of 829 .bb files =
complete (827 cached, 2 parsed). 1105 targets, 37 skipped, 0 masked, 0 erro=
rs.</div>
<div><br></div><div>OE Build Configuration:</div><div>BB_VERSION =A0 =A0 =
=A0 =A0=3D &quot;1.15.1&quot;</div><div>TARGET_ARCH =A0 =A0 =A0 =3D &quot;a=
rm&quot;</div><div>TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-gnueabi&quot;<=
/div><div>MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;stamp9g20&quot;</div>
<div>DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;</div><div>DISTRO_VE=
RSION =A0 =A0=3D &quot;1.2&quot;</div><div>TUNE_FEATURES =A0 =A0 =3D &quot;=
armv5 dsp thumb arm926ejs&quot;</div><div>TARGET_FPU =A0 =A0 =A0 =A0=3D &qu=
ot;soft&quot;</div><div>meta =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>
<div>meta-yocto =A0 =A0 =A0 =A0</div><div>meta-stamp9g20 =A0 =A0=3D &quot;d=
enzil:d20a24310eb43fed9a3f3e75752c9ad45a18cbe4&quot;</div><div>meta-kernel-=
dev =A0 =3D &quot;master:42f1aba1c52da20edd65709152fec3529b3b516f&quot;</di=
v><div><br></div>
<div>NOTE: Resolving any missing task queue dependencies</div><div>NOTE: se=
lecting pseudo-native to satisfy virtual/fakeroot-native due to PREFERRED_P=
ROVIDERS</div><div>NOTE: selecting eglibc to satisfy virtual/libc due to PR=
EFERRED_PROVIDERS</div>
<div>NOTE: selecting gcc-cross to satisfy virtual/arm-poky-linux-gnueabi-gc=
c due to PREFERRED_PROVIDERS</div><div>NOTE: selecting linux-yocto to satis=
fy runtime kernel-base due to PREFERRED_PROVIDER_virtual/kernel =3D linux-y=
octo</div>
<div>NOTE: selecting linux-yocto to satisfy runtime kernel-image due to PRE=
FERRED_PROVIDER_virtual/kernel =3D linux-yocto</div><div>NOTE: selecting eg=
libc to satisfy runtime eglibc-dev due to PREFERRED_PROVIDER_virtual/libc =
=3D eglibc</div>
<div>NOTE: selecting eglibc to satisfy runtime libsegfault due to PREFERRED=
_PROVIDER_virtual/libc =3D eglibc</div><div>NOTE: selecting eglibc to satis=
fy runtime eglibc due to PREFERRED_PROVIDER_virtual/libc =3D eglibc</div><d=
iv>
NOTE: selecting gcc-cross-intermediate to satisfy virtual/arm-poky-linux-gn=
ueabi-gcc-intermediate due to PREFERRED_PROVIDERS</div><div>NOTE: selecting=
 linux-libc-headers to satisfy linux-libc-headers due to PREFERRED_PROVIDER=
S</div>
<div>NOTE: selecting gettext to satisfy virtual/gettext due to PREFERRED_PR=
OVIDERS</div><div>NOTE: selecting gcc-runtime to satisfy virtual/arm-poky-l=
inux-gnueabi-compilerlibs due to PREFERRED_PROVIDERS</div><div>NOTE: select=
ing binutils-cross to satisfy virtual/arm-poky-linux-gnueabi-binutils due t=
o PREFERRED_PROVIDERS</div>
<div>NOTE: selecting eglibc to satisfy virtual/arm-poky-linux-gnueabi-libc-=
for-gcc due to PREFERRED_PROVIDERS</div><div>NOTE: selecting db to satisfy =
virtual/db due to PREFERRED_PROVIDERS</div><div>NOTE: selecting linux-libc-=
headers to satisfy runtime linux-libc-headers-dev due to PREFERRED_PROVIDER=
_linux-libc-headers =3D linux-libc-headers</div>
<div>NOTE: selecting gettext to satisfy runtime gettext-dev due to PREFERRE=
D_PROVIDER_virtual/gettext =3D gettext</div><div>NOTE: selecting gettext to=
 satisfy runtime gettext due to PREFERRED_PROVIDER_virtual/gettext =3D gett=
ext</div>
<div>NOTE: selecting db to satisfy runtime db-dev due to PREFERRED_PROVIDER=
_virtual/db =3D db</div><div>NOTE: selecting db to satisfy runtime db due t=
o PREFERRED_PROVIDER_virtual/db =3D db</div><div>NOTE: selecting pigz-nativ=
e to satisfy gzip-native due to PREFERRED_PROVIDERS</div>
<div>NOTE: selecting eglibc-initial to satisfy virtual/arm-poky-linux-gnuea=
bi-libc-initial due to PREFERRED_PROVIDERS</div><div>NOTE: selecting eglibc=
 to satisfy virtual/libiconv due to PREFERRED_PROVIDERS</div><div>NOTE: sel=
ecting gcc-cross to satisfy virtual/arm-poky-linux-gnueabi-g++ due to PREFE=
RRED_PROVIDERS</div>
<div>NOTE: selecting libgcc to satisfy libgcc due to PREFERRED_PROVIDERS</d=
iv><div>NOTE: selecting libgcc to satisfy runtime libgcc due to PREFERRED_P=
ROVIDER_libgcc =3D libgcc</div><div>NOTE: selecting gcc-cross-initial to sa=
tisfy virtual/arm-poky-linux-gnueabi-gcc-initial due to PREFERRED_PROVIDERS=
</div>
<div>NOTE: Preparing runqueue</div><div>NOTE: Marking Active Tasks</div><di=
v>NOTE: Pruned 1364 inactive tasks, 992 left</div><div>NOTE: Assign Weighti=
ngs</div><div>NOTE: Compute totals (have 1 endpoint(s))</div><div>NOTE: Exe=
cuting SetScene Tasks</div>
<div>NOTE: Executing RunQueue Tasks</div><div>NOTE: Running task 422 of 992=
 (ID: 3, /home/mhubig/Development/poky/meta/recipes-kernel/linux/<a href=3D=
"http://linux-yocto_3.2.bb">linux-yocto_3.2.bb</a>, do_patch)</div><div>NOT=
E: package linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97=
_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1: task do_patch: Started</d=
iv>
<div>+ cd /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux=
-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1=
+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1</div><div>+ do_patch</div>
<div>+ cd /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux=
-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1=
+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux</div><div>+ [ -f /home=
/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-=
yocto-3.2.11+git4+f28e01</div>
<div>627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc2=
61345f2-r1.1/defconfig ]</div><div>+ [ -f /home/mhubig/Development/poky/bui=
ld/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c=
8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r=
1.1/linux/scripts/util/configme ]</div>
<div>+ kbranch=3Dstandard/default/stamp9g20</div><div>+ [ -n standard/defau=
lt/stamp9g20 ]</div><div>+ kbranch=3Dstandard/default/stamp9g20</div><div>+=
 [ -n t ]</div><div>+ createme_flags=3D--disable-meta-gen</div><div>+ creat=
eme --disable-meta-gen arm st</div>
<div>andard/default/stamp9g20</div><div>[INFO]: checkpoint is already resto=
red, nothing to do</div><div>+ [ 0 -ne 0 ]</div><div>+ sccs=3D/home/mhubig/=
Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20-standa=
rd.scc /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/fi=
les/stamp9g20.scc /home/mhubig/Development/poky/meta-stamp9g20/recipes-kern=
el/linux/files/stamp9g20.cfg /home/mhubig/Development/poky/meta-stamp9g20/r=
ecipes-kernel/linux/files/user-config.cfg /home/mhubig/Development/poky/met=
a-stamp9g20/recipes-kern</div>
<div>el/linux/files/user-patches.scc</div><div>+ patches=3D</div><div>+ set=
 +e</div><div>+ [ -n features/netfilter features/taskstats ]</div><div>+ ad=
don_features=3D --feature features/netfilter</div><div>+ addon_features=3D =
--feature features/netfilter --feature features/taskstats</div>
<div>+ updateme --branch standard/default/stamp9g20 -DKDESC=3Dstamp9g20:sta=
ndard --feature features/netfilter --feature features/taskstats arm stamp9g=
20 /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/=
stamp9g20-standard.scc /home/mhubig/Development/poky/meta-stamp9g20/reci</d=
iv>
<div>pes-kernel/linux/files/stamp9g20.scc /home/mhubig/Development/poky/met=
a-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg /home/mhubig/Developme=
nt/poky/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg /home/mhu=
big/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-patches=
.scc</div>
<div>+ [ 0 -ne 0 ]</div><div>+ patchme standard/default/stamp9g20</div><div=
>ERROR. Could not locate meta series for standard/default/stamp9g20</div><d=
iv>+ [ 1 -ne 0 ]</div><div>+ echo ERROR. Could not modify standard/default/=
stamp9g20</div>
<div>ERROR. Could not modif</div><div>ERROR: Function failed: do_patch (see=
 /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/=
linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d=
02a352e3e8601096e1674ffc261345f2-r1.1/temp/log.do_patch.31485 for further i=
nformation)</div>
<div>ERROR: Logfile of failure stored in: /home/mhubig/Development/poky/bui=
ld/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c=
8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r=
1.1/temp/log.do_patch.31485</div>
<div>Log data follows:</div><div>| + cd /home/mhubig/Development/poky/build=
/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8c=
ef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.=
1</div>
<div>| + do_patch</div><div>| + cd /home/mhubig/Development/poky/build/tmp/=
work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef110=
2f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/lin=
ux</div>
<div>| + [ -f /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-l=
inux-gnueabi/linux-yocto-3.2.11+git4+f28e01</div><div>| 627c8cef1102f332600=
9fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/defconfig ]=
</div>
<div>| + [ -f /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-l=
inux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd=
97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux/scripts/util/confi=
gme ]</div>
<div>| + kbranch=3Dstandard/default/stamp9g20</div><div>| + [ -n standard/d=
efault/stamp9g20 ]</div><div>| + kbranch=3Dstandard/default/stamp9g20</div>=
<div>| + [ -n t ]</div><div>| + createme_flags=3D--disable-meta-gen</div><d=
iv>
| + createme --disable-meta-gen arm st</div><div>| andard/default/stamp9g20=
</div><div>| [INFO]: checkpoint is already restored, nothing to do</div><di=
v>| + [ 0 -ne 0 ]</div><div>| + sccs=3D/home/mhubig/Development/poky/meta-s=
tamp9g20/recipes-kernel/linux/files/stamp9g20-standard.scc /home/mhubig/Dev=
elopment/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.scc /home=
/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g2=
0.cfg /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/fil=
es/user-config.cfg /home/mhubig/Development/poky/meta-stamp9g20/recipes-ker=
n</div>
<div>| el/linux/files/user-patches.scc</div><div>| + patches=3D</div><div>|=
 + set +e</div><div>| + [ -n features/netfilter features/taskstats ]</div><=
div>| + addon_features=3D --feature features/netfilter</div><div>| + addon_=
features=3D --feature features/netfilter --feature features/taskstats</div>
<div>| + updateme --branch standard/default/stamp9g20 -DKDESC=3Dstamp9g20:s=
tandard --feature features/netfilter --feature features/taskstats arm stamp=
9g20 /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/file=
s/stamp9g20-standard.scc /home/mhubig/Development/poky/meta-stamp9g20/reci<=
/div>
<div>| pes-kernel/linux/files/stamp9g20.scc /home/mhubig/Development/poky/m=
eta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg /home/mhubig/Develop=
ment/poky/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg /home/m=
hubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-patch=
es.scc</div>
<div>| + [ 0 -ne 0 ]</div><div>| + patchme standard/default/stamp9g20</div>=
<div>| ERROR. Could not locate meta series for standard/default/stamp9g20</=
div><div>| + [ 1 -ne 0 ]</div><div>| + echo ERROR. Could not modify standar=
d/default/stamp9g20</div>
<div>| ERROR. Could not modif</div><div>| ERROR: Function failed: do_patch =
(see /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnue=
abi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5=
e65d02a352e3e8601096e1674ffc261345f2-r1.1/temp/log.do_patch.31485 for furth=
er information)</div>
<div>| + cd /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-lin=
ux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97=
_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1</div><div>| + do_patch</di=
v>
<div>| + cd /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-lin=
ux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97=
_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux</div><div>| + [ -f /=
home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/li=
nux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02=
a352e3e8601096e1674ffc261345f2-r1.1/defconfig ]</div>
<div>| + [ -f /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-l=
inux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd=
97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux/scripts/util/confi=
gme ]</div>
<div>| + kbranch=3Dstandard/default/stamp9g20</div><div>| + [ -n standard/d=
efault/stamp9g20 ]</div><div>| + kbranch=3Dstandard/default/stamp9g20</div>=
<div>| + [ -n t ]</div><div>| + createme_flags=3D--disable-meta-gen</div><d=
iv>
| + createme --disable-meta-gen arm standard/default/stamp9g20</div><div>| =
[INFO]: checkpoint is already restored, nothing to do</div><div>| + [ 0 -ne=
 0 ]</div><div>| + sccs=3D/home/mhubig/Development/poky/meta-stamp9g20/reci=
pes-kernel/linux/files/stamp9g20-standard.scc /home/mhubig/Development/poky=
/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.scc /home/mhubig/Devel=
opment/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg /home/m=
hubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-confi=
g.cfg /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/fil=
es/user-patches.scc</div>
<div>| + patches=3D</div><div>| + set +e</div><div>| + [ -n features/netfil=
ter features/taskstats ]</div><div>| + addon_features=3D --feature features=
/netfilter</div><div>| + addon_features=3D --feature features/netfilter --f=
eature features/taskstats</div>
<div>| + updateme --branch standard/default/stamp9g20 -DKDESC=3Dstamp9g20:s=
tandard --feature features/netfilter --feature features/taskstats arm stamp=
9g20 /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/file=
s/stamp9g20-standard.scc /home/mhubig/Development/poky/meta-stamp9g20/recip=
es-kernel/linux/files/stamp9g20.scc /home/mhubig/Development/poky/meta-stam=
p9g20/recipes-kernel/linux/files/stamp9g20.cfg /home/mhubig/Development/pok=
y/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg /home/mhubig/De=
velopment/poky/meta-stamp9g20/recipes-kernel/linux/files/user-patches.scc</=
div>
<div>| + [ 0 -ne 0 ]</div><div>| + patchme standard/default/stamp9g20</div>=
<div>| ERROR. Could not locate meta series for standard/default/stamp9g20</=
div><div>| + [ 1 -ne 0 ]</div><div>| + echo ERROR. Could not modify standar=
d/default/stamp9g20</div>
<div>| ERROR. Could not modif</div><div>NOTE: package linux-yocto-3.2.11+gi=
t4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674=
ffc261345f2-r1.1: task do_patch: Failed</div><div>ERROR: Task 3 (/home/mhub=
ig/Development/poky/meta/recipes-kernel/linux/<a href=3D"http://linux-yocto=
_3.2.bb">linux-yocto_3.2.bb</a>, do_patch) failed with exit code &#39;1&#39=
;</div>
<div>NOTE: Tasks Summary: Attempted 975 tasks of which 974 didn&#39;t need =
to be rerun and 1 failed.</div><div><br></div><div>Summary: 1 task failed:<=
/div><div>=A0 /home/mhubig/Development/poky/meta/recipes-kernel/linux/<a hr=
ef=3D"http://linux-yocto_3.2.bb">linux-yocto_3.2.bb</a>, do_patch</div>
<div>Summary: There was 1 WARNING message shown.</div><div>Summary: There w=
as 1 ERROR message shown, returning a non-zero exit code.</div><div><br></d=
iv><div><br></div><div><br></div></font></div>

</div>

--f46d044481d753159d04c35e1ff1--
