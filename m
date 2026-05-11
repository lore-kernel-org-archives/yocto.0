Return-Path: <Anders.Montonen@iki.fi>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 899A4CD3427
	for <webhook@archiver.kernel.org>; Mon, 11 May 2026 09:48:19 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.24])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.46363.1778492895156592067
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 May 2026 02:48:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=eoaDEVEF;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.24, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	s=20161220; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=CH9u0jBjPCRDw0hCVeFRCJqX6q2mwwcPBGTyF0fn2Sg=; b=eoaDEVEFXXwpJ+nwFC+uLvGjy+
	s87MRcarjV6hKX+N3wNrIHVrJNmMh8irV5fpk4aXTDmkZj5Mo7MhP0HqKqLIBCiEb5tEX/nzyHbuw
	1HB+OLbXULy6IpRAIM94l/iWamlaGtaH4Xg36x1c3H6Wx0QvgPWuA1b65x8jaurHbQInYkdf4JlVW
	0P7MFlwxlpe6Dk93J87mlmJgI7vvtzP2yI45tp4dsBZ//SXFePy2/CR00krKBa/yILxirIyl98K45
	1Z6OF3hp/bHKZFt9P+rSiqVxlCzRDhoD45uu9reLOYwtnSCUsKv+TF7odZ/H+a1SB4AooHZgp9q0P
	IQXOaFLg==;
Received: from 62-78-237-218.bb.dnainternet.fi ([62.78.237.218] helo=smtpclient.apple)
	by mail.kapsi.fi with esmtpsa (Exim 4.96)
	(envelope-from <Anders.Montonen@iki.fi>)
		id 1wMNFE-007u31-1w
	for yocto@lists.yoctoproject.org;
	Mon, 11 May 2026 12:48:12 +0300
From: Anders Montonen <Anders.Montonen@iki.fi>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.500.181\))
Subject: Problems adding initramfs when using FIT image
Message-Id: <ED150875-0486-4D10-ABDC-6E3EB2A39F1A@iki.fi>
Date: Mon, 11 May 2026 12:48:02 +0300
To: yocto@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3864.500.181)
X-Rspam-Score: -3.1 (---)
X-Rspam-Report: Action: no action
 Symbol: RCVD_TLS_ALL(0.00)
 Symbol: FROM_HAS_DN(0.00)
 Symbol: FROM_EQ_ENVFROM(0.00)
 Symbol: BAYES_HAM(-2.99)
 Symbol: LOCAL_OUTBOUND(0.00)
 Symbol: TO_DN_NONE(0.00)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: MIME_GOOD(-0.10)
 Symbol: ALIAS_RESOLVED(0.00)
 Symbol: MID_RHS_MATCH_FROM(0.00)
 Symbol: NEURAL_HAM(0.00)
 Symbol: APPLE_MAILER_COMMON(0.00)
 Symbol: FUZZY_RATELIMITED(0.00)
 Symbol: RCVD_VIA_SMTP_AUTH(0.00)
 Symbol: ARC_NA(0.00)
 Symbol: ASN(0.00)
 Symbol: RCVD_COUNT_ONE(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: RCPT_COUNT_ONE(0.00)
 Message-ID: ED150875-0486-4D10-ABDC-6E3EB2A39F1A@iki.fi
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 May 2026 09:48:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66524

Hi,

I=E2=80=99m trying to add an initrd to our build and I=E2=80=99m running =
into some weird issues. We are using Scarthgap with our own BSP and =
application layers, but the issues are at least partially reproducible =
with just Poky.

In my local.conf I have
INITRAMFS_IMAGE =3D =E2=80=9Ccore-image-minimal-initramfs=E2=80=9D

Depending on the value of INITRAMFS_IMAGE_BUNDLE I get different =
results, neither of which seems correct, or what I expected.

With INITRAMFS_IMAGE_BUNDLE =3D =E2=80=9C1=E2=80=9D, the /boot directory =
of the rootfs contains a dangling =E2=80=9CfitImage=E2=80=9D symlink, =
but the actual image is missing.
With INITRAMFS_IMAGE_BUNDLE =3D =E2=80=9C0=E2=80=9D, the /boot directory =
of the rootfs contains both the symlink and the image it is pointing at, =
but the image does not contain the initramfs image. If I look in the =
image deploy directory, a FIT image containing the initramfs has been =
created, but it does not get pulled into the image.

To reproduce with Poky, clone and checkout the =E2=80=9CScarthgap=E2=80=9D=
 branch, add the following to the local.conf and then build =
core-image-minimal:
MACHINE =3D =E2=80=9Cgenericarm64"
INITRAMFS_IMAGE =3D =E2=80=9Ccore-image-minimal-initramfs=E2=80=9D
KERNEL_CLASSES +=3D =E2=80=9Ckernel-fitimage=E2=80=9D
KERNEL_IMAGETYPE:genericarm64 =3D =E2=80=9CfitImage=E2=80=9D
INITRAMFS_IMAGE_BUNDLE =3D =E2=80=9C0=E2=80=9D

The boot directory of the rootfs will contain a =
=E2=80=9CfitImage-6.6.123-yocto-standard=E2=80=9D FIT image, but when =
inspected with uboot-dumpimage -l, it contains only the kernel and =
configuration. The image deploy directory will also contain a =
=E2=80=9CfitImage-core-image-minimal-initramfs-genericarm64=E2=80=936.6.12=
3+git0=E2=80=A6=E2=80=A6=E2=80=9D image that contains both the kernel =
and the initramfs.

If you try to build Poky with INITRAMFS_IMAGE_BUNDLE =3D =E2=80=9C1=E2=80=9D=
 this will fail in do_image_wic because the file =
=E2=80=9CfitImage-initramfs-genericarm64.bin=E2=80=9D can=E2=80=99t be =
found in the image deploy directory, which may be related.

Is there something simple I=E2=80=99m missing here?

Regards,
Anders=

