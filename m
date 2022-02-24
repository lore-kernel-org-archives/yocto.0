Return-Path: <ksmanjunath681@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921B9C433F5
	for <webhook@archiver.kernel.org>; Thu, 24 Feb 2022 07:27:26 +0000 (UTC)
Subject: Updating BBappend files in yocto #yocto #python #devtool
To: yocto@lists.yoctoproject.org
From: ksmanjunath681@gmail.com
X-Originating-Location: Melbourne, Victoria, AU (155.190.53.4)
X-Originating-Platform: Windows Chrome 98
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 23 Feb 2022 23:27:13 -0800
Message-ID: <cJh1.1645687633224936291.YkrY@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hPaZqIxLR96A8CofdYwE"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Feb 2022 07:27:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56273

--hPaZqIxLR96A8CofdYwE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexander,
I looked into the various options provided by devtool upgrade/devtool finis=
h.
Unfortunately, it doesn't have the required options to update .bbappend fil=
es.

Below is a brief on my problem.

devtool upgrade doesn't consider updating .bbappend files of the recipe if =
they have overridden SRC related information.
For example, I have a .bbappend file in my custom layer that has overridden=
 SRC_URI, SRCBRANCH & SRCREV information for a recipe in poky.

When I tried to update the recipe with latest SRCREV using below command:
devtool upgrade -S <latest_commit_revision> <recipename>

The devtool upgrade by default updates the original recipe (.bb) in poky bu=
t not the .bbappend file in my custom layer.
I briefly looked into the devtool upgrade sources to confirm this behavior =
as well.

Is this an expected behavior?
There could be cases where the .bbappend files might override the SRC relat=
ed information and we expect the devtool to upgrade the respective .bbappen=
d file?

Thanks.

--hPaZqIxLR96A8CofdYwE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">Hi Alexander,<br/>I looked into the vari=
ous options provided by devtool upgrade/devtool finish.<br/>Unfortunately, =
it doesn&#39;t have the required options to update .bbappend files.<br/><br=
/>Below is a brief on my problem.<br/><br/>devtool upgrade doesn&#39;t cons=
ider updating .bbappend files of the recipe if they have overridden SRC rel=
ated information.<br/>For example, I have a .bbappend file in my custom lay=
er that has overridden SRC_URI, SRCBRANCH &amp; SRCREV information for a re=
cipe in poky.<br/><br/>When I tried to update the recipe with latest SRCREV=
 using below command:<br/>devtool upgrade -S &lt;latest_commit_revision&gt;=
 &lt;recipename&gt;<br/><br/>The devtool upgrade by default updates the ori=
ginal recipe (.bb) in poky but not the .bbappend file in my custom layer.<b=
r/>I briefly looked into the devtool upgrade sources to confirm this behavi=
or as well.<br/><br/>Is this an expected behavior?<br/>There could be cases=
 where the .bbappend files might override the SRC related information and w=
e expect the devtool to upgrade the respective .bbappend file?<br/><br/>Tha=
nks.</span></p>

--hPaZqIxLR96A8CofdYwE--

