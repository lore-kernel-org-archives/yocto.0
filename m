Return-Path: <veilleux.cedric@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DB5F11258B8
	for <webhook@archiver.kernel.org>; Wed, 11 Mar 2026 20:36:27 +0000 (UTC)
Subject: Re: [yocto] go regression in scarthgap related to CVE-2025-61726 patch
To: "Yoann Congal" <yoann.congal@smile.fr>, yocto@lists.yoctoproject.org
From: "Cedric Veilleux" <veilleux.cedric@gmail.com>
X-Originating-Location: Montreal, Quebec, CA (66.254.49.99)
X-Originating-Platform: Linux Firefox 148
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 11 Mar 2026 13:36:21 -0700
References: <7IZh.1773253104984679443.MaYv@lists.yoctoproject.org> <DH070BEBCNFR.351WN55RVTJLH@smile.fr>
In-Reply-To: <DH070BEBCNFR.351WN55RVTJLH@smile.fr>
Message-ID: <375609.1773261381723955240@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Mar 2026 20:36:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66326

On Wed, Mar 11, 2026 at 03:16 PM, Yoann Congal wrote:

>
> Is this problem related to this patch under review?
> go: Fix CVE-2025-61726.patch variable ordering
> https://git.openembedded.org/openembedded-core-contrib/commit/?h=3Dstable=
/scarthgap-nut&id=3D9605a264c87b5c7ce26eeec902448b0892f8af1a
>=20
> Could you try to see if that fixes your problem and report back?
>

Confirmed. The above patch fixes the issue, my podman binary is working aga=
in.

Thank you!
Cedric

