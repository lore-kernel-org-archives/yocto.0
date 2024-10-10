Return-Path: <yanmei.guo@boeing.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AE6FCEDDBB
	for <webhook@archiver.kernel.org>; Thu, 10 Oct 2024 03:48:36 +0000 (UTC)
Subject: Re: [yocto] Question on the sequence conf file parsing. #yocto
To: "Chen Qi" <Qi.Chen@windriver.com>, yocto@lists.yoctoproject.org
From: "Guo, Yanmei" <yanmei.guo@boeing.com>
X-Originating-Location: Boardman, Oregon, US (15.200.244.216)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Oct 2024 20:48:26 -0700
References: <df29b0f1-f2dc-43c2-9c90-29baa745e394@windriver.com>
In-Reply-To: <df29b0f1-f2dc-43c2-9c90-29baa745e394@windriver.com>
Message-ID: <10004.1728532106950424821@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dZwMxHr0CbkOp4D3CIFG"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Oct 2024 03:48:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63999

--dZwMxHr0CbkOp4D3CIFG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Adding layer can cause some unintended effects.
Taken recipes-kernel for example, if some layers being added eg meta-virtua=
lization, bbappend will be applied to the kernel.
We might end up with some unexpected kernel feature being switched on.

--dZwMxHr0CbkOp4D3CIFG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Adding layer can cause some unintended effects.</div>
<div>Taken recipes-kernel for example, if some layers being added eg meta-v=
irtualization, bbappend will be applied to the kernel.</div>
<div>We might end up with some unexpected kernel feature being switched on.=
</div>

--dZwMxHr0CbkOp4D3CIFG--

