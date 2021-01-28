Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.5003.1611818295145781332
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 23:18:15 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 spf.crsend.com}: limit exceeded (domain: vivavis.com, ip: 198.145.29.25, mailfrom: prvs=0655d22253=embedded@vivavis.com)
Received: from mx-relay90-hz1.antispameurope.com (mx-relay90-hz1.antispameurope.com [94.100.133.90])
	by mail.yoctoproject.org (Postfix) with ESMTPS id F02B138C04B4
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2021 07:18:13 +0000 (UTC)
Received: from unknown ([185.80.187.2]) by mx-relay90-hz1.antispameurope.com;
 Thu, 28 Jan 2021 08:18:11 +0100
Received: from grp-ex01.Vivavis.int (192.168.17.53) by grp-ex01.Vivavis.int
 (192.168.17.53) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3; Thu, 28 Jan 2021
 08:18:04 +0100
Received: from grp-ex01.Vivavis.int ([fe80::b524:e95:f072:33b7]) by
 grp-ex01.Vivavis.int ([fe80::b524:e95:f072:33b7%5]) with mapi id
 15.02.0792.003; Thu, 28 Jan 2021 08:18:04 +0100
From: "Carsten Stelling" <embedded@vivavis.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
CC: Konrad Weihmann <kweihmann@outlook.com>
Subject: Re: [yocto] any interest in an official "meta-rubygems" layer?
Thread-Topic: [yocto] any interest in an official "meta-rubygems" layer?
Thread-Index: AQHW9HZkizIyyMzJJEas97JSLKKXW6o8n8oA
Date: Thu, 28 Jan 2021 07:18:04 +0000
Message-ID: <22334e99756c40889c2913862dd9ef77@vivavis.com>
References: <633c9c84-1d35-48f1-82b7-4f2dabc2585@crashcourse.ca>
In-Reply-To: <633c9c84-1d35-48f1-82b7-4f2dabc2585@crashcourse.ca>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.117.1]
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 23
x-g-data-mailsecurity-for-exchange-server: 61419075-592b-4c8d-b7a0-bf1d145a8b8e
x-c2processedorg: 2f045ba3-9b34-4118-a5bd-6c10d5957477
MIME-Version: 1.0
X-cloud-security-sender: embedded@vivavis.com
X-cloud-security-recipient: yocto@yoctoproject.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay90-hz1.antispameurope.com with 50CE21A401D7
X-cloud-security-connect: unknown[185.80.187.2], TLS=1, IP=185.80.187.2
X-cloud-security-Digest: 0f660a7e873dee0c6e95ceb7daf44a9c
X-cloud-security: scantime:1.580
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>   since it appears that i will be diving head-first into messing with rub=
y in some
> current YP builds, is there any interest in creating a meta-rubygems laye=
r to start
> collecting recipes based on what konrad weihmann has done in his meta-sca
> layer here?

We would also find an official layer for gems interesting.=20
We are currently using the old ruby.bbclass from the meta-ruby layer=20
from openemebedded to build the gems.
We are also particularly interested in gems that need cross compiling, e.g.=
 ruby-pcap.
=20
srp
