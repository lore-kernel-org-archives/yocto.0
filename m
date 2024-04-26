Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27553C4345F
	for <webhook@archiver.kernel.org>; Fri, 26 Apr 2024 17:49:48 +0000 (UTC)
Subject: Re: [yocto] issue adding the user with the yocto kirkstone
To: "Daniel" <dchvs11@gmail.com>, yocto@lists.yoctoproject.org
From: "Mahendra Sondagar" <mahendrasondagar08@gmail.com>
X-Originating-Location: Kosamba, Gujarat, IN (103.238.110.90)
X-Originating-Platform: Linux Firefox 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 26 Apr 2024 10:49:41 -0700
References: <3353.1714071458038827393@lists.yoctoproject.org>
In-Reply-To: <3353.1714071458038827393@lists.yoctoproject.org>
Message-ID: <27643.1714153781642827519@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NkAFwRxh2eZd6oIZ3ndn"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Apr 2024 17:49:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63005

--NkAFwRxh2eZd6oIZ3ndn
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hi.. @Daniel

Many Thanks for the support

This resolve the issue

EXTRA_USERS_PARAMS +=3D " useradd -m -s /bin/bash -P 'mahi' root;"

however,=C2=A0 when i build the image and try to login with the board then =
I can't

it's always returning as an incorrect password!

here is the logs .....

stm32mp1 login: root
Password:
Login incorrect

What's wrong with it ?

Thanks

--NkAFwRxh2eZd6oIZ3ndn
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>hi.. @Daniel </p>
<p>Many Thanks for the support</p>
<p>This resolve the issue</p>
<p>&nbsp;</p>
<p>EXTRA_USERS_PARAMS +=3D " useradd -m -s /bin/bash -P 'mahi' root;"</p>
<p>&nbsp;</p>
<p>however,&nbsp; when i build the image and try to login with the board th=
en I can't</p>
<p>it's always returning as an incorrect password!</p>
<p>here is the logs .....</p>
<p>&nbsp;</p>
<p>stm32mp1 login: root<br />Password:&nbsp;<br />Login incorrect</p>
<p>&nbsp;</p>
<p>What's wrong with it ?</p>
<p>&nbsp;</p>
<p>Thanks</p>

--NkAFwRxh2eZd6oIZ3ndn--

