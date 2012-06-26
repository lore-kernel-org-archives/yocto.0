Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 257C9E01451
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 06:19:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q5QDJv7M025543
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 26 Jun 2012 06:19:57 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 26 Jun 2012 06:19:56 -0700
Message-ID: <4FE9B6EE.4010901@windriver.com>
Date: Tue, 26 Jun 2012 09:19:42 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Markus Hubig <mhubig@imko.de>
References: <CAGws1TuNe+=5YzBOMJv30KgY7o+N9_1kqryRPKpB+27Un0=CZQ@mail.gmail.com>
In-Reply-To: <CAGws1TuNe+=5YzBOMJv30KgY7o+N9_1kqryRPKpB+27Un0=CZQ@mail.gmail.com>
Cc: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: BSP for taskit stamp9g20
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
X-List-Received-Date: Tue, 26 Jun 2012 13:19:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-06-26 07:08 AM, Markus Hubig wrote:
> Hello @all,
>
> as part of my bachelor thesis, I'm in the process of creating a custom
> Linux OS
> for the taskit Stamp9G20
> <http://www.taskit.de/en/products/stamp9g20/index.htm> (a small
> AT91SAM9G20 based CPU board). This is when
> I came across the YoctoProject. Now I'm trying to build a BSP Layer for
> this Board.
>
> There are a lot of documentation out there, but I still miss the whole
> picture ... :-(
>
> This is what I've done so far:

This is on master ? Yocto 1.2 ? Some other release ?

>
> $ yocto-bsp create stamp9g20 arm
> -> kernel 3.2 [y]
> -> new machine branch [y]
> -> machine branch to base this BSP on
> [standard/default/arm-versatile-926ejs]
> -> Do you need SMP support? [n]
> -> Which machine tuning would you like to use? [arm926ejs]
> -> value for UBOOT_MACHINE [default: omap3_beagle_config]
> -> UBOOT_ENTRYPOINT: [default: 0x80008000]
> -> UBOOT_LOADADDRESS: [default: 0x80008000]
> -> Do you need support for X? [n]
> -> Does your BSP have a touchscreen? [default: n]
> -> Does your BSP have a keyboard? [n]
>
> (U-Boot stuff needs some adjustments but I save this for later ...)
>
> Now I have a nice BSP layer for the Stamp9G20. Year! But whats the next
> step? To get the right
> kernel configuration for the stamp9g20 I can easily configure the kernel
> with:
>
> $ make ARCH=arm stamp9g20_defconfig
>
> Here is what I "think" I have to do next. Please, please correct me if I
> got it all wrong!
>
> # make a bare clone
> $ git clone --bare git://git.yoctoproject.org/linux-yocto-3.2
> <http://git.yoctoproject.org/linux-yocto-3.2> linux-yocto-3.2.git
>
> # make a *working clone* of the *bare clone*
> $ git clone linux-yocto-3.2.git linux-yocto-3.2-work
>
> # create a new branch based on arm-versatile-926ejs *inside my working
> clone*
> $ git checkout -b yocto/standard/stamp9g20
> remotes/origin/standard/default/arm-versatile-926ejs
>
> # push the new branch back to the *bare clone*. Now I have a branch my
> bsp-layer is based on?!
> $ git push origin yocto/standard/stamp9g20:standard/default/stamp9g20
>
> # check out the *meta branch* inside the *working clone*
> $ git checkout -b meta-stamp9g20 remotes/origin/meta
>
> # now I just copy the *arm-versatile-926ejs* dir to *stamp9g20* and
> rename everything ...
> $ cd meta/cfg/kernel-cache/bsp
> $ cp -a arm-versatile-926ejs stamp9g20
> $ cd stamp9g20
> $ rename 's/arm-versatile-926ejs/stamp9g20/' *
> $ sed -i 's/arm-versatile-926ejs/stamp9g20/' *
>
> Now it get's in to the details. Since I have a working kernel config
> from "make ARCH=arm stamp9g20_defconfig" I *think*
> all I have to do is using the resulting .config file and put *parts of
> it* into stamp9g20.cfg, right? Later more on this, but since
> I'm more interested in the "big picture" I will leave these files as
> they are for now.
>
> # Add, commit and push the changes to the bare clone
> $ git add stamp9g20
> $ git commit -a -s
> $ git push origin meta-stamp9g20:meta
>
> # Now I change meta-stamp9g20/recipes-kernel/linux/linux-yocto_3.2.bbappend
> # to point to my new branch
> KBRANCH_stamp9g20 = "standard/default/stamp9g20"
> YOCTO_KERNEL_EXTERNAL_BRANCH_stamp9g20 = "standard/default/stamp9g20"

You don't actually have an external branch, because you made the right
choice to use git to manage your BSP :P So you don't need this.

>
> # Clone poky-extras *into poky* ...
> $ git clone git://git.yoctoproject.org/poky-extras
> <http://git.yoctoproject.org/poky-extras> poky-extras
>
> # edit
> poky-extras/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.2.bbappend
> KSRC_linux_yocto_3_2 ?= "/home/mhubig/Development/linux-yocto-3.2.git"
> SRC_URI =
> "git://${KSRC_linux_yocto_3_2};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"

This is all good, I run with this all day every day .. so far so good.

>
> # Now lets try a build.
> $ cd ~/poky
> $ source oe-init-build-env
>
> # Edit conf/bblayers.conf
> BBLAYERS ?= " \
> /home/mhubig/Development/poky/meta \
> /home/mhubig/Development/poky/meta-yocto \
> /home/mhubig/Development/poky/meta-stamp9g20 \
> /home/mhubig/Development/poky/poky-extras/meta-kernel-dev \
> "
>
> # Edit conf/local.conf
> MACHINE ??= "stamp9g20"
>
> and go ...
>
> $ bitbake -c cleanall linux-yocto
> $ bitbake -k core-image-minimal
>
> This fails with a bunch of errors, all related to linux-yocto ...
>
> $ bitbake -v -k linux-yocto
> WARNING: Host distribution "Ubuntu 12.04 LTS" has not been validated
> with this version of the build system; you may possibly experience
> unexpected failures. It is recommended that you use a tested distribution.
> Loading cache: 100%
> |#############################################################################|
> ETA: 00:00:00
> Loaded 1104 entries from dependency cache.
> Parsing recipes: 100%
> |###########################################################################|
> Time: 00:00:00
> Parsing of 829 .bb files complete (827 cached, 2 parsed). 1105 targets,
> 37 skipped, 0 masked, 0 errors.
>
> OE Build Configuration:
> BB_VERSION = "1.15.1"
> TARGET_ARCH = "arm"
> TARGET_OS = "linux-gnueabi"
> MACHINE = "stamp9g20"
> DISTRO = "poky"
> DISTRO_VERSION = "1.2"
> TUNE_FEATURES = "armv5 dsp thumb arm926ejs"
> TARGET_FPU = "soft"
> meta
> meta-yocto
> meta-stamp9g20 = "denzil:d20a24310eb43fed9a3f3e75752c9ad45a18cbe4"
> meta-kernel-dev = "master:42f1aba1c52da20edd65709152fec3529b3b516f"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due to
> PREFERRED_PROVIDERS
> NOTE: selecting eglibc to satisfy virtual/libc due to PREFERRED_PROVIDERS
> NOTE: selecting gcc-cross to satisfy virtual/arm-poky-linux-gnueabi-gcc
> due to PREFERRED_PROVIDERS
> NOTE: selecting linux-yocto to satisfy runtime kernel-base due to
> PREFERRED_PROVIDER_virtual/kernel = linux-yocto
> NOTE: selecting linux-yocto to satisfy runtime kernel-image due to
> PREFERRED_PROVIDER_virtual/kernel = linux-yocto
> NOTE: selecting eglibc to satisfy runtime eglibc-dev due to
> PREFERRED_PROVIDER_virtual/libc = eglibc
> NOTE: selecting eglibc to satisfy runtime libsegfault due to
> PREFERRED_PROVIDER_virtual/libc = eglibc
> NOTE: selecting eglibc to satisfy runtime eglibc due to
> PREFERRED_PROVIDER_virtual/libc = eglibc
> NOTE: selecting gcc-cross-intermediate to satisfy
> virtual/arm-poky-linux-gnueabi-gcc-intermediate due to PREFERRED_PROVIDERS
> NOTE: selecting linux-libc-headers to satisfy linux-libc-headers due to
> PREFERRED_PROVIDERS
> NOTE: selecting gettext to satisfy virtual/gettext due to
> PREFERRED_PROVIDERS
> NOTE: selecting gcc-runtime to satisfy
> virtual/arm-poky-linux-gnueabi-compilerlibs due to PREFERRED_PROVIDERS
> NOTE: selecting binutils-cross to satisfy
> virtual/arm-poky-linux-gnueabi-binutils due to PREFERRED_PROVIDERS
> NOTE: selecting eglibc to satisfy
> virtual/arm-poky-linux-gnueabi-libc-for-gcc due to PREFERRED_PROVIDERS
> NOTE: selecting db to satisfy virtual/db due to PREFERRED_PROVIDERS
> NOTE: selecting linux-libc-headers to satisfy runtime
> linux-libc-headers-dev due to PREFERRED_PROVIDER_linux-libc-headers =
> linux-libc-headers
> NOTE: selecting gettext to satisfy runtime gettext-dev due to
> PREFERRED_PROVIDER_virtual/gettext = gettext
> NOTE: selecting gettext to satisfy runtime gettext due to
> PREFERRED_PROVIDER_virtual/gettext = gettext
> NOTE: selecting db to satisfy runtime db-dev due to
> PREFERRED_PROVIDER_virtual/db = db
> NOTE: selecting db to satisfy runtime db due to
> PREFERRED_PROVIDER_virtual/db = db
> NOTE: selecting pigz-native to satisfy gzip-native due to
> PREFERRED_PROVIDERS
> NOTE: selecting eglibc-initial to satisfy
> virtual/arm-poky-linux-gnueabi-libc-initial due to PREFERRED_PROVIDERS
> NOTE: selecting eglibc to satisfy virtual/libiconv due to
> PREFERRED_PROVIDERS
> NOTE: selecting gcc-cross to satisfy virtual/arm-poky-linux-gnueabi-g++
> due to PREFERRED_PROVIDERS
> NOTE: selecting libgcc to satisfy libgcc due to PREFERRED_PROVIDERS
> NOTE: selecting libgcc to satisfy runtime libgcc due to
> PREFERRED_PROVIDER_libgcc = libgcc
> NOTE: selecting gcc-cross-initial to satisfy
> virtual/arm-poky-linux-gnueabi-gcc-initial due to PREFERRED_PROVIDERS
> NOTE: Preparing runqueue
> NOTE: Marking Active Tasks
> NOTE: Pruned 1364 inactive tasks, 992 left
> NOTE: Assign Weightings
> NOTE: Compute totals (have 1 endpoint(s))
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 422 of 992 (ID: 3,
> /home/mhubig/Development/poky/meta/recipes-kernel/linux/linux-yocto_3.2.bb
> <http://linux-yocto_3.2.bb>, do_patch)
> NOTE: package
> linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1:
> task do_patch: Started
> + cd
> /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1
> + do_patch
> + cd
> /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux
> + [ -f
> /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01
> 627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/defconfig
> ]
> + [ -f
> /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux/scripts/util/configme
> ]
> + kbranch=standard/default/stamp9g20
> + [ -n standard/default/stamp9g20 ]
> + kbranch=standard/default/stamp9g20
> + [ -n t ]
> + createme_flags=--disable-meta-gen
> + createme --disable-meta-gen arm st
> andard/default/stamp9g20
> [INFO]: checkpoint is already restored, nothing to do
> + [ 0 -ne 0 ]
> +
> sccs=/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20-standard.scc
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.scc
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kern
> el/linux/files/user-patches.scc

Aha. This is the problem, if you've decided to create a local repo,
and a BSP branch, you don't need these files outside of the tree. But
I'm betting these were created by the BSP tool .. hence the confusion
as two methods are being mixed.

If you stop using the local repository, and just use the BSP tool that
should at least clarify the error messages and I can help more after
that.

Cheers,

Bruce

> + patches=
> + set +e
> + [ -n features/netfilter features/taskstats ]
> + addon_features= --feature features/netfilter
> + addon_features= --feature features/netfilter --feature features/taskstats
> + updateme --branch standard/default/stamp9g20
> -DKDESC=stamp9g20:standard --feature features/netfilter --feature
> features/taskstats arm stamp9g20
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20-standard.scc
> /home/mhubig/Development/poky/meta-stamp9g20/reci
> pes-kernel/linux/files/stamp9g20.scc
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-patches.scc
> + [ 0 -ne 0 ]
> + patchme standard/default/stamp9g20
> ERROR. Could not locate meta series for standard/default/stamp9g20
> + [ 1 -ne 0 ]
> + echo ERROR. Could not modify standard/default/stamp9g20
> ERROR. Could not modif
> ERROR: Function failed: do_patch (see
> /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/temp/log.do_patch.31485
> for further information)
> ERROR: Logfile of failure stored in:
> /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/temp/log.do_patch.31485
> Log data follows:
> | + cd
> /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1
> | + do_patch
> | + cd
> /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux
> | + [ -f
> /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01
> |
> 627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/defconfig
> ]
> | + [ -f
> /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux/scripts/util/configme
> ]
> | + kbranch=standard/default/stamp9g20
> | + [ -n standard/default/stamp9g20 ]
> | + kbranch=standard/default/stamp9g20
> | + [ -n t ]
> | + createme_flags=--disable-meta-gen
> | + createme --disable-meta-gen arm st
> | andard/default/stamp9g20
> | [INFO]: checkpoint is already restored, nothing to do
> | + [ 0 -ne 0 ]
> | +
> sccs=/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20-standard.scc
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.scc
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kern
> | el/linux/files/user-patches.scc
> | + patches=
> | + set +e
> | + [ -n features/netfilter features/taskstats ]
> | + addon_features= --feature features/netfilter
> | + addon_features= --feature features/netfilter --feature
> features/taskstats
> | + updateme --branch standard/default/stamp9g20
> -DKDESC=stamp9g20:standard --feature features/netfilter --feature
> features/taskstats arm stamp9g20
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20-standard.scc
> /home/mhubig/Development/poky/meta-stamp9g20/reci
> | pes-kernel/linux/files/stamp9g20.scc
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-patches.scc
> | + [ 0 -ne 0 ]
> | + patchme standard/default/stamp9g20
> | ERROR. Could not locate meta series for standard/default/stamp9g20
> | + [ 1 -ne 0 ]
> | + echo ERROR. Could not modify standard/default/stamp9g20
> | ERROR. Could not modif
> | ERROR: Function failed: do_patch (see
> /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/temp/log.do_patch.31485
> for further information)
> | + cd
> /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1
> | + do_patch
> | + cd
> /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux
> | + [ -f
> /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/defconfig
> ]
> | + [ -f
> /home/mhubig/Development/poky/build/tmp/work/stamp9g20-poky-linux-gnueabi/linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1/linux/scripts/util/configme
> ]
> | + kbranch=standard/default/stamp9g20
> | + [ -n standard/default/stamp9g20 ]
> | + kbranch=standard/default/stamp9g20
> | + [ -n t ]
> | + createme_flags=--disable-meta-gen
> | + createme --disable-meta-gen arm standard/default/stamp9g20
> | [INFO]: checkpoint is already restored, nothing to do
> | + [ 0 -ne 0 ]
> | +
> sccs=/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20-standard.scc
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.scc
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-patches.scc
> | + patches=
> | + set +e
> | + [ -n features/netfilter features/taskstats ]
> | + addon_features= --feature features/netfilter
> | + addon_features= --feature features/netfilter --feature
> features/taskstats
> | + updateme --branch standard/default/stamp9g20
> -DKDESC=stamp9g20:standard --feature features/netfilter --feature
> features/taskstats arm stamp9g20
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20-standard.scc
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.scc
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-config.cfg
> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/user-patches.scc
> | + [ 0 -ne 0 ]
> | + patchme standard/default/stamp9g20
> | ERROR. Could not locate meta series for standard/default/stamp9g20
> | + [ 1 -ne 0 ]
> | + echo ERROR. Could not modify standard/default/stamp9g20
> | ERROR. Could not modif
> NOTE: package
> linux-yocto-3.2.11+git4+f28e01627c8cef1102f3326009fa3b5d5a22fd97_1+ebb5e65d02a352e3e8601096e1674ffc261345f2-r1.1:
> task do_patch: Failed
> ERROR: Task 3
> (/home/mhubig/Development/poky/meta/recipes-kernel/linux/linux-yocto_3.2.bb
> <http://linux-yocto_3.2.bb>, do_patch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 975 tasks of which 974 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
> /home/mhubig/Development/poky/meta/recipes-kernel/linux/linux-yocto_3.2.bb
> <http://linux-yocto_3.2.bb>, do_patch
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


