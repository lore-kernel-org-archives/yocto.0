Return-Path: <ccasciato@21sw.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0FD3C3ABB0
	for <webhook@archiver.kernel.org>; Mon,  5 May 2025 13:35:07 +0000 (UTC)
Subject: Re: [yocto] Styhead: openssh-9.8p1 sshd.socket does not work with tpm-provider enabled
To: "Omri Sarig" <omri.sarig13@gmail.com>, yocto@lists.yoctoproject.org
From: "Clayton Casciato" <ccasciato@21sw.us>
X-Originating-Location: Denver, Colorado, US (174.29.216.122)
X-Originating-Platform: Linux Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 05 May 2025 06:34:59 -0700
References: <xa9G.1746448813120620239.tvXx@lists.yoctoproject.org>
In-Reply-To: <xa9G.1746448813120620239.tvXx@lists.yoctoproject.org>
Message-ID: <7063.1746452099113742393@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ypHiLJhTdjMPorbl6xU9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 May 2025 13:35:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65281

--ypHiLJhTdjMPorbl6xU9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, Omri!

As of this month, Styhead is EOL: https://wiki.yoctoproject.org/wiki/Releas=
es

Consider sticking with Scarthgap (LTS) or migrating to Walnascar.

Walnascar is at 9.9p2: https://git.openembedded.org/openembedded-core/tree/=
meta/recipes-connectivity/openssh?h=3Dwalnascar

--ypHiLJhTdjMPorbl6xU9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi, Omri!</div>
<div>&nbsp;</div>
<div>As of this month, Styhead is EOL: <a href=3D"https://wiki.yoctoproject=
.org/wiki/Releases" target=3D"_blank" rel=3D"noopener">https://wiki.yoctopr=
oject.org/wiki/Releases</a></div>
<div>&nbsp;</div>
<div>Consider sticking with Scarthgap (LTS) or migrating to Walnascar.</div=
>
<div>&nbsp;</div>
<div>Walnascar is at 9.9p2: https://git.openembedded.org/openembedded-core/=
tree/meta/recipes-connectivity/openssh?h=3Dwalnascar</div>

--ypHiLJhTdjMPorbl6xU9--

