Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF16C83F34
	for <webhook@archiver.kernel.org>; Thu, 17 Jul 2025 16:48:35 +0000 (UTC)
Subject: Re: [yocto] Environmental variable present in do_compile() {}, bitbake recipe -e, but is missing from do_configure() {} #bitbake
To: "Quentin Schulz" <quentin.schulz@cherry.de>, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 17 Jul 2025 09:48:35 -0700
References: <e0e5b150-55a2-42ae-9d90-ec2f0023c93b@cherry.de>
In-Reply-To: <e0e5b150-55a2-42ae-9d90-ec2f0023c93b@cherry.de>
Message-ID: <29250.1752770915071927700@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="s4bKMfkMo2kkjbZDJLI9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Jul 2025 16:48:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65676

--s4bKMfkMo2kkjbZDJLI9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Ah, I'm using a script to do this in a repeatable fashion, so I forgot that=
 the last thing it does is

export BB_ENV_PASSTHROUGH_ADDITIONS=3D"$BB_ENV_PASSTHROUGH_ADDITIONS ABC"

--s4bKMfkMo2kkjbZDJLI9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Ah, I'm using a script to do this in a repeatable fashion, so I forgot=
 that the last thing it does is</div>
<div>&nbsp;</div>
<div>export BB_ENV_PASSTHROUGH_ADDITIONS=3D"$BB_ENV_PASSTHROUGH_ADDITIONS A=
BC" &nbsp; &nbsp;</div>

--s4bKMfkMo2kkjbZDJLI9--

