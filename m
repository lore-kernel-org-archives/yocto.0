Return-Path: <evadeflow@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 147EFE011AF
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 14:17:26 -0700 (PDT)
Received: by oagh2 with SMTP id h2so8915694oag.35
	for <yocto@yoctoproject.org>; Tue, 02 Oct 2012 14:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=IGDdRyVBYewMpvivR6eFiuTP49ZJ+GWyJlsUFfhZVjc=;
	b=Jyz6NFZpwW/gwHI9bTgQEomRUTw2UBe3xSl+fsRciEjz/0wsUSn5WlyAGtpbDXX/y2
	a5RyKTkwnXWPCfc8Zp8DsuIF3MXFKtSeDGR5cNNQRWLvY2JPntnSyemhkpGD3uNsVvSX
	WWZI/25PxIG6uqOa537N8DR2jw+m0IBslxc78S3r8kmp4wx0xpe0bHIxhBl48IWRPyju
	nu11YPK8xNA/8Q2YhRI5M5RFVfq3MxviwJhRXJvC7Tgy3h/MkQFmjro7ONFkiI3dBtg3
	7rifAIhnfimxuE81IPQJvda27u3lCmzkvt9aqvKmFgPkOZ5rd240WIf31UUfJLPHtRkX
	aWcw==
MIME-Version: 1.0
Received: by 10.60.170.9 with SMTP id ai9mr34756oec.36.1349212643328; Tue, 02
	Oct 2012 14:17:23 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Tue, 2 Oct 2012 14:17:23 -0700 (PDT)
Date: Tue, 2 Oct 2012 17:17:23 -0400
Message-ID: <CAMAb8ZO1-psKwMhPNrVXroo-jEO37WpigX7xC0VYavTioo6PEg@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Can't fetch git SRC_URI via HTTP
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
X-List-Received-Date: Tue, 02 Oct 2012 21:17:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm trying to build core-image-sato for my Pandaboard ES, following the
instructions posted here:

  - http://maniacbug.wordpress.com/2012/08/03/pandayocto/

Thus, my OE build configuration looks like this:

> OE Build Configuration:
> BB_VERSION        = "1.15.2"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "pandaboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.2.1"
> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "denzil:65ffa7395055f7e012cb973f63f92380828eed0d"
> meta-ti           = "(nobranch):30fb40ebc13614a74c2e237927c60ac43e01d1bc"

I have these lines in my .gitconfig:

> [http]
>     proxy=http://user:passwd@usaprox.lightning.com:8080

so I'd expect URLs like this one (from the meta-ti layer's
linux-omap4_3.1.0.bb recipe) to work fine:

> SRC_URI = "http://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=git;branch=ti-ubuntu-3.1-1282 \
>            file://0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch \
>            file://defconfig \
>            "

From what I can tell, though, bitbake isn't handling this SRC_URI
correctly, and I get:

> ERROR: Command Error: exit status: 1  Output:
> Applying patch 0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch
> patching file scripts/Makefile.fwinst
> Hunk #1 FAILED at 27.
> 1 out of 1 hunk FAILED -- rejects in file scripts/Makefile.fwinst
> Patch 0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch does not apply (enforce with -f)
> ERROR: Function failed: patch_do_patch

If I examine the folder:

  build/tmp/work/pandaboard-poky-linux-gnueabi/linux-omap4-3.1.0-r0

I see that it contains no source code. It does, however, contain a file
named 'kernel-ubuntu.git', whose content is exactly the same as you'd
get if you typed:

  wget http://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git

This seems like a bug, possibly related to one of these:

  - http://bugzilla.yoctoproject.org/show_bug.cgi?id=3119
  - http://bugzilla.yoctoproject.org/show_bug.cgi?id=3175


Maybe this has been fixed since denzil, but... everything I read about
the current state of support for the Pandaboard suggests sticking with
denzil/gcc 4.6. Is there some workaround I can use to get past this
error?  Also, assuming these instructions worked for the author of the
original blog post, I wonder what the difference is with my setup.

Here are my mods to conf/local.conf, in case it's helpful:

> MACHINE = "pandaboard"
> BBMASK = "meta-ti/recipes-misc"
> PACKAGE_CLASSES = "package_ipk"
> CONNECTIVITY_CHECK_URIS=""
> BB_GENERATE_MIRROR_TARBALLS = "1"
> SOURCE_MIRROR_URL ?= "file:///home/evadeflow/projects/poky-mirror/"
> INHERIT += "own-mirrors"

And this is my bblayers.conf:

> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> LCONF_VERSION = "4"
>
> BBFILES ?= ""
> BBLAYERS ?= " \
>   /home/evadeflow/projects/poky-git/meta \
>   /home/evadeflow/projects/poky-git/meta-yocto \
>   /home/evadeflow/projects/poky-git/meta-ti \
>   "

