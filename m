Return-Path: <taylor.winning@fundamentals-group.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EEBC433F5
	for <webhook@archiver.kernel.org>; Tue, 26 Apr 2022 01:28:46 +0000 (UTC)
Subject: Common directory creation between recipes #dunfell
To: yocto@lists.yoctoproject.org
From: taylor.winning@fundamentals-group.com
X-Originating-Location: Perth, Western Australia, AU (110.145.30.150)
X-Originating-Platform: Windows Firefox 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 25 Apr 2022 18:28:45 -0700
Message-ID: <95iR.1650936525967353209.Hw9g@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="w1vObrzcR6p8NvGKDEHB"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Apr 2022 01:28:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56889

--w1vObrzcR6p8NvGKDEHB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm wondering if there is a mechanism I could utilize to create target dire=
ctories in one place that is shared between recipes? I have an image that h=
as multiple packages being created and installed in the same directory. It =
has worked so far, but its fragile. Adding a new recipe that installed to t=
hese directories with the wrong permissions completely wrecked my running i=
mage. So I'm hoping to abstract the directory creation to one point to help=
 keep things consistent.

So far all I've come up with is a .inc file that assigns the install -d com=
mands to a variable which the individual recipes include and call during do=
_install. Is there a better way to do this?

Thanks,

--w1vObrzcR6p8NvGKDEHB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>
<p>I'm wondering if there is a mechanism I could utilize to create target d=
irectories in one place that is shared between recipes? I have an image tha=
t has multiple packages being created and installed in the same directory. =
It has worked so far, but its fragile. Adding a new recipe that installed t=
o these directories with the wrong permissions completely wrecked my runnin=
g image. So I'm hoping to abstract the directory creation to one point to h=
elp keep things consistent.</p>
<p>So far all I've come up with is a .inc file that assigns the install -d =
commands to a variable which the individual recipes include and call during=
 do_install. Is there a better way to do this?</p>
<p>Thanks,</p>

--w1vObrzcR6p8NvGKDEHB--

