Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CFDC001B0
	for <webhook@archiver.kernel.org>; Wed, 16 Aug 2023 14:45:19 +0000 (UTC)
Subject: Re: How to switch between package version ?
To: yocto@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Baechli, Nidwalden, CH (146.4.107.86)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 16 Aug 2023 07:45:16 -0700
References: <ZNy7lBOvfDQheQ5j@nuoska>
In-Reply-To: <ZNy7lBOvfDQheQ5j@nuoska>
Message-ID: <29355.1692197116432631142@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2Zwp3dGvjDSNsQQJXvJI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Aug 2023 14:45:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60809

--2Zwp3dGvjDSNsQQJXvJI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I wasn't aware of BBMASK; that's useful, thank you.

I find it becoming clearer for me. However, I'm wondering how to address ve=
rsion conflicts in the following scenario:

* GCC 11.2 in the Honister branch
* Boost 1.74 in the Gatesgarth branch

I require the use of both these versions. Although they are both present in=
 the meta layer, they exist on separate branches. What would be the solutio=
n in this case? Would it involve having two clones of the layer on my build=
 host? Or perhaps writing my own Boost 1.74 recipe?

Neither option appears to be straightforward to me. Yet, this doesn't seem =
like an uncommon scenario. Others must have encountered the need for differ=
ent recipes from the same layer but belonging to different branches. Is the=
re a clear workflow for handling this?

--2Zwp3dGvjDSNsQQJXvJI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I wasn't aware of BBMASK; that's useful, thank you.</div>
<div>&nbsp;</div>
<div>I find it becoming clearer for me. However, I'm wondering how to addre=
ss version conflicts in the following scenario:</div>
<ul>
<li>GCC 11.2 in the Honister branch</li>
<li>Boost 1.74 in the Gatesgarth branch</li>
</ul>
<div>I require the use of both these versions. Although they are both prese=
nt in the meta layer, they exist on separate branches. What would be the so=
lution in this case? Would it involve having two clones of the layer on my =
build host? Or perhaps writing my own Boost 1.74 recipe?<br /><br />Neither=
 option appears to be straightforward to me. Yet, this doesn't seem like an=
 uncommon scenario. Others must have encountered the need for different rec=
ipes from the same layer but belonging to different branches. Is there a cl=
ear workflow for handling this?</div>

--2Zwp3dGvjDSNsQQJXvJI--

