Return-Path: <mattwood2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80317C4167B
	for <webhook@archiver.kernel.org>; Wed,  6 Dec 2023 21:48:01 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
 by mx.groups.io with SMTP id smtpd.web11.46463.1701899274307208959
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Dec 2023 13:47:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BqaAdTEA;
 spf=pass (domain: gmail.com, ip: 209.85.219.177, mailfrom: mattwood2000@gmail.com)
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-da077db5145so320890276.0
        for <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 13:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701899273; x=1702504073; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=avcp/EId6gKoGibqzgporoxkZLYyrqiFw+8re7aaux8=;
        b=BqaAdTEAdbX3SyOFWRQ37irTmXMdGPoNnbCLsls3bL0COEIAYM7dXUbIIrxpyw4jkr
         X6t/2f1l6hb3GtCCGhLFqepW2EezK0dhG9DgL6hrZmZ2ALTJrm49DCnOqk2dZDhS+VlO
         7S60UAsoCBd0+/Myy+wWHIeUYiQ8RHbYV5vCexZCg52+723q57KtRDE7yo4tSuJ6FCF5
         DFAd1pH3DnhOBkIRfyjbINb144peESvCKZEWeGRuFUL2cq2Cq6YDxXCahFG6yuumhKcT
         NeKYQwk5LImawsxzvgtfG/mV0lqd79lYvKg+wQ80rSr9IX61YxQtkqvnfHmtWiB3sZs5
         VPtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701899273; x=1702504073;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=avcp/EId6gKoGibqzgporoxkZLYyrqiFw+8re7aaux8=;
        b=gyUthcmw0UYMCJIELqw8176rJmC/zilzxNpjmb4vOFDpD5fuPJcND+g1nA5dCAPD8X
         0Uev+EnJeAM936G0FxyNjEIVd/nJoPpkUAJhayLb0kNfCYi2BQXoYuTfT4Jz6etCADep
         gr8iXedAqBh4ZjJozaSTEmoxUW8VKDYYF/OIU5Mx8ZhquIQn+JOgkMZgFFRTrUxBr3JZ
         HUnIJzbSJFPNbeaPBBCVtgCb49MqCGwtHZvD7Iw4K5+MnhEhqbSA0xqIJzA2fu2ja6AK
         wTKyVmR5+EAr81fLn6KTWeKqh3clS3DshhM2As1VCvnpIOMDApfmxHsA7c2NgESsAEMv
         2fhg==
X-Gm-Message-State: AOJu0YxkTSrhB1wpW8QuCorHn4MUsXVTzLNXWYGd9VFG+/8A6d3gGvkh
	kCzCqKnQ04xOzGEausna1W0qUfCgQ04tUt3aTifxZWUouSw=
X-Google-Smtp-Source: AGHT+IHzmn/lIWx2DTcInFHuYvpcBOFS/Y8YuQuVLSeToiGe/JSu58GJEdeEwUdiWQ3eviM8VTlHs/cHv1ph3MODcnI=
X-Received: by 2002:a25:d8c8:0:b0:db9:56f3:b5a9 with SMTP id
 p191-20020a25d8c8000000b00db956f3b5a9mr1375005ybg.127.1701899273245; Wed, 06
 Dec 2023 13:47:53 -0800 (PST)
MIME-Version: 1.0
From: mattwood2000@gmail.com
Date: Wed, 6 Dec 2023 16:47:42 -0500
Message-ID: <CADjezmYYxWD8YgFKQyboDhbO7V8OXrzHm5_N+aOJvjxth53btQ@mail.gmail.com>
Subject: initramfs creation
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a025ad060bde4d5b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 21:48:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61818

--000000000000a025ad060bde4d5b
Content-Type: text/plain; charset="UTF-8"

 Hi,

I'm trying to create a custom initramfs to handle some things before
switching root to my actual filesystem.  I followed the docs and have been
able to use INITRAMFS_IMAGE = "custom-image" and INITRAMFS_IMAGE_BUNDLE =
"1" to generate a zImage for my ARM platform.

The custom-image.bb recipe is based on the core-image-minimal-initramfs
recipe and is in a meta-layer that has another image recipe for the actual
eMMC filesystem image.  Both the eMMC image and initramfs bundle are
created.

In custom-image.bb, PACKAGE_INSTALL includes INITRAMFS_SCRIPTS which seem
to be geared towards live-image things but that's not what I want.

The image boots but hangs waiting for removable media.  I figured out that
/init is not pointing to systemd but the live-image script from
recipes-core/initrdscripts.

For testing I manually symlinked systemd to /init and the board boots but
it wants a login password which was never created, I'm guessing its not
inheriting debug-tweaks from my local.conf?

So my question is, what is the correct way to create a minimal initramfs
image along side the real recipe/image within a meta-layer?

Does anyone have an example of doing this?

Thanks, Matt.

--000000000000a025ad060bde4d5b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>=C2=A0Hi,</div><div><br></div><div>I&#39;m trying to =
create a custom initramfs to handle some things before switching root to my=
 actual filesystem.=C2=A0 I followed the docs and have been able to use INI=
TRAMFS_IMAGE =3D &quot;custom-image&quot; and INITRAMFS_IMAGE_BUNDLE =3D &q=
uot;1&quot; to generate a zImage for my ARM platform.</div><div><br></div><=
div>The <a href=3D"http://custom-image.bb">custom-image.bb</a> recipe is ba=
sed on the core-image-minimal-initramfs recipe and is in a meta-layer that =
has another image recipe for the actual eMMC filesystem image.=C2=A0 Both t=
he eMMC image and initramfs bundle are created.<br></div><div><br></div><di=
v>In <a href=3D"http://custom-image.bb">custom-image.bb</a>, PACKAGE_INSTAL=
L includes INITRAMFS_SCRIPTS which seem to be geared towards live-image thi=
ngs but that&#39;s not what I want.</div><div><br></div><div>The image boot=
s but hangs waiting for removable media.=C2=A0 I figured out that /init is =
not pointing to systemd but the live-image script from recipes-core/initrds=
cripts.</div><div><br></div><div>For testing I manually symlinked systemd t=
o /init and the board boots but it wants a login password which was never c=
reated, I&#39;m guessing its not inheriting debug-tweaks from my local.conf=
?<br></div><div><br></div><div>So my question is, what is the correct way t=
o create a minimal initramfs image along side the real recipe/image within =
a meta-layer?</div><div><br></div><div>Does anyone have an example of doing=
 this?</div><div><br></div><div>Thanks, Matt.<br></div></div>

--000000000000a025ad060bde4d5b--

