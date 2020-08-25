Received: from mail3.multitech.com (mail3.multitech.com [65.126.90.13])
 by mx.groups.io with SMTP id smtpd.web12.3522.1598386334651508310
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Aug 2020 13:12:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: multitech.com, ip: 65.126.90.13, mailfrom: prvs=1499208729=john.klug@multitech.com)
Received: from mail3.multitech.com (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 0C3FA82E22_F45709EB
	for <yocto@lists.yoctoproject.org>; Tue, 25 Aug 2020 20:12:14 +0000 (GMT)
Received: from EXCHDBPM2.dc.multitech.prv (unknown [192.168.11.7])
	(using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
	(Client CN "", Issuer "MultiTech Systems Intermediate CA 01" (verified OK))
	by mail3.multitech.com (Sophos Email Appliance) with ESMTPS id C1B4582E2B_F457095F
	for <yocto@lists.yoctoproject.org>; Tue, 25 Aug 2020 20:12:05 +0000 (GMT)
Received: from EXCHDBPM1.dc.multitech.prv (192.168.11.6) by
 EXCHDBPM2.dc.multitech.prv (192.168.11.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 25 Aug 2020 15:12:05 -0500
Received: from EXCHDBPM1.dc.multitech.prv ([192.168.11.6]) by
 EXCHDBPM1.dc.multitech.prv ([192.168.11.6]) with mapi id 15.01.1847.009; Tue,
 25 Aug 2020 15:12:05 -0500
From: "John Klug" <john.klug@multitech.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Mono build has unresolved QA errors
Thread-Topic: Mono build has unresolved QA errors
Thread-Index: AdZ7FpUCYsdLWUDSRFSXiBjGcFReEw==
Date: Tue, 25 Aug 2020 20:12:05 +0000
Message-ID: <b3beba5221f6487aba1086048e74b837@multitech.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.20.7]
MIME-Version: 1.0
X-SASI-RCODE: 200
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am building the following version of meta-mono:
commit 7a1e79ec48508edc19a33e8df567c49d0be3eb8c (HEAD, origin/thud)
Merge: 6de5152 9977cab
Author: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date:   Wed May 27 13:36:43 2020 +0100

The package mono 6.8.123 was built using Ubuntu 16.04.1.

I am seeing RDEPENDS QA errors when building mono in Thud.  This is the fir=
st:

ERROR: mono-6.8.0.123-r0 do_package_qa: QA Issue: /usr/lib/mono/4.0-api/Sys=
tem.Web.Http.dll contained in package mono-libs-4.0 requires mono(System.Ne=
t.Http), but no providers found in RDEPENDS_mono-libs-4.0? [file-rdeps]

These errors are also seen in these two posts that seem to be unresolved:

https://www.yoctoproject.org/pipermail/yocto/2018-February/039930.html

https://www.yoctoproject.org/pipermail/yocto/2018-September/042625.html
=20
