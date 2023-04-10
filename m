Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5130DC77B61
	for <webhook@archiver.kernel.org>; Mon, 10 Apr 2023 10:33:39 +0000 (UTC)
Subject: Re: [PATCH 1/2] meta-parsec: Disable RSA-OAEP OEQA tests for Parsec PKCS11 backend
To: yocto@lists.yoctoproject.org
From: "Anton Antonov" <anton.antonov@arm.com>
X-Originating-Location: Cambridge, England, GB (217.140.99.251)
X-Originating-Platform: Mac Firefox 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 10 Apr 2023 03:33:38 -0700
References: <89ebe8b9-0abe-faa2-76c2-77e2a83ae612@gmail.com>
In-Reply-To: <89ebe8b9-0abe-faa2-76c2-77e2a83ae612@gmail.com>
Message-ID: <27573.1681122818182609706@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4zAqfYQnnQAv1JX70sRU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Apr 2023 10:33:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59652

--4zAqfYQnnQAv1JX70sRU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 6, 2023 at 12:04 PM, Armin Kuster wrote:

>=20
> Does this apply to older versions ?

No, it's required only after upgrade parsec-tool to 0.6.0. This version int=
roduces new tests which are no supported by softhsm2

Cheers,

Anton

--4zAqfYQnnQAv1JX70sRU
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 6, 2023 at 12:04 PM, Armin Kuster wrote:<br />
<blockquote>Does this apply to older versions ?</blockquote>
<p>No, it's required only after upgrade parsec-tool to 0.6.0. This version =
introduces new tests which are no supported by softhsm2</p>
<p>&nbsp;</p>
<p>Cheers,</p>
<p>Anton</p>

--4zAqfYQnnQAv1JX70sRU--

