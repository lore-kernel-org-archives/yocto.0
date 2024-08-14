Return-Path: <Markus.Lehmann@duagon.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BA2FC3DA4A
	for <webhook@archiver.kernel.org>; Wed, 14 Aug 2024 08:16:29 +0000 (UTC)
Subject: Re: [yocto] Building #kernelmodule s, move from #kirkstone to #scarthgap but no RPMs created.
To: =?UTF-8?B?SsO2cmcgU29tbWVy?= <joerg.sommer@navimatix.de>, yocto@lists.yoctoproject.org
From: "Markus" <Markus.Lehmann@duagon.com>
X-Originating-Location: DE (91.26.240.82)
X-Originating-Platform: Windows Firefox 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 14 Aug 2024 01:16:27 -0700
References: <2ftqdy2q3k4g3sxtfcsoibagjs74amems2choiqnagcrvgvweo@imahtbeqzrhz>
In-Reply-To: <2ftqdy2q3k4g3sxtfcsoibagjs74amems2choiqnagcrvgvweo@imahtbeqzrhz>
Message-ID: <23984.1723623387134233427@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QAVOo3WDcNDsCpqMcCEO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Aug 2024 08:16:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63698

--QAVOo3WDcNDsCpqMcCEO
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hello J=C3=B6rg,

I have already an `inherit module`on top of my recipe. I also tried to exte=
nd this like `inherit module kernel-module-split` and also `inherit module-=
base kernel-module-split` but from documentation I can see that `module-bas=
e` and `kernel-module-split` are already added by `inherit module`.

My suspicion is, that something has changed in regard to the directory path=
s because I heard that in the Linux world there was something like a clean-=
up to get the same directory structures over all Linux distributions.

Nevertheless, thanks for the hint.

Cheers,
Markus

--QAVOo3WDcNDsCpqMcCEO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello J=C3=B6rg,</p>

<p>I have already an <code>inherit module</code>on top of my recipe. I also=
 tried to extend this like <code>inherit module kernel-module-split</code> =
and also <code>inherit module-base kernel-module-split</code> but from docu=
mentation I can see that <code>module-base</code> and <code>kernel-module-s=
plit</code> are already added by <code>inherit module</code>.</p>

<p>My suspicion is, that something has changed in regard to the directory p=
aths because I heard that in the Linux world there was something like a cle=
an-up to get the same directory structures over all Linux distributions.</p=
>

<p>Nevertheless, thanks for the hint.</p>

<p>Cheers,
Markus</p>

--QAVOo3WDcNDsCpqMcCEO--

