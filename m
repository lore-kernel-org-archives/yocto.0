Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DC25E00724; Tue, 23 May 2017 08:26:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D59FBE00349
	for <yocto@yoctoproject.org>; Tue, 23 May 2017 08:26:42 -0700 (PDT)
Received: by mail-lf0-f52.google.com with SMTP id h4so51917497lfj.3
	for <yocto@yoctoproject.org>; Tue, 23 May 2017 08:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=72jbBm5px7GIMESnPU17qmdBYR6CXK9GULIXFvKdlqU=;
	b=ZCv58ejE/9RNCXRH7Vcjyo9kM3wKgK4XHEWuUk3p85AMSFngTKVcLHOlBwWkj8Swuo
	r+7HFdkXh1tT//c/ZKcvDXW4h9W7ZwTyqgEE/PazdFnqZHKl6uND03yQytXhh4opIL8G
	9TR3IM8pNeOVentlMJhLWZs2Wu8pWfg0PYxpFnzLyWP4FnHCAYU63WWeW6ZzjkYsl6nG
	Nwqb2vqqe07N64TGhwLtef5JC8fBp45shDmmx+lGKujVua7NoUXFvyarPUUqADifsVKw
	+gT4joGXgYtq8+3BKdM6C1v5Yp6qdK3u65as3XGevxsovHapHfHI6AjeJ+mtSf4k1J9m
	3ddw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=72jbBm5px7GIMESnPU17qmdBYR6CXK9GULIXFvKdlqU=;
	b=YS/bCEB57YBXv9KBumhb7cn8AcKcqHHcqdshN1laYsKrhLTcJDvQX/bviQ8x3+zTVn
	oGIkgEUfYyRDMTGCys2c4+T3anyZFZgIMbkTYwF+2ct5rJCUYB+B4q4U/NsYtRvQLJyB
	+ZizfEX+bjCO1uvmXMws+9/K7TqD7PpDtRJntYxOA0Xk3nmBny57V2F+E+8g3Oe7Tgx+
	dhuvF6LS3AfMnio0p5fg2t/ZHqPLIJ4BZzhdwTv3K5/T67dYJPCcue/x03VTNRi65A1N
	Aywjx0kl7FZsojUuQWzrkS3O9CKAggio1O21NnGAJCGTcKWNR8Ps6UNnlQCeFh3yjHXf
	3ILA==
X-Gm-Message-State: AODbwcBEbV8OlAc57Ew9eaOIlZrWEeeUruoZ9zadj4eBDwMwPZy1wQaO
	rJxEGJiP8+73e8Oz8P3WeQoEUZhPpA==
X-Received: by 10.80.151.5 with SMTP id c5mr21991817edb.30.1495553201852; Tue,
	23 May 2017 08:26:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Tue, 23 May 2017 08:26:11 -0700 (PDT)
In-Reply-To: <CANctR1jFHjF5DcQ5EqfdQdQ+J+X-c9ew1h6r4kcDHdh1sdqjPA@mail.gmail.com>
References: <CANctR1jFHjF5DcQ5EqfdQdQ+J+X-c9ew1h6r4kcDHdh1sdqjPA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 23 May 2017 08:26:11 -0700
Message-ID: <CAMKF1sqBXfffWX+htD4OA5hZW+Q8o3=5TZnw0CB+NKO=J+DN5g@mail.gmail.com>
To: mau hideyuki <hideyuki.mau@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto] [meta-raspberrypi] why "pi3-64 bitbake image" could not boot ?
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
X-List-Received-Date: Tue, 23 May 2017 15:26:48 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, May 18, 2017 at 4:43 AM, mau hideyuki <hideyuki.mau@gmail.com> wrote:
> Hi all>
>  I build raspberry pi3-64 image on my PC, but this image
>  is not able to boot on my raspberrypi3.
>

when you say boot, are you talking about graphical boot ?
I could not get it to boot into graphical target. but console/ssh worked
all well.


> So, I try to build raspberry pi3(aarch32) image, and this image is
>  able to boot on my raspberrypi3.
>
> Next try, I will try build  linux-kernel only with normal make, and install
> over aarch32 image, so boot is good!.
> I build below refference URL
>  "https://devsidestory.com/build-a-64-bit-kernel-for-your-raspberry-pi-3/"
>
> Why bitbake image(aarch64)  is not able to boot??
> (this boot stop at emergency screen)
>
> #My enviorment is below
> ------------------------------------------------------------------
>   build PC : Ubuntu 16.04 LTS
>   yocto and linaro and openembedded version is reffer to the log.
>
> #bblayer.con
> -----------------------------------------------------------------------------------
> POKY_BBLAYERS_CONF_VERSION = "2"
> BBPATH = "${TOPDIR}"
> BBFILES ?= ""
> BBLAYERS ?= " \
>   /home/hideyuki/RPI3/linux4.9.26/poky/meta \
>   /home/hideyuki/RPI3/linux4.9.26/poky/meta-poky \
>   /home/hideyuki/RPI3/linux4.9.26/poky/meta-yocto-bsp \
>   /home/hideyuki/RPI3/linux4.9.26/meta-openembedded/meta-oe \
>   /home/hideyuki/RPI3/linux4.9.26/meta-openembedded/meta-multimedia \
>   /home/hideyuki/RPI3/linux4.9.26/meta-linaro/meta-linaro-toolchain \
>   /home/hideyuki/RPI3/linux4.9.26/meta-raspberrypi \
>   "
> BBLAYERS_NON_REMOVABLE ?= " \
>   /home/hideyuki/Adaptive/RPI3/linux4.9.26/poky/meta \
>   /home/hideyuki/Adaptive/RPI3/linux4.9.26/poky/meta-yocto \
>
> #layer.conf
> --------------------------------------------------------------------------------------
> #"my added" comment is only added on orininal local.conf which is
> # created by "source poky/oe-init-build-env
> MACHINE ?= "raspberrypi3-64"                      #my added
> BB_NUMBER_THREADS ?= "${@oe.utils.cpu_count()}"   #my added
> PARALLEL_MAKE ?= "-j ${@oe.utils.cpu_count()}"    #my added
> MACHINE ??= "qemux86"
> DISTRO ?= "poky"
> PACKAGE_CLASSES ?= "package_rpm"
> EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
> USER_CLASSES ?= "buildstats image-mklibs image-prelink"
> PATCHRESOLVE = "noop"
> USER_CLASSES ?= "buildstats image-mklibs image-prelink"
> PATCHRESOLVE = "noop"
> BB_DISKMON_DIRS = "\
>     STOPTASKS,${TMPDIR},1G,100K \
>     STOPTASKS,${DL_DIR},1G,100K \
>     STOPTASKS,${SSTATE_DIR},1G,100K \
>     STOPTASKS,/tmp,100M,100K \
>     ABORT,${TMPDIR},100M,1K \
>     ABORT,${DL_DIR},100M,1K \
>     ABORT,${SSTATE_DIR},100M,1K \
>     ABORT,/tmp,10M,1K"
> PACKAGECONFIG_append_pn-qemu-native = " sdl"
> PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
> CONF_VERSION = "1"
> EXTRA_IMAGE_FEATURES += " ssh-server-openssh "   #my added
> export GNU_MIRROR="http://ftp.gnu.org/gnu"       #my added
> CONNECTIVITY_CHECK_URIS = ""                     #my added
>
> #bitbake log (top only)
> ----------------------------------------------------------------------
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.34.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "aarch64-poky-linux"
> MACHINE           = "raspberrypi3-64"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.3"
> TUNE_FEATURES     = "aarch64"
> TARGET_FPU        = ""
> meta
> meta-poky
> meta-yocto-bsp    = "master:381897c64069ea43d595380a3ae913bcc79cf7e1"
> meta-oe
> meta-multimedia   = "master:2cdea6c5bb09aa90184c17c9157f4fed0e10b3c2"
> meta-linaro-toolchain = "master:fe7980c13fafd26ba207aa014402eeccfc7ae181"
> meta-raspberrypi  = "master:8527a396d38aec7776182caca8b9a237e03c3965"
>
> Best regards,
> hideyuki.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

