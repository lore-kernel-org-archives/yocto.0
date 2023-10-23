Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05D7CC001E0
	for <webhook@archiver.kernel.org>; Mon, 23 Oct 2023 16:44:02 +0000 (UTC)
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
 by mx.groups.io with SMTP id smtpd.web11.126146.1698079435462328342
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Oct 2023 09:43:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CpLM7Iv6;
 spf=pass (domain: gmail.com, ip: 209.85.160.43, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-1e5bc692721so2387356fac.0
        for <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 09:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698079435; x=1698684235; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AUhDZJFSHHGDSlO+RzUoIMsOHixvBQOwzuuCSKt/4tw=;
        b=CpLM7Iv6xT9+be/lietnjXhkyILRynvGaS6uZLkpPo1X7CfloEnJqty0w3Wi/n5VUM
         VXpCkw3VNRII6yGOzz7nAsnlGKXgRongtDCofyYKNtvT2UzplIb/l2q/KWcETRenysrz
         HqyGMwfn4TNZnbqcgF/Z9bKQPcbqjL2vE0Q3PoLhtydn6bMXzbU3wD+CKA8MAm2AgOJz
         0mnnH8+AZWqfzDmiwjA30hN5DlzWE7FIYbg2YjARdqYnIQKlOJvWIOjVd4doF6y4LwJq
         BXqrcb++ccNga1OzKV+aSl1Dp1gLb4FoeEzBL9dmkbaY0w/sIkEuhRBaxbRztOKgYNLA
         NpZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698079435; x=1698684235;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AUhDZJFSHHGDSlO+RzUoIMsOHixvBQOwzuuCSKt/4tw=;
        b=Pz0Hzn/um3GLIDoanreztQ4jAi0acwDser/LEL6PZvONhCz0uzqY7FHDUQ7oT6qBFh
         Xl/aeQJEe+J/NOgMqaC024l487JlvjZLYQjP8FMlRAa+dRd1WTf6QCSHVRGmrg+SN7Ee
         vseKjkYIpIFXhRGC3x9zpXQaknx2SHWFduYo/imphgQti6Oa7llGo4xbhe7Myc+3Mbey
         vPAq06+GvqMNqZPQ71/AIk/1kFJl5AtJbmE9hQvUld+R+4hAgoCaMNhfCt0d0avnpwNe
         NMkQCYCUxOj9SVlgHfBLYo+q5XVVndN/3xIs6OV3DMA4Bjn2yI6tDe+tQwEbX0IOg/Ci
         KWxQ==
X-Gm-Message-State: AOJu0Yzv6NoND6Asj0DeGZsS0nd6YFpoNbJOvruB9XE0SZ6G0MHL28pI
	BNg8ZvqhUNIkTKiRhYHnQnIDUEKEiBRPrMEcgEo=
X-Google-Smtp-Source: AGHT+IG+akgGLQ+oMBC1lTgoJp9vLKclnaV7G6Eg0wzC/W1Cfmmc21D5IQ1VMXdyiohk8pb5u1n7gvlYYoVb+WACYxk=
X-Received: by 2002:a05:6870:8e06:b0:1bf:9f6:b810 with SMTP id
 lw6-20020a0568708e0600b001bf09f6b810mr13531334oab.36.1698079434525; Mon, 23
 Oct 2023 09:43:54 -0700 (PDT)
MIME-Version: 1.0
References: <CABatt_zLLc-pGxmcqYsYQowsGRTt9ETzk7x5v6L+5bV18p8byg@mail.gmail.com>
In-Reply-To: <CABatt_zLLc-pGxmcqYsYQowsGRTt9ETzk7x5v6L+5bV18p8byg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 23 Oct 2023 09:43:27 -0700
Message-ID: <CAMKF1sqULQJKS=aPKdYbM+PQu9346wJ6L+dr-fNBfad9WaUAtg@mail.gmail.com>
Subject: Re: [yocto] Clang LLVM do_package strip error
To: Martin Townsend <mtownsend1973@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 16:44:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61460

On Mon, Oct 23, 2023 at 9:29=E2=80=AFAM Martin Townsend <mtownsend1973@gmai=
l.com> wrote:
>
> Hi,
>
> I've updated the project I'm working on to kirkstone and using GCC it
> is working.  We want to move to Clang but I've seen a couple of
> recipes fail in do_package with a similar error.  Here is the output
> for runc-opencontainers, the package tini has something similar
>
>
> ERROR: runc-opencontainers-1.1.4+gitAUTOINC+974efd2dfc-r0 do_package:
> Fatal errors occurred in subprocesses:
> Command '['aarch64-poky-linux-llvm-objcopy', '--only-keep-debug',
> '/ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa53-cr=
ypto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/package/=
usr/bin/runc',
> '/ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa53-cr=
ypto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/package/=
usr/bin/.debug/runc']'
> returned non-zero exit status 1.
> Subprocess output:aarch64-poky-linux-llvm-objcopy: error: Link field
> value 47 in section .rela.plt is not a symbol table
>

Its using clang and also binutils from llvm here and there has been
many fixes we had done to llvm
tools and things are better with clang 17, but since you are on
kirkstone, you might be using older clang
and llvm. So you can try if master branch solves the problem and maybe
next LTS you are set other
option which might be immediately useful would be to fall back to
using objcopy from binutils which you
can do via something like below in site.conf

 OBJCOPY:pn-runc-opencontainers:toolchain-clang =3D "${HOST_PREFIX}objcopy"


> ERROR: Logfile of failure stored in:
> /ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa53-cry=
pto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/temp/log.=
do_package.2936320
> ERROR: Task (/ws/extra/octopus/octave-kirkstone/build-cad-devel/../source=
s/meta-virtualization/recipes-containers/runc/runc-opencontainers_git.bb:do=
_package)
> failed with exit code '1'
> Pseudo log:
> inode mismatch:
> '/ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa53-cr=
ypto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/image/us=
r/bin/docker-runc'
> ino 84410787 in db, 84431171 in request.
> Setup complete, sending SIGUSR1 to pid 2936321.
>
> I'm sure these used to compile with Clang in dunfell so could this be
> a toolchain problem?
>
> I'm using the kirkstone branch of meta-clang and have the following in
> my distro conf
> PREFERRED_PROVIDER_llvm =3D "clang"
> PREFERRED_PROVIDER_llvm-native =3D "clang-native"
> PREFERRED_PROVIDER_nativesdk-llvm =3D "nativesdk-clang"
> PROVIDES:pn-clang =3D "llvm"
> PROVIDES:pn-clang-native =3D "llvm-native"
> PROVIDES:pn-nativesdk-clang =3D "nativesdk-llvm"
>
> and this in local.conf
>
> TOOLCHAIN ?=3D "clang"
> RUNTIME ?=3D "llvm"
>
> I notice there is a kirkstone-clang12 branch in meta-clang, should I
> be using this?
> If not, any help in debugging this would be appreciated.
>
> Cheers,
> Martin.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61459): https://lists.yoctoproject.org/g/yocto/messag=
e/61459
> Mute This Topic: https://lists.yoctoproject.org/mt/102139152/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

