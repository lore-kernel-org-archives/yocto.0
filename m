Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B111CECAAD1
	for <webhook@archiver.kernel.org>; Thu,  1 Sep 2022 13:45:03 +0000 (UTC)
Subject: Re: [meta-security][PATCH resend] Parsec-service: add parsec user to
 teeclnt group when optee is present
To: yocto@lists.yoctoproject.org
From: "Anton Antonov" <anton.antonov@arm.com>
X-Originating-Location: Cambridge, England, GB (217.140.106.13)
X-Originating-Platform: Mac Firefox 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 01 Sep 2022 06:44:59 -0700
References: <1468.1662031846008704501@lists.yoctoproject.org>
In-Reply-To: <1468.1662031846008704501@lists.yoctoproject.org>
Message-ID: <3934.1662039899119266547@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bQb5eV9zyLOOjH2y6Uhy"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Sep 2022 13:45:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57967

--bQb5eV9zyLOOjH2y6Uhy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Jerome,

Parsec doesn't depend on optee-client and doesn't require it at all. If Par=
sec is built with the Trusted Services provider included=C2=A0 then `libts`=
 is added into DEPENDS and RDEPENDS:

https://git.yoctoproject.org/meta-security/tree/meta-parsec/recipes-parsec/=
parsec-service/parsec-service_1.0.0.bb#n23

The libts recipe (it will be merged into meta-arm later today or tomorrow t=
ogether with other generic recipes for Trusted Services Secure Partitions (=
SWd side) and test/demo tools (NWd side)) creates `teeclnt` group.

Cheers,
Anton

--bQb5eV9zyLOOjH2y6Uhy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Jerome,<br /><br />&nbsp; Parsec doesn't depend on optee-client and d=
oesn't require it at all. If Parsec is built with the Trusted Services prov=
ider included&nbsp; then `libts` is added into DEPENDS and RDEPENDS:</p>
<p><a href=3D"https://git.yoctoproject.org/meta-security/tree/meta-parsec/r=
ecipes-parsec/parsec-service/parsec-service_1.0.0.bb#n23" target=3D"_blank"=
 rel=3D"noopener">https://git.yoctoproject.org/meta-security/tree/meta-pars=
ec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb#n23</a></p>
<p>The libts recipe (it will be merged into meta-arm later today or tomorro=
w together with other generic recipes for Trusted Services Secure Partition=
s (SWd side) and test/demo tools (NWd side)) creates `teeclnt` group.</p>
<p>Cheers,<br />Anton</p>

--bQb5eV9zyLOOjH2y6Uhy--

