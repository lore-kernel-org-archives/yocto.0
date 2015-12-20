Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F560E00C32; Sun, 20 Dec 2015 01:18:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 910 seconds by postgrey-1.32 at yocto-www;
	Sun, 20 Dec 2015 01:18:42 PST
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0073.outbound.protection.outlook.com [104.47.101.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DB32E00406
	for <yocto@yoctoproject.org>; Sun, 20 Dec 2015 01:18:42 -0800 (PST)
Received: from MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM (10.164.118.148) by
	MA1PR01MB0055.INDPRD01.PROD.OUTLOOK.COM (10.164.118.147) with Microsoft
	SMTP Server (TLS) id 15.1.361.13; Sun, 20 Dec 2015 09:03:26 +0000
Received: from MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM ([10.164.118.148]) by
	MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM ([10.164.118.148]) with mapi id
	15.01.0361.006; Sun, 20 Dec 2015 09:03:26 +0000
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to add disk space to qemumips image
Thread-Index: AQHROwUXYbaE7JKN0Uq7pvQIncB05w==
Date: Sun, 20 Dec 2015 09:03:26 +0000
Message-ID: <MA1PR01MB00569830BC74B09868831E5282E30@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Raghavendra.Kakarla@inedasystems.com; 
x-originating-ip: [25.164.117.4]
x-microsoft-exchange-diagnostics: 1; MA1PR01MB0055;
	5:mIWAxbEa3p33neZmASVKRfOY+b5g/mDHZ0JeGtsw0uYqInJhR3bfVE8HLBQMos+NwKKKgpNSVL6we36W3f3Xw95EoQcH7rNVE1SH0JSekPZcYJLU4Z6tkFjbXUrNPfrmm0u6t3Xor+5HFhT4tBpBHg==;
	24:zKZlhwCqpDy+DbCJ0HpYGExqh1KChY1Dg3gFWxUAq9L4yCkHynTxwWpoyQg6Bg6G5e/dhz7PYCc13MankIadySeSyv6pcXHRVhUro8Cn1IE=;
	20:BMJSWYYnR3dcsRPNU+WM/dOghq/ePzScxMOc3eYYVydnpyC6/ZJ3JwaW2qttfyJOFdrtn478pQ/ZfZj8ydUP6ik/Nyv8jWdRejJb2/5gJptdcR10yb6l+4VPkcfF7ah6ZT2DhkpC7uH6q3c/PhuAVnCpCe3GyqwnbJPCYS54Ftk=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:MA1PR01MB0055;
x-microsoft-antispam-prvs: <MA1PR01MB005507DC266A8C450D8F467282E30@MA1PR01MB0055.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(520078)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:MA1PR01MB0055; BCL:0; PCL:0; RULEID:; SRVR:MA1PR01MB0055; 
x-forefront-prvs: 0796EBEDE1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(199003)(189002)(51874003)(53754006)(16236675004)(19627405001)(92566002)(5004730100002)(5002640100001)(189998001)(558084003)(86362001)(229853001)(2351001)(450100001)(11100500001)(66066001)(105586002)(106356001)(106116001)(5008740100001)(40100003)(102836003)(2501003)(5003600100002)(77096005)(2900100001)(54356999)(33656002)(1096002)(97736004)(81156007)(5001960100002)(1220700001)(107886002)(50986999)(110136002)(10400500002)(19625215002)(122556002)(3846002)(6116002)(87936001)(586003)(1730700002)(101416001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MA1PR01MB0055;
	H:MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:3; LANG:en; 
received-spf: None (protection.outlook.com: inedasystems.com does not
	designate permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: inedasystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2015 09:03:26.1270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 854eba29-8407-45bb-9043-7b8b086143dd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB0055
Subject: How to add disk space to qemumips image
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
X-List-Received-Date: Sun, 20 Dec 2015 09:18:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB00569830BC74B09868831E5282E30MA1PR01MB0056INDP_"

--_000_MA1PR01MB00569830BC74B09868831E5282E30MA1PR01MB0056INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,


I want to install some package using nodjs. The package itself having the m=
ore memory but in my qemumips I have 1000MB of free diskspace.


Could please help in adding the extra diskspace to qemimips image.


Thanks in advance.


Regards,

Raghavendra K.

--_000_MA1PR01MB00569830BC74B09868831E5282E30MA1PR01MB0056INDP_
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
<p>Hi All,</p>
<p><br>
</p>
<p>I want to install some package using nodjs. The package itself having th=
e more memory but in my qemumips I have 1000MB of free diskspace.</p>
<p><br>
</p>
<p>Could please help in adding the extra diskspace to qemimips image.</p>
<p><br>
</p>
<p>Thanks in advance.</p>
<p><br>
</p>
<p>Regards,</p>
<p>Raghavendra K.<br>
</p>
</div>
</body>
</html>

--_000_MA1PR01MB00569830BC74B09868831E5282E30MA1PR01MB0056INDP_--
