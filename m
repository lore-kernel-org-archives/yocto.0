Return-Path: <mlynch@hi-techniques.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34BB3C25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 15:47:59 +0000 (UTC)
Subject: Can someone help decipher what an error means #bitbake #kirkstone
To: yocto@lists.yoctoproject.org
From: mlynch@hi-techniques.com
X-Originating-Location: Madison, Wisconsin, US (24.159.236.186)
X-Originating-Platform: Windows Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 May 2024 08:47:58 -0700
Message-ID: <ylyl.1715874478415461344.p2g1@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="O399c30qh56lwexwzdQR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 15:47:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63120

--O399c30qh56lwexwzdQR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a recipe that gives me an error and I don't understand what it means=
 and/or what causes it.=C2=A0 If I knew what it meant I could probably fix =
it myself but I'm not sure where to look to do so.=C2=A0 The error message =
is pasted below.=C2=A0 This happens whenever I try to "bitbake" this recipe=
 without first doing a "bitbake -c cleansstate" on it.=C2=A0 Any ideas woul=
d be greatly appreciated because I loathe having to clean it every time I c=
hange something in the code.=C2=A0 Oh, BTW, I have 1/2 dozen recipes for ot=
her items and none of them have this issue.=C2=A0 Anyway here's the error m=
essage (kirkstone branch, genericx86-64 target):

*ERROR: Task (/.../libht2/libht2.bb:do_install) failed with exit code '1'*
*Pseudo log:*
*path mismatch [3 links]: ino 172501654 db '/.../tmp/work/core2-64-poky-lin=
ux/libht2/0.90-r0/package/usr/src/debug/libht2/0.90-r0/AnalogDevice.h' req =
'/.../tmp/work/core2-64-poky-linux/libht2/0.90-r0/AnalogDevice.h'.*
*Setup complete, sending SIGUSR1 to pid 2308081.*

Thanks in advance for any guidance anyone can provide.

--O399c30qh56lwexwzdQR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a recipe that gives me an error and I don't understand what it means=
 and/or what causes it.&nbsp; If I knew what it meant I could probably fix =
it myself but I'm not sure where to look to do so.&nbsp; The error message =
is pasted below.&nbsp; This happens whenever I try to "bitbake" this recipe=
 without first doing a "bitbake -c cleansstate" on it.&nbsp; Any ideas woul=
d be greatly appreciated because I loathe having to clean it every time I c=
hange something in the code.&nbsp; Oh, BTW, I have 1/2 dozen recipes for ot=
her items and none of them have this issue.&nbsp; Anyway here's the error m=
essage (kirkstone branch, genericx86-64 target):<br /><br />
<div style=3D"padding-left: 40px;"><strong><em><span style=3D"font-family: =
'times new roman', times;">ERROR: Task (/.../libht2/libht2.bb:do_install) f=
ailed with exit code '1'</span></em></strong></div>
<div style=3D"padding-left: 40px;"><strong><em><span style=3D"font-family: =
'times new roman', times;">Pseudo log:</span></em></strong></div>
<div style=3D"padding-left: 40px;"><strong><em><span style=3D"font-family: =
'times new roman', times;">path mismatch [3 links]: ino 172501654 db '/.../=
tmp/work/core2-64-poky-linux/libht2/0.90-r0/package/usr/src/debug/libht2/0.=
90-r0/AnalogDevice.h' req '/.../tmp/work/core2-64-poky-linux/libht2/0.90-r0=
/AnalogDevice.h'.</span></em></strong></div>
<div style=3D"padding-left: 40px;"><strong><em><span style=3D"font-family: =
'times new roman', times;">Setup complete, sending SIGUSR1 to pid 2308081.<=
/span></em></strong></div>
<br />Thanks in advance for any guidance anyone can provide.

--O399c30qh56lwexwzdQR--

