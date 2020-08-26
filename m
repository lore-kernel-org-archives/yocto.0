Received: from mail3.multitech.com (mail3.multitech.com [65.126.90.13])
 by mx.groups.io with SMTP id smtpd.web10.16176.1598459383983730744
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 09:29:44 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: multitech.com, ip: 65.126.90.13, mailfrom: prvs=15008cc0bf=john.klug@multitech.com)
Received: from mail3.multitech.com (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 61C95825A7_F468DF7B
	for <yocto@lists.yoctoproject.org>; Wed, 26 Aug 2020 16:29:43 +0000 (GMT)
Received: from EXCHDBPM1.dc.multitech.prv (unknown [192.168.11.6])
	(using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
	(Client CN "", Issuer "MultiTech Systems Intermediate CA 01" (verified OK))
	by mail3.multitech.com (Sophos Email Appliance) with ESMTPS id B00628256A_F468DF6F
	for <yocto@lists.yoctoproject.org>; Wed, 26 Aug 2020 16:29:42 +0000 (GMT)
Received: from EXCHDBPM1.dc.multitech.prv (192.168.11.6) by
 EXCHDBPM1.dc.multitech.prv (192.168.11.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Wed, 26 Aug 2020 11:29:42 -0500
Received: from EXCHDBPM1.dc.multitech.prv ([192.168.11.6]) by
 EXCHDBPM1.dc.multitech.prv ([192.168.11.6]) with mapi id 15.01.1847.009; Wed,
 26 Aug 2020 11:29:42 -0500
From: "John Klug" <john.klug@multitech.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: Mono build has unresolved QA errors
Thread-Topic: Mono build has unresolved QA errors
Thread-Index: AdZ7FpUCYsdLWUDSRFSXiBjGcFReEwArx/Zg
Date: Wed, 26 Aug 2020 16:29:42 +0000
Message-ID: <d840ec3d94a7419aba10277a8214038b@multitech.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.11.45]
MIME-Version: 1.0
X-SASI-RCODE: 200
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Because my links turned into a redirect, I will translate into subject, aut=
hor, and date from this mailing list on related topics:

"mono yocto build" Bing Mao Sep 20 2018
"mono build issue" M=E1t=E9 T=FCske Feb 7 2018

-----Original Message-----
From: John Klug=20
Sent: Tuesday, August 25, 2020 3:12 PM
To: yocto@lists.yoctoproject.org
Subject: Mono build has unresolved QA errors

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
