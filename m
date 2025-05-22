Return-Path: <rroyce@textronsystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33C27C54E90
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 20:00:32 +0000 (UTC)
Subject: Re: [yocto] Do_package is changing permissions of files
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: rroyce@textronsystems.com
X-Originating-Location: US (151.165.215.253)
X-Originating-Platform: Windows Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 22 May 2025 13:00:30 -0700
References: <DC928146-FF39-416F-A240-DC9C4D6659B1@arm.com>
In-Reply-To: <DC928146-FF39-416F-A240-DC9C4D6659B1@arm.com>
Message-ID: <2503.1747944030173992672@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="T6Csr62JCVG8KKD9dYIF"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 20:00:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65408

--T6Csr62JCVG8KKD9dYIF
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Ross.

I didn't get an opportunity to try to reproduce with a package from walnasc=
ar but using debug-without-src to disable grabbing the source in the packag=
e resolved the file permissions being modified in the S directory.

--T6Csr62JCVG8KKD9dYIF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thanks Ross.</div>
<div>&nbsp;</div>
<div>I didn't get an opportunity to try to reproduce with a package from wa=
lnascar but using debug-without-src to disable grabbing the source in the p=
ackage resolved the file permissions being modified in the S directory.</di=
v>

--T6Csr62JCVG8KKD9dYIF--

