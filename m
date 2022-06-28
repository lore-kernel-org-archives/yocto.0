Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D673FC43334
	for <webhook@archiver.kernel.org>; Tue, 28 Jun 2022 11:38:54 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web12.54267.1656416329572768591
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jun 2022 04:38:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=U2qV6M+f;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id v14so17250419wra.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jun 2022 04:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=MR6FCnA8zdVfut6uPf/U3+ikW1DyerhnyUBaiIOOLGk=;
        b=U2qV6M+fiYE1PbQxPlOhtvzKdJg4jlSqvMux/mjunw3iP3w0Rebqe1Q8C5UA15KzFD
         +c9CWahLsjOZQWts/sJLTZBMwWBAMfqHzXYKdGANjfKGgrem263HLMkDvJiw/7Yffwuk
         /KpMuccD7cgPTsLWNuLRnv2N7y3sNotrypRec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=MR6FCnA8zdVfut6uPf/U3+ikW1DyerhnyUBaiIOOLGk=;
        b=Tv8EvI8stnCasmWfhgc8gYUUBQzVG0xRZ177u9W0Tkfo7Q83eIw5bfGQwv7/fXY5cy
         awEtm1xqP/YHlzdraVpWOZ2TxXQHGOJ5qIJwpKfJ922hphPKCXNlHxN0CFlvgARUbGj5
         w/jEYPSZcPWlIB83+cDpffav+MyZkDr512Xij07mCJGQa/ut4VBYYvWWu6r2spH4M4SK
         HMZ/oNywKR0FepnOuMgNNcUV68RW7hHN9MTg2jZ6CHNlwuTIqzlho//uzAvsAr2EGaQB
         sKQWo9fqeb9NSgZ5s4fV4OJALSue7dgAKeQNOvHXuuhvsWp27TRoWrZ8o/uS6Y1px5fI
         pC+A==
X-Gm-Message-State: AJIora/WVLAQwM6wNPARz+cQ0KlR11npOP59f9fYRaObgDNNk5NHDLUl
	5uGBShCbxfvIjWDIA7C0rfzwsw==
X-Google-Smtp-Source: 
 AGRyM1sdarxBg5ca0j85gq2w8n8QL5XxRwf7u1yzVmozw0yJdcQh4YPMOqnBia6SlGK+hsgSclMXhQ==
X-Received: by 2002:adf:d1c4:0:b0:21b:90c3:9cec with SMTP id
 b4-20020adfd1c4000000b0021b90c39cecmr17552000wrd.471.1656416328005;
        Tue, 28 Jun 2022 04:38:48 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:1624:49b4:7dc4:c660?
 ([2001:8b0:aba:5f3c:1624:49b4:7dc4:c660])
        by smtp.gmail.com with ESMTPSA id
 11-20020a05600c268b00b003a03a8475bfsm16405605wmt.16.2022.06.28.04.38.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 04:38:47 -0700 (PDT)
Message-ID: 
 <2d04b7d16c6c6552b897f1ff73d34995023e311b.camel@linuxfoundation.org>
Subject: Re: [yocto] Regression in rust-cross-canadian-aarch64
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Peter Bergin <peter@berginkonsult.se>, yocto@lists.yoctoproject.org
Date: Tue, 28 Jun 2022 12:38:45 +0100
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
 <yocto@lists.yoctoproject.org>; Tue, 28 Jun 2022 11:38:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57400

On Tue, 2022-06-28 at 11:00 +0200, Peter Bergin wrote:
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

I've spent an age staring at this code this morning. I don't think
cross-canadian has ever worked properly. It might happen that some
combinations build but there are also some that don't and clearly never
have.

SDKMACHINE =3D "aarch64", MACHINE =3D "qemuarm64" certainly doesn't work.
It appears to be missing a ninja-native dependency and when that is
added, it can't find rust-llvm.

Looking at the do_configure from rust.inc, it considers BUILD triplets
and TARGET triplets but not HOST ones, which probably dooms cross-
canadian to failure since there, BUILD !=3D HOST !=3D TARGET.

Someone is going to have to step up and sort out the canadian cross
rust pieces properly. Whilst my patch probably did regress one config,
I think there are much deeper issues in there.

Cheers,

Richard




