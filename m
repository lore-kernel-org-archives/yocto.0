Return-Path: <bhstalel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A249EC433F5
	for <webhook@archiver.kernel.org>; Thu, 25 Nov 2021 09:19:11 +0000 (UTC)
Subject: Re: cross-localedef file not found in do_rootfs #yocto #zeus
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (196.203.207.110)
X-Originating-Platform: Linux Chrome 96
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 25 Nov 2021 01:19:11 -0800
References: 
 <CAMKF1somq0XP74etgxf_wwgsX0defsg2DprBhKJ3wb9HyzF6Yw@mail.gmail.com>
In-Reply-To: 
 <CAMKF1somq0XP74etgxf_wwgsX0defsg2DprBhKJ3wb9HyzF6Yw@mail.gmail.com>
Message-ID: <6088.1637831951421749963@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LYPBTTBtcEFwFXjAnYug"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Nov 2021 09:19:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55419

--LYPBTTBtcEFwFXjAnYug
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the reply,

I tried adding IMAGE_LINGUAS =3D " ", it passes but do_image_cpio gives not=
hing (means no image.gpio.gz) is generated.
I don't know why.

--LYPBTTBtcEFwFXjAnYug
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the reply,<br /><br />I tried adding IMAGE_LINGUAS =3D " ", it p=
asses but do_image_cpio gives nothing (means no image.gpio.gz) is generated=
.<br />I don't know why.

--LYPBTTBtcEFwFXjAnYug--

