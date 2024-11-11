Return-Path: <matt.holmes@zethon.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39EDAD2E9DE
	for <webhook@archiver.kernel.org>; Mon, 11 Nov 2024 11:35:09 +0000 (UTC)
Subject: Kernel patch applying but not on image #kernel #linux #patch #scarthgap
To: yocto@lists.yoctoproject.org
From: "Matt" <matt.holmes@zethon.com>
X-Originating-Location: London, England, GB (109.176.155.130)
X-Originating-Platform: Linux Firefox 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 11 Nov 2024 03:35:04 -0800
Message-ID: <jGZl.1731324904657002921.ljdK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="S5K9Ytt2ZI0AhRrZcucP"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Nov 2024 11:35:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64249

--S5K9Ytt2ZI0AhRrZcucP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to make a kernel patch on spidev.c to fix a known issue in linu=
x 6.6. I have written the patch and I can see that it is applied in my buil=
d/tmp files however it is not functioning on the image.

My patch method is to create a recipes-kernel/linux directory in a custom l=
ayer, create a linux-libc-headers_6.6.bbappend file and create a /poky dire=
ctory for the patch files.

Here are what my patch files look like from meta-custom/recipes-kernel/linu=
x:

poky/0004-spidev.patch
1
2 Local patch for spidev
3
4 Upstream-Status: Inappropriate
5 ---
6 diff --git a/drivers/spi/spidev.c b/driver/spi/spidev.c
7 index d13dc15..ce4c8e9 100644
8 --- a/drivers/spi/spidev.c
9 +++ b/drivers/spi/spidev.c
10 @@ -704,6 +704,7 @@ static const struct file_operations spidev_fops =3D =
{
11 =C2=A0static struct class *spidev_class;
12
13 =C2=A0static const struct spi_device_id spidev_spi_ids[] =3D {
14 + =C2=A0 =C2=A0 =C2=A0 { .name =3D "bh2228fv" },
15 =C2=A0 =C2=A0 =C2=A0 =C2=A0 { .name =3D "dh2228fv" },
16 =C2=A0 =C2=A0 =C2=A0 =C2=A0 { .name =3D "ltc2488" },
17 =C2=A0 =C2=A0 =C2=A0 =C2=A0 { .name =3D "sx1301" },
18 @@ -739,6 +740,7 @@ static const struct of_device_id spidev_dt_ids[] =3D=
 {
19 =C2=A0 =C2=A0 =C2=A0 =C2=A0 { .compatible =3D "menlo,m53cpld", .data =3D=
 &spidev_of_check },
20 =C2=A0 =C2=A0 =C2=A0 =C2=A0 { .compatible =3D "micron,spi-authenta", .da=
ta =3D &spidev_of_check },
21 =C2=A0 =C2=A0 =C2=A0 =C2=A0 { .compatible =3D "rohm,dh2228fv", .data =3D=
 &spidev_of_check },
22 + =C2=A0 =C2=A0 =C2=A0 { .compatible =3D "rohm,bh2228fv", .data =3D &spi=
dev_of_check },
23 =C2=A0 =C2=A0 =C2=A0 =C2=A0 { .compatible =3D "semtech,sx1301", .data =
=3D &spidev_of_check },
24 =C2=A0 =C2=A0 =C2=A0 =C2=A0 { .compatible =3D "silabs,em3581", .data =3D=
 &spidev_of_check },
25 =C2=A0 =C2=A0 =C2=A0 =C2=A0 { .compatible =3D "silabs,si3210", .data =3D=
 &spidev_of_check },

linux-libc-headers_6.6.bbappend
1 FILESEXTRAPATHS:prepend :=3D "${THISDIR}:"
2 SRC_URI +=3D "file://0004-spidev.patch"

Please can someone let me know if any part of my patch is incorrect?

--S5K9Ytt2ZI0AhRrZcucP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,<br /><br />I am trying to make a kernel patch on spidev.c to fix a=
 known issue in linux 6.6. I have written the patch and I can see that it i=
s applied in my build/tmp files however it is not functioning on the image.=
<br /><br />My patch method is to create a recipes-kernel/linux directory i=
n a custom layer, create a linux-libc-headers_6.6.bbappend file and create =
a /poky directory for the patch files.<br /><br />Here are what my patch fi=
les look like from meta-custom/recipes-kernel/linux:</div>
<div>&nbsp;</div>
<div>poky/0004-spidev.patch</div>
<div>&nbsp; 1&nbsp;<br />&nbsp; 2 Local patch for spidev<br />&nbsp; 3&nbsp=
;<br />&nbsp; 4 Upstream-Status: Inappropriate<br />&nbsp; 5 ---<br />&nbsp=
; 6 diff --git a/drivers/spi/spidev.c b/driver/spi/spidev.c<br />&nbsp; 7 i=
ndex d13dc15..ce4c8e9 100644<br />&nbsp; 8 --- a/drivers/spi/spidev.c<br />=
&nbsp; 9 +++ b/drivers/spi/spidev.c<br />&nbsp;10 @@ -704,6 +704,7 @@ stati=
c const struct file_operations spidev_fops =3D {<br />&nbsp;11 &nbsp;static=
 struct class *spidev_class;<br />&nbsp;12 &nbsp;<br />&nbsp;13 &nbsp;stati=
c const struct spi_device_id spidev_spi_ids[] =3D {<br />&nbsp;14 + &nbsp; =
&nbsp; &nbsp; { .name =3D "bh2228fv" },<br />&nbsp;15 &nbsp; &nbsp; &nbsp; =
&nbsp; { .name =3D "dh2228fv" },<br />&nbsp;16 &nbsp; &nbsp; &nbsp; &nbsp; =
{ .name =3D "ltc2488" },<br />&nbsp;17 &nbsp; &nbsp; &nbsp; &nbsp; { .name =
=3D "sx1301" },<br />&nbsp;18 @@ -739,6 +740,7 @@ static const struct of_de=
vice_id spidev_dt_ids[] =3D {<br />&nbsp;19 &nbsp; &nbsp; &nbsp; &nbsp; { .=
compatible =3D "menlo,m53cpld", .data =3D &amp;spidev_of_check },<br />&nbs=
p;20 &nbsp; &nbsp; &nbsp; &nbsp; { .compatible =3D "micron,spi-authenta", .=
data =3D &amp;spidev_of_check },<br />&nbsp;21 &nbsp; &nbsp; &nbsp; &nbsp; =
{ .compatible =3D "rohm,dh2228fv", .data =3D &amp;spidev_of_check },<br />&=
nbsp;22 + &nbsp; &nbsp; &nbsp; { .compatible =3D "rohm,bh2228fv", .data =3D=
 &amp;spidev_of_check },<br />&nbsp;23 &nbsp; &nbsp; &nbsp; &nbsp; { .compa=
tible =3D "semtech,sx1301", .data =3D &amp;spidev_of_check },<br />&nbsp;24=
 &nbsp; &nbsp; &nbsp; &nbsp; { .compatible =3D "silabs,em3581", .data =3D &=
amp;spidev_of_check },<br />&nbsp;25 &nbsp; &nbsp; &nbsp; &nbsp; { .compati=
ble =3D "silabs,si3210", .data =3D &amp;spidev_of_check },</div>
<div>&nbsp;</div>
<div>linux-libc-headers_6.6.bbappend</div>
<div>&nbsp; 1 FILESEXTRAPATHS:prepend :=3D "${THISDIR}:"<br />&nbsp; 2 SRC_=
URI +=3D "file://0004-spidev.patch"</div>
<div>&nbsp;</div>
<div>Please can someone let me know if any part of my patch is incorrect?</=
div>

--S5K9Ytt2ZI0AhRrZcucP--

