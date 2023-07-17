Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB6DEB64DC
	for <webhook@archiver.kernel.org>; Mon, 17 Jul 2023 17:35:21 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web11.1113.1689615313594513727
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jul 2023 10:35:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=Msa9/xw4;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1b449890ef5so3875249fac.1
        for <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 10:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689615313; x=1692207313;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3UPlTusomrkt5M1ODCg2UCRh+3yil2FwS1JhSirqNN4=;
        b=Msa9/xw4jNwDt15Jt/PZO3NdHdsNNhalKptAXZe41ktEZahI9KV2t6HEOARw+6OzHF
         ZJ+004a5xaEo2tPl3WmLpqOjaUyqQXMmx0KQ1zUhs9C//LzynSg3uu8SD4o5iDlElGz2
         PTdf1OtIeHycsBOaH5SKPJl/Bg91n8zT5miluRAEZTDDMLd2iAPhipOFOQ8wk7EgyHJ1
         1rezQcBOfvg2Nqp1NlcF4Srw8jt86Tpy5/zevA+LvjgTNe9CkrAzigFTi1tlcp7nFBho
         E/8/Ex3AyJi/pbhUNAxAcRKrQ5ysqvcXbs16kPa8Cu/f83bX/OyKl5/290OivQB+aoIj
         rG0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689615313; x=1692207313;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3UPlTusomrkt5M1ODCg2UCRh+3yil2FwS1JhSirqNN4=;
        b=fTqUoRm6IC1yYF/M6HGwt3F6WZTrsZeEgtFHWnj+b/0re4YHXrC7dGxbNyqSm4tc3U
         8salfa4KVeOSVozpKAAGJq2SH6WkfOnJ3YCWmMkkpMg5f6XSpXL2T7hug7in7GHc08Yx
         Jmp8LDIlU7clryrx9ZmaF0eBwu+qrB7od2XlzJaUNTVqMWIFM1BS37RNj/bHpvE3mHxy
         DuhyToMI8RyrC7GNw22kh9NzXotILWyaEIDyWoN9TE8fpiWCnCGyqe6fU0z0gyeIJKT0
         e5cbrHMLQJiOo7X7cK7e3yLCG43dOUm4h/uJFDKYaVZYQz60kwGTq24tru3YOf+uRa4a
         cpmw==
X-Gm-Message-State: ABy/qLaHF/W1iXYdG0jTQ3Kre0tr2JCogIDVIqtJnUUcGARjAV5Z7u/+
	gfjrDDqt88oYALATclHdJxyLHtCCuZKFmHWWsyk=
X-Google-Smtp-Source: APBJJlFbH3MD1KNH9yZK8PTvo9GjpYbgJsNxW2YNU3Ys4MWnqgNrSwmWCLLepbwFWM32dfYpuxFBij6J51kyx+z6pXo=
X-Received: by 2002:a05:6870:d154:b0:1a6:a547:ffe1 with SMTP id
 f20-20020a056870d15400b001a6a547ffe1mr14943012oac.21.1689615312716; Mon, 17
 Jul 2023 10:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <CABatt_zAugR2unmSVA=L7HmPxe9W11r0LEDkCPs7+drMtOApDA@mail.gmail.com>
In-Reply-To: <CABatt_zAugR2unmSVA=L7HmPxe9W11r0LEDkCPs7+drMtOApDA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 17 Jul 2023 10:34:46 -0700
Message-ID: <CAMKF1sr8NW=yki9hxoewfy+P3k7HD98Kh+7_rr7g0xd_37Q2rg@mail.gmail.com>
Subject: Re: [yocto] libgcc dependency
To: Martin Townsend <mtownsend1973@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 17:35:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60594

On Mon, Jul 17, 2023 at 6:38=E2=80=AFAM Martin Townsend <mtownsend1973@gmai=
l.com> wrote:
>
> Hi,
>
> I am trying to remove all GPLv3 packages from my image.  The clang
> toolchain is used where possible and currently there are no
> dependencies on libstdc++ and as far as I can see none on libgcc but
> this library is installed in the rootfs.  I've created a script to
> parse all elf binaries to see which one dynamically links against
> libgcc but none do.  I think it's being installed due to libgcc being
> in the BASEDEPENDS but I can't see what is adding libgcc to this
> variable.  I'm using the dunfell version of yocto and base.bbclass has
>
> def base_dep_prepend(d):
>     if d.getVar('INHIBIT_DEFAULT_DEPS', False):
>         return ""
>     return "${BASE_DEFAULT_DEPS}"
>
> BASE_DEFAULT_DEPS =3D "virtual/${TARGET_PREFIX}gcc
> virtual/${TARGET_PREFIX}compilerlibs virtual/libc"
>
> BASEDEPENDS =3D ""
> BASEDEPENDS_class-target =3D "${@base_dep_prepend(d)}"
> BASEDEPENDS_class-nativesdk =3D "${@base_dep_prepend(d)}"
>
> but when I check the BASEDEPENDS for various recipes I get
>
> BASEDEPENDS=3D" clang-cross-aarch64 virtual/libc  libgcc
> virtual/aarch64-poky-linux-compilerlibs  gettext-native"
> BASEDEPENDS_class-nativesdk=3D" clang-cross-aarch64 virtual/libc  libgcc
>  virtual/aarch64-poky-linux-compilerlibs "
> BASEDEPENDS_class-target=3D" clang-cross-aarch64 virtual/libc  libgcc
> virtual/aarch64-poky-linux-compilerlibs "
>
> Is it possible to remove libgcc from the BASEDEPENDS somehow?
> Although we are using Dunfell I'm happy to move to another release if
> it's easier to achieve this.

Things are better with master and perhaps kirkstone too ( but did not try )
in yoe we use

RUNTIME =3D "llvm"
TC_CXX_RUNTIME =3D "llvm"
TOOLCHAIN =3D "clang"
CLANGSDK =3D "1"

and libgcc is not used. e.g. see below. however it still uses crt
files which maybe from gcc/glibc you might have to check
that I am talking about crtstuff

% bitbake-getvar BASEDEPENDS
NOTE: Starting bitbake server...
NOTE: Started PRServer with DBfile:
/mnt/b/yoe/master/cache/prserv.sqlite3, Address: 127.0.0.1:37359, PID:
713437
#
# $BASEDEPENDS [3 operations]
#   set /mnt/b/yoe/master/sources/poky/meta/classes-global/base.bbclass:53
#     ""
#   override[class-target]:set
/mnt/b/yoe/master/sources/poky/meta/classes-global/base.bbclass:54
#     "${@get_base_dep(d)}"
#   override[class-nativesdk]:set
/mnt/b/yoe/master/sources/poky/meta/classes-global/base.bbclass:55
#     "${@get_base_dep(d)}"
# pre-expansion value:
#   "${@get_base_dep(d)}"
BASEDEPENDS=3D" clang-cross-riscv64 virtual/libc  compiler-rt libcxx"

>
> Best Regards,
> Martin.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60587): https://lists.yoctoproject.org/g/yocto/messag=
e/60587
> Mute This Topic: https://lists.yoctoproject.org/mt/100194492/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

