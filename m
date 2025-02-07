Return-Path: <emailaddress.ashish@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A5EC0219B
	for <webhook@archiver.kernel.org>; Fri,  7 Feb 2025 06:33:10 +0000 (UTC)
Subject: Help to understand buildhistory installed-package-sizes.txt 
To: yocto@lists.yoctoproject.org
From: emailaddress.ashish@gmail.com
X-Originating-Location: Bhubaneswar, Odisha, IN (106.222.202.46)
X-Originating-Platform: Linux Firefox 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 06 Feb 2025 22:33:07 -0800
Message-ID: <tQXD.1738909987245736479.Qv8u@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jIriv4ICBYNujCPz7QxM"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 06:33:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64737

--jIriv4ICBYNujCPz7QxM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Members ,

I am tying to reduce the RFS for one BSP=C2=A0 and making use of =C2=A0buil=
dhistory / installed-package-sizes.txt
I was expecting this file will have all user-spaces packages only.
But i do see kernel-image-uimage & many kernel-modules also in the file.

Hence wanted to understand why this "RFS package list" has kernel and kerne=
l modules also included.
Any pointers will be helpful to understand things better.

Thanks ,
Ashish

--jIriv4ICBYNujCPz7QxM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Members ,</div>
<div>&nbsp;</div>
<div>I am tying to reduce the RFS for one BSP&nbsp; and making use of &nbsp=
;buildhistory / installed-package-sizes.txt&nbsp;</div>
<div>I was expecting this file will have all user-spaces packages only.</di=
v>
<div>But i do see kernel-image-uimage &amp; many kernel-modules also in the=
 file.</div>
<div>&nbsp;</div>
<div>Hence wanted to understand why this "RFS package list" has kernel and =
kernel modules also included.</div>
<div>Any pointers will be helpful to understand things better.</div>
<div>&nbsp;</div>
<div>Thanks ,<br />Ashish</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--jIriv4ICBYNujCPz7QxM--

