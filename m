Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36A7AE00FFC; Wed,  7 Sep 2016 00:55:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.56 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0056.outbound.protection.outlook.com [104.47.32.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCD8EE00E39
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2016 00:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=qqWTLyz4DPQaT845LzJduoDP+KMGet6KxnPhVHnPjBg=;
	b=WGAJvbHbrX55wen8AZaoeDGREaPeoKhwA4sH/i8WVS06qthGY2yN+B0exKTT4KgvmOguP00jTKVkK9KmJgylic2CQX+AJAOb3UZz9EOzYDo9RWUe1RxZO58eB20dOcsbbsx7FFGBKCmK2zPf5jzFqHf1EFCMedlaJr5r9YABut4=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1593.prod.exchangelabs.com (10.163.139.12) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.599.9; Wed, 7 Sep 2016 07:21:53 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0599.016; Wed, 7 Sep 2016 07:21:53 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: debugging pkg_postinst?
Thread-Index: AQHSCNhpSvRt/u0itEuiX3rk4H9Gbw==
Date: Wed, 7 Sep 2016 07:21:53 +0000
Message-ID: <CY1PR0101MB159490801395422206AEB75AD7F80@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 2b86e9c4-8171-4929-098c-08d3d6efa484
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1593;
	6:+uysSvU1bhBkBJj5/nLV4Q+7U1RKXdZ4glAl4q0wmH/mQ9/2D1+pJ+o8ZL6WfyJDSPeKRAQFyUhi+QSAOQb24lrttWrOVpGfhgWp56Ntnp2AC9Qz47FGnhT8YAyMhG+x30e0nN1J3sSIttRggKSXVMW6Lem+4b7wrafFk67kaiAtGovxtXoc7b0Vx6UEmBHNOZiPrVeS0/UId8o7w5NgrmvhyJbx1diKIVOI+jlw2QmTFhcODE2dNjXdn5i7MVQVIGv/wr429JGKwhBu9icLnzOjaXgnBIVYsSAFxLgO44c=;
	5:Qg0chkL7d7Ske/1g+lOu7kzkpY6dZzl0MV5yhsrAAQ+0vpPqbhR8fYqPhke+ZvEmxFUJXsqLzP8Uxq4FvtY6ZDQpt7geUheNKMY8zjy0RnEXC/AUAFJqOHNrMVU0oNI0bGy7qU8FLzdPJlNHw83qrA==;
	24:fmd22QBmsGaJWPCsJSxZUzabLhKo1wi2cGz7qibn79bG6WJDs8kG1cRL3jtY7V9mEUrwAvLsJryQqlfKZbMLYb3pdewebphGYIj5jr5va3g=;
	7:qHQ1P4xpuui2MIXuIWCP97we7QFiFnROu0i62imVbwCqZVsfnbEGt5m0eMOPYzSIZQnJeqwJDNKw4cXZ2yqAf7wD9MkySTfsT1Ltqa8L3fSyL/zbNZoDRat3Kmzb1J0/0D+w64DlIUW0Kh8SU04Xpja7tTDd80T043lZaSMXFGZknE0wkvp22rKCoyahE8cd42afBo8jSnQZRlvq1ymu6JUi2av/69Uz4OpIkaH/MGQPzFGvjyY1zVCRLAfGyWv5
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1593;
x-microsoft-antispam-prvs: <CY1PR0101MB1593056FBD6C2DAAB8AD3416D7F80@CY1PR0101MB1593.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:CY1PR0101MB1593; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1593; 
x-forefront-prvs: 0058ABBBC7
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(189002)(54094003)(199003)(8936002)(86362001)(1730700003)(10400500002)(16236675004)(5640700001)(9686002)(50986999)(54356999)(107886002)(11100500001)(110136002)(33656002)(87936001)(19625215002)(5002640100001)(3280700002)(3660700001)(450100001)(189998001)(68736007)(74316002)(8676002)(7846002)(2906002)(3846002)(101416001)(19627405001)(586003)(102836003)(2900100001)(77096005)(6116002)(2501003)(7736002)(7696003)(106356001)(105586002)(92566002)(7116003)(122556002)(2351001)(5660300001)(81156014)(97736004)(106116001)(81166006)(229853001)(66066001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1593;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2016 07:21:53.2243 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1593
Subject: debugging pkg_postinst?
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
X-List-Received-Date: Wed, 07 Sep 2016 07:55:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB159490801395422206AEB75AD7F80CY1PR0101MB1594_"

--_000_CY1PR0101MB159490801395422206AEB75AD7F80CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yocto.

This may be a novice question, but just in case you have suggestion:


Debugging pkg_postinst script is simply taking time for me, since I wait ro=
otfs creation to confirm its result.

This is a overkill since rpm creation is just a few min, but generating who=
le rootfs takes hours.

I wonder if there is a better way to do this.


I imagine trying install of individual rpm file on target may give me infor=
mation (since rpm installation shall run postinst script as well).

But, rather, it would be handy if I can invoke bitbake command and let it j=
ust run rootfs portion of my component.


--_000_CY1PR0101MB159490801395422206AEB75AD7F80CY1PR0101MB1594_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hello Yocto.</p>
<p><span style=3D"font-size: 12pt;">This may be a novice question, but just=
 in case you have suggestion:</span><br>
</p>
<p><br>
</p>
<p>Debugging pkg_postinst script is simply taking time for me, since I wait=
 rootfs creation to confirm its result.</p>
<p>This is a overkill since rpm creation is just a few min, but generating =
whole rootfs takes hours.</p>
<p>I wonder if there is a better way to do this.</p>
<p><br>
</p>
<p>I imagine trying install of individual rpm file on target may give me in=
formation (since rpm installation shall run postinst script as well).</p>
<p>But, rather, it would be handy if I can invoke&nbsp;bitbake command and =
let it just run rootfs portion of my component.</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_CY1PR0101MB159490801395422206AEB75AD7F80CY1PR0101MB1594_--
