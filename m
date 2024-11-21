Return-Path: <dl9pf@gmx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 726B3D6ED3D
	for <webhook@archiver.kernel.org>; Thu, 21 Nov 2024 14:03:03 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by mx.groups.io with SMTP id smtpd.web11.11278.1732197777564877416
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Nov 2024 06:02:58 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=dl9pf@gmx.de header.s=s31663417 header.b=aecXCA27;
 spf=pass (domain: gmx.de, ip: 212.227.15.15, mailfrom: dl9pf@gmx.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1732197771; x=1732802571; i=dl9pf@gmx.de;
	bh=e0bc6x4Gxs9c/hRjAmmB32eCP4yLWkTNj/FTehjUrf8=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:Content-Type:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=aecXCA27oTTr9GlB8xcUV4DeHXv3+SlrOivNCtNtDSi4HLap8IpydQ/gtEJgXiG4
	 OiBPMuXUEen19AlhFDVXVgABmwO87m9L9BtESIgpfIISyL7zFlR2KId0ziAAUc/7t
	 sYc7Ef45UDm0jsj96p9/A/ZGOrOa30YhyxSkg3yrOxE+ZgiQePtP1RycMkZxRbfOV
	 FwDqfhawJFrZjxA/HEQ+ECM2G4AS55mDu5hIwdUp3RirjoSAQWJbDCuov33PLKGhE
	 xL5hPL05LM9dTRLQ/ZF5vZQYAE7dFEjfitYT3GjOQDOTYAH6v35tc+hKG0chyipgG
	 Xu4UpN+v3dND95ThQA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from monster.localnet ([77.23.145.29]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MhU9Z-1tiDay3ClP-00oU5D; Thu, 21
 Nov 2024 15:02:51 +0100
From: Jan-Simon Moeller <dl9pf@gmx.de>
To: =?ISO-8859-1?Q?B=F6ckelmann=2C?= Thore <thore.boeckelmann@inoex.de>,
 yocto@lists.yoctoproject.org, mikko.rapeli@linaro.org
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] ext4 issues with scarthgap .wic image
Date: Thu, 21 Nov 2024 15:02:51 +0100
Message-ID: <3616744.dWV9SEqChM@monster>
In-Reply-To: <Zz78VhN_AkYV3Xys@nuoska>
References: 
 <ed7dbfe9-1861-4e5b-9954-03bf8404920a.970c85df-582b-4473-a7de-31be6a2b58c9.8a47a721-58ad-47e5-be44-609511a60ac9@emailsignatures365.codetwo.com>
 <FR3PPF317299CA979990F6DE852FE16CF238F222@FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM>
 <Zz78VhN_AkYV3Xys@nuoska>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Provags-ID: V03:K1:HjfGef8fpblT2f5TZXSIEUGliwEgzj7Vd4CNoHh2kBV1PLBvRgS
 X+8AKQmsP0xkmsML5/PK3aXWD8HLZ146At1zhCMM0dfgOY/B1V+v6AmUCpOnNRwkvLqHjbp
 DGNvF3bZgSXnNYTpmULScGTTudIRvOJ/7ckacdruJvFs9JvJy+b8lyvxtQET6F+DZHnHcDD
 SsltjjNlT7c2AmG8RRk8g==
UI-OutboundReport: notjunk:1;M01:P0:6yxn7qBvXAE=;bQUm9Tfki2yvnBFjVVMI36Ykfg2
 +JXsvXrhOjwdR006vf7PtjyGmtQFGxrdxQ15FF2aIbUI/eY8CLb607xIFq3gZ6CgqOMQe12/T
 HRPBY1O4GFtGErBLaCp7RQhdeaTRtgVFR0KBFZ+UsxXhUWqrWPYwToudP7p+xP+B1gPpG18WS
 79kfW0TpvktIDvdfWe+4ThdfyGUCc0YMWoe9G13YnIVjqJOKCQbcOcVzOU2MKT2D3qAUEfhKW
 fh4Ab8e8ePAR9CRQ7c5/h9BulbluhM152H7wMeY/dH4yYe+SNaNBsPg6QKoLGQJmXA8BhbUOc
 HEQVLRk5rMYGaFfpeHhcYXM7ajts3gjA8LfXCcvGQZ37njRaZcBedL+64jeYoplQZItZGryZD
 yyamyxz7gPsiqPkFKg93t5WuKiDsGxoPeuOom4HjPSHL5PflyKvPxZsBsLGkrzsoNvLZBKy/k
 OVKe4iuT8pShZHYhlLvAD3I3Fnb1G1KRnYwmiOdslc6WbyJveCSnEfNMqz2ckp135fnVgnebX
 r0G1FCuFyBotBIWxyShtDmCElircLb0U66Eu07Fiut8/S1iF3z5lYxVXNBqzXz84BwlAOxRCg
 b0W4a+MGb0KF9twkFF76k3HIh9pxhokET285k8dskzeuTk3TT/2prSq50EpcCbC0ZJlAIWbZu
 m1wGyzIwzIKyda8omjX8LtlVylebnPak0NLqvPGl062G3MY9+lqmFuqiyqqOmqfHALNrlXzHz
 QKWlqq0CaTLDGLIERepiKcGVI8jqGaraY6Qre71TfS/vDImk77nHHx9gb+J9IFuUxxvobg39J
 oQl0Dry1f+wRO/vyQfXtn4/nwoKVQo/ERdd6O5rgx5A5zH1tk/r8o0quBsBwZlhak+1FYCGN6
 IhSNfqQwJ6907bl7Jqi1Jf5GRWiO9+kaQOGUokOEwdojr0RpQdmfef23a
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Nov 2024 14:03:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64325

Hi !

it is metadata_csum_seed and orphan_file .=20

The change was introduced by an e2fsprogs update which deployed new defaults
and these are also used when creating the rootfs with a e2fsprogs-native .

Should be part of 1.47.1 and thus introduced here:
https://git.yoctoproject.org/poky/commit/meta/recipes-devtools/e2fsprogs?
id=3D453249e291817947af3d9cfdf8d1095ad1411f11

Upstream commit:
https://github.com/tytso/e2fsprogs/commit/
fe341d59ee9696f66ec8cd1bf9615ee1a107824f

We might dial-down the default a bit. But as Mikko said, we cannot stop=20
evolution. But we can limit it where needed.

Best,
Jan-Simon


Am Donnerstag, 21. November 2024, 10:24:38 CET schrieb Mikko Rapeli via=20
lists.yoctoproject.org:
> Hi,
>=20
> On Thu, Nov 21, 2024 at 09:18:13AM +0000, B=F6ckelmann, Thore wrote:
> > Hi Mikko!
> >=20
> > I found a different approach to resize the ext4 filesystem. Instead of
> > doing this while deploying the .wic image to the SD card, I simply
> > created a small systemd service, which does all the dirty work within t=
he
> > embedded system upon the first boot of the system. This works perfectly
> > and completely independent of my build system.
> Sounds good. Also systemd repartd is really handy for cases like this:
>=20
> https://www.freedesktop.org/software/systemd/man/latest/systemd-repart.ht=
ml
> https://www.freedesktop.org/software/systemd/man/latest/repart.d.html
>=20
> Cheers,
>=20
> -Mikko





