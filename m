Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78D2EE00F06; Wed, 31 Aug 2016 06:53:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AECCBE00D63
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2016 06:53:03 -0700 (PDT)
Received: by mail-ua0-f170.google.com with SMTP id m60so89246313uam.3
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2016 06:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=F4A1krlqm4s0DCdwewvIYz53wMN6XNTkPYJ+i4BLs3A=;
	b=IySRCAcSJZg7AdJqY0Tw8zYJOSRU5kOrgkXCWZXcBDG+lgx1n1gBEVVSKaxE+d7AG/
	tL3b7tV6CI3Jn6MK0ybNDSGnF4+sf69xtLpYq625jjA7ZJa9uhBvBomohJors/5xQQJ8
	M+AMDkHGPi8BsHWeoP+L9yE+Dhpl6AA+hH+scj5SEZ+L3xq3uN2yrQrUwtcG3DiMahhw
	uKtQcRNX4JOQPifXl2ydMeojgqpl+JOn75xysh4tisHl6LN0RZuahK6c5LcUEu/bpKJA
	UtlKHuIEuQKePUELeiZ7PiVggPKYxsqqOTp0gEuy5apNL8iMoVlDEZ/iCLcspZJjcNsG
	ZFxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=F4A1krlqm4s0DCdwewvIYz53wMN6XNTkPYJ+i4BLs3A=;
	b=YoQXy+f3PKZdXCSt9OBzAtkWufE3qCgjgUkdlJ3yVIaAqKdekBbQLhTLSvnR0p9+P7
	exdvA9yPvmWTbwdky4goF23jcxMnj7nDj7v9lM9eBopMayETbU14O9I3a3f5rN1Alx/C
	5+Gvbc1zwsC0erHXcYBE0dWS30p3xpo1TBVVQM+2XouxKR8/wlPU1O4bAY3yNwFspM7p
	IgdbnFDVpiK1tpHdYG/x01N+MsI/gVqlcn51Pr2vVdXzTQoMUP2VkDWI5U7/nejmdbrl
	UolGTcuRpRnX6nE19sGsovgwPY7iCVay5G1wSHLlgQCnmcf585ce1qZeSrZSdITfxqUT
	zQOw==
X-Gm-Message-State: AE9vXwOipnGU62EVnJRN1BNkpPNFGbiKplkn7/I+gEa65AEZPCFDOarHqGajV+793EgwouoeYZG5zuSBzpECGQ==
X-Received: by 10.159.40.35 with SMTP id c32mr4730001uac.150.1472651582678;
	Wed, 31 Aug 2016 06:53:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.41 with HTTP; Wed, 31 Aug 2016 06:53:02 -0700 (PDT)
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F7F1B1@MBX114.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F7F1B1@MBX114.d.ethz.ch>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 31 Aug 2016 10:53:02 -0300
Message-ID: <CAF3SDA6fpu9R2VXFpjS9Zf31SUYiC8meJESaiCNUYck+CaK-wA@mail.gmail.com>
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: u-boot-mkimage in SDK
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
X-List-Received-Date: Wed, 31 Aug 2016 13:53:04 -0000
Content-Type: text/plain; charset=UTF-8

I had to add nativesdk-u-boot-mkimage to
nativesdk-packagegroup-sdk-host.bbappend RDEPNDS_${PN} variable.

[geckos@csi24 yocto-daisy]$ cat
./sources/meta-fsl-arm/recipes-core/packagegroup/nativesdk-packagegroup-sdk-host.bbappend
RDEPENDS_${PN} += " \
    nativesdk-elftosb \
    nativesdk-mxsldr \
    nativesdk-u-boot-mkimage \
"

2016-08-31 9:52 GMT-03:00 Anicic Damir (PSI) <damir.anicic@psi.ch>:
> Hi all,
>
>
> I have built Yocto 2.1, for PowerPC (E6500):
>
> Build Configuration:
> BB_VERSION        = "1.30.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "powerpc-poky-linux"
> MACHINE           = "powerpc-ppce6500"
> DISTRO            = "gfa-ppce6500"
> DISTRO_VERSION    = "2.1"
> TUNE_FEATURES     = "m32 fpu-hard e6500 altivec"
> TARGET_FPU        = ""
>
>
>
>
>
> Now, if I am cross-compiling additional uImage kernels outside bitbake,
> I need mkimage.
> But it is not in SDK.
>
> I have managed to get mkimage into rootfs, (added to IMAGE_INSTALL +=...)
> but how to get it inside cross-toolchain?
>
> Regards,
> Damir
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Do or do not. There is no try"
  Yoda Master

