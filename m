Return-Path: <Anders.Montonen@iki.fi>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03D57C433F5
	for <webhook@archiver.kernel.org>; Wed, 29 Dec 2021 19:21:55 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web10.55013.1640805712868153467
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Dec 2021 11:21:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=HBuXF7ik;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	 s=20161220; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
	:List-Post:List-Owner:List-Archive;
	bh=fO85YuM+EMObpOENu8FbW+df5plwnQq7TaM3yfHMMHg=; b=HBuXF7ikRo607ixKjXSSG4GyOV
	TOBGHCYZpBIhgkqXSojiwcMb5Oa63oJb96q2en6jhFmDBV8/ujBSSIw/LEAvvhDmeu0NbZjA9S8ml
	FQO9P8FsvZbdUCR83dxwkDaKuSv1s3ByD4Wl8c0Xh+yXvSPWY4hBYqmgGtlflaxzZNwF7OtVPlHBn
	0srPzWeyIilgLp4ujGkKHcGZLbdIENONJ/mXBEITrTdXcVJnJc7c5B1rs6vzJT4xVJSnnR/TZYzEW
	eXTgcTWFcSJ7ge+Kmv6oiiBulXZVqM3UlMguqWuGlcoHE+STY4mNDPwhh41Ed/q2G7U9RPiJwJa/A
	FCfAe/Sg==;
Received: from 89-27-79-167.bb.dnainternet.fi ([89.27.79.167]
 helo=[192.168.1.137])
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1n2eWE-00048g-5I; Wed, 29 Dec 2021 21:21:50 +0200
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Subject: Re: [yocto] building image for Realtek RTS3916N mips SoC using vendor
 provided prebuilt external uClibc toolchain
From: Anders Montonen <Anders.Montonen@iki.fi>
In-Reply-To: 
 <CACfi_Z36+pYBU-jUKxa1qAQaVZDPi1NXwiubovv-+XM0onFVLg@mail.gmail.com>
Date: Wed, 29 Dec 2021 21:21:49 +0200
Cc: yocto@lists.yoctoproject.org,
 song li <ghosty.lee.1984@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <A98BAD8D-4355-424F-9949-1094B0C64A7A@iki.fi>
References: 
 <CACfi_Z0ct76Dv9o+NU_Wf3Hz0Eb7Gcsbbds3AkMuy_1511jhYw@mail.gmail.com>
 <ba8ff6fe-f017-38e9-e211-b91654de8d4c@gmail.com>
 <CACfi_Z36+pYBU-jUKxa1qAQaVZDPi1NXwiubovv-+XM0onFVLg@mail.gmail.com>
To: davis roman <davis.roman84@gmail.com>
X-Mailer: Apple Mail (2.3445.104.21)
X-SA-Exim-Connect-IP: 89.27.79.167
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Dec 2021 19:21:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55688

Hi,

> On 29 Dec 2021, at 9:53, davis roman <davis.roman84@gmail.com> wrote:
>=20
> I generated an internal mips toolchain built against musl and I tried
> to compile u-boot but unfortunately, I'm getting "opcode not
> supported" error messages. https://pastebin.com/QdcLxy69
> If instead I use the realtek provided prebuilt toolchain then u-boot
> compiles successfully. https://pastebin.com/zcQ5kc20
>=20
> I'm thinking that Realtek's toolchain has patches specific to their
> SoC that have not been pushed upstream. Could this be the reason I'm
> unable to compile uboot?

I=E2=80=99m guessing that your U-Boot config doesn=E2=80=99t set the =
correct MIPS architecture revision. The compiler error shows that =
you=E2=80=99re trying to assemble a MIPS32r1 instruction, but the =
compiler is targeting the original MIPS1 architecture. The Realtek =
toolchain may have set the default architecture to match the SoC, but =
the fix is to update the config to match the hardware.

Regards,
Anders Montonen=

