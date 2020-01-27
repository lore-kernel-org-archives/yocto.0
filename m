Received: from sirokuusama2.dnainternet.net (sirokuusama2.dnainternet.net [83.102.40.153])
 by mx.groups.io with SMTP id smtpd.web12.4608.1580112982183506930
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 00:16:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: iki.fi, ip: 83.102.40.153, mailfrom: anders.montonen@iki.fi)
Received: from localhost (localhost [127.0.0.1])
	by sirokuusama2.dnainternet.net (Postfix) with ESMTP id 8A8241261E
	for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2020 10:16:19 +0200 (EET)
X-Virus-Scanned: DNA Internet at dnainternet.net
X-Spam-Flag: NO
X-Spam-Score: 0.653
X-Spam-Level: 
X-Spam-Status: No, score=0.653 tagged_above=-9999 required=6
	tests=[SPF_HELO_NONE=0.001, SPF_NEUTRAL=0.652] autolearn=disabled
Received: from sirokuusama2.dnainternet.net ([83.102.40.153])
	by localhost (sirokuusama2.dnainternet.net [127.0.0.1]) (DNA Internet, port 10041)
	with ESMTP id MIl6BSteipKu for <yocto@lists.yoctoproject.org>;
	Mon, 27 Jan 2020 10:16:18 +0200 (EET)
Received: from luumupuu2.dnainternet.net (luumupuu2.dnainternet.net [83.102.40.55])
	by sirokuusama2.dnainternet.net (Postfix) with ESMTP id 5CC83125D0
	for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2020 10:16:18 +0200 (EET)
Received: from [192.168.1.58] (178-75-137-78.bb.dnainternet.fi [178.75.137.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by luumupuu2.dnainternet.net (Postfix) with ESMTPS id 3662393
	for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2020 10:16:16 +0200 (EET)
From: "Anders Montonen" <Anders.Montonen@iki.fi>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [yocto] cve-checker name collisions
Date: Mon, 27 Jan 2020 10:16:16 +0200
References: <alpine.DEB.2.21.2001241057320.4667@lakka.kapsi.fi>
 <866d4701-b299-dcc8-4541-4da98daeb8ed@intel.com>
To: yocto@lists.yoctoproject.org
In-Reply-To: <866d4701-b299-dcc8-4541-4da98daeb8ed@intel.com>
Message-Id: <A04CBFEE-A6E1-48BE-8F36-67F11D6886BD@iki.fi>
X-Mailer: Apple Mail (2.3445.104.11)
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 24 Jan 2020, at 12:54, Ross Burton <ross.burton@intel.com> wrote:
>=20
> On 24/01/2020 09:02, Anders Montonen wrote:
>> Hi,
>> What's the best way for handling name collisions when using the =
cve-checker tool? For example, there's a ton of Adobe Flex =
vulnerabilities that are reported against the Flex lexical analyzer =
generator tool. Whitelisting the individual CVEs would be one option, =
but the list is pretty long.
>=20
> Set CVE_PRODUCT, if you use a colon then you can set the vendor too.
>=20
> This specific instance is already fixed in oe-core master:
>=20
> # Not Apache Flex, or Adobe Flex, or IBM Flex.
> CVE_PRODUCT =3D "flex_project:flex=E2=80=9D

Thanks (and to Mikko too), that worked, though I=E2=80=99m a bit curious =
how one would find the proper vendor name, especially for a project like =
this where there=E2=80=99s no clear company name.

Regards,
Anders

