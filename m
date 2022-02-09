Return-Path: <ksmanjunath681@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF3DCC433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 12:19:26 +0000 (UTC)
Subject: AUh: upgrading recipes bbppend files only #yocto
To: yocto@lists.yoctoproject.org
From: ksmanjunath681@gmail.com
X-Originating-Location: Melbourne, Victoria, AU (155.190.53.4)
X-Originating-Platform: Windows Chrome 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Feb 2022 04:19:26 -0800
Message-ID: <gP5N.1644409166710026367.bVoI@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="HGrmpVDEJPnhl0LaoM0p"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 12:19:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56116

--HGrmpVDEJPnhl0LaoM0p
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

HI ,
I am currently working upgrading=C2=A0 recipes using AUH(Auto Upgrade Helpe=
r ) tool where in i am able to upgrade recipes,
custom settings such as SRCBRANCH , SRCREV and SRC_URI in a recipe file of =
interest.
I am able to upgrade recipes in their recipe(.bb)files only i.e., after com=
pletion of upgrade process it is able
to update SRCREV commit hash to latest in the repo.
If i set the above mentioned variables in extended recipe files(.bbappend)=
=C2=A0 by removing in main recipe instead,
main recipe file still gets modified/added with variables SRCBRANCH and SRC=
REV(latest hash) after upgrade process
is completed, leaving behind same variables with previous data which was se=
t, how to make the tool to update extended recipes only.

Thanks & Regards,
Manjunath

--HGrmpVDEJPnhl0LaoM0p
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

HI ,<br />I am currently working upgrading&nbsp; recipes using AUH(Auto Upg=
rade Helper ) tool where in i am able to upgrade recipes,<br />custom setti=
ngs such as SRCBRANCH , SRCREV and SRC_URI in a recipe file of interest.<br=
 />I am able to upgrade recipes in their recipe(.bb)files only i.e., after =
completion of upgrade process it is able&nbsp;<br />to update SRCREV commit=
 hash to latest in the repo.<br />If i set the above mentioned variables in=
 extended recipe files(.bbappend)&nbsp; by removing in main recipe instead,=
<br />main recipe file still gets modified/added with variables SRCBRANCH a=
nd SRCREV(latest hash) after upgrade process<br />is completed, leaving beh=
ind same variables with previous data which was set, how to make the tool t=
o update extended recipes only.<br /><br /><br />Thanks &amp; Regards,<br /=
>Manjunath

--HGrmpVDEJPnhl0LaoM0p--

