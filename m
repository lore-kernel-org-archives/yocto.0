Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923D7C04A6A
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 18:09:31 +0000 (UTC)
Subject: Re: How to add a few lines in config.txt in Yocto project for Raspberry Pi
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Port Hope, Ontario, CA (72.38.198.131)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Aug 2023 11:09:26 -0700
References: <CANDCFSyTNhLgrHD74ac2hxpF67y6KYGP1E45zA=RF91G7TaMcA@mail.gmail.com>
In-Reply-To: <CANDCFSyTNhLgrHD74ac2hxpF67y6KYGP1E45zA=RF91G7TaMcA@mail.gmail.com>
Message-ID: <5592.1691518166816657006@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cqJwbzEJ5PWVraMX3St3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 18:09:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60744

--cqJwbzEJ5PWVraMX3St3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Daniel for your input.

Yes I tried and it works to find the patch now. It should be in curly brace=
s.

I am wondering why it couldn't be identified by checking the environment FI=
LESEXTRAPATHS. Not matter round braces or curly braces are used, the value =
of this variable keeps the same as below:
crane@Ubuntu2204:~/yocto-pi/build$ bitbake -e farview-image-base | grep ^FI=
LESEXTRAPATHS=3D
FILESEXTRAPATHS=3D"__default:"

crane@Ubuntu2204:~/yocto-pi/build$ bitbake -e farview-image-base | grep ^FI=
LESEXTRAPATHS=3D
FILESEXTRAPATHS=3D"__default:"

crane@Ubuntu2204:~/yocto-pi/build$

--cqJwbzEJ5PWVraMX3St3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Daniel for your input.<br /><br />Yes I tried and it works to find t=
he patch now. It should be in curly braces.<br /><br />I am wondering why i=
t couldn't be identified by checking the environment FILESEXTRAPATHS. Not m=
atter round braces or curly braces are used, the value of this variable kee=
ps the same as below:<br />
<div>crane@Ubuntu2204:~/yocto-pi/build$ bitbake -e farview-image-base | gre=
p ^FILESEXTRAPATHS=3D</div>
<div>FILESEXTRAPATHS=3D"__default:"</div>
<div>&nbsp;</div>
<div>crane@Ubuntu2204:~/yocto-pi/build$ bitbake -e farview-image-base | gre=
p ^FILESEXTRAPATHS=3D</div>
<div>FILESEXTRAPATHS=3D"__default:"</div>
<div>&nbsp;</div>
<div>crane@Ubuntu2204:~/yocto-pi/build$</div>

--cqJwbzEJ5PWVraMX3St3--

