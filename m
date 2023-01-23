Return-Path: <Carles.SoleMendi@de.bosch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E74DEC25B50
	for <webhook@archiver.kernel.org>; Mon, 23 Jan 2023 09:57:58 +0000 (UTC)
Subject: [meta-raspberrypi] Is Preempt-rt still supported in master / latest releases? #raspberrypi
To: yocto@lists.yoctoproject.org
From: "Carles Sole" <Carles.SoleMendi@de.bosch.com>
X-Originating-Location: Stuttgart, Baden-Württemberg, DE (194.39.218.18)
X-Originating-Platform: Windows Firefox 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 23 Jan 2023 01:57:55 -0800
Message-ID: <o9vf.1674467875781955712.h1Y2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ICO1eCqEILbMzjkld7pp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Jan 2023 09:57:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59028

--ICO1eCqEILbMzjkld7pp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

I would like to understand if it is still possible to build an image for ra=
spberrypi4-64 where the preempt-rt patch is applied to the kernel, e.g. by =
adding " PREFERRED_PROVIDER_virtual/kernel" to local.conf.

I could see that in older branches of [meta-raspberrypi] there was a specif=
ic recipe for the preempt-rt patch, e.g. linux-raspberrypi-rt_4.19.bb ( htt=
ps://github.com/agherzan/meta-raspberrypi/blob/warrior/recipes-kernel/linux=
/linux-raspberrypi-rt_4.19.bb ). This recipe was using the specific raspber=
rypi branch rpi-4.19.y-rt.

I see that in newer branches this rt branch disappeared but I was not able =
to understand the history and what is the current method to implement this =
patch, assuming is still supported.

Any hints on how to do this would be much appreciated.

Best Regards,
Carles

--ICO1eCqEILbMzjkld7pp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"font-family: arial, helvetica, sans-serif;">Hello all,</span=
><br /><br /><span style=3D"font-family: arial, helvetica, sans-serif;">I w=
ould like to understand if it is still possible to build an image for raspb=
errypi4-64 where the preempt-rt patch is applied to the kernel, e.g. by add=
ing "<span style=3D"left: 57.521px; top: 366.429px; font-size: 11pt; transf=
orm: scaleX(1.09105);" role=3D"presentation" dir=3D"ltr">PREFERRED_PROVIDER=
_virtual/kernel" to local.conf.<br /><br />I could see that in older branch=
es of [meta-raspberrypi] there was a specific recipe for the preempt-rt pat=
ch, e.g. </span></span><span class=3D"css-truncate css-truncate-target d-bl=
ock width-fit"><a class=3D"js-navigation-open Link--primary" title=3D"linux=
-raspberrypi-rt_4.19.bb" href=3D"https://github.com/agherzan/meta-raspberry=
pi/blob/warrior/recipes-kernel/linux/linux-raspberrypi-rt_4.19.bb" data-tur=
bo-frame=3D"repo-content-turbo-frame">linux-raspberrypi-rt_4.19.bb</a>. Thi=
s recipe was using the specific raspberrypi branch </span><span class=3D"cs=
s-truncate css-truncate-target d-block width-fit">rpi-4.19.y-rt.<br /><br /=
>I see that in newer branches this rt branch disappeared but I was not able=
 to understand the history and what is the current method to implement this=
 patch, assuming is still supported.<br /><br />Any hints on how to do this=
 would be much appreciated.<br /><br />Best Regards,<br />Carles<br /></spa=
n>

--ICO1eCqEILbMzjkld7pp--

