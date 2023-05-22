Return-Path: <g.meyer@signum-media.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F5FCC77B75
	for <webhook@archiver.kernel.org>; Mon, 22 May 2023 15:24:20 +0000 (UTC)
Received: from srv.signum-media.de (srv.signum-media.de [159.69.219.184])
 by mx.groups.io with SMTP id smtpd.web10.24927.1684769054701070437
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 May 2023 08:24:15 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@signum-media.de header.s=20221012 header.b=fDPVdYY3;
 spf=pass (domain: signum-media.de, ip: 159.69.219.184, mailfrom: g.meyer@signum-media.de)
Received: from serenity.localnet (i59F7C4AF.versanet.de [89.247.196.175])
	by srv.signum-media.de (Postfix) with ESMTPSA id 44DF31F4CF
	for <yocto@lists.yoctoproject.org>; Mon, 22 May 2023 17:24:11 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 srv.signum-media.de 44DF31F4CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=signum-media.de;
	s=20221012; t=1684769051;
	bh=g09Es4nGHOBl+huSKFRtRJ/wGnD/4xfLqpAe4EHbVAk=;
	h=From:To:Subject:Date:From;
	b=fDPVdYY3ZIJa7zK6CeRp7Cc5YLrGhZgmiOa/5sZCgJlZkW4AmUTJlo3TrAFihyONb
	 c2jdWuMPR13N/zkOUakfhHbbyfGw7gcK3gblH38s8EA3uxKmShmMWl1UhqaKCHscRx
	 3NlYla6Uf6AMl4RsdtA7FjmX3v/Uos5lLYU+QfS+heAocqt7Jox05djyZB5+QiTt5A
	 RIHZuTwDlqr3ZSQdcwXmlrHXHc01TPirVoTWG6OsrHo40jYFWm9dJI8RW4Zfkpe7DD
	 767C7dC88EgxrydR7OxFFXXBQdsPyyKEWreg2y0krMKca+D6+QAwx1k8fYJBKzOjCM
	 H+LjKe6CDqskw==
From: Guenther Meyer <g.meyer@signum-media.de>
To: yocto@lists.yoctoproject.org
Subject: rustfmt error when trying to build a rust application
Date: Mon, 22 May 2023 17:24:10 +0200
Message-ID: <1749526.6rAegfnmv9@serenity>
Organization: Signum Media
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3248841.Kg2RlhIq5G";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 May 2023 15:24:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60082

--nextPart3248841.Kg2RlhIq5G
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Guenther Meyer <g.meyer@signum-media.de>
To: yocto@lists.yoctoproject.org
Subject: rustfmt error when trying to build a rust application
Date: Mon, 22 May 2023 17:24:10 +0200
Message-ID: <1749526.6rAegfnmv9@serenity>
Organization: Signum Media
Disposition-Notification-To: Guenther Meyer <g.meyer@signum-media.de>
MIME-Version: 1.0

Hi,

I'm trying to add a rust application to my distro based on kirkstone, and created a recipe with cargo-bitbake.
The build fails with:

    error running rustfmt: Os { code: 2, kind: NotFound, message: "No such file or directory" }

I also tried to add the meta-lts-mixins layer - same result.

Any ideas, did I miss something? I'm not really a rust developer.





--nextPart3248841.Kg2RlhIq5G
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEMriC4l7RumrDsZEievmd2d8CKRIFAmRriRoACgkQevmd2d8C
KRIFPQ//SLiuTQzoYw8dM5vSV45eYQMIEJ9X1oYpPTys5oplVoaOmR93saLJTZS0
5Y5UEXnemv7pRWCb67oi0lGm71jSH/jiHrroUV1sqy3Jqv0aP5IiG5lD5pzWBOBC
u7LHCEnwGFuHieWSG5bolCQrPVF4elZgWAV+ltKt8wkB2pVgUGtC92VBtV3rjbXv
c9ERXj3hi/DIxh+9fQvLCDzDQBXyc5izw9ufz+7P7P2u6Wqj29QLFr3In4UD27W6
Szjd4RVZHwCkHB7YGn3wHr2Ohnce42YjNs14GM6WjcqgLPJWEK1bTn2Hn/ibKT0l
L9PmGxeHozR4lMv2Yw1xgcpXghp+i9XyGzDRgQckfmZ/yIaEF/2/StDoWHk5ljD7
vE7cVktsI3LON9O6v2uZ5e7O0nebkcMNa6hrb34Q6cE6yDZJn98tia9mrz59twKN
hG6eeNsWpuE+7zq8LL3/fUdjNUOrdOuo1L7h8NYfv39cOQeduThTNCrclYZfx5OE
yFR6/E1pdLg3B+KA6P2LcrDIf5cLZtrFgyPruA6FRe2Ht6370RKlFjA0HR8nF2e5
aiCh5emjvaz37Ji1t+KML+LAYlZISNN1PD3W5v4EKBGqEmX7FjXVpQKXnKY0Kx/3
FpSmIbOgYUePkzdzXbp1+SMG225h/EJEGKpEvKoRN9oWVmpFp8M=
=Xjwq
-----END PGP SIGNATURE-----

--nextPart3248841.Kg2RlhIq5G--




