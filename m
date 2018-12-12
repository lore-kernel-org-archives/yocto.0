Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10A70E00CA3; Tue, 11 Dec 2018 22:40:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
	[209.85.208.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 774A3E00C96
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 22:40:30 -0800 (PST)
Received: by mail-lj1-f182.google.com with SMTP id s5-v6so15214463ljd.12
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 22:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5y43hu6V6MM7TPYWbK6Kslo4llAcKNPp7MwMQuqbxrw=;
	b=hMHN1T1j2uNcn/JZuDJverW7TT+ZJD0ZDw7IWkufwqv1lPP5EB5IXrmBj3uf6ndOoH
	EOikozreGzlsusXIV+Y7/hjRvCRMQ4Fu3t0+vf4E9DxoVDdQpaMSbRKAQcFM6kKOPGSC
	N1f3M7bv7fXiZB0VnQKZ7y8rQeGd2TW/6ykI8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5y43hu6V6MM7TPYWbK6Kslo4llAcKNPp7MwMQuqbxrw=;
	b=O2z70iEf3wkQ015b0xESO3pkrY8NO6bvU0wkv5m22n5c5zM3D2pk1eOrDo4h6eZ0DW
	gdAHtCgFQUnr0KTdqSdamup0aN1lACF3NKZ0haBPp58KM8t7FTXq06JdKPnaGb29YqhR
	whWyY9V3FGipAr4wrXniJBqwS9JtLGssvIdbZ7Kd+C7DwvRCv7ZZ9vYWhYqXKbH/9J9a
	SrONnRdgFTVChpKkQieaVtmSbZnEciY+4dXbZxpUX1y0PHcV1TPESe1LYSRn1FZR6Rz8
	4y+5TnoJ4cQmD1VCNeHNzynJ5tBUfQQUdFDnQx0ukK+CQNLQ167NE92sB6mZ7z1vvjjB
	TNoQ==
X-Gm-Message-State: AA+aEWah+95bor/0+Tuyq5EGATLNddwEmhPT3Kj4W0yuKq1S4p7zhsQJ
	6RGrDMheUpgyFjm+jnNCkDzVXJlBORopHmtwAYtKow==
X-Google-Smtp-Source: AFSGD/USfmPE2JS/zFxHl/2uiRO4XExr6dLDcPcm2SRrODwF1KEOOxtA3Qe4Xe3/Vruf1SvCX6wYcU3CGO+IL6Lng/I=
X-Received: by 2002:a2e:8ec8:: with SMTP id
	e8-v6mr11613757ljl.162.1544596829206; 
	Tue, 11 Dec 2018 22:40:29 -0800 (PST)
MIME-Version: 1.0
References: <mailman.6424.1544522247.2881.yocto@yoctoproject.org>
	<HE1P195MB03627B98CB86695F56960DE7C1A60@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
In-Reply-To: <HE1P195MB03627B98CB86695F56960DE7C1A60@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 12 Dec 2018 07:40:17 +0100
Message-ID: <CAP71WjyHm1ouA7PEgP0ZDJbepbMjT1C5ZX06KBqOyksHB0dw4w@mail.gmail.com>
To: MohamedYouseif@outlook.com
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: yocto Digest, Vol 99, Issue 26
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
X-List-Received-Date: Wed, 12 Dec 2018 06:40:32 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Dec 12, 2018 at 2:40 AM Mohamed Youseif
<MohamedYouseif@outlook.com> wrote:
>
> I'm asking about how to enable PACKAGECONFIG feature from local.conf file, let's say that i have the following pacakgeconfig in a recipe
> PACKAGECONFIG = " f1 f2  "
> PACKAGECONFIG[f1] = "-DENABLE_f1=ON,-DENABLE_f1=OFF,f1,"
>
> so i need to add line in local.conf file to enable this feature for my image?
> I tried to use the following line to loca.conf but it does not help:
>
> PACKAGECONFIG_pn-<my-recipe-name>_append = "-DENABLE_f1=ON"

It should be:

PACKAGECONFIG_append_pn-<my-recipe-name> = " f1"

e.g. f1 and f2 are the packageconfig options defined by the recipe,
which can be enabled or disabled. "-Dxxx" are CFLAGS that will be
added when each packageconfig option is set or not.

>
> ________________________________
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on behalf of yocto-request@yoctoproject.org <yocto-request@yoctoproject.org>

Please note that you should not be sending email to
yocto-request@yoctoproject.org or yocto-bounces@yoctoproject.org, they
are not valid mailing lists. Sending to yocto@yoctoproject.org is
enough.


> Sent: Tuesday, December 11, 2018 11:57 AM
> To: yocto@yoctoproject.org
> Subject: yocto Digest, Vol 99, Issue 26
>
> Send yocto mailing list submissions to
>         yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>         yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>         yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
>    1. Using multilib to build 32-bit glibc on 64-bit target
>       platform (Nicholas Tsirakis)
>    2. Raspberry pi with Yocto os sd card is not working with
>       Raspbian os sd card (AKASH BHARDWAJ)
>    3.  Do rootfs fail when switch from rpm to deb (Jonas Andersson)
>    4. Lib update (Peter Balazovic)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Mon, 10 Dec 2018 15:37:19 -0500
> From: Nicholas Tsirakis <niko.tsirakis@gmail.com>
> To: yocto@yoctoproject.org
> Subject: [yocto] Using multilib to build 32-bit glibc on 64-bit target
>         platform
> Message-ID:
>         <CAFqpmVLj_54Ou1N=+YdjAqtcGGDLsWoH-85+89nQ=NJLUhPDpA@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hello,
>
> I'm having trouble understanding the proper usage of multilib within the
> Yocto project. I've read through Yocto's documentation, but I think I am
> missing something crucial. Here are the steps I've taken:
>
> 1. Added the following to my local.conf:
> require conf/multilib.conf
> MULTILIBS = "multilib:lib32"
> DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
>
> 2. Attempted to build lib32-glibc with bitbake. Received the following
> errors for lib32-glib-initial (shortened for brevity):
>
> | <stdin>:10:36: error: 'REG_RBP' undeclared (first use in this function)
> | <stdin>:9:26: note: in expansion of macro 'ucontext'
> | <stdin>:10:20: note: in expansion of macro 'mcontext'
> | <stdin>:11:61: note: in expansion of macro 'mreg'
> | <stdin>:10:36: note: each undeclared identifier is reported only once for
> each function it appears in
> | <stdin>:9:26: note: in expansion of macro 'ucontext'
> | <stdin>:10:20: note: in expansion of macro 'mcontext'
> | <stdin>:11:61: note: in expansion of macro 'mreg'
> | <stdin>:10:36: error: 'REG_RSP' undeclared (first use in this function)
> | <stdin>:9:26: note: in expansion of macro 'ucontext'
> | <stdin>:10:20: note: in expansion of macro 'mcontext'
> | <stdin>:12:61: note: in expansion of macro 'mreg'
> ...
> | <stdin>:5:73: error: 'La_x86_64_xmm' undeclared (first use in this
> function)
> ...
> | <stdin>:10:87: error: invalid use of undefined type 'struct
> La_x86_64_regs'
> ...
>
> 3. At this point it appeared to me like it was attempting to build a 64-bit
> version of glibc in a 32-bit environment, so I tried building the
> lib32-linux-libc-headers by adding the following to its recipe:
>
> do_install_prepend() {
>     if [ "${MLPREFIX}" == "lib32-" ]; then
>         ARCH="x86"
>     fi
> }
>
> This was more a shot in the dark than anything else and still yielded the
> same result. Can someone clear up the proper usage of multilib and tell me
> if I'm doing something wrong? Please note that my project currently uses
> OE's pyro branches.
>
> Thank you for your time.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20181210/bef1ca7f/attachment-0001.html>
>
> ------------------------------
>
> Message: 2
> Date: Tue, 11 Dec 2018 07:57:35 +0530
> From: AKASH BHARDWAJ <akash12bhardwaj@gmail.com>
> To: yocto@yoctoproject.org
> Subject: [yocto] Raspberry pi with Yocto os sd card is not working
>         with    Raspbian os sd card
> Message-ID:
>         <CALYZMn=_AhWPbX1Hx=7o=mhoGEU==jnCBJhiQ0v5Y6gL4f0H9A@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Few months ago,I built an custom image for Raspberrypi using Yocto
> Project,flashed it in a sd card and was able to boot
> raspberrypi.Presently,I am trying to use  a different sd card with raspbian
> os in same Raspberrypi.But it is not able to boot Raspberrypi.How can I
> rectify this problem?This is my code which I used few years back to
> generate yocto image.
>
>
>
>
>
>
>
>
>
>
> PACKAGE_CLASSES ?= "package_rpm package_deb"
> >
> >
> > EXTRA_IMAGE_FEATURES ?= "debug-tweaks dbg-pkgs dev-pkgs tools-sdk
> > tools-debug eclipse-debug "
> >
> >
> > USER_CLASSES ?= "buildstats image-mklibs image-prelink"
> >
> >
> >
> >
> > BB_DISKMON_DIRS ??= "\
> >     STOPTASKS,${TMPDIR},1G,100K \
> >     STOPTASKS,${DL_DIR},1G,100K \
> >     STOPTASKS,${SSTATE_DIR},1G,100K \
> >     STOPTASKS,/tmp,100M,100K \
> >     ABORT,${TMPDIR},100M,1K \
> >     ABORT,${DL_DIR},100M,1K \
> >     ABORT,${SSTATE_DIR},100M,1K \
> >     ABORT,/tmp,10M,1K"
> >
> >
> >
> >
> >
> > CONF_VERSION = "1"
> > MACHINE = "raspberrypi3"
> > PREFERRED_VERSION_linux-raspberrypi = "4.%"
> > DISTRO_FEATURES_remove = "x11 wayland"
> > DISTRO_FEATURES_append = " systemd"
> > VIRTUAL-RUNTIME_init_manager = "systemd"
> > IMAGE_INSTALL_append = " git apt dpkg opkg rpm sudo wiringpi wiringpi-dev
> > connman connman-client tzdata i2c-tools i2c-tools-dev glibc-utils rpm
> > dhcp-server bluez5 python-smbus bridge-utils hostapd apache2 openvpn
> > iptables nano"
> > IMAGE_INSTALL += "wiringpi"
> > ENABLE_UART="1"
> > ENABLE_SPI_BUS= "1"
> > ENABLE_I2C = "1"
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20181211/d89aff52/attachment-0001.html>
>
> ------------------------------
>
> Message: 3
> Date: Tue, 11 Dec 2018 10:10:29 +0100
> From: Jonas Andersson <jonaskgandersson@gmail.com>
> To: yocto@yoctoproject.org
> Subject: [yocto]  Do rootfs fail when switch from rpm to deb
> Message-ID:
>         <CAKpuFdeEtgn9SFt6OsTca7zHFKDc32ORmbn69EO01P+YdybVDw@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hi
>
> We have an recipe based on microservicebus-node npm package created with
> devtool.
>
> When we build with PACKAGE_CLASSES = "package_rpm" it builds but  when
> switching to package_deb do_rootfs fails.
> What can I do to get more information about the packages that is reported
> as broken, are there any known issues with npm and deb?
>
> Here is my build output
> _______________________________________________________________________________________________________
> Build Configuration:
> BB_VERSION           = "1.38.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal"
> TARGET_SYS           = "arm-poky-linux-gnueabi"
> MACHINE              = "raspberrypi3"
> DISTRO               = "poky"
> DISTRO_VERSION       = "2.5.1"
> TUNE_FEATURES        = "arm armv7ve vfp thumb neon vfpv4
> callconvention-hard cortexa7"
> TARGET_FPU           = "hard"
> meta
> meta-poky
> meta-yocto-bsp       = "sumo:36d5cee56bd389ecbe66dbfad9e5d57c13b56b95"
> meta-oe              = "sumo:2bb21ef27c4b0c9d52d30b3b2c5a0160fd02b966"
> meta-microservicebus
> meta-example-msb-rpi = "dev:be586f405a92a563ff49b8adf9ef7a9da5cc7192"
> meta-raspberrypi     = "sumo:2d40b000021bc8a9ef7f329ed0ad410f8d227b97"
> meta-rauc            = "sumo:40a5890478a50ad80e404be5d9de197dd9a79d44"
>
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 2864 of 3398
> (/home/jonas/git/devtool/meta-microservicebus-node/meta-example-msb-rpi/recipes-core/images/msb-image-rauc.bb:
> do_rootfs)
> NOTE: recipe msb-image-rauc-1.0-r0: task do_rootfs: Started
> ERROR: msb-image-rauc-1.0-r0 do_rootfs: Unable to install packages. Command
> '/home/jonas/git/devtool/build-deb/tmp/work/raspberrypi3-poky-linux-gnueabi/msb-image-rauc/1.0-r0/recipe-sysroot-native/usr/bin/apt-get
> install --force-yes --allow-unauthenticated microservicebus-node
> packagegroup-core-boot psplash-raspberrypi packagegroup-base-extended
> packagegroup-core-ssh-openssh run-postinsts' returned 100:
> Reading package lists...
> Building dependency tree...
> Reading state information...
> Some packages could not be installed. This may mean that you have
> requested an impossible situation or if you are using the unstable
> distribution that some required packages have not yet been created
> or been moved out of Incoming.
> The following information may help to resolve the situation:
>
> The following packages have unmet dependencies:
>  microservicebus-node : Depends: microservicebus-node-npm but it is not
> going to be installed
>                         Depends: microservicebus-node-npm-JSONStream but it
> is not installable
>                         Depends:
> microservicebus-node-npm-JSONStream-jsonparse but it is not installable
>                         Depends:
> microservicebus-node-npm-JSONStream-through but it is not installable
> E: Unable to correct problems, you have held broken packages.
>
> ERROR: msb-image-rauc-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/jonas/git/devtool/build-deb/tmp/work/raspberrypi3-poky-linux-gnueabi/msb-image-rauc/1.0-r0/temp/log.do_rootfs.7424
> NOTE: recipe msb-image-rauc-1.0-r0: task do_rootfs: Failed
> ERROR: Task
> (/home/jonas/git/devtool/meta-microservicebus-node/meta-example-msb-rpi/recipes-core/images/msb-image-rauc.bb:do_rootfs)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3391 tasks of which 3390 didn't need to be
> rerun and 1 failed.
> _______________________________________________________________________________________________________
>
> /Jonas
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20181211/ab6fe374/attachment-0001.html>
>
> ------------------------------
>
> Message: 4
> Date: Tue, 11 Dec 2018 10:57:14 +0100
> From: Peter Balazovic <balazovic.peter@gmail.com>
> To: Yocto list discussion <yocto@yoctoproject.org>,
>         eclipse-yocto@yoctoproject.org
> Subject: [yocto] Lib update
> Message-ID:
>         <CAFq4t4jdGXQnytzXjW-Op=NVdy1s1yAO=U6v9G8NXGd-OX4F0w@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> I am developing library (set of libraries) which at first are built and
> part of build image & my SDK.
> Now I would need to update the libs so SDK and as well target remote image
> are updated. I want to avoid rebuild whole image and flash SD-Card again
> and generated SDK over again. I use SDK cross-compiler, Eclipse, ADT plugin
> to develop cmake-based application.
> What is the correct procedure?
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20181211/84c549da/attachment.html>
>
> ------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 99, Issue 26
> *************************************
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

