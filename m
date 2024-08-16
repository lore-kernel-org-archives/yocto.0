Return-Path: <Markus.Lehmann@duagon.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07EE0C3DA4A
	for <webhook@archiver.kernel.org>; Fri, 16 Aug 2024 06:58:43 +0000 (UTC)
Subject: Re: [yocto] Building #kernelmodule s, move from #kirkstone to #scarthgap but no RPMs created.
To: "Markus" <Markus.Lehmann@duagon.com>, yocto@lists.yoctoproject.org
From: "Markus" <Markus.Lehmann@duagon.com>
X-Originating-Location: Munich, Bavaria, DE (92.72.50.220)
X-Originating-Platform: Windows Firefox 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 15 Aug 2024 23:58:40 -0700
References: <864.1723708369191214687@lists.yoctoproject.org>
In-Reply-To: <864.1723708369191214687@lists.yoctoproject.org>
Message-ID: <23984.1723791520623560523@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="83s0wewyQrgUmkYd0h37"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Aug 2024 06:58:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63712

--83s0wewyQrgUmkYd0h37
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Another strange observation I made ...

Yocto creates the *.conf files for my kernel-modules in `/usr/lib/modules-l=
oad.d` and in `/usr/lib/modprobe.d`.

But I think they should be in `/etc/modules-load.d` and in `/etc/modprobe.d=
` instead.

I think in `/usr/lib/...` they will be ignored.

--83s0wewyQrgUmkYd0h37
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Another strange observation I made ...</p>

<p>Yocto creates the *.conf files for my kernel-modules in <code>/usr/lib/m=
odules-load.d</code> and in <code>/usr/lib/modprobe.d</code>.</p>

<p>But I think they should be in <code>/etc/modules-load.d</code> and in <c=
ode>/etc/modprobe.d</code> instead.</p>

<p>I think in <code>/usr/lib/...</code> they will be ignored.</p>

--83s0wewyQrgUmkYd0h37--

