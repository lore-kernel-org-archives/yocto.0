Received: from mail2.multitech.com (mail2.multitech.com [65.126.90.11])
 by mx.groups.io with SMTP id smtpd.web10.1347.1628295907682856882
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Aug 2021 17:25:07 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: multitech.com, ip: 65.126.90.11, mailfrom: prvs=1846896c08=john.klug@multitech.com)
Received: from mail2.multitech.com (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 33608585C95_10DD2E3B
	for <yocto@lists.yoctoproject.org>; Sat,  7 Aug 2021 00:25:07 +0000 (GMT)
Received: from EXCHDBPM2.dc.multitech.prv (unknown [192.168.11.7])
	(using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
	(Client CN "", Issuer "MultiTech Systems Intermediate CA 01" (verified OK))
	by mail2.multitech.com (Sophos Email Appliance) with ESMTPS id D63BB584858_10DD2E2F
	for <yocto@lists.yoctoproject.org>; Sat,  7 Aug 2021 00:25:06 +0000 (GMT)
Received: from EXCHDBPM1.dc.multitech.prv (192.168.11.6) by
 EXCHDBPM2.dc.multitech.prv (192.168.11.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 6 Aug 2021 19:25:06 -0500
Received: from EXCHDBPM1.dc.multitech.prv ([192.168.11.6]) by
 EXCHDBPM1.dc.multitech.prv ([192.168.11.6]) with mapi id 15.01.2242.012; Fri,
 6 Aug 2021 19:25:06 -0500
From: "John Klug" <john.klug@multitech.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: How does one add do_fetch, do_unpack to an image recipe?
Thread-Topic: How does one add do_fetch, do_unpack to an image recipe?
Thread-Index: AQHXiyKqjBpz7Uyd302/imWmmVBJQg==
Date: Sat, 7 Aug 2021 00:25:06 +0000
Message-ID: <4b07fb124a79466a9e8ee0d138151931@multitech.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.52.101]
MIME-Version: 1.0
X-SASI-RCODE: 200
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am using dunfell.

In the documentation I see:

https://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-=
manual.html#unsetting-variables

In case some filter removes the yocto URL, I am referring to:

    docs/current/bitbake-user-manual/bitbake-user-manual.html#unsetting-var=
iables

Which has this example:

    unset do_fetch[noexec]

If I put this in my image recipe, the do_fetch noexec item still exists.

In order to fix this problem I had to patch openembedded-core/meta/classes/=
image.bbclass, and remove the line setting do_fetch[noexec]=3D"1" and the o=
nes following.

I need to do a fetch for my IMAGE_POSTPROCESS_COMMAND.


Thanks.
