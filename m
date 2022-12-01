Return-Path: <poornesh.g@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A070C4321E
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 17:21:25 +0000 (UTC)
Subject: Use my own custom kernel source in yocto #zeus
To: yocto@lists.yoctoproject.org
From: "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>
X-Originating-Location: Bengaluru, Karnataka, IN (106.196.27.220)
X-Originating-Platform: Linux Chrome 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 01 Dec 2022 09:21:18 -0800
Message-ID: <OZri.1669915278229241262.Z9sX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="w9c74J3XRy4sA1ifSTAM"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 17:21:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58710

--w9c74J3XRy4sA1ifSTAM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings !

I am working on NXP's i.MX6UL SoC . I have built yocto successfully for the=
 same . I want to use to my own custom linux kernel source which is cloned =
in my local PC in some specific directory (suppose in Desktop) , without us=
ing default kernel source installed during the yocto compilation .

I tried adding the below lines in "local.conf" file but it is not working .=
 Please help me out to achieve the same.

BRANCH_pn-linux-imx +=3D "v5.0"
SRC_URI_pn-linux-imx +=3D "git:///${HOME}/Desktop/linux;branch=3D${BRANCH}"
SRCREV_pn-linux-imx +=3D "${AUTOREV}"

Thanks

--w9c74J3XRy4sA1ifSTAM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings !<br /><br />I am working on NXP's i.MX6UL SoC . I have built yoc=
to successfully for the same . I want to use to my own custom linux kernel =
source which is cloned in my local PC in some specific directory (suppose i=
n Desktop) , without using default kernel source installed during the yocto=
 compilation .<br /><br />I tried adding the below lines in "local.conf" fi=
le but it is not working . Please help me out to achieve the same.<br /><br=
 />
<div>BRANCH_pn-linux-imx +=3D "v5.0"</div>
<div>SRC_URI_pn-linux-imx +=3D "git:///${HOME}/Desktop/linux;branch=3D${BRA=
NCH}"</div>
<div>SRCREV_pn-linux-imx +=3D "${AUTOREV}"<br /><br /><br />Thanks</div>
&nbsp;

--w9c74J3XRy4sA1ifSTAM--

