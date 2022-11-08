Return-Path: <merlin.epstein@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C1B7C4332F
	for <webhook@archiver.kernel.org>; Tue,  8 Nov 2022 06:58:18 +0000 (UTC)
Subject: Re: systemd: how to enable auto-loading kernel modules
To: yocto@lists.yoctoproject.org
From: "Merlin" <merlin.epstein@gmail.com>
X-Originating-Location: Tokyo, JP (103.203.222.55)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 07 Nov 2022 22:58:12 -0800
References: <c1a03ded-4f43-9740-ab00-5f2a6d9ab2d1@topic.nl>
In-Reply-To: <c1a03ded-4f43-9740-ab00-5f2a6d9ab2d1@topic.nl>
Message-ID: <2208.1667890692740604015@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="17zVHxFcfY9V3bsPQwXg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Nov 2022 06:58:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58523

--17zVHxFcfY9V3bsPQwXg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Mike for your advice!

I've replaced underscore to hyphen and rerun a build from fetch, but unfort=
unately that didn't invoke auto-load.

In fact, my modules are device drivers developed in out-of-tree repositorie=
s. Some user-space applications depend on them, so I wanted them to be auto=
-loaded on boot. Autoload didn't occur even though I've added corresponding=
 devicetree properties.

Best

Merlin

--17zVHxFcfY9V3bsPQwXg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Thanks Mike for your advice!</p>
<p>I've replaced underscore to hyphen and rerun a build from fetch, but unf=
ortunately that didn't invoke auto-load.</p>
<p>In fact, my modules are device drivers developed in out-of-tree reposito=
ries. Some user-space applications depend on them, so I wanted them to be a=
uto-loaded on boot. Autoload didn't occur even though I've added correspond=
ing devicetree properties.</p>
<p>Best<br /><br />Merlin</p>

--17zVHxFcfY9V3bsPQwXg--

