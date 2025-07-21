Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9A5AC83F1A
	for <webhook@archiver.kernel.org>; Mon, 21 Jul 2025 17:21:34 +0000 (UTC)
Subject: Re: [yocto] Generating 32-bit x86 native lib while MACHINE is set to ARM(essentially) #bitbake
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Jul 2025 10:21:34 -0700
References: <C4DB5DBA-1425-4B17-8F0D-5516A889CC74@arm.com>
In-Reply-To: <C4DB5DBA-1425-4B17-8F0D-5516A889CC74@arm.com>
Message-ID: <23575.1753118494471357763@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5H57vSrRrs4sb9ZzD08y"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 17:21:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65694

--5H57vSrRrs4sb9ZzD08y
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I wasn't expecting CMAKE to do this for me, I was just hopeful MULTILIBS wa=
s the right path, but I was starting to get the impression it only function=
ed for the MACHINE type specified for the build.

So hopefully all I have to do is create a native recipe that utilizes the e=
xisting openssh_3.2.1.bb and go from there.

--5H57vSrRrs4sb9ZzD08y
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I wasn't expecting CMAKE to do this for me, I was just hopeful MULTILI=
BS was the right path, but I was starting to get the impression it only fun=
ctioned for the MACHINE type specified for the build. </div>
<div>&nbsp;</div>
<div>So hopefully all I have to do is create a native recipe that utilizes =
the existing openssh_3.2.1.bb and go from there.</div>

--5H57vSrRrs4sb9ZzD08y--

