Return-Path: <nikitagupta2509@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9991C05027
	for <webhook@archiver.kernel.org>; Thu,  2 Feb 2023 08:51:14 +0000 (UTC)
Subject: Include Driver in my imx-image #sdk #yocto #imx8 #kirkstone  #kernel #patch
To: yocto@lists.yoctoproject.org
From: "Nikita Gupta" <nikitagupta2509@gmail.com>
X-Originating-Location: Pune, Maharashtra, IN (103.174.140.188)
X-Originating-Platform: Linux Chrome 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 Feb 2023 00:51:13 -0800
Message-ID: <6qL9.1675327873124959941.pUOu@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pRG3oTfnXDBPlNtYZkOL"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 08:51:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59141

--pRG3oTfnXDBPlNtYZkOL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello List,

I am making kernel yocto image for imx8mplus. But according to my project r=
equirement i need different audio driver rather then default which comes wi=
th this linux image. I am able to see many drivers in following path:

*i* mx-yocto-bsp/build-xwayland/tmp/work-shared/imx8mp-lpddr4-evk/kernel-so=
urces/sound/soc/codecs

C code of desired driver is present in this. So i want to integrate this dr=
iver in my kernel image so what is the procedure or how can i know that thi=
s particular driver has added in my upcoming yocto image before baking filn=
al image through bitbake.
I also want to know that how can we know that which drivers are included be=
fore bitbake.

Question:=C2=A0 How can i integrate desired driver in imx8-image?

Thanks in advance
Nikita Gupta

--pRG3oTfnXDBPlNtYZkOL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello List,&nbsp;<br /><br />I am making kernel yocto image for imx8mplus. =
But according to my project requirement i need different audio driver rathe=
r then default which comes with this linux image. I am able to see many dri=
vers in following path:<br /><br /><em><strong>i</strong>mx-yocto-bsp/build=
-xwayland/tmp/work-shared/imx8mp-lpddr4-evk/kernel-sources/sound/soc/codecs=
<br /><br /></em>C code of desired driver is present in this. So i want to =
integrate this driver in my kernel image so what is the procedure or how ca=
n i know that this particular driver has added in my upcoming yocto image b=
efore baking filnal image through bitbake.<em><br />I also want to know tha=
t how can we know that which drivers are included before bitbake.<br /><br =
/></em>Question:&nbsp; How can i integrate desired driver in imx8-image?&nb=
sp;<br /><br />Thanks in advance<br />Nikita Gupta

--pRG3oTfnXDBPlNtYZkOL--

