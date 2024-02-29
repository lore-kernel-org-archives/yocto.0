Return-Path: <jeffrey.simons@boonedam.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 332FDC48BF6
	for <webhook@archiver.kernel.org>; Thu, 29 Feb 2024 06:56:21 +0000 (UTC)
Subject: Re: [yocto] fitImage generation issue #kirkstone #yocto
To: Jeffrey Simons <jeffrey.simons@boonedam.com>,yocto@lists.yoctoproject.org
From: "Jeffrey Simons" <jeffrey.simons@boonedam.com>
X-Originating-Location: Krommenie, North Holland, NL (178.85.161.88)
X-Originating-Platform: Windows Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 28 Feb 2024 22:56:19 -0800
References: <6qkK.1709043739115307641.VHLP@lists.yoctoproject.org>
In-Reply-To: <6qkK.1709043739115307641.VHLP@lists.yoctoproject.org>
Message-ID: <23930.1709189779151110135@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Feb 2024 06:56:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62645

On Tue, Feb 27, 2024 at 03:22 PM, Jeffrey Simons wrote:

>
> Hello Yocto friends,
>=20
> I have an issue with the generation of an fitImage with initramfs. The
> creation of an fitImage where a kernel and device tree are combined works=
,
> but when I add an initramfs then the kernel creation keeps adding the fit=
Image
> without the initramfs.
>=20
> What I see on the debug output is the following:
> -->    FILES:kernel-image-fitimage=3D"/boot/fitImage-5.4.129+g828ec42a6a3=
2+p3
> /boot/fitImage"
>=20
> While I would expect something like:
> -->  =20
> FILES:kernel-image-fitimage=3D"/boot/fitImage-my-initramfs-name-5.4.129+g=
828ec42a6a32+p3
> /boot/fitImage"

I dove further down the rabbit hole and I think to know why this happens. t=
he deb package creation happens
before the initramfs bundle/creation. Most likely this has its good reasons=
 for that order (regarding dependencies)
but in our case this means that the deb file only contains a fitImage with =
a device tree. (Not good for us).=20

Perhaps this is a deb thingy and does this not happen with RPM or IPK, but =
I didn't dove into that due to the limited=20
time I had. So our solution for the time being will be to execute a rootfs =
post process command that copies the correct fitImage
into the boot folder which will end up in my ubi image.

Hopefully someone will find this information useful.

--=20
With kind regards,

Jeffrey Simons

Software Engineer
Royal Boon Edam International B.V.

