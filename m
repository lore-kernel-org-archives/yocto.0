Return-Path: <kuzemkoyocto@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F8BEC636CD
	for <webhook@archiver.kernel.org>; Tue, 31 Jan 2023 06:57:32 +0000 (UTC)
Subject: Re: [meta-raspberrypi] Is Preempt-rt still supported in master / latest releases?
To: yocto@lists.yoctoproject.org
From: "Kuzemko Aleksandr" <kuzemkoyocto@gmail.com>
X-Originating-Location: Vinnytsia, Vinnytsya Oblast, UA (78.154.187.27)
X-Originating-Platform: Linux Firefox 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 30 Jan 2023 22:57:28 -0800
References: <20057.1674650953536874663@lists.yoctoproject.org>
In-Reply-To: <20057.1674650953536874663@lists.yoctoproject.org>
Message-ID: <4851.1675148248347125864@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="h8DJrwVesW7CFfokBMuN"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Jan 2023 06:57:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59113

--h8DJrwVesW7CFfokBMuN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

My results: (32bit CM4 system)
uname -a
Linux b2qt-raspberrypi4 5.15.56-rt56-v7l #1 SMP PREEMPT_RT Fri Jul 22 13:23=
:23 UTC 2022 armv7l GNU/Linux

I create linux-raspberrypi_5.15.bbappend and add
SRC_URI +=3D " \
file://patch-5.15.86-rt56.patch \
file://rt.cfg \
"
in rt.cfg I put
CONFIG_PREEMPT_RT=3Dy

with new line at the end.

--h8DJrwVesW7CFfokBMuN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"font-family: monospace;"><span style=3D"color: #000000; back=
ground-color: #ffffff;">My results: (32bit CM4 system)<br />uname -a </span=
><br />Linux b2qt-raspberrypi4 5.15.56-rt56-v7l #1 SMP PREEMPT_RT Fri Jul 2=
2 13:23:23 UTC 2022 armv7l GNU/Linux<br /><br />I create </span><span style=
=3D"font-family: monospace;"><span style=3D"color: #000000; background-colo=
r: #ffffff;">linux-raspberrypi_5.15.bbappend and add <br /></span></span><s=
pan style=3D"font-family: monospace;"><span style=3D"color: #000000; backgr=
ound-color: #ffffff;">SRC_URI +=3D " \ </span><br />&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://patch-5.15.86-rt56.patch \ <br=
 />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file:/=
/rt.cfg \ <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;"<br />in rt.cfg I put<br /></span><span style=3D"font-family: monos=
pace;"><span style=3D"color: #000000; background-color: #ffffff;">CONFIG_PR=
EEMPT_RT=3Dy<br /><br />with new line at the end.</span><br /></span>

--h8DJrwVesW7CFfokBMuN--

