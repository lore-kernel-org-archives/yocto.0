Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33A55C5B543
	for <webhook@archiver.kernel.org>; Thu,  5 Jun 2025 16:40:03 +0000 (UTC)
Subject: Re: [yocto] systemd - Failed to start up manager => Freezing execution
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: "Joel GUITTET" <jguittet.opensource@witekio.com>
X-Originating-Location: =?UTF-8?B?VsOpbmlzc2lldXgsIEF1dmVyZ25lLVJow7RuZS1BbHBlcywgRlI=?= (78.120.129.156)
X-Originating-Platform: Linux Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 05 Jun 2025 09:40:02 -0700
References: <434B4617-E822-4DA1-9654-FF07A0FB50F2@arm.com>
In-Reply-To: <434B4617-E822-4DA1-9654-FF07A0FB50F2@arm.com>
Message-ID: <12982.1749141602121919636@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZUnIk3JNvCYae4EicvPs"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 16:40:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65475

--ZUnIk3JNvCYae4EicvPs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Good catch! I was looking only to the latest log...
Don't know where it has been removed for the moment by the way but adding C=
ONFIG_UNIX=3Dy and CONFIG_AF_UNIX_OOB=3Dy fixed the issue.
Thanks Ross

--ZUnIk3JNvCYae4EicvPs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Good catch! I was looking only to the latest log...</div>
<div>Don't know where it has been removed for the moment by the way but add=
ing CONFIG_UNIX=3Dy and CONFIG_AF_UNIX_OOB=3Dy fixed the issue.</div>
<div>Thanks Ross</div>

--ZUnIk3JNvCYae4EicvPs--

