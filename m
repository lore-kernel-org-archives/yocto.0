Return-Path: <akarnil@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 461B2C83F09
	for <webhook@archiver.kernel.org>; Thu,  3 Jul 2025 10:16:25 +0000 (UTC)
Subject: Re: [yocto] Controlling host CPU utilization (avoiding building on e-cores)
To: "Mike Looijmans" <mike.looijmans@topic.nl>, yocto@lists.yoctoproject.org
From: akarnil@witekio.com
X-Originating-Location: Derby, England, GB (62.232.152.46)
X-Originating-Platform: Linux Firefox 139
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 03 Jul 2025 03:16:24 -0700
References: <0e853cc0-f521-4a1f-8421-24bd6093f901@topic.nl>
In-Reply-To: <0e853cc0-f521-4a1f-8421-24bd6093f901@topic.nl>
Message-ID: <6828.1751537784790282883@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9GkjVvD8vHLKMCK3Iuq5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Jul 2025 10:16:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65601

--9GkjVvD8vHLKMCK3Iuq5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I hate to have asked an AI for this but with a few fixes I managed to find =
a way

Adding this to `conf/local.conf`

BB_ENV_PASSTHROUGH_ADDITIONS +=3D "TASKSET"

And then building an image with

taskset -c 0-11 bitbake <image>

Allows you to force the cores to whatever you want, based on what Mike said=
, it's probably not helpful but nice to know

--9GkjVvD8vHLKMCK3Iuq5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I hate to have asked an AI for this but with a few fixes I managed to =
find a way<br /><br />Adding this to `conf/local.conf`</div>
<div>&nbsp;</div>
<div>BB_ENV_PASSTHROUGH_ADDITIONS +=3D "TASKSET"</div>
<div>&nbsp;</div>
<div>And then building an image with</div>
<div>&nbsp;</div>
<div>taskset -c 0-11 bitbake &lt;image&gt;<br /><br />Allows you to force t=
he cores to whatever you want, based on what Mike said, it's probably not h=
elpful but nice to know</div>

--9GkjVvD8vHLKMCK3Iuq5--

