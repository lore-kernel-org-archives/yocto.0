Return-Path: <Carles.SoleMendi@de.bosch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44BF5C27C76
	for <webhook@archiver.kernel.org>; Wed, 25 Jan 2023 12:49:16 +0000 (UTC)
Subject: Re: [meta-raspberrypi] Is Preempt-rt still supported in master / latest releases?
To: yocto@lists.yoctoproject.org
From: "Carles Sole" <Carles.SoleMendi@de.bosch.com>
X-Originating-Location: Stuttgart, Baden-Württemberg, DE (194.39.218.19)
X-Originating-Platform: Windows Firefox 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 25 Jan 2023 04:49:13 -0800
References: <Y86v7Z+p68WpY13k@qwirkle>
In-Reply-To: <Y86v7Z+p68WpY13k@qwirkle>
Message-ID: <20057.1674650953536874663@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1dttwcoMZmhZyIuBAJIL"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Jan 2023 12:49:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59057

--1dttwcoMZmhZyIuBAJIL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex, Andrei,

thanks for your reply. Based on your feedback I've tried the following:
- I have downloaded the patch patch-5.15.86-rt56.patch from https://cdn.ker=
nel.org/pub/linux/kernel/projects/rt/5.15/ and stored in ./meta-raspberrypi=
/recipes-kernel/linux/files
- I have created a file linux-raspberrypi_%.bbappend in ./meta-raspberrypi/=
recipes-kernel/linux
- I have created a .cfg file with CONFIG_PREEMPT_RT_FULL =3D y in ./meta-ra=
spberrypi/recipes-kernel/linux/files
- I have added both patch and cfg file in bbappend using SRC_URI:append:rpi=
.

I can observe the following:
- patch and cfg files are available in ./build/tmp/work/raspberrypi4_64-agl=
-linux/linux-raspberrypi/1_5.15.34+gitAUTOINC+e1b976ee4f_0086da6acd-r0
- new folder linux-raspberrypi4_64-preempt-rt-build is available inside the=
 folder above. But the problem seems to be that CONFIG_PREEMPT_RT =3D y is =
not applied to the .config file. So it seems the preempt-rt kernel is built=
 but without the full preempt-rt support.
- When I do bitbake linux-raspberrypi -c menuconfig I cannot select the ful=
l real time preempt kernel, only preemptible option available is --> Preemp=
tible Kernel (Low-Latency Desktop). Fully Preemptible Kernel (Real-Time) is=
 not available.
- When I flash the image in the Rpi4 and run uname -r I see that the rt ker=
nel has been built --> 5.15.34.rt56.v8
- but only with PREEMPT option but without RT when I do uname -v --> #1 SMP=
 PREEMPT Tue Aug 9 21:20:00 UTC 2022 (without RT).

I have tried building linux-yocto-rt for qemu and there I see that CONFIG_P=
REEMP_RT =3D y is available in the .config file. Also if I open menuconfig =
I have the option to select in General setup --> Preemption Model --> Fully=
 Preemptible Kernel (Real-Time)

If you can provide any hints on what am I missing it would be highly apprec=
iated.

Best Regards,
Carles

--1dttwcoMZmhZyIuBAJIL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex, Andrei,<br /><br />thanks for your reply. Based on your feedback I=
've tried the following:<br />- I have downloaded the patch patch-5.15.86-r=
t56.patch from https://cdn.kernel.org/pub/linux/kernel/projects/rt/5.15/ an=
d stored in ./meta-raspberrypi/recipes-kernel/linux/files<br />- I have cre=
ated a file linux-raspberrypi_%.bbappend in ./meta-raspberrypi/recipes-kern=
el/linux<br />- I have created a .cfg file with CONFIG_PREEMPT_RT_FULL =3D =
y in ./meta-raspberrypi/recipes-kernel/linux/files<br />- I have added both=
 patch and cfg file in bbappend using SRC_URI:append:rpi.<br /><br />I can =
observe the following:<br />- patch and cfg files are available in ./build/=
tmp/work/raspberrypi4_64-agl-linux/linux-raspberrypi/1_5.15.34+gitAUTOINC+e=
1b976ee4f_0086da6acd-r0<br />- new folder linux-raspberrypi4_64-preempt-rt-=
build is available inside the folder above. But the problem seems to be tha=
t CONFIG_PREEMPT_RT =3D y is not applied to the .config file. So it seems t=
he preempt-rt kernel is built but without the full preempt-rt support.<br /=
>- When I do bitbake linux-raspberrypi -c menuconfig I cannot select the fu=
ll real time preempt kernel, only preemptible option available is --&gt; Pr=
eemptible Kernel (Low-Latency Desktop). Fully Preemptible Kernel (Real-Time=
) is not available.<br />- When I flash the image in the Rpi4 and run uname=
 -r I see that the rt kernel has been built --&gt; 5.15.34.rt56.v8 <br />- =
but only with PREEMPT option but without RT when I do uname -v --&gt; #1 SM=
P PREEMPT Tue Aug 9 21:20:00 UTC 2022 (without RT).<br /><br />I have tried=
 building linux-yocto-rt for qemu and there I see that CONFIG_PREEMP_RT =3D=
 y is available in the .config file. Also if I open menuconfig I have the o=
ption to select in General setup --&gt; Preemption Model --&gt; Fully Preem=
ptible Kernel (Real-Time) <br /><br />If you can provide any hints on what =
am I missing it would be highly appreciated.<br /><br />Best Regards,<br />=
Carles

--1dttwcoMZmhZyIuBAJIL--

