Return-Path: <ccasciato@21sw.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD8B2C02182
	for <webhook@archiver.kernel.org>; Tue, 21 Jan 2025 15:32:23 +0000 (UTC)
Subject: Re: [yocto] [scarthgap] TUNE_ARCH error #scarthgap
To: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>, yocto@lists.yoctoproject.org
From: "Clayton Casciato" <ccasciato@21sw.us>
X-Originating-Location: Denver, Colorado, US (174.29.210.206)
X-Originating-Platform: Linux Firefox 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 21 Jan 2025 07:32:20 -0800
References: <xP2L.1737461252807526183.47GA@lists.yoctoproject.org>
In-Reply-To: <xP2L.1737461252807526183.47GA@lists.yoctoproject.org>
Message-ID: <22725.1737473540844937402@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="62rQiFngzBsWRPYHvja0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2025 15:32:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64602

--62rQiFngzBsWRPYHvja0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

If you are using meta-ti, they recently added a new layer: meta-beagle
https://git.yoctoproject.org/meta-ti/commit/meta-beagle?h=3Dscarthgap&id=3D=
9d913fce5b064ecfbd14333c4de806d6ae6b5088 ( https://git.yoctoproject.org/met=
a-ti/commit/meta-beagle?h=3Dscarthgap&id=3D9d913fce5b064ecfbd14333c4de806d6=
ae6b5088) )

This needs to be added to BBLAYERS
https://docs.yoctoproject.org/5.0.6/ref-manual/variables.html#term-BBLAYERS

--62rQiFngzBsWRPYHvja0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>If you are using meta-ti, they recently added a new layer: meta-beagle=
</div>
<div><a href=3D"https://git.yoctoproject.org/meta-ti/commit/meta-beagle?h=
=3Dscarthgap&amp;id=3D9d913fce5b064ecfbd14333c4de806d6ae6b5088)" target=3D"=
_blank" rel=3D"noopener">https://git.yoctoproject.org/meta-ti/commit/meta-b=
eagle?h=3Dscarthgap&amp;id=3D9d913fce5b064ecfbd14333c4de806d6ae6b5088</a></=
div>
<div>&nbsp;</div>
<div>This needs to be added to BBLAYERS</div>
<div>https://docs.yoctoproject.org/5.0.6/ref-manual/variables.html#term-BBL=
AYERS</div>

--62rQiFngzBsWRPYHvja0--

