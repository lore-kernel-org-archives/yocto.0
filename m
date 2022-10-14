Return-Path: <nikitagupta2509@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75EF7C4332F
	for <webhook@archiver.kernel.org>; Fri, 14 Oct 2022 05:41:46 +0000 (UTC)
Subject: Apply Rt-Patch in raspberry yocto image #patch #rpi #yocto #bitbake #dunfell #kernel
To: yocto@lists.yoctoproject.org
From: "Nikita Gupta" <nikitagupta2509@gmail.com>
X-Originating-Location: Mumbai, Maharashtra, IN (27.106.71.209)
X-Originating-Platform: Windows Chrome 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Oct 2022 22:41:38 -0700
Message-ID: <Lzj7.1665726098781344800.W4EU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="W3WnRMWn2ju9ZsilK9It"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Oct 2022 05:41:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58335

--W3WnRMWn2ju9ZsilK9It
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All

I want to apply similar kernel version rt-patch in my rpi-basic-image for m=
y raspberrypi4-64 machine. So, I tried to apply rt-patch for a standard ras=
bian image (5.15.61-v8+) but not got success. i did the following things.

1. I downloaded required kernel sources from the kernel building instructio=
ns ( Raspberry Pi Documentation - The Linux kernel) ( https://www.raspberry=
pi.com/documentation/computers/linux_kernel.html#building )
2. I downloaded https://cdn.kernel.org/pub/linux/kernel/projects/rt/5.15/ol=
der/patch-5.15.65-rt49.patch.gz ( https://cdn.kernel.org/pub/linux/kernel/p=
rojects/rt/5.15/older/patch-5.15.65-rt49.patch.xz )
cd linux
3. zcat patch-5.15.65-rt49.patch.gz | patch -p1
But after rebooting my pi i am not able to see the patched kernel. I was ab=
out to do the same process with my rpi-basic-image. Can anyone tell me what=
 things I am doing wrong?
Or please tell me the standard way of rt-patching the kernel through yocto =
.

Any reply would be highly appreicated. Thanks in Advance.

--W3WnRMWn2ju9ZsilK9It
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All<br /><br />I want to apply similar kernel version rt-patch in my =
rpi-basic-image for my raspberrypi4-64 machine. So, I tried to apply rt-pat=
ch for a standard rasbian image (5.15.61-v8+) but not got success. i did th=
e following things.<br /><br />&nbsp; &nbsp; &nbsp; 1. I downloaded require=
d kernel sources from the kernel building instructions (<a href=3D"https://=
www.raspberrypi.com/documentation/computers/linux_kernel.html#building">Ras=
pberry Pi Documentation - The Linux kernel)</a><br />&nbsp; &nbsp; &nbsp; 2=
. I downloaded&nbsp;<a href=3D"https://cdn.kernel.org/pub/linux/kernel/proj=
ects/rt/5.15/older/patch-5.15.65-rt49.patch.xz" target=3D"_blank" rel=3D"no=
opener">https://cdn.kernel.org/pub/linux/kernel/projects/rt/5.15/older/patc=
h-5.15.65-rt49.patch.gz</a><br />&nbsp; &nbsp; &nbsp; &nbsp;cd linux<br />&=
nbsp; &nbsp; &nbsp; 3.&nbsp;<span style=3D"font-family: Inconsolata, monosp=
ace; font-size: 19px;">zcat patch-5.15.65-rt49.patch.gz | patch -p1&nbsp;<b=
r /></span>&nbsp; &nbsp; &nbsp; &nbsp;But after rebooting my pi i am not ab=
le to see the patched kernel. I was about to do the same process with my rp=
i-basic-image. Can anyone tell me what things I am doing wrong?<br />Or ple=
ase tell me the standard way of rt-patching the kernel through yocto .<br /=
><br />Any reply would be highly appreicated. Thanks in Advance.<br /><br /=
><br />

--W3WnRMWn2ju9ZsilK9It--

