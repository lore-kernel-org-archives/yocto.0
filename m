Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86824C27C4F
	for <webhook@archiver.kernel.org>; Thu, 13 Jun 2024 09:12:11 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.3910.1718269927423419793
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jun 2024 02:12:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cjdxSFTF;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2ebe3fb5d4dso7230821fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 13 Jun 2024 02:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718269925; x=1718874725; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ONyKVBAmz3BjZLQ71hse4+G+skNu3WT5NK0NtRvYXdU=;
        b=cjdxSFTFk6Tf98MfS4G2mlKNi7fe8H23CUQXkksML15PvvM3R+5dpp9HbUiOarp7qi
         iBOcrMTlGbjaZsjkAIrObQEHEhOd4MxMmjxrcswuJltJjJc5EhameQD8YVWzPgefUHNW
         swU1eWFWLTIxc+fATtorXYVDqS/xrd6/DWnon+Ch762L8GckJ3xGr7o0m4RuiRsOeZ/I
         x3Ot2Pvau6X2BGqpnLLlFElfzZLsdaexHlLvbsH9sWwR/lGcHGbSAmKOw2CwS/quuyJI
         cAFJ+R8n7TDMVpeLPJ3RzE5+qcAjZZZnKX+gA+qSBYlsOalu8pF0hflgTfEbGMI3cUr5
         9kOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718269925; x=1718874725;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ONyKVBAmz3BjZLQ71hse4+G+skNu3WT5NK0NtRvYXdU=;
        b=MYsp93Fi7mEtjQoR2B1YUWB4qj4lZWuyQaB+4LzX3cF4ek1zENzbZzWy2Wc2NIrd6f
         GOevc2kNLFGsXJKDIrMCShoAlk3U69OWuWsf7Bfv0KNrojbX9dkvvpSrc3+DNecj4D1n
         pH0MoCzSDyA2NQx8R4LVoXMFK6e/bhRFqtaJ2p2F85+fHLdA+dK3D9OmR1Hd5tUhpwUC
         I+0mWC2gfYA/SvGnh/tLXyMguKCQDpTONghqJoze7kwzHt3c3gmKdREfM5tMYzTnQJSh
         dzs1lfmF7nJSB/oYREG2T5zvVkEaVyoMbd+L8I9GkLkfLIbGVplRi1SZkKaOYKc6Frxy
         UWiA==
X-Gm-Message-State: AOJu0YxfovQqPffPKquEC6fxk/Iip5j63KSlxCRKhpKDV+nZ5XcEu10W
	MTdAF0NC68qhFZv18Kf5rBH6LMpo9pfRd3nbusM3qrWUW1Tbvauu17sXpaBMJ1NQfmkwXMSp1cv
	lFbhu4/MOv5hnlmt7+WVm0o/LUnybjg==
X-Google-Smtp-Source: AGHT+IF8OAFqNwYYvCWa4k71Hj4PcYlLO6MTWYlH/z1MYk/Ttytnt/TiLO3u+JbfFvJSLbZVtAfMH/EegvTV7a2yASs=
X-Received: by 2002:a2e:92d0:0:b0:2ea:e39f:aae9 with SMTP id
 38308e7fff4ca-2ec02b8333dmr5472361fa.11.1718269925001; Thu, 13 Jun 2024
 02:12:05 -0700 (PDT)
MIME-Version: 1.0
References: <mzo3.1718269287097313595.M9xy@lists.yoctoproject.org>
In-Reply-To: <mzo3.1718269287097313595.M9xy@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 13 Jun 2024 11:11:52 +0200
Message-ID: <CANNYZj9PxY1kQAxRvPXGj4F=sroDpVvjKeFjsyPZrP-5mpgMJg@mail.gmail.com>
Subject: Re: [yocto] [scarthgap] Failure with python + ncurses combination
 with Yocto 5.0 (and even 4.3) upgrades #yocto
To: yocto@lists.yoctoproject.org, pandeymayank96@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jun 2024 09:12:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63338

This requires investigating where setupterm() is supposed to come from
and why it isn't picked up. It helps to set up a plain poky build with
one of the qemu machines to get a stable working reference point.

Alex

On Thu, 13 Jun 2024 at 11:01, Mayank Pandey via lists.yoctoproject.org
<pandeymayank96=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hello Yocto experts
>
> I am trying to upgrade my custom bsp layer working on Yocto 4.0 (kirkston=
e) branch to Yocto 5.0 (scarthgap). I have made all the necessary modificat=
ions to the custom recipes based on the 5.0 patch notes. I am facing an err=
or with the python3 version of scarthgap not being able to build ncurses mo=
dule due to implicit declaration error. I tried the same with 4.3 branch (n=
anbield) as well, which gave me the same error. The error snippet is as fol=
lows (error is from python3 do_install step)
>
> NOTE: Skipping as already exists in sysroot: ['openssl', 'expat', 'gettex=
t-minimal-native', 'glibc', 'libxcrypt', 'ncurses', 'util-linux-libuuid', '=
zlib', 'binutils-cross-aarch64', 'cmake-native', 'gcc-cross-aarch64', 'gcc-=
runtime', 'libgcc', 'libedit', 'libtool-cross', 'libtool-native', 'm4-nativ=
e', 'opkg-utils', 'quilt-native', 'bzip2', 'libnsl2', 'libtirpc', 'texinfo-=
dummy-native', 'xz', 'linux-libc-headers', 'gdbm', 'libffi', 'sqlite3', 'op=
enssl-native', 'expat-native', 'ncurses-native', 'util-linux-libuuid-native=
', 'zlib-native', 'autoconf-archive-native', 'autoconf-native', 'automake-n=
ative', 'flex-native', 'gnu-config-native', 'libedit-native', 'make-native'=
, 'patch-native', 'perl-native', 'pkgconfig-native', 'pseudo-native', 'pyth=
on3-native', 'bzip2-native', 'libnsl2-native', 'libtirpc-native', 'xz-nativ=
e', 'zstd-native', 'attr-native', 'gdbm-native', 'gmp-native', 'libffi-nati=
ve', 'libmpc-native', 'mpfr-native', 'sqlite3-native']DEBUG: Python functio=
n extend_recipe_sysroot finishedDEBUG: Executing python function autotools_=
aclocalsDEBUG: SITE files ['endian-little', 'bit-64', 'arm-common', 'arm-64=
', 'common-linux', 'common-glibc', 'aarch64-linux', 'common']DEBUG: Python =
function autotools_aclocals finishedDEBUG: Executing shell function do_inst=
allFailed to build these modules:_curses
>
>
> Now I dug a little deeper to get the error from the do_install step, and =
found that the _curses module had failed in compilation step itself but the=
 compilation continuer, and then it failed in the do_install step.
> The do_compile logs are as below:
>
> /dvs/container/cm/git-master_yocto/yocto/build/tmp/work/armv8a-gnu-linux/=
python3/3.11.5/Python-3.11.5/Modules/_cursesmodule.c:3398:35: error: implic=
it declaration of function 'setupterm'; did you mean 'set_term'? [-Werror=
=3Dimplicit-function-declaration] 3398 |     if (!initialised_setupterm && =
setupterm((char *)term, fd, &err) =3D=3D ERR) {      |                     =
              ^~~~~~~~~      |                                   set_term
>
>
> Does anyone know what could be the root cause of this issue?
> One more thing to not is that the error is intermittent - but with a very=
 low passing rate of ~5-10% (90-95 % of the build fails with the upgrade).
> Thanks for any inputs
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63337): https://lists.yoctoproject.org/g/yocto/messag=
e/63337
> Mute This Topic: https://lists.yoctoproject.org/mt/106648183/1686489
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

