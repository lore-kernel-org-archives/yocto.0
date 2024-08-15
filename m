Return-Path: <Markus.Lehmann@duagon.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2438C52D7D
	for <webhook@archiver.kernel.org>; Thu, 15 Aug 2024 07:52:57 +0000 (UTC)
Subject: Re: [yocto] Building #kernelmodule s, move from #kirkstone to #scarthgap but no RPMs created.
To: "Markus" <Markus.Lehmann@duagon.com>, yocto@lists.yoctoproject.org
From: "Markus" <Markus.Lehmann@duagon.com>
X-Originating-Location: Munich, Bavaria, DE (92.72.50.220)
X-Originating-Platform: Windows Firefox 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 15 Aug 2024 00:52:49 -0700
References: <23984.1723623387134233427@lists.yoctoproject.org>
In-Reply-To: <23984.1723623387134233427@lists.yoctoproject.org>
Message-ID: <864.1723708369191214687@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="p5ghNxFP01YMxiIShpu0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Aug 2024 07:52:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63705

--p5ghNxFP01YMxiIShpu0
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

It seems that *.ko files in `lib/modules/...` are ignored.

If instead `usr/lib/modules/...` is used then the kernel-modules are create=
d.

But apparently the auto-load of kernel modules has also changed.

--p5ghNxFP01YMxiIShpu0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>It seems that *.ko files in <code>lib/modules/...</code> are ignored.</p=
>

<p>If instead <code>usr/lib/modules/...</code> is used then the kernel-modu=
les are created.</p>

<p>But apparently the auto-load of kernel modules has also changed.</p>

--p5ghNxFP01YMxiIShpu0--

