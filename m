Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A28ECF5398
	for <webhook@archiver.kernel.org>; Wed, 23 Oct 2024 14:39:22 +0000 (UTC)
Subject: error while adding device tree overlay for UART to the image #bitbake #linux
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Hamilton, Ontario, CA (72.138.19.58)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 23 Oct 2024 07:39:16 -0700
Message-ID: <6kB9.1729694356995050356.znfv@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gQxIcEG1bF6T20BQFM4Z"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Oct 2024 14:39:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64096

--gQxIcEG1bF6T20BQFM4Z
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

This question comes from building Raspberry Pi 5 image in Yocto.

I am trying to add uart device tree overlays to the image.
What's done is to add the overlays in the machine configuration:

>=20
> RPI_KERNEL_DEVICETREE_OVERLAYS +=3D " \
> overlays/uart0-pi5.dtbo \
> overlays/uart1-pi5.dtbo \
> overlays/uart2-pi5.dtbo \
> overlays/uart3-pi5.dtbo \
> overlays/uart4-pi5.dtbo \
> "
>=20

They are also automatically added to KERNEL_DEVICETREE and it works fine to=
 generate the dt overlay binary in building a Linux kernel.

Then when building the image, there is an error as below:

>=20
> | DEBUG: Executing shell function do_image_wic
> | INFO: Creating image(s)...
> |
> | WARNING: bootloader config not specified, using defaults
> |
> | ERROR: Malformed boot file entry: uart0-pi5.dtbo;
> |
> | WARNING: exit code 1 from a shell command.
>=20

I am using a custom layer based on Poky scarthgap and meta-raspberrypi scar=
thgap.
What might be missed in the recipes? It looks like there is some check when=
 packing the wic image. Any inputs will be appreciated.

Thanks!
Crane

--gQxIcEG1bF6T20BQFM4Z
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>This question comes from building Raspberry Pi 5 image in Yocto.&nbsp;=
</div>
<div>&nbsp;</div>
<div>I am trying to add uart device tree overlays to the image.&nbsp;</div>
<div>What's done is to add the overlays in the machine configuration:</div>
<blockquote>
<div>RPI_KERNEL_DEVICETREE_OVERLAYS +=3D " \<br />&nbsp; &nbsp; &nbsp; &nbs=
p; overlays/uart0-pi5.dtbo \<br />&nbsp; &nbsp; &nbsp; &nbsp; overlays/uart=
1-pi5.dtbo \<br />&nbsp; &nbsp; &nbsp; &nbsp; overlays/uart2-pi5.dtbo \<br =
/>&nbsp; &nbsp; &nbsp; &nbsp; overlays/uart3-pi5.dtbo \<br />&nbsp; &nbsp; =
&nbsp; &nbsp; overlays/uart4-pi5.dtbo \<br />"</div>
</blockquote>
<div>They<span style=3D"background-color: var(--light-mode-body-color);">&n=
bsp;</span><span style=3D"background-color: var(--light-mode-body-color);">=
are</span><span style=3D"background-color: var(--light-mode-body-color);">&=
nbsp;</span><span style=3D"background-color: var(--light-mode-body-color);"=
>also automatically added to KERNEL_DEVICETREE and it works fine to generat=
e the dt overlay binary in building a Linux kernel.</span></div>
<div>&nbsp;</div>
<div>Then when building the image, there is an error as below:</div>
<blockquote>
<div>| DEBUG: Executing shell function do_image_wic<br />| INFO: Creating i=
mage(s)...<br />|&nbsp;<br />| WARNING: bootloader config not specified, us=
ing defaults<br />|&nbsp;<br />| ERROR: Malformed boot file entry: uart0-pi=
5.dtbo;<br />|&nbsp;<br />| WARNING: exit code 1 from a shell command.</div=
>
</blockquote>
<div>&nbsp;</div>
<div>I am using a custom layer based on Poky scarthgap and meta-raspberrypi=
 scarthgap.&nbsp;</div>
<div>What might be missed in the recipes? It looks like there is some check=
 when packing the wic image. Any inputs will be appreciated.</div>
<div>&nbsp;</div>
<div>Thanks!</div>
<div>Crane</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--gQxIcEG1bF6T20BQFM4Z--

