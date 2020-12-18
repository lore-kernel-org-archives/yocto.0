Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.2558.1608322535420330699
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Dec 2020 12:15:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zougloub.eu header.s=zougloub.eu header.b=lOUxKGBI;
 spf=fail (domain: zougloub.eu, ip: 198.145.29.25, mailfrom: cj-yocto@zougloub.eu)
Received: from zougloub.eu (zougloub.eu [69.70.16.42])
	by mail.yoctoproject.org (Postfix) with ESMTP id 5A54B38C070E
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2020 20:15:34 +0000 (UTC)
Received: from pouet.cJ (exmakhina.com [69.70.16.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by zougloub.eu (Postfix) with ESMTPSA id 983CF143D99F;
	Fri, 18 Dec 2020 15:15:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zougloub.eu;
	s=zougloub.eu; t=1608322533;
	bh=6cU20PkoF3z8av/T+2Vo+EtxN8IQa8lTv5aoRT6T9FU=;
	h=Date:From:To:Subject;
	b=lOUxKGBIXK3vYmTRd5NGN4DhrfF6GmUrUyCNrNfXRCdIaR2H8hMUFZyCia8yIUHGT
	 R0+xYeliQYungR0dzFuQ6VWT3eBqgAPvKr2wXuQlnBT2U3x2YwM8o3GEcwWacWxACR
	 ReB1D6BlFahz3dOpJ0cX0tVoCpnYhVqmfxUBliEI=
Date: Fri, 18 Dec 2020 15:15:34 -0500
From: =?UTF-8?B?SsOpcsO0bWUgQ2FycmV0ZXJv?= <cJ-yocto@zougloub.eu>
To: yocto@yoctoproject.org, Richard Purdie
 <richard.purdie@linuxfoundation.org>, Joshua Watt <jpewhacker@gmail.com>
Subject: Is curated SPDX data sharing a thing?
Message-ID: <20201218151534.663a5727@pouet.cJ>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,


Please correct me if I'm wrong but as far as I understand it, as of
today the flow for generating SPDX data to build software BoMs,
documented eg. in:

- https://www.fossology.org/get-started/basic-workflow/
- https://elinux.org/images/2/20/License_Compliance_in_Embedded_Linux_with_=
the_Yocto_Project.pdf

involves building your own database of SPDX files after reviewing all
the sources, which doesn't look to be something at reach of most
businesses.


I am wondering by extension:

- Whether there are businesses selling pre-masticated SPDX data
  (I can imagine one would be willing to pay a little something to
  obtain a collection of "certified" (or possibly "insured") SPDX);

- Whether there are (plans for having) public, collaborative
  repositories of SPDX data that could be trusted over automatic scans
  of source.


Best regards,

--=20
J=C3=A9r=C3=B4me
