Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FB0AE00C60; Thu, 27 Jul 2017 02:17:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01F40E00BFB
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 02:16:59 -0700 (PDT)
Received: by mail-qk0-f179.google.com with SMTP id z18so18554528qka.4
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 02:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=qAPkfKt27IGIXtbcEBuJbgVShV4PX77nSs7s72sj3v4=;
	b=mnoojgGMOH8m4tHSQXkQD80H1q/yaMxBHzgAc1NlWV/twA8pN1OBo7Xph+jVBmDWAy
	KWsa0tNKYNZuk0U5rRxkK0nJMbPIOcjsZnVf/4ep+TK3NYPV9OJDmAw3Kcp/ypPG3m8H
	WZbDqYzk4hfMjeAmRdBKhuG3PLqODW4MMGWa8N0E9THsnQvXyU7CLfXSL+4xm1EcY7NJ
	74A46/wWDaedlkGVrp/p/zGFVB+JRnMtC16BmAVYygfxHhgW1LYMe6nmF0ZEzQuaCPg6
	Y2xpQ3SRdjsOB4gKYnuREmjEqJ3ryWh+E8IZ9oaXWJ5Xof9vgW5JW8Qh06hxMNIvy/uE
	NziQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=qAPkfKt27IGIXtbcEBuJbgVShV4PX77nSs7s72sj3v4=;
	b=lRuR7FffwQ0YH9mPuOQu5HX1pOUgAZ2E1eSZPZKe4PSxxsMjOr9be0A4J/TlYbi36g
	RbbsLMNjdxVwSpNAlLBpiLAyrDnsH3VdPgr6mNh+zJrmI0uR1slj+v85ucYnuQjfBJQG
	iMMoMROfhK1H56PNv+hlwDQ8+knXZVudFBG4d/7+fNZImTs8+twYS6hEh29yeLQXC1rn
	ElInBKEP+VVrTABYVNMGVdNncKPJfUpTsuNpcFpc2QWan1ELxeUGQ24eec4NLxAd/rVX
	iYKIA08PhpdOcjpgKkboMtPcHNiL3g14RRnyClq3DUOeOW9M+OjCTa2pxgYyVb2BuRDR
	xGNg==
X-Gm-Message-State: AIVw111M799wQgh4sEXu67QdjjgJiqTYYDw4p0dz9hQKOC9WE2JMD2kG
	SmavByU3oHD6NH5Iru60VoyW1x5R9C2V
X-Received: by 10.55.48.70 with SMTP id w67mr4505086qkw.207.1501147019313;
	Thu, 27 Jul 2017 02:16:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.91.226 with HTTP; Thu, 27 Jul 2017 02:16:58 -0700 (PDT)
In-Reply-To: <516344662.4122571.1499883026470@mail.yahoo.com>
References: <516344662.4122571.1499883026470.ref@mail.yahoo.com>
	<516344662.4122571.1499883026470@mail.yahoo.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Thu, 27 Jul 2017 10:16:58 +0100
Message-ID: <CAPyrkgzsxhkex=amcm_ZPL=JAV27tn1tAhHE_DxjMgJPKuQfig@mail.gmail.com>
To: Edward Vidal <develone@sbcglobal.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPi fails when build is with deb packages works okay with rpm packages.
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
X-List-Received-Date: Thu, 27 Jul 2017 09:17:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 12, 2017 at 7:10 PM, Edward Vidal <develone@sbcglobal.net> wrot=
e:
> Hello All,
> Does anyone know if recipes are available for
> gcc-arm-none-eabi & binutils-arm-none-eabi?
>
>
> My build works okay when I use package_rpm and fails with package_deb.
> My bblayers.conf & local.conf are at
> https://github.com/develone/raspberrypi2_yocto/tree/master/poky2.2/raspbe=
rrypi2/conf_files
> Any and all help is appreciated.
>
>
> Parsing recipes: 100% |##########################################| Time:
> 0:00:46
> ~/wkg/yocto/RaspberryPi2/poky/build$ diff conf/local.conf
> ~/wkg/raspberrypi2_yocto/poky2.2/raspberrypi2/conf_files/local.conf
> 124c124
> < PACKAGE_CLASSES ?=3D "package_deb"
> ---
>> PACKAGE_CLASSES ?=3D "package_rpm"
>
> Parsing of 1931 .bb files complete (0 cached, 1931 parsed). 2616 targets,
> 170 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        =3D "1.32.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Ubuntu-16.04"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "raspberrypi2"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "2.2"
> TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4 callconvention-ha=
rd
> cortexa7"
> TARGET_FPU        =3D "hard"
> meta
> meta-poky
> meta-yocto-bsp    =3D "morty:5aa481dfedfd089f0d6e8a3bae1b84134d5dff4c"
> meta-raspberrypi  =3D "master:6bd1bfe472ea491c0edeb7c854d1c0cc5192afeb"
> meta-oe
> meta-python
> meta-multimedia
> meta-gnome        =3D "morty:5aa481dfedfd089f0d6e8a3bae1b84134d5dff4c"
> meta-browser      =3D "master:1edcce7791b4cee9a515c1f11b351753a4f8b12e"

It looks like you're mixing branches here. All your layers should
typically be on the same branch - so either all on morty or all on
master here. Could you align these and re-try your build?

Thanks,

--=20
Paul Barker
Co-Founder & Principal Engineer
Tog=C3=A1n Labs Ltd

