Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED0B9C7619A
	for <webhook@archiver.kernel.org>; Mon, 27 Mar 2023 13:51:09 +0000 (UTC)
Subject: Re: [meta-security][PATCH v3] parsec-service: update from 1.1.0 to 1.2.0-rc1
To: yocto@lists.yoctoproject.org
From: "Anton Antonov" <anton.antonov@arm.com>
X-Originating-Location: Cambridge, England, GB (86.26.33.70)
X-Originating-Platform: Mac Firefox 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Mar 2023 06:51:08 -0700
References: <20230327061607.517383-1-mikko.rapeli@linaro.org>
In-Reply-To: <20230327061607.517383-1-mikko.rapeli@linaro.org>
Message-ID: <32718.1679925068535675649@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bdrupkRQ8NxWukAg3mVS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Mar 2023 13:51:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59528

--bdrupkRQ8NxWukAg3mVS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 26, 2023 at 11:16 PM, Mikko Rapeli wrote:

>=20
> ...ce_1.1.0.inc =3D> parsec-service-crates.inc} | 239 +++++++++---------
> ...e_1.1.0.bb =3D> parsec-service_1.2.0-rc1.bb} | 14 +-
> 2 files changed, 134 insertions(+), 119 deletions(-)
> rename meta-parsec/recipes-parsec/parsec-service/{parsec-service_1.1.0.in=
c
> =3D> parsec-service-crates.inc} (50%)
> rename meta-parsec/recipes-parsec/parsec-service/{parsec-service_1.1.0.bb
> =3D> parsec-service_1.2.0-rc1.bb} (91%)
>=20
> v3: change to gitsm fetcher

Ack, although this recipe will be replaced with 1.2.0 release version in a =
week of two.

Cheers,
Anton

--bdrupkRQ8NxWukAg3mVS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 26, 2023 at 11:16 PM, Mikko Rapeli wrote:<br />
<blockquote>...ce_1.1.0.inc =3D&gt; parsec-service-crates.inc} | 239 ++++++=
+++---------<br />...e_1.1.0.bb =3D&gt; parsec-service_1.2.0-rc1.bb} | 14 +=
-<br />2 files changed, 134 insertions(+), 119 deletions(-)<br />rename met=
a-parsec/recipes-parsec/parsec-service/{parsec-service_1.1.0.inc =3D&gt; pa=
rsec-service-crates.inc} (50%)<br />rename meta-parsec/recipes-parsec/parse=
c-service/{parsec-service_1.1.0.bb =3D&gt; parsec-service_1.2.0-rc1.bb} (91=
%)<br /><br />v3: change to gitsm fetcher</blockquote>
<p>Ack, although this recipe will be replaced with 1.2.0 release version in=
 a week of two.</p>
<p>&nbsp;</p>
<p>Cheers,<br />Anton</p>

--bdrupkRQ8NxWukAg3mVS--

