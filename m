Return-Path: <mtownsend1973@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67EE8C25B48
	for <webhook@archiver.kernel.org>; Tue, 24 Oct 2023 13:33:40 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web11.18198.1698154412744177656
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Oct 2023 06:33:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NAiDV55+;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: mtownsend1973@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-1dcfb2a3282so3037934fac.2
        for <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 06:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698154412; x=1698759212; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6DKoS2qSSMz9cMehearJMAf8mxRdfFgA02kOC9G4BKw=;
        b=NAiDV55+QgN+SfcoiBtnkp87Pi6SgwNM+2OgShVBCEvH80v3RCv4Il5n0ja59+xm3P
         KWc+uRjtdzRuoiR85uMeLy9iofu2JYm3nbKUUiiFkHTN8KyojLDILEaOkYmuh+eogmuM
         XqlpJ5mmI9HrXIlfKa2xvINNJGqcJMShBzMJ6eQNVEXaHwGugETOg78ijnJw/HuG8zW3
         7zqHr7fuuXk+htgKW3yX3pnUvNmGt+8n+uqRu3IgXxergRIFi9RypjoLptX+E2Cxru8C
         0xRmTFQLlz5cGlPfv19f3RCW1Rq7MDI8MOelm3YG3nFCC/PFU3CB30tLTe6/WjnYiPmx
         zDgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698154412; x=1698759212;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6DKoS2qSSMz9cMehearJMAf8mxRdfFgA02kOC9G4BKw=;
        b=vdMSKnkKcZVX4QK73CtPaMX82LI1uYhfGFvGhKOFgaq/G4xiljIsqUHotOpJchuYGQ
         TSNmiHSfUX6foxBYtNLCULK8aanaDNMTR50ecI2bxiY6qJ3zPrrAnZEnh0VoSVAtHd1Q
         oSMeGtVmqeFxFhIwlQXgsm/nK4dC0USAe6NOOe5nqKwReQVR1a4D6s/R4Gb81haFvLKd
         Xs296PboBUhtzk96HmCj66kMFskvMrRBitP/QvsX5VmiWNT1brYqYVvvz4O0uxVMwF5d
         BzKF573/gMvo5LYRNVUgTrHVWL3/Cn1l6MpQt12hghQ60ajCEkahZ2rSxqnxhGuYEknb
         30wQ==
X-Gm-Message-State: AOJu0YzX7M3jWw0cGWO4PEADIVuEO0z4eRPhv7P+Vz7xxYCZpbc1Z9mx
	S8quBVNZVqRVMdSt1qEB5D8WRWaYpe9DqQEN7FA=
X-Google-Smtp-Source: AGHT+IF/hZOTXgDRyCN37FxjvQYfjZzdqQirz/B6HTl4+vFRrl3CNr6d23pCh0mRwKmfHtMoASnd7DmvBZY9fG+yNFs=
X-Received: by 2002:a05:6871:722:b0:1e9:8b12:89aa with SMTP id
 f34-20020a056871072200b001e98b1289aamr14449912oap.26.1698154411858; Tue, 24
 Oct 2023 06:33:31 -0700 (PDT)
MIME-Version: 1.0
References: <CABatt_zLLc-pGxmcqYsYQowsGRTt9ETzk7x5v6L+5bV18p8byg@mail.gmail.com>
 <CAMKF1sqULQJKS=aPKdYbM+PQu9346wJ6L+dr-fNBfad9WaUAtg@mail.gmail.com>
In-Reply-To: <CAMKF1sqULQJKS=aPKdYbM+PQu9346wJ6L+dr-fNBfad9WaUAtg@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Tue, 24 Oct 2023 14:33:20 +0100
Message-ID: <CABatt_wz1_JLEQcxzE=sZeNfg0xXw1nyLXzHMqvLvGehEZ=rEw@mail.gmail.com>
Subject: Re: [yocto] Clang LLVM do_package strip error
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 13:33:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61468

On Mon, Oct 23, 2023 at 5:43=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrote=
:
>
> On Mon, Oct 23, 2023 at 9:29=E2=80=AFAM Martin Townsend <mtownsend1973@gm=
ail.com> wrote:
> >
> > Hi,
> >
> > I've updated the project I'm working on to kirkstone and using GCC it
> > is working.  We want to move to Clang but I've seen a couple of
> > recipes fail in do_package with a similar error.  Here is the output
> > for runc-opencontainers, the package tini has something similar
> >
> >
> > ERROR: runc-opencontainers-1.1.4+gitAUTOINC+974efd2dfc-r0 do_package:
> > Fatal errors occurred in subprocesses:
> > Command '['aarch64-poky-linux-llvm-objcopy', '--only-keep-debug',
> > '/ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa53-=
crypto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/packag=
e/usr/bin/runc',
> > '/ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa53-=
crypto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/packag=
e/usr/bin/.debug/runc']'
> > returned non-zero exit status 1.
> > Subprocess output:aarch64-poky-linux-llvm-objcopy: error: Link field
> > value 47 in section .rela.plt is not a symbol table
> >
>
> Its using clang and also binutils from llvm here and there has been
> many fixes we had done to llvm
> tools and things are better with clang 17, but since you are on
> kirkstone, you might be using older clang
> and llvm. So you can try if master branch solves the problem and maybe
> next LTS you are set other
> option which might be immediately useful would be to fall back to
> using objcopy from binutils which you
> can do via something like below in site.conf
>
>  OBJCOPY:pn-runc-opencontainers:toolchain-clang =3D "${HOST_PREFIX}objcop=
y"
>

Moving to master and modifying a few recipes has fixed these issues
but now docker and containerd-opencontainers are not compiling, for
containerd, grepping for error I can see

vendor/k8s.io/apimachinery/pkg/util/sets/byte.go:34:16: syntax error:
unexpected [, expecting (
vendor/k8s.io/apimachinery/pkg/util/sets/int.go:34:15: syntax error:
unexpected [, expecting (
vendor/k8s.io/apimachinery/pkg/util/sets/int32.go:34:17: syntax error:
unexpected [, expecting (
vendor/k8s.io/apimachinery/pkg/util/sets/int64.go:34:17: syntax error:
unexpected [, expecting (
vendor/k8s.io/apimachinery/pkg/util/sets/ordered.go:24:10: syntax
error: unexpected |, expecting semicolon or newline or }
vendor/k8s.io/apimachinery/pkg/util/sets/ordered.go:31:9: syntax
error: unexpected |, expecting semicolon or newline or }
vendor/k8s.io/apimachinery/pkg/util/sets/ordered.go:38:2: syntax
error: unexpected ~, expecting method or interface name
vendor/k8s.io/apimachinery/pkg/util/sets/ordered.go:45:2: syntax
error: unexpected ~, expecting method or interface name
vendor/k8s.io/apimachinery/pkg/util/sets/ordered.go:52:2: syntax
error: unexpected ~, expecting method or interface name
vendor/k8s.io/apimachinery/pkg/util/sets/set.go:24:12: syntax error:
unexpected comparable, expecting ]
vendor/k8s.io/apimachinery/pkg/util/sets/set.go:24:12: too many errors

and

make: *** [Makefile:264: bin/containerd-shim] Error 2
make: *** [Makefile:268: bin/containerd-shim-runc-v1] Error 2
make: *** [Makefile:272: bin/containerd-shim-runc-v2] Error 2
make: *** [Makefile:255: bin/ctr] Error 2
make: *** [Makefile:255: bin/containerd-stress] Error 2
make: *** [Makefile:255: bin/containerd] Error 2


It looks like it's compiling go, do I need to do anything special for
clang to compile go? I tried updating the recipe to the latest from
master and still the same error.

The lines from the makefile are

define BUILD_BINARY
@echo "$(WHALE) $@"
$(GO) build ${DEBUG_GO_GCFLAGS} ${GO_GCFLAGS} ${GO_BUILD_FLAGS} -o $@
${GO_LDFLAGS} ${GO_TAGS}  ./$<
endef

# Build a binary from a cmd.
bin/%: cmd/% FORCE
    $(call BUILD_BINARY)


> > ERROR: Logfile of failure stored in:
> > /ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa53-c=
rypto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/temp/lo=
g.do_package.2936320
> > ERROR: Task (/ws/extra/octopus/octave-kirkstone/build-cad-devel/../sour=
ces/meta-virtualization/recipes-containers/runc/runc-opencontainers_git.bb:=
do_package)
> > failed with exit code '1'
> > Pseudo log:
> > inode mismatch:
> > '/ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa53-=
crypto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/image/=
usr/bin/docker-runc'
> > ino 84410787 in db, 84431171 in request.
> > Setup complete, sending SIGUSR1 to pid 2936321.
> >
> > I'm sure these used to compile with Clang in dunfell so could this be
> > a toolchain problem?
> >
> > I'm using the kirkstone branch of meta-clang and have the following in
> > my distro conf
> > PREFERRED_PROVIDER_llvm =3D "clang"
> > PREFERRED_PROVIDER_llvm-native =3D "clang-native"
> > PREFERRED_PROVIDER_nativesdk-llvm =3D "nativesdk-clang"
> > PROVIDES:pn-clang =3D "llvm"
> > PROVIDES:pn-clang-native =3D "llvm-native"
> > PROVIDES:pn-nativesdk-clang =3D "nativesdk-llvm"
> >
> > and this in local.conf
> >
> > TOOLCHAIN ?=3D "clang"
> > RUNTIME ?=3D "llvm"
> >
> > I notice there is a kirkstone-clang12 branch in meta-clang, should I
> > be using this?
> > If not, any help in debugging this would be appreciated.
> >
> > Cheers,
> > Martin.
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#61459): https://lists.yoctoproject.org/g/yocto/mess=
age/61459
> > Mute This Topic: https://lists.yoctoproject.org/mt/102139152/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gma=
il.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

