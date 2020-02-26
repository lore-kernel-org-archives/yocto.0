Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1494.1582747371249859408
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2020 12:02:51 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sakuraus.com, ip: 140.211.169.56, mailfrom: gwilson@sakuraus.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A69ACE01723; Wed, 26 Feb 2020 12:02:50 -0800 (PST)
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
	*      [209.222.82.225 listed in list.dnswl.org]
Received: from outbound-ip28b.ess.barracuda.com (outbound-ip28b.ess.barracuda.com [209.222.82.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A19EE016FF
	for <yocto@yoctoproject.org>; Wed, 26 Feb 2020 12:02:49 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by mx6.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=NO); Wed, 26 Feb 2020 20:02:48 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
 (10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Wed, 26
 Feb 2020 12:02:46 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
 ([::1]) with mapi id 15.01.0669.032; Wed, 26 Feb 2020 12:02:46 -0800
From: "Greg Wilson-Lindberg" <gwilson@sakuraus.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Help with how to debug dependency error
Thread-Topic: Help with how to debug dependency error
Thread-Index: AQHV7N7Hdgee8spSzUutZnotev63FA==
Date: Wed, 26 Feb 2020 20:02:46 +0000
Message-ID: <a701f94801884187afdd869e5a1b5420@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.155]
MIME-Version: 1.0
X-BESS-ID: 1582747368-893011-4916-39644-1
X-BESS-VER: 2019.1_20200225.0042
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.222531 [from 
	cloudscan12-48.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am building a system based on a boot2qt warrior Yocto build=A0 for the Ra=
spberry Pi4.

Our system is building just fine until I try to add support for OSTree. Whe=
n I do that I get 3 errors for existing recipes, "nothing provides virtual/=
gbm", "nothing provides virtual/egl", and "nothing provides virtual/gles2".=
 All of these are specified in PACKAGECONFIG[] lines in qtbase_git.bb as re=
quired when gbm and gles2 are turned on.

I have searched for gbm in the meta-updater & meta-updater-raspberrypi dire=
ctories that get included to add support for OSTree and found no reference.=
 It looks like the OSTree inclusion is requesting something that is in turn=
 requesting gbm and gles2 but I haven't been able to figure out what that i=
s.

I have tried to print out the variables and a dependency graph to help me t=
rack down what is going wrong, but these don't work because the errors abor=
t before I can get the information I need out.

Can anyone point me to a way to find out what is triggering the change in t=
he gbm & gles2 packages?

Thanks in advance,
Greg Wilson-Lindberg

    =
