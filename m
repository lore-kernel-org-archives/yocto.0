Return-Path: <raj.khem@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B4CDE006BA
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2011 15:53:49 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by faap19 with SMTP id p19so1521387faa.35
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2011 15:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=pazRaTU39WmiRYXL/hLv8aZY7nvmc9abpWsEUlo3GVE=;
	b=kkRHATag7aQCoK58JszNJtqWxJZMqKhrIL7EUMiWfKH+thIf6Ej9u1j1uQY6boYaze
	iESNFpPPXzfusqGpaRnqZkFOwcpThJFIKKM3kfo2TRw35RdvE++w//TnvnGtsBy89Zuh
	MrvQZ+cGjTBivYInSiF+60RDaryWcKKcGyuGA=
Received: by 10.152.132.39 with SMTP id or7mr13135594lab.14.1322006029049;
	Tue, 22 Nov 2011 15:53:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.24.36 with HTTP; Tue, 22 Nov 2011 15:53:18 -0800 (PST)
In-Reply-To: <DB6E482E89290547898851B8CC9D81108D109394@AUSX7MCPS302.AMER.DELL.COM>
References: <AQHMn/k5DNKfuvujVk+xPJByWnze6g==>
	<DB6E482E89290547898851B8CC9D81108D109394@AUSX7MCPS302.AMER.DELL.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 22 Nov 2011 15:53:18 -0800
Message-ID: <CAMKF1spcuDfqdWX0pxF8=4uQ14+WepZosu0mUMv5xtwp1SQaNQ@mail.gmail.com>
To: Michael_E_Brown@dell.com
Cc: yocto@yoctoproject.org
Subject: Re: SH4 build failure fix
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
X-List-Received-Date: Tue, 22 Nov 2011 23:53:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 10, 2011 at 2:36 PM,  <Michael_E_Brown@dell.com> wrote:
>
> I'm presently working on porting the build environment for three existing=
 embedded projects over to use yocto. Unfortunately, the project which has =
to go first is based on an SH4 chip, which isn't on the officially supporte=
d yocto architecture list. I gave the compile a go, and ran into a build er=
ror in gcc-cross-intermediate:
>
> build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-poky-=
linux-ld: cannot find crti.o: No such file or directory
> build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-poky-=
linux-ld: cannot find -lc
> build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-poky-=
linux-ld: cannot find crtn.o: No such file or directory
>
> Trying to figure out the source of this build error, I found that base op=
enembedded does compile this package successfully, so I started focusing on=
 the differences. I narrowed the build failure down to this line in gcc-cro=
ss4.inc, which is present in openembedded, but absent in yocto/poky:
> =C2=A0 =C2=A0gcc-cross4.inc
> =C2=A0 =C2=A0EXTRA_OECONF_append_sh4 =3D " --with-multilib-list=3D --enab=
le-incomplete-targets "
>
> After I added this one line, I was able to sucessfully build a base yocto=
 image for qemu sh4. Is it possible to get this added to the upstream yocto=
 build?

there is much more than just building toolchain. You need to make sure
that kernel is configured properly too and last time I remember doing
it in oe.dev I needed some patches on vanilla
kernel that may have changed now. I think adding SH4 to meta-oe can be
considered if you post
patches for that layer. Then the question remains where the remaining
machine support goes. It can be a new layer for secondary qemu
architectures.

> --
> Michael Brown
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

