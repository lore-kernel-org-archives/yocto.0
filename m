Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66ED1E00B6F; Wed, 28 May 2014 13:32:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ie0-f176.google.com (unknown [209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E1BEE00B6A
	for <yocto@yoctoproject.org>; Wed, 28 May 2014 13:32:06 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id rl12so10812246iec.21
	for <yocto@yoctoproject.org>; Wed, 28 May 2014 13:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=hyVY62GJFn94r8y4Bz9QogwZfNcPBrlFJEtpItcrUvo=;
	b=qVARVOAri1HRicQAP+cQeejHiowxrP+cEIIWr6p8R3pO+IaxrLal/Dy9D25iEU6YVp
	orKe4sbrl/YsFyWnWanwj6RXRw23v3cedccPinsbTUBGjEvu0CgfK9hsE1ufD43gKEAP
	9/RbdFUquWQzxzIVB4kWeiTHrzLQEOuxFuLoqZDdePTmkLkyNdV6cWEluW7aduOpfwnd
	WltSIRXXi+v9sj/fc/27Z5b9YAL4XTg5fshMgR7/c7kSAaFqhgYSkmACf7tebIOp2mpz
	O7Jc/xA/gfAc64kTWOmUyf+KIye7GveKf8Z65KfiBH2lpdNM18Q+BmPxsc+L/+7PCm/x
	RkEg==
X-Received: by 10.50.65.3 with SMTP id t3mr47034180igs.20.1401309126481; Wed,
	28 May 2014 13:32:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.117.33 with HTTP; Wed, 28 May 2014 13:31:36 -0700 (PDT)
In-Reply-To: <CAAPegz2DCZGTKfyJBGMytu_zofk2K9CSJMbVtiKHdS2eysZgrQ@mail.gmail.com>
References: <CAAPegz2DCZGTKfyJBGMytu_zofk2K9CSJMbVtiKHdS2eysZgrQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 28 May 2014 13:31:36 -0700
Message-ID: <CAMKF1sr_LaaVnd8U_7XP3QmAn6Q7OTuVmkb+G3zxz3edXEkRkw@mail.gmail.com>
To: Chris Morgan <chmorgan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: virtual/mesa, virtual/libgl provided by multiple packages
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
X-List-Received-Date: Wed, 28 May 2014 20:32:10 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, May 27, 2014 at 3:44 PM, Chris Morgan <chmorgan@gmail.com> wrote:
> Building a custom image with wayland and weston based on core-image,
> seeing issues with virtual/mesa and virtual/libgl being provided by
> multiple packages. Not sure if I'm doing something wrong here, like
> not specifying packages that provide those virtual targets?
>
>

you got to set PREFERRED_PROVIDERS for jpeg and virtual/libgl to be
either mesa or mesa-gl

>
> [cmorgan@localhost build]$ bitbake core-image-cybex
> NOTE: Started PRServer with DBfile:
> /home/cmorgan/projects/yocto_poky/build/cache/prserv.sqlite3, IP:
> 127.0.0.1, PORT: 54426, PID: 13617
> Loading cache: 100%
> |######################################################| ETA:
> 00:00:00
> Loaded 1797 entries from dependency cache.
> Parsing recipes: 100%
> |####################################################| Time: 00:00:00
> Parsing of 1372 .bb files complete (1366 cached, 6 parsed). 1802
> targets, 68 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg
>
> Build Configuration:
> BB_VERSION        = "1.23.1"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Fedora-20"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "beaglebone"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.6+snapshot-20140527"
> TUNE_FEATURES     = "arm armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta              = "master:f3d62a9eb9c47356e6150fdd55f790c159e620c7"
> meta-bbb          = "master:8318556523a747b7e9c97326bef14922a154e8a2"
> common-bsp        = "master:a070f6898bc354bb4a8ec6c9ce3907452db732b8"
> meta-yocto
> meta-yocto-bsp    = "master:f3d62a9eb9c47356e6150fdd55f790c159e620c7"
> meta-mono         = "master:89fbbf6d6029190f9093b25d6158180607a87ea1"
> meta-oe           = "master:0e7630c31989bec8ac96261b72518f7b505bcdb7"
> meta-cybex        = "master:3d9914ff3252112ab1b5c9cf4d3a1d07344e0e8e"
>
> NOTE: Preparing runqueue
> ERROR: Multiple .bb files are due to be built which each provide
> virtual/mesa (/home/cmorgan/projects/yocto_poky/meta/recipes-graphics/mesa/mesa_9.2.5.bb
> /home/cmorgan/projects/yocto_poky/meta/recipes-graphics/mesa/mesa-gl_9.2.5.bb).
>  This usually means one provides something the other doesn't and should.
> ERROR: Multiple .bb files are due to be built which each provide
> virtual/libgl (/home/cmorgan/projects/yocto_poky/meta/recipes-graphics/mesa/mesa_9.2.5.bb
> /home/cmorgan/projects/yocto_poky/meta/recipes-graphics/mesa/mesa-gl_9.2.5.bb).
>  This usually means one provides something the other doesn't and should.
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Recipe mesa-gl is trying to create package libegl-mesa which
> was already written by recipe mesa. This will cause corruption, please
> resolve this and only provide the package from one recipe or the other
> or only build one of the recipes.
> ERROR: Function failed: read_subpackage_metadata
> ERROR: Logfile of failure stored in:
> /home/cmorgan/projects/yocto_poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/mesa-gl/2_9.2.5-r0/temp/log.do_package_write_ipk.8631
> ERROR: Task 1194
> (/home/cmorgan/projects/yocto_poky/meta/recipes-graphics/mesa/mesa-gl_9.2.5.bb,
> do_package_write_ipk) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2439 tasks of which 2310 didn't need to
> be rerun and 1 failed.
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
>   /home/cmorgan/projects/yocto_poky/meta/recipes-graphics/mesa/mesa-gl_9.2.5.bb,
> do_package_write_ipk
> Summary: There were 4 ERROR messages shown, returning a non-zero exit code.
> [cmorgan@localhost build]$
>
>
> Chris
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

