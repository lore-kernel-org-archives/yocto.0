Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00FF9E00D14; Fri, 24 Nov 2017 05:59:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.140.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 164548 seconds by postgrey-1.32 at yocto-www;
	Fri, 24 Nov 2017 05:59:35 PST
Received: from g4t3426.houston.hpe.com (g4t3426.houston.hpe.com
	[15.241.140.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3192E00D0B
	for <yocto@yoctoproject.org>; Fri, 24 Nov 2017 05:59:35 -0800 (PST)
Received: from G9W8455.americas.hpqcorp.net (g9w8455.houston.hp.com
	[16.216.161.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g4t3426.houston.hpe.com (Postfix) with ESMTPS id 734E954;
	Fri, 24 Nov 2017 13:59:33 +0000 (UTC)
Received: from G9W8455.americas.hpqcorp.net (2002:10d8:a15e::10d8:a15e) by
	G9W8455.americas.hpqcorp.net (2002:10d8:a15e::10d8:a15e) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Fri, 24 Nov 2017 13:59:33 +0000
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (15.241.52.10) by
	G9W8455.americas.hpqcorp.net (16.216.161.94) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Fri, 24 Nov 2017 13:59:33 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.20) by
	CS1PR8401MB0838.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.18) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.260.4; Fri, 24 Nov 2017 13:59:31 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd]) by
	CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd%18]) with mapi id 15.20.0260.005;
	Fri, 24 Nov 2017 13:59:31 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Executing ptest using image test ?
Thread-Index: AQHTZMiqZG31xrUXyU68T7yj05pCKKMje2aAgAAS7BA=
Date: Fri, 24 Nov 2017 13:59:31 +0000
Message-ID: <CS1PR8401MB0840B4C7DC656142180276BFED260@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
References: <CS1PR8401MB084071ADF580BCCD624BF26DED260@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<1c666fce-c37f-efd8-6ad8-4400e4650e8a@linux.intel.com>
In-Reply-To: <1c666fce-c37f-efd8-6ad8-4400e4650e8a@linux.intel.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CS1PR8401MB0838;
	6:opejXr9k93RpQL3obMgB0oB6k+rAENnsYx9OhkVDc91KTp4GfvL3/mZu3f46le7HpEx64TtSfdLoIqI8p3ieooFbkCHjE/loaU5Nj/mpms0N5q31NK5DKkzLHruXIsSzJR9fXXE2iUjyvbwphuKb3j4I6OttQLOMszMTVIwxtD9Gqdl41Lxqw5K3R80hJRADU7DRJe/epOpV2acci+CIr8VeXwo6oGNu43GmTq0vgFz1PwY46T3q20lo1P3y5NfEA62kbjcVoSfH0wEyJI38vl5Ni+UgljzVCkOwnOMckTFIlFXB4Io0Q677KChs3faQ81jMT8O4zxxEV/4Oup6tGtD3BmezZ4NzP9IDw5111jo=;
	5:WARsUQrVABRHPD4lznIfEmzFlcM4vtV1xt6qlNSrr4Vk6dbuAoyh/6lhj5Uga82Sb4biZaqYBDoMgWr7eSJwLSdgR1zPFzBX7ii5KDg++GTUTrmrUUYsjAnY1FkXhpYgRol8Na+wYiY3n2e8O8E9vMcmh+G08UrJsAEJRAh9rXw=;
	24:3S/fJ6X3MYPPpjUpydFBXU0DpfHG7IuQhooXJHJSAsSXvZIkUnhkJXCeIKdXresxirB3nU44PgfyjLduOYU50PSlgCLdmkHFouh/XKCu5nY=;
	7:36I47z49C8FlkbM1/Cl8ptzQWZchc6EVbHBAlBjzdp+sMGbhQ+yedfhy7uyNAwBr+7U0+BiyUtp6KcjagTqKH+W/7hiq9GZpEThZmkwN8bsdsLv6XUdbdsX+rkBtbgcBOYGThMj9OINaXTbb2wolM5rBS3Hj64Dh+Gd4fnHTM/NsfY1SUANX4q72mrvnP3FzVKjbFiVQQ7fy6J2a0M/FfuYWpHp4H3yswiVSEM9eNovMun7rRlDlrV4d83ADuElH
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:(222181515654134); BCL:0; PCL:0;
	RULEID:(48565401081)(4534020)(4602075)(4627115)(8989060)(201703031133081)(201702281549075)(8990040)(2017052603199);
	SRVR:CS1PR8401MB0838; 
x-ms-traffictypediagnostic: CS1PR8401MB0838:
x-ms-office365-filtering-correlation-id: a94d0bdf-605f-49bf-909c-08d5334395cd
x-microsoft-antispam-prvs: <CS1PR8401MB0838B590079C080EE2340CEFED260@CS1PR8401MB0838.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(227479698468861)(21532816269658)(222181515654134)(228905959029699)(17755550239193);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(5005006)(8121501046)(93006095)(93001095)(3231022)(3002001)(10201501046)(6055026)(6041248)(20161123564025)(20161123562025)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123560025)(6072148)(201708071742011);
	SRVR:CS1PR8401MB0838; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:CS1PR8401MB0838; 
x-forefront-prvs: 05015EB482
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(979002)(6009001)(376002)(346002)(366004)(39860400002)(55784002)(189002)(199003)(24454002)(2501003)(6116002)(102836003)(50986999)(229853002)(3846002)(54356999)(6506006)(478600001)(6436002)(3660700001)(2950100002)(33656002)(106356001)(3280700002)(6246003)(105586002)(25786009)(55016002)(8936002)(101416001)(2900100001)(76176999)(5660300001)(110136005)(97736004)(74316002)(68736007)(8676002)(81156014)(5250100002)(86362001)(99286004)(316002)(53546010)(53936002)(2906002)(14454004)(305945005)(66066001)(966005)(7736002)(9686003)(189998001)(6306002)(7696005)(81166006)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CS1PR8401MB0838;
	H:CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yannick.koehler@hpe.com; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a94d0bdf-605f-49bf-909c-08d5334395cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2017 13:59:31.1426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CS1PR8401MB0838
X-OriginatorOrg: hpe.com
Subject: Re: Executing ptest using image test ?
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
X-List-Received-Date: Fri, 24 Nov 2017 13:59:37 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

  I had pretty much done all that is documented under 4.21 of this document=
ation.  I can execute my test within the image using "ptest_runner" and I s=
ee it PASS/FAIL according to my test's content.  So that's great, but the p=
roblem with this is still that I need to manually invoke qemu and initiate =
the ptest-runner script.  I would like that to occurs from within the testi=
mage using Image test as describe under https://wiki.yoctoproject.org/wiki/=
Image_tests.  Yet it seems that to get image test support I need to write a=
dditional python test scripts which I feel is excessive and since those scr=
ipts are not store within the recipe folder, I feel those test are more MAC=
HINE testing than package testing.

  I would like to use 1 python test to execute and report the result of one=
 or more ptest, in the same automatic way image test does.  I cannot see or=
 connect the dot between ptest and image test by reading and re-reading sec=
tion 4.21.

--
Yannick Koehler

-----Message d'origine-----
De=A0: Alexander Kanavin [mailto:alexander.kanavin@linux.intel.com]=20
Envoy=E9=A0: 24 novembre 2017 07:48
=C0=A0: Koehler, Yannick <yannick.koehler@hpe.com>; yocto@yoctoproject.org
Objet=A0: Re: [yocto] Executing ptest using image test ?

On 11/24/2017 04:07 AM, Koehler, Yannick wrote:
> I have some ptest which I would like to run quickly inside qemux86.=A0 I=
=20
> see that the TEST_SUITES would allow me to do that, and that there is=20
> a _ptest.py script which seems to interface with ptest-runner.=A0 Yet, I=
=20
> am unclear how it connects together if it does.
>=20
>=20
> If anyone know how this can be done, can you point me on some doc=20
> related to this?

Here:
http://www.yoctoproject.org/docs/2.4/dev-manual/dev-manual.html#testing-pac=
kages-with-ptest


Alex

