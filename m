Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69872C433EF
	for <webhook@archiver.kernel.org>; Tue, 28 Jun 2022 10:09:44 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web08.54174.1656410977495173713
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jun 2022 03:09:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bjWd2wFr;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id
 c130-20020a1c3588000000b0039c6fd897b4so9095734wma.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jun 2022 03:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=Pt36AiBhHRH0wxfzrudPZYbgIUiwW46SCr7mZZFayXA=;
        b=bjWd2wFrswLQEeA5knUqTpjMDQbsft9nFxD5GJJmO/by+zyP0mNelTzWa0xJYv/mTU
         ItD352lHZh06ILFPGFXQoHszZFeU9y+wASG0AM+iD4Da62wABPzuY6qD9fqWtRivk/cU
         zH4lqcpqH95s3msEWo2QDYDw9xHAOujiSmYn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=Pt36AiBhHRH0wxfzrudPZYbgIUiwW46SCr7mZZFayXA=;
        b=VDQi7TAmqrqa64gTxqkoioFuPhlFJbGy3XHh3sikT9QvknZdD1MEh7a5Ipm1DNdVP/
         3ndM0e02Z8nw+HmoDFFCE1132077yzmvrAdt81ITOuZNOHcEpvbbLexI5zLCgFsDcI9j
         b5C56c06xA97NS+qPTdDyNv5G/Mu5yVrTflFLXkdF/eDbVj39ARYaw9OSEUQluhOv6cL
         tXUENRPKGj8AAuc+h8raNpQVNqpxKcQSw5C0Hn2iNFNm3dFRt7zjNCtc7MXJflFubUEx
         tjivbHox8rQFaR0QXY7Gb7iG9QOr0cmG0aRpuU9s8ubvhHo1RTQiamVH4P+yOmo8LkO3
         o98Q==
X-Gm-Message-State: AJIora+DgK44h/iLpKD3znivvRZpM3R03LyGCZpQ6K3vBoOuEyuuyVY/
	wVTsKcx6wqmQJ16U3kJemTPFNA==
X-Google-Smtp-Source: 
 AGRyM1tFU5Rlkg5gMVFcAJd+Gg4L+CNdgpvWtIEegqoUz9UMjLXiKUEahGMMc2ZE+qDLoBeFrAr+XA==
X-Received: by 2002:a05:600c:2247:b0:3a0:540c:e93c with SMTP id
 a7-20020a05600c224700b003a0540ce93cmr2718224wmm.171.1656410975915;
        Tue, 28 Jun 2022 03:09:35 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:1624:49b4:7dc4:c660?
 ([2001:8b0:aba:5f3c:1624:49b4:7dc4:c660])
        by smtp.gmail.com with ESMTPSA id
 m17-20020adfe0d1000000b0021b866397a7sm13490239wri.1.2022.06.28.03.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 03:09:35 -0700 (PDT)
Message-ID: 
 <cc0d97a6c235cf16ebebaf4be5f4c646d503adac.camel@linuxfoundation.org>
Subject: Re: [yocto] Regression in rust-cross-canadian-aarch64
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Peter Bergin <peter@berginkonsult.se>, yocto@lists.yoctoproject.org
Date: Tue, 28 Jun 2022 11:09:34 +0100
In-Reply-To: <58c0ec3e-a06a-7829-1168-ef7e70b365f0@berginkonsult.se>
References: <16FA2096B2BC4C47.21247@lists.yoctoproject.org>
	 <58c0ec3e-a06a-7829-1168-ef7e70b365f0@berginkonsult.se>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jun 2022 10:09:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57398

On Tue, 2022-06-28 at 11:00 +0200, Peter Bergin wrote:
> On 2022-06-19 22:47, Peter Bergin wrote:
>=20
>=20
> The reason for this issue seems to be this commit:
>=20
>  =C2=A0=C2=A0=C2=A0 commit 781eaa955dce5deab47371c25dae72b36c011900
>  =C2=A0=C2=A0=C2=A0 Author: Richard Purdie <richard.purdie@linuxfoundatio=
n.org>
>  =C2=A0=C2=A0=C2=A0 Date:=C2=A0=C2=A0 Sat May 21 14:02:47 2022 +0100
>=20
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rust-common: Drop LLVM_TARGET=
 and simplify
>=20
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 This all seems over complicat=
ed for something which is=20
> basically always
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 one of two values. This might=
 even help cross-canadian work on=20
> something
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 which isn't x86-64.
>=20
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (From OE-Core rev: bd36593ba3=
db758b3eacc974e48468a665967961)
>=20
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Signed-off-by: Richard Purdie=
 <richard.purdie@linuxfoundation.org>
>=20
>=20
> When building rust-cross-canadian-aarch64 the file=20
> 'tmp/work/x86_64-nativesdk-pokysdk-linux/rust-cross-canadian-aarch64/1.60=
.0-r0/targets/aarch64-poky-linux.json'=20
> will be populated with the information '"llvm-target":=20
> "x86_64-unknown-linux-gnu"'. This will lead to object files in wrong=20
> format during 'Building stage2 std artifacts (x86_64-unknown-linux-gnu=
=20
> -> aarch64-poky-linux)' in the do_compile step.
>=20
> In 'meta/recipes-devtools/rust/rust-common.inc':
>=20
>  =C2=A0=C2=A0=C2=A0 # build tspec
>  =C2=A0=C2=A0=C2=A0 tspec =3D {}
>  =C2=A0=C2=A0=C2=A0 if bb.data.inherits_class('cross-canadian', d):
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tspec['llvm-target'] =3D d.ge=
tVar('RUST_HOST_SYS', arch_abi)
>  =C2=A0=C2=A0=C2=A0 else:
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tspec['llvm-target'] =3D d.ge=
tVar('RUST_TARGET_SYS', arch_abi)
>=20
> So for some reason it seems intentional to set 'llvm-target' to HOST_SYS=
=20
> when 'cross-canadian'. The behavior has changed with this patch. Before=
=20
> 'llvm-target' was set to RUST_TARGET_SYS for all target archs other than=
=20
> x86_64 where it was set to RUST_HOST_SYS. I guess this change has to do=
=20
> with the commit message 'This might even help cross-canadian work on=20
> something which isn't x86-64.'? But unfortunately it seems to break the=
=20
> case building on x86_64 for aarch64. It would be good to get some help=
=20
> here to sort this out.

I'm wondering if we need something like:

diff --git a/meta/recipes-devtools/rust/rust-common.inc b/meta/recipes-devt=
ools/rust/rust-common.inc
index 621cd4ad576..ef70c48d0f4 100644
--- a/meta/recipes-devtools/rust/rust-common.inc
+++ b/meta/recipes-devtools/rust/rust-common.inc
@@ -309,10 +309,7 @@ def rust_gen_target(d, thing, wd, features, cpu, arch,=
 abi=3D""):
=20
     # build tspec
     tspec =3D {}
-    if bb.data.inherits_class('cross-canadian', d):
-        tspec['llvm-target'] =3D d.getVar('RUST_HOST_SYS', arch_abi)
-    else:
-        tspec['llvm-target'] =3D d.getVar('RUST_TARGET_SYS', arch_abi)
+    tspec['llvm-target'] =3D d.getVar('RUST_TARGET_SYS', arch_abi)
     tspec['data-layout'] =3D d.getVarFlag('DATA_LAYOUT', arch_abi)
     tspec['max-atomic-width'] =3D int(d.getVarFlag('MAX_ATOMIC_WIDTH', arc=
h_abi))
     tspec['target-pointer-width'] =3D d.getVarFlag('TARGET_POINTER_WIDTH',=
 arch_abi)


?

Cheers,

Richard



