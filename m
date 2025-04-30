Return-Path: <jatedev@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA888C369D9
	for <webhook@archiver.kernel.org>; Wed, 30 Apr 2025 20:56:55 +0000 (UTC)
Subject: Re: [yocto] fitimage build code and DEPLOY_DIR
To: "Jate Sujjavanich" <jatedev@gmail.com>, yocto@lists.yoctoproject.org
From: "Jate Sujjavanich" <jatedev@gmail.com>
X-Originating-Location: Tallahassee, Florida, US (67.177.99.94)
X-Originating-Platform: Mac Firefox 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 30 Apr 2025 13:56:54 -0700
References: <1Rsv.1745965070672369580.P2NB@lists.yoctoproject.org>
In-Reply-To: <1Rsv.1745965070672369580.P2NB@lists.yoctoproject.org>
Message-ID: <2443.1746046614664876102@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wyk4tBdfq3yTODnEik1G"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Apr 2025 20:56:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65273

--wyk4tBdfq3yTODnEik1G
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'll post a fix for reference.

This was because the image CONVERSION_CMD code runs in IMGDEPLOYDIR which d=
oes lead to DEPLOY_DIR sstate interference. The fix is to perform these ope=
rations in B instead and copy the output to IMGDEPLOYDIR.

Jate S.

--wyk4tBdfq3yTODnEik1G
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'll post a fix for reference.</div>
<div>&nbsp;</div>
<div>This was because the image CONVERSION_CMD code runs in IMGDEPLOYDIR wh=
ich does lead to DEPLOY_DIR sstate interference. The fix is to perform thes=
e operations in B instead and copy the output to IMGDEPLOYDIR.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Jate S.</div>

--wyk4tBdfq3yTODnEik1G--

