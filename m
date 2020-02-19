Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.258.1582149592217150787
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:59:52 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sakuraus.com, ip: 140.211.169.56, mailfrom: gwilson@sakuraus.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4377E0176D; Wed, 19 Feb 2020 08:54:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [209.222.82.220 listed in list.dnswl.org]
Received: from outbound-ip23b.ess.barracuda.com (outbound-ip23b.ess.barracuda.com [209.222.82.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74F53E0176B
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 08:54:30 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by mx7.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256 bits=256 verify=NO); Wed, 19 Feb 2020 16:54:29 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
 (10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Wed, 19
 Feb 2020 08:54:14 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
 ([::1]) with mapi id 15.01.0669.032; Wed, 19 Feb 2020 08:54:14 -0800
From: "Greg Wilson-Lindberg" <gwilson@sakuraus.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: [meta-updater] [meta-updater-raspberrypi] ERROR: No recipes available for: ..../meta-updater-raspberrypi/recipes-bsp/u-boot/libubootenv_%.bbappend
Thread-Topic: [meta-updater] [meta-updater-raspberrypi] ERROR: No recipes
 available for:
   ..../meta-updater-raspberrypi/recipes-bsp/u-boot/libubootenv_%.bbappend
Thread-Index: AQHV5oRltGcke9hhTE6YqYLrVFyWVg==
Date: Wed, 19 Feb 2020 16:54:14 +0000
Message-ID: <d899470fd46248c68c3c96a2aa33f5fa@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.142]
MIME-Version: 1.0
X-BESS-ID: 1582131244-893013-21822-142831-4
X-BESS-VER: 2019.1_20200214.2117
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.222370 [from 
	cloudscan11-30.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

 I'm trying to add support for ostree to out boot2qt yocto warrior build fo=
r raspberry pi4. I've added meta-updater & meta-updater-raspberrypi to the =
build and when I start bitbake I get the following error:

ERROR: No recipes available for:
=A0 .../sources/meta-updater-raspberrypi/recipes-bsp/u-boot/libubootenv_%.b=
bappend

I've tried downloading the HereOtaConnect sample project but it doesn't hav=
e the libubootenv recipe.
I researched where libubootenv is from and it is part of the sbabic swupdda=
te system. Does this mean that I need to install meta-swupdate to get the l=
ibuboot? Does libubootenv automatically disable the fw* utilities from uboo=
t?
Is there something else that I'
Regards,
Greg Wilson-Lindberg

    =20
