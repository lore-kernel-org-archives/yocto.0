Return-Path: <patrick.huesmann@desy.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAC35C02196
	for <webhook@archiver.kernel.org>; Fri,  7 Feb 2025 11:24:01 +0000 (UTC)
Subject: Re: [yocto] Shared package feed between different projects
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Patrick Huesmann" <patrick.huesmann@desy.de>
X-Originating-Location: Hamburg, Free and Hanseatic City of Hamburg, DE (217.233.212.157)
X-Originating-Platform: Linux Firefox 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 07 Feb 2025 03:24:01 -0800
References: <CANNYZj92b2Nb65b=01kCaLNXMifAwiStv8cfGr+RWg=RG-HU9w@mail.gmail.com>
In-Reply-To: <CANNYZj92b2Nb65b=01kCaLNXMifAwiStv8cfGr+RWg=RG-HU9w@mail.gmail.com>
Message-ID: <12196.1738927441329087485@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="oXOrJjkkGgw4UWSjLOsq"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 11:24:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64746

--oXOrJjkkGgw4UWSjLOsq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 7, 2025 at 12:16 PM, Alexander Kanavin wrote:

>=20
> The best option is to drop package feeds altogether and set up proper
> sstate infra.

We do have shared sstate on a server, but how does that help a user who wan=
ts to install a package?

Patrick

--oXOrJjkkGgw4UWSjLOsq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Fri, Feb 7, 2025 at 12:16 PM, Alexander Kanavin wrote:</div>
<div>
<blockquote>The best option is to drop package feeds altogether and set up =
proper<br />sstate infra.</blockquote>
We do have shared sstate on a server, but how does that help a user who wan=
ts to install a package?</div>
<div><br />Patrick</div>

--oXOrJjkkGgw4UWSjLOsq--

