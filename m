Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48D59C77B61
	for <webhook@archiver.kernel.org>; Mon, 10 Apr 2023 14:03:50 +0000 (UTC)
Subject: Re: [meta-parsec][v2][PATCH] parsec-service: fix SRC_URI hash
To: yocto@lists.yoctoproject.org
From: "Anton Antonov" <anton.antonov@arm.com>
X-Originating-Location: Cambridge, England, GB (217.140.99.251)
X-Originating-Platform: Mac Firefox 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 10 Apr 2023 07:03:49 -0700
References: <20230409174005.228887-1-akuster808@gmail.com>
In-Reply-To: <20230409174005.228887-1-akuster808@gmail.com>
Message-ID: <27573.1681135429859256512@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="b7Zhbq2geJsFUqICHWr0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Apr 2023 14:03:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59655

--b7Zhbq2geJsFUqICHWr0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 9, 2023 at 10:40 AM, Armin Kuster wrote:

>=20
> Fixes:
> ERROR: Missing SRC_URI checksum, please add those to the recipe:
> SRC_URI[parsec-service-1.2.0.sha256sum] =3D
> "f58e7ba859c22cc1904dc8298b1a7d94ee1ba3b4d4808f28e4cc0c96ddb149c9"
>=20
> Needed to S dir too.

Until a few days ago the S dir wasn't needed in the recipe if the crate fet=
cher was used. If it's a new fetcher behavior, then S should be defined in =
the cargo class instead, I think.

Cheers,

Anton

--b7Zhbq2geJsFUqICHWr0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 9, 2023 at 10:40 AM, Armin Kuster wrote:<br />
<blockquote>Fixes:<br />ERROR: Missing SRC_URI checksum, please add those t=
o the recipe:<br />SRC_URI[parsec-service-1.2.0.sha256sum] =3D "f58e7ba859c=
22cc1904dc8298b1a7d94ee1ba3b4d4808f28e4cc0c96ddb149c9"<br /><br />Needed to=
 S dir too.</blockquote>
<p>Until a few days ago the S dir wasn't needed in the recipe if the crate =
fetcher was used. If it's a new fetcher behavior, then S should be defined =
in the cargo class instead, I think.</p>
<p>&nbsp;</p>
<p>Cheers,</p>
<p>Anton</p>

--b7Zhbq2geJsFUqICHWr0--

