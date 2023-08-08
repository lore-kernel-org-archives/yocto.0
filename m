Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB3C04E69
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 18:39:01 +0000 (UTC)
Subject: Re: How to add a few lines in config.txt in Yocto project for Raspberry Pi
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Port Hope, Ontario, CA (72.38.198.131)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Aug 2023 11:38:56 -0700
References: <5592.1691518166816657006@lists.yoctoproject.org>
In-Reply-To: <5592.1691518166816657006@lists.yoctoproject.org>
Message-ID: <5592.1691519936233234884@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jePS1NBHWOM4cg2Wobkt"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 18:39:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60748

--jePS1NBHWOM4cg2Wobkt
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Now the issue is with the patch itself.

The patch is created by using "diff -ruN" is not working. The error is "no =
file to patch". I can understand this as the file compared to in the patch =
doesn't exist in the $(WORKDIR).

I changed to use "git format-patch" in the $(WORKDIR) to generate the patch=
. But still not working. The error is "does not apply (enforce with -f)".

And applying -f option got the same error.

Where is the problem? The way to create the patch or apply the patch.

--jePS1NBHWOM4cg2Wobkt
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Now the issue is with the patch itself.<br /><br />The patch is created by =
using "diff -ruN" is not working. The error is "no file to patch". I can un=
derstand this as the file compared to in the patch doesn't exist in the $(W=
ORKDIR).<br /><br />I changed to use "git format-patch" in the $(WORKDIR) t=
o generate the patch. But still not working. The error is "does not apply (=
enforce with -f)".<br /><br />And applying -f option got the same error.<br=
 /><br />Where is the problem? The way to create the patch or apply the pat=
ch.<br /><br />

--jePS1NBHWOM4cg2Wobkt--

