Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8309C07545
	for <webhook@archiver.kernel.org>; Tue, 24 Oct 2023 16:52:11 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
 by mx.groups.io with SMTP id smtpd.web11.23381.1698166325280043403
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Oct 2023 09:52:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ai4XLmgV;
 spf=pass (domain: gmail.com, ip: 209.85.210.49, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6ce2cc39d12so3059005a34.1
        for <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 09:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698166324; x=1698771124; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5IWTwcejxkfqtq8KjLCjFVg5SIuzqyIRwdJSjHF+ldA=;
        b=ai4XLmgV7d/9/MTRvb/V8pu2ZxqEOv2oVGesrozNGhHl9sYKFWc0o0NYc6/YPk6YbR
         AlszBxNpoJjQVjdcNLiffeHqCeKgD5fQZR1/7VnOAv2Ug1aAWb05xYPNd3Xlu+KbicHJ
         jw+PeqcmFoxLGWXYCJ9CKyKcdOoK6G2q8bB7VAqYuxmfJMKcHHbhZqruDDDTB2PVeNAl
         3jcDG6AIy52kxPJpf0ZdqpNBxHL1M/sLWGbXo9tEuB+NFIOvKZIaeu1ZQPYo7ODmZJm/
         t89g6PATIaGsg9oiFsx7VN1JmwFLx9tSqvB+ToTeJ/RYubD+Cc/MuZNZ3TZIvkQIuFRO
         XkhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698166324; x=1698771124;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5IWTwcejxkfqtq8KjLCjFVg5SIuzqyIRwdJSjHF+ldA=;
        b=vDDj4D7qHNVvgUJYod+39o/KRLPDZJsgii9dljepivr5c2o80qEWA3HzMsxyTsyLFF
         4wRKyIU6JlhO20HN66ytIsEBRNPL9gmGUfgxUuZW6AyOW8UAUfBwC1VYUKGI66cAshcd
         u2luV9nuMyf+3VYxEQdKiWFQvH/v7LK08eHo+FJgwSIlvf8qiis5EpXrHkYRLB11KFUo
         Df8ncqrON3Uq2ZgS7SvHFRVyPWnRaZQ4itYGYnfQqw/uL9v6xdUyjdVoJoNjrbEe3PIs
         rZvG5uU88USq4QPaLPAULdoHA6wd9JzhFi95pJVvtfOCikt1YUlfdX6bPaMDEdOQPU8a
         cH3w==
X-Gm-Message-State: AOJu0Yzjmuqb4NqpQU8EbL5v/Dt4so/Qv9Y1xIBM6+ZNya61P6Xacru3
	vXimQ2WrypN5bP0rJCcnbHJxEy8AW6cFrFWMcCk=
X-Google-Smtp-Source: AGHT+IGW1ti0Cs8rd1OHRaVJDfzx8WQIrBTjCGmnFpTXPuvlS1o5qBLUOwa0ert1RiDLDzqTdSRt5UGbT9tVjOBsBhE=
X-Received: by 2002:a05:6830:108f:b0:6b9:b1b0:fcd1 with SMTP id
 y15-20020a056830108f00b006b9b1b0fcd1mr12470947oto.31.1698166324333; Tue, 24
 Oct 2023 09:52:04 -0700 (PDT)
MIME-Version: 1.0
References: <CABatt_zLLc-pGxmcqYsYQowsGRTt9ETzk7x5v6L+5bV18p8byg@mail.gmail.com>
 <CAMKF1sqULQJKS=aPKdYbM+PQu9346wJ6L+dr-fNBfad9WaUAtg@mail.gmail.com> <CABatt_wz1_JLEQcxzE=sZeNfg0xXw1nyLXzHMqvLvGehEZ=rEw@mail.gmail.com>
In-Reply-To: <CABatt_wz1_JLEQcxzE=sZeNfg0xXw1nyLXzHMqvLvGehEZ=rEw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 24 Oct 2023 09:51:37 -0700
Message-ID: <CAMKF1srijPX_cE_=y1CDAeiTqNDyECaMqNCttFQyP0LOSSHqrQ@mail.gmail.com>
Subject: Re: [yocto] Clang LLVM do_package strip error
To: Martin Townsend <mtownsend1973@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 16:52:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61470

On Tue, Oct 24, 2023 at 6:33=E2=80=AFAM Martin Townsend <mtownsend1973@gmai=
l.com> wrote:
>
> On Mon, Oct 23, 2023 at 5:43=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wro=
te:
> >
> > On Mon, Oct 23, 2023 at 9:29=E2=80=AFAM Martin Townsend <mtownsend1973@=
gmail.com> wrote:
> > >
> > > Hi,
> > >
> > > I've updated the project I'm working on to kirkstone and using GCC it
> > > is working.  We want to move to Clang but I've seen a couple of
> > > recipes fail in do_package with a similar error.  Here is the output
> > > for runc-opencontainers, the package tini has something similar
> > >
> > >
> > > ERROR: runc-opencontainers-1.1.4+gitAUTOINC+974efd2dfc-r0 do_package:
> > > Fatal errors occurred in subprocesses:
> > > Command '['aarch64-poky-linux-llvm-objcopy', '--only-keep-debug',
> > > '/ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa5=
3-crypto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/pack=
age/usr/bin/runc',
> > > '/ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa5=
3-crypto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/pack=
age/usr/bin/.debug/runc']'
> > > returned non-zero exit status 1.
> > > Subprocess output:aarch64-poky-linux-llvm-objcopy: error: Link field
> > > value 47 in section .rela.plt is not a symbol table
> > >
> >
> > Its using clang and also binutils from llvm here and there has been
> > many fixes we had done to llvm
> > tools and things are better with clang 17, but since you are on
> > kirkstone, you might be using older clang
> > and llvm. So you can try if master branch solves the problem and maybe
> > next LTS you are set other
> > option which might be immediately useful would be to fall back to
> > using objcopy from binutils which you
> > can do via something like below in site.conf
> >
> >  OBJCOPY:pn-runc-opencontainers:toolchain-clang =3D "${HOST_PREFIX}objc=
opy"
> >
>
> Moving to master and modifying a few recipes has fixed these issues
> but now docker and containerd-opencontainers are not compiling, for
> containerd, grepping for error I can see

did you switch all layers in your project to respective master branches ?
if not perhaps that might be the first thing to look at.

>
> vendor/k8s.io/apimachinery/pkg/util/sets/byte.go:34:16: syntax error:
> unexpected [, expecting (
> vendor/k8s.io/apimachinery/pkg/util/sets/int.go:34:15: syntax error:
> unexpected [, expecting (
> vendor/k8s.io/apimachinery/pkg/util/sets/int32.go:34:17: syntax error:
> unexpected [, expecting (
> vendor/k8s.io/apimachinery/pkg/util/sets/int64.go:34:17: syntax error:
> unexpected [, expecting (
> vendor/k8s.io/apimachinery/pkg/util/sets/ordered.go:24:10: syntax
> error: unexpected |, expecting semicolon or newline or }
> vendor/k8s.io/apimachinery/pkg/util/sets/ordered.go:31:9: syntax
> error: unexpected |, expecting semicolon or newline or }
> vendor/k8s.io/apimachinery/pkg/util/sets/ordered.go:38:2: syntax
> error: unexpected ~, expecting method or interface name
> vendor/k8s.io/apimachinery/pkg/util/sets/ordered.go:45:2: syntax
> error: unexpected ~, expecting method or interface name
> vendor/k8s.io/apimachinery/pkg/util/sets/ordered.go:52:2: syntax
> error: unexpected ~, expecting method or interface name
> vendor/k8s.io/apimachinery/pkg/util/sets/set.go:24:12: syntax error:
> unexpected comparable, expecting ]
> vendor/k8s.io/apimachinery/pkg/util/sets/set.go:24:12: too many errors
>
> and
>
> make: *** [Makefile:264: bin/containerd-shim] Error 2
> make: *** [Makefile:268: bin/containerd-shim-runc-v1] Error 2
> make: *** [Makefile:272: bin/containerd-shim-runc-v2] Error 2
> make: *** [Makefile:255: bin/ctr] Error 2
> make: *** [Makefile:255: bin/containerd-stress] Error 2
> make: *** [Makefile:255: bin/containerd] Error 2
>
>
> It looks like it's compiling go, do I need to do anything special for
> clang to compile go? I tried updating the recipe to the latest from
> master and still the same error.
>
> The lines from the makefile are
>
> define BUILD_BINARY
> @echo "$(WHALE) $@"
> $(GO) build ${DEBUG_GO_GCFLAGS} ${GO_GCFLAGS} ${GO_BUILD_FLAGS} -o $@
> ${GO_LDFLAGS} ${GO_TAGS}  ./$<
> endef
>
> # Build a binary from a cmd.
> bin/%: cmd/% FORCE
>     $(call BUILD_BINARY)
>
>
> > > ERROR: Logfile of failure stored in:
> > > /ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa53=
-crypto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/temp/=
log.do_package.2936320
> > > ERROR: Task (/ws/extra/octopus/octave-kirkstone/build-cad-devel/../so=
urces/meta-virtualization/recipes-containers/runc/runc-opencontainers_git.b=
b:do_package)
> > > failed with exit code '1'
> > > Pseudo log:
> > > inode mismatch:
> > > '/ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa5=
3-crypto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/imag=
e/usr/bin/docker-runc'
> > > ino 84410787 in db, 84431171 in request.
> > > Setup complete, sending SIGUSR1 to pid 2936321.
> > >
> > > I'm sure these used to compile with Clang in dunfell so could this be
> > > a toolchain problem?
> > >
> > > I'm using the kirkstone branch of meta-clang and have the following i=
n
> > > my distro conf
> > > PREFERRED_PROVIDER_llvm =3D "clang"
> > > PREFERRED_PROVIDER_llvm-native =3D "clang-native"
> > > PREFERRED_PROVIDER_nativesdk-llvm =3D "nativesdk-clang"
> > > PROVIDES:pn-clang =3D "llvm"
> > > PROVIDES:pn-clang-native =3D "llvm-native"
> > > PROVIDES:pn-nativesdk-clang =3D "nativesdk-llvm"
> > >
> > > and this in local.conf
> > >
> > > TOOLCHAIN ?=3D "clang"
> > > RUNTIME ?=3D "llvm"
> > >
> > > I notice there is a kirkstone-clang12 branch in meta-clang, should I
> > > be using this?
> > > If not, any help in debugging this would be appreciated.
> > >
> > > Cheers,
> > > Martin.
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > You automatically follow any topics you start or reply to.
> > > View/Reply Online (#61459): https://lists.yoctoproject.org/g/yocto/me=
ssage/61459
> > > Mute This Topic: https://lists.yoctoproject.org/mt/102139152/1997914
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@g=
mail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >

