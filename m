Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A67CE00D61; Wed,  6 Dec 2017 08:59:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.233.44.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 53044 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Dec 2017 08:59:42 PST
Received: from g2t2353.austin.hpe.com (g2t2353.austin.hpe.com [15.233.44.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 771C0E00D00
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 08:59:42 -0800 (PST)
Received: from G4W9122.americas.hpqcorp.net (exchangepmrr1.us.hpecorp.net
	[16.210.21.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2353.austin.hpe.com (Postfix) with ESMTPS id 5F253A6;
	Wed,  6 Dec 2017 16:59:40 +0000 (UTC)
Received: from G4W9122.americas.hpqcorp.net (2002:10d2:1511::10d2:1511) by
	G4W9122.americas.hpqcorp.net (2002:10d2:1511::10d2:1511) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Wed, 6 Dec 2017 16:59:40 +0000
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (15.241.52.10) by
	G4W9122.americas.hpqcorp.net (16.210.21.17) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Wed, 6 Dec 2017 16:59:40 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.20) by
	AT5PR84MB0290.NAMPRD84.PROD.OUTLOOK.COM (10.162.138.24) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.302.9; Wed, 6 Dec 2017 16:59:38 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd]) by
	CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd%18]) with mapi id 15.20.0282.012;
	Wed, 6 Dec 2017 16:59:37 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: "Magallon, Marcelo" <marcelo.magallon@hpe.com>
Thread-Topic: [yocto] externalsrc + sstate why is not compatible?
Thread-Index: AQHTbjedWgwnr0N2hk+XqKAyNmw3B6M2AS+AgABZ9+CAAAqxgIAAJHgA
Date: Wed, 6 Dec 2017 16:59:37 +0000
Message-ID: <CS1PR8401MB0840A114AD0B63DF969D818BED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
References: <CS1PR8401MB0840E46EE333163758C5D9B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<d7cac90e-b07c-fe83-945f-82725ceeda81@linux.intel.com>
	<CS1PR8401MB08404303F44A38D6603DE3B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<20171206144616.zlfpkmqgz2wsexol@nyx.americas.hpqcorp.net>
In-Reply-To: <20171206144616.zlfpkmqgz2wsexol@nyx.americas.hpqcorp.net>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yannick.koehler@hpe.com; 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AT5PR84MB0290;
	6:cxnsYVwVW+nSE6GoAv9xJRbSL7h7CQGr+n1ooWHIzl2fSQzQed/gA3J8mLoPAaCTmmQizDhxWbsrDb/tA8Xmx91CCvlTihQyvGtIKviIuIw8/qnLu2mTmDTKkvVrdOo5n+LPoGDIiEwH2Sw4qOlagcGa7Ew43A6YHiJhe04lWd+JgHKNFHMGW9u1ctMx8hj4edkhA58d8V+z6xDWAfl6IVhSGINuH0+HATVk8k7YUq2BIajmETERcIoLqxkb1mF2DwYIZrDGyg1yPI6VH149xfRiutXlYKFiFGeJAgxc5LyDSyQvvfrBcp536T+eh+Y4WjImdU5yMRr3cuAbraCexLPNh12kyWbkWkIH8MnLRks=;
	5:inwRIwLYCwSIYFOIbX1h/6c3jjuTQeb2jNFGCrHaRA0OXMoh8WjeG8EYNF7x37e+NJs3yZ2ltoXSKXbe/RBoG5arLEJcYp5uxcs2Lp+qJkZic+XQ5pUrR4s5+EupVn2ywtHYWLubGIHqwpoYPtQ87ST23o6Vcy/M+F2Te4OvI2Y=;
	24:FDF3aPosr+m0PpbBZdNaTYnkFvGFURXMIKqVfuDMl9moeDzyFduU1Ge17w7+AEbnAKk0q6Iogg4E/Wkb7TF/mRroNXrmHAb75ASE/A8IKaw=;
	7:Eg2qcqYrhkM0pUGaW/bGqm/PjMXbLA0MSCLQAwXYMnWlreZ2z0yrHL/cJdqNZ0Ep2/1t1M5GJNGSsTI/yO+9V1TxVuXOAVzV9+O4rPoqykhOVf4q+Lqf5OYTm/2WRXmD7oRcDBRCjajOoeeBlmIvmcOH8P+CBxEpLZsVNX9TJ19ZHojS1jvp5EUmeYVR4sg66lYNCcjDPbD58hs3lRnBkfEdpeUmhXDBuAEUdibUfhOqD0Z4UZmaVImjuyOhHvjV
x-ms-exchange-antispam-srfa-diagnostics: SSOS;SSOR;
x-forefront-antispam-report: SFV:SKI; SCL:-1; SFV:NSPM;
	SFS:(10019020)(366004)(376002)(346002)(39860400002)(55784002)(189003)(199004)(24454002)(6246003)(6636002)(6862004)(101416001)(106356001)(105586002)(99286004)(33656002)(4326008)(25786009)(55016002)(2900100001)(6436002)(6506006)(229853002)(68736007)(74316002)(7736002)(305945005)(8936002)(53936002)(9686003)(66066001)(478600001)(14454004)(3660700001)(5250100002)(81156014)(3280700002)(81166006)(8676002)(5660300001)(54906003)(2906002)(316002)(7696005)(93886005)(97736004)(76176011)(2950100002)(86362001)(3846002)(6116002)(102836003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AT5PR84MB0290;
	H:CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
x-ms-office365-filtering-correlation-id: 72540433-6ac4-49c0-8ce5-08d53ccabc05
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:(222181515654134); BCL:0; PCL:0;
	RULEID:(5600026)(4604075)(4534020)(4602075)(4627115)(8989060)(201703031133081)(201702281549075)(8990040)(48565401081)(2017052603286);
	SRVR:AT5PR84MB0290; 
x-ms-traffictypediagnostic: AT5PR84MB0290:
x-microsoft-antispam-prvs: <AT5PR84MB02903928B743E49A727DE7DCED320@AT5PR84MB0290.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(227479698468861)(222181515654134)(228905959029699); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(3231022)(93006095)(93001095)(10201501046)(3002001)(6055026)(6041248)(20161123562025)(20161123555025)(20161123564025)(20161123560025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(201708071742011);
	SRVR:AT5PR84MB0290; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:AT5PR84MB0290; 
x-forefront-prvs: 05134F8B4F
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 72540433-6ac4-49c0-8ce5-08d53ccabc05
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2017 16:59:37.6772 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AT5PR84MB0290
X-OriginatorOrg: hpe.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: externalsrc + sstate why is not compatible?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Dec 2017 16:59:43 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Ok, will try that.  If that works, I may see if I can alter the file fetche=
r to use symlinks, not sure if sstate subsystem will like that or not.

If we do so, and someone change the file in /src/somedir will yocto redo th=
e fetch/unpack pattern to recopy over the original content by itself?

--
Yannick Koehler

-----Message d'origine-----
De=A0: Magallon, Marcelo=20
Envoy=E9=A0: 6 d=E9cembre 2017 09:47
=C0=A0: Koehler, Yannick <yannick.koehler@hpe.com>
Cc=A0: Alexander Kanavin <alexander.kanavin@linux.intel.com>; yocto@yoctopr=
oject.org
Objet=A0: Re: [yocto] externalsrc + sstate why is not compatible?

On Wed, Dec 06, 2017 at 02:13:26PM +0000, Koehler, Yannick wrote:

> In regards to file fetcher, I will go check the code, I thought the=20
> unpack would only occurs for tarball, not subdir.

If you have:

	SRC_URI :=3D "file://some-dir/"

and your tree looks somewhat like this:

	.git
	poky
	src/some-dir

and you set things up so that bitbake will look in src/ (set FILESPATH), th=
en it will copy "some-dir" to $WORKDIR/some-dir, and you can point S there.

This satisfies your requirement as I understand it (single repo, all the so=
urce code is there, including poky).

The huge downside of this is that some-dir is copied and this confuses peop=
le.

I know the bitbake version in 2.4 has some differences that might help here=
, but I haven't had the chance to investigate further.

Marcelo

