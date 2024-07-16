Return-Path: <lorenzo.arena@powersoft.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52D54C3DA49
	for <webhook@archiver.kernel.org>; Tue, 16 Jul 2024 09:48:09 +0000 (UTC)
Subject: Re: [yocto] gitpkgv class not returning hash if sources are not already fetched
To: "Marco Cavallini" <koansoftware@gmail.com>, yocto@lists.yoctoproject.org
From: lorenzo.arena@powersoft.com
X-Originating-Location: Rome, Latium, IT (5.99.65.66)
X-Originating-Platform: Linux Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 16 Jul 2024 02:47:59 -0700
References: <5245.1721115599379554415@lists.yoctoproject.org>
In-Reply-To: <5245.1721115599379554415@lists.yoctoproject.org>
Message-ID: <5245.1721123279896367207@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="IsCbD5e4dZrV3p79lHi2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024 09:48:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63511

--IsCbD5e4dZrV3p79lHi2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Marco,

you're right, however if I can recall it correctly SRCPV used to be set to =
the right hash even before fetching; in fact, there's a loop in the gitpkgv=
 bbclass which contains "for name, rev in url.revisions.items():" and alrea=
dy has a valid rev, except that then it also checks for the presence of the=
 cloned sources. On the other hand, how should I use the gitpkgv class on a=
 clean build where I still have not fetched any source?

Thanks,
Lorenzo

--IsCbD5e4dZrV3p79lHi2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Marco,</div>
<div>&nbsp;</div>
<div>you're right, however if I can recall it correctly SRCPV used to be se=
t to the right hash even before fetching; in fact, there's a loop in the gi=
tpkgv bbclass which contains "for name, rev in url.revisions.items():" and =
already has a valid rev, except that then it also checks for the presence o=
f the cloned sources. On the other hand, how should I use the gitpkgv class=
 on a clean build where I still have not fetched any source?</div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>Lorenzo</div>

--IsCbD5e4dZrV3p79lHi2--

