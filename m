Return-Path: <liusong@zerozero.cn>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88AFFE00A5C; Thu, 15 Jun 2017 18:18:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [42.159.161.217 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 912 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Jun 2017 18:18:41 PDT
Received: from cn01-SHA-obe.outbound.protection.partner.outlook.cn
	(mail-shaop0217.outbound.protection.partner.outlook.cn
	[42.159.161.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F7B0E009A5
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 18:18:41 -0700 (PDT)
Received: from BJXPR01MB0280.CHNPR01.prod.partner.outlook.cn (10.41.52.154) by
	BJXPR01MB0277.CHNPR01.prod.partner.outlook.cn (10.41.51.28) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1143.18;
	Fri, 16 Jun 2017 01:03:26 +0000
Received: from BJXPR01MB0280.CHNPR01.prod.partner.outlook.cn ([10.41.52.154])
	by BJXPR01MB0280.CHNPR01.prod.partner.outlook.cn ([10.41.52.154])
	with mapi id 15.01.1143.018; Fri, 16 Jun 2017 01:03:26 +0000
From: =?gb2312?B?wfXLyQ==?= <liusong@zerozero.cn>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: About the sstate cache
Thread-Index: AQHS5jvFgkaIoHUg00SwwjPvoqplpw==
Date: Fri, 16 Jun 2017 01:03:26 +0000
Message-ID: <BJXPR01MB0280ADD37F2B183E97C3FD6CBCC10@BJXPR01MB0280.CHNPR01.prod.partner.outlook.cn>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=liusong@zerozero.cn; 
x-originating-ip: [218.241.251.234]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BJXPR01MB0277:
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BJXPR01MB0277;
x-exchange-antispam-report-cfa: BCL:0; PCL:0; RULEID:; SRVR:BJXPR01MB0277;
	BCL:0; PCL:0; RULEID:; SRVR:BJXPR01MB0277; 
x-forefront-prvs: 0340850FCD
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(189002)(328002)(329002)(199002)(14454004)(94316002)(5660300001)(2900100001)(7736002)(97186001)(8936002)(95416001)(81612004)(97336001)(98676001)(55016002)(5640700003)(68736007)(7696004)(54896002)(93516002)(1730700003)(81686001)(102836003)(81816001)(6116002)(93136001)(33656002)(3480700004)(66066001)(94946001)(9686003)(3660700001)(86362001)(77096006)(110136004)(54316003)(59766002)(2501003)(97736004)(49866002)(54356002)(51856002)(47976003)(63696004)(74366001)(56776002)(76796001)(50986002)(74876001)(69226001)(101416001)(56816005)(8676002)(2351001)(74482002)(105586002)(90146001)(106356001)(81156014)(3846002)(65816002)(74706001)(189998001)(47736002)(3280700002)(6916009)(87266001)(19627405001)(76176001)(76786001)(6606003)(47446003)(140573001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BJXPR01MB0277;
	H:BJXPR01MB0280.CHNPR01.prod.partner.outlook.cn; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: zerozero.cn does not designate
	permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: zerozero.cn
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2017 01:03:26.3485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4f0d9b2c-0932-4215-8ab0-0297649d55da
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BJXPR01MB0277
Subject: About the sstate cache
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
X-List-Received-Date: Fri, 16 Jun 2017 01:18:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BJXPR01MB0280ADD37F2B183E97C3FD6CBCC10BJXPR01MB0280CHNP_"

--_000_BJXPR01MB0280ADD37F2B183E97C3FD6CBCC10BJXPR01MB0280CHNP_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGksDQoNCg0KSSBhbSB3b3JraW5nIG9uIHRoZSBwcm9qZWN0IGJhc2VkIG9uIHRoZSB5b2N0byBi
dWlsZCBzeXN0ZW0sIGFuZCB3YW50IHRvIGltcHJvdmUgdGhlIGJ1aWxkIHBlcmZvcm1hbmNlLg0K
DQoNClRoZXJlIGFyZSBtYW55IHBhY2thZ2VzIGRvd25sb2FkZWQgZnJvbSBleHRlcm5hbCBhbmQg
d29uJ3QgYmUgY2hhbmdlZCBuZWFybHkgaW4gdGhlIHdob2xlIHByb2plY3QgbGlmZWN5Y2xlLiBC
dXQgaWYgZG9pbmcgYSBjbGVhbiBidWlsZCB0aGVzZSBwYWNrYWdlcyB3aWxsIGJlIHJlYnVpbHQg
YWdhaW4sIEkgZG9uJ3Qga25vdyB0aGUgc3N0YXRlIGNhY2hlIHdpbGwgYmUgdXNlZCB0byBjYWNo
ZSB0aGVtIG9yIG5vdCA/DQoNCg0KQWxzbyBkb2VzIHNzdGF0ZSBjYWNoZSBvbmx5IGNhY2hlIHRo
ZSBmaWxlIGxldmVsIG9yIHBhY2thZ2UgbGV2ZWwgPyBpZiBvbmx5IGluIGZpbGUgbGV2ZWwgdGhl
IHBhY2thZ2UgbWFraW5nIGlzIHN0aWxsIG5vdCBhdm9pZGVkLCByaWdodCA/DQoNCg0KSXMgdGhl
cmUgZG9jdW1lbnQgYWJvdXQgdGhlIGRldGFpbHMgb2YgdGhlIHNzdGF0ZSBjYWNoZSA/DQoNCg0K
QW55IGluZm9ybWF0aW9uIHdpbGwgYmUgdmVyeSBhcHByZWNpYXRlZC4NCg0KDQpUaGFua3MsDQoN
ClNvbmcNCg==

--_000_BJXPR01MB0280ADD37F2B183E97C3FD6CBCC10BJXPR01MB0280CHNP_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi,</p>
<p><br>
</p>
<p>I am working on the project based on the yocto build system, and want to=
 improve the build performance.</p>
<p><br>
</p>
<p>There are many packages downloaded from external and won't be changed ne=
arly in the whole project lifecycle. But if doing a clean build these packa=
ges will be rebuilt again, I don't know the sstate cache will be used to ca=
che them or not ?</p>
<p><br>
</p>
<p>Also does sstate cache only cache the file level or package level ? if o=
nly in file level the package making is still not avoided, right ?</p>
<p><br>
</p>
<p>Is there document about the details of the sstate cache ?</p>
<p><span style=3D"font-size: 12pt;"><br>
</span></p>
<p><span style=3D"font-size: 12pt;">Any information will be very appreciate=
d.&nbsp;</span></p>
<p><br>
</p>
<p>Thanks,</p>
<p>Song</p>
</div>
</body>
</html>

--_000_BJXPR01MB0280ADD37F2B183E97C3FD6CBCC10BJXPR01MB0280CHNP_--
