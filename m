Return-Path: <flix.yocto@benfm.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 691F5CD4855
	for <webhook@archiver.kernel.org>; Tue, 12 May 2026 10:03:17 +0000 (UTC)
Received: from mail.benfm.de (mail.benfm.de [85.215.152.190])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.71757.1778580189480846930
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2026 03:03:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@benfm.de header.s=2024 header.b=wsRe5oFF;
 spf=pass (domain: benfm.de, ip: 85.215.152.190, mailfrom: flix.yocto@benfm.de)
Message-ID: <923a7f55-2a3c-435d-b18d-220cfcfd4ade@benfm.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=benfm.de; s=2024;
	t=1778580186;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8cW/W7b1DFCdQXoO6Y8AY8pyONZJYIEw6r64Te19Xvc=;
	b=wsRe5oFFfNSDAP0yP8f+x6zjRMpuB6LB48fByxIOCyQbeIFT8IMvZcVLcr+11X0g62k9EN
	0xy49wVDGa15in/Od4n2CsmXuBeo6SgrYa0tu30C88pABG807tuPGy6fLQmlUKtIWVFLcQ
	QJ7ZGYKswjQOw8QCDy3Xz8Mncb9YS2VKzli4w5YpAAgOHYF4TY9owmUm/p3QA0jrXr3EHf
	sw+6ii7qBa4H6BVM17fkJm9exWeE5BxDLeQlaDpL8P+yl+wiFkrfGvCSl7fyld1R/Kw1g8
	dfcS+pto44kh7EdCs52j4/I2hPiGFf0Ui4tOME3E5iGAZLdhY79zgbKaYDsWVg==
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=flix@benfm.de smtp.mailfrom=flix.yocto@benfm.de
Date: Tue, 12 May 2026 12:03:05 +0200
MIME-Version: 1.0
Subject: Re: [yocto] Problems adding initramfs when using FIT image
To: yocto@lists.yoctoproject.org, Anders.Montonen@iki.fi
References: <ED150875-0486-4D10-ABDC-6E3EB2A39F1A@iki.fi>
Content-Language: en-US
From: Felix Mellmann <flix.yocto@benfm.de>
In-Reply-To: <ED150875-0486-4D10-ABDC-6E3EB2A39F1A@iki.fi>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 May 2026 10:03:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66533

Hi Anders,

unfortunately I can't answer why the fitImage with the bundled initramfs=20
is not copied over to /boot but I want to tell, that=20
"INITRAMFS_IMAGE_BUNDLE" has a bit misleading name. Actually enabling=20
this option will generate=C2=A0 the initramfs first and then hand it over=
 to=20
the compile task which then incorporates the initramfs into the kernel=20
image itself. This is not what you want. You want a separate kernel=20
image, device-tree and initramfs which then gets bundled to a fitImage.

I think you should trace down which recipe installs the fitImage to=20
/boot and then maybe you just need to adjust a variable or two to make=20
the fitImage which bundles the initramfs to install to /boot instead of=20
that which doesn't.

Best regards,
Felix


On 5/11/26 11:48, Anders Montonen wrote:
> Hi,
>
> I=E2=80=99m trying to add an initrd to our build and I=E2=80=99m runnin=
g into some weird issues. We are using Scarthgap with our own BSP and app=
lication layers, but the issues are at least partially reproducible with =
just Poky.
>
> In my local.conf I have
> INITRAMFS_IMAGE =3D =E2=80=9Ccore-image-minimal-initramfs=E2=80=9D
>
> Depending on the value of INITRAMFS_IMAGE_BUNDLE I get different result=
s, neither of which seems correct, or what I expected.
>
> With INITRAMFS_IMAGE_BUNDLE =3D =E2=80=9C1=E2=80=9D, the /boot director=
y of the rootfs contains a dangling =E2=80=9CfitImage=E2=80=9D symlink, b=
ut the actual image is missing.
> With INITRAMFS_IMAGE_BUNDLE =3D =E2=80=9C0=E2=80=9D, the /boot director=
y of the rootfs contains both the symlink and the image it is pointing at=
, but the image does not contain the initramfs image. If I look in the im=
age deploy directory, a FIT image containing the initramfs has been creat=
ed, but it does not get pulled into the image.
>
> To reproduce with Poky, clone and checkout the =E2=80=9CScarthgap=E2=80=
=9D branch, add the following to the local.conf and then build core-image=
-minimal:
> MACHINE =3D =E2=80=9Cgenericarm64"
> INITRAMFS_IMAGE =3D =E2=80=9Ccore-image-minimal-initramfs=E2=80=9D
> KERNEL_CLASSES +=3D =E2=80=9Ckernel-fitimage=E2=80=9D
> KERNEL_IMAGETYPE:genericarm64 =3D =E2=80=9CfitImage=E2=80=9D
> INITRAMFS_IMAGE_BUNDLE =3D =E2=80=9C0=E2=80=9D
>
> The boot directory of the rootfs will contain a =E2=80=9CfitImage-6.6.1=
23-yocto-standard=E2=80=9D FIT image, but when inspected with uboot-dumpi=
mage -l, it contains only the kernel and configuration. The image deploy =
directory will also contain a =E2=80=9CfitImage-core-image-minimal-initra=
mfs-genericarm64=E2=80=936.6.123+git0=E2=80=A6=E2=80=A6=E2=80=9D image th=
at contains both the kernel and the initramfs.
>
> If you try to build Poky with INITRAMFS_IMAGE_BUNDLE =3D =E2=80=9C1=E2=80=
=9D this will fail in do_image_wic because the file =E2=80=9CfitImage-ini=
tramfs-genericarm64.bin=E2=80=9D can=E2=80=99t be found in the image depl=
oy directory, which may be related.
>
> Is there something simple I=E2=80=99m missing here?
>
> Regards,
> Anders
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66524): https://lists.yoctoproject.org/g/yocto/mess=
age/66524
> Mute This Topic: https://lists.yoctoproject.org/mt/119253465/8090339
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [flix.yocto@b=
enfm.de]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

