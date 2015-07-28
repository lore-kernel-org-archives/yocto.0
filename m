Return-Path: <praveenr@tataelxsi.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EBA9E0099A; Tue, 28 Jul 2015 07:55:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.125.124 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1076 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Jul 2015 07:55:20 PDT
Received: from APC01-SG2-obe.outbound.protection.outlook.com
	(mail-sg2apc01on0124.outbound.protection.outlook.com
	[104.47.125.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F648E00985
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2015 07:55:20 -0700 (PDT)
Received: from SIXPR04MB0462.apcprd04.prod.outlook.com (10.160.229.150) by
	SIXPR04MB0464.apcprd04.prod.outlook.com (10.160.229.152) with Microsoft
	SMTP Server (TLS) id 15.1.219.17; Tue, 28 Jul 2015 14:21:34 +0000
Received: from SIXPR04MB0462.apcprd04.prod.outlook.com ([10.160.229.150]) by
	SIXPR04MB0462.apcprd04.prod.outlook.com ([10.160.229.150]) with mapi id
	15.01.0219.018; Tue, 28 Jul 2015 14:21:34 +0000
From: PRAVEEN KUMAR R <praveenr@tataelxsi.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Glibc kernel version depends
Thread-Index: AQHQyUC0V05Dk/4QrUOTkIBP9aWVqQ==
Date: Tue, 28 Jul 2015 14:21:34 +0000
Message-ID: <SIXPR04MB0462DF3C7F4E2BD4EF05B39B938D0@SIXPR04MB0462.apcprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;
x-originating-ip: [59.160.207.237]
x-microsoft-exchange-diagnostics: 1; SIXPR04MB0464;
	5:ii9Nrhml6p2fHcxGrXn8h7PfMGsQ9f9gDWn8MgBnkPJO0nGECm+Pc2DUIeupIxAPrqKMuMK0wK/PMorGc2jlnvrV7553z+jcsVR8BQNKUZvpB3cVEvGCVrVTh9DhJzpT+LlehCUt2mIki6Ad0GobrA==;
	24:OZArBZnzEYbsl4qjwYVjjVjbBOcMVhqUnR66h5qr7XM5hwaT4bw9iNEYYAkl4P5l+uk53fEgc0ewavKu/2yM+miJRRn4v7d3c+SVL7GXaio=;
	20:JscF0Rx08lImWGUtepe7XcZeC9rHAVKIp+U5nmrE4L+8T79l+RyBRjKs1FB6CfHXZnnsBg/NVhpaUbeg37ouHQ==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:SIXPR04MB0464;
sixpr04mb0464: X-MS-Exchange-Organization-RulesExecuted
x-microsoft-antispam-prvs: <SIXPR04MB0464FDA2CDE001CE10C18B19938D0@SIXPR04MB0464.apcprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(3002001); SRVR:SIXPR04MB0464; BCL:0;
	PCL:0; RULEID:; SRVR:SIXPR04MB0464; 
x-forefront-prvs: 06515DA04B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(87936001)(97736004)(229853001)(189998001)(86362001)(450100001)(102836002)(66066001)(76576001)(40100003)(62966003)(16236675004)(50986999)(5003600100002)(19625215002)(33656002)(77096005)(2900100001)(106116001)(5002640100001)(64706001)(2501003)(68736005)(2656002)(74316001)(2351001)(110136002)(92566002)(74482002)(54356999)(19627405001)(107886002)(122556002)(5001960100002)(77156002)(46102003)(5001920100001)(140573001)(80872002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SIXPR04MB0464;
	H:SIXPR04MB0462.apcprd04.prod.outlook.com; FPR:; SPF:None;
	MLV:nov; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: tataelxsi.co.in
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2015 14:21:34.3092 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad6a39dd-96b6-4368-82da-f2ec4d92e26a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SIXPR04MB0464
Subject: Glibc kernel version depends
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
X-List-Received-Date: Tue, 28 Jul 2015 14:55:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SIXPR04MB0462DF3C7F4E2BD4EF05B39B938D0SIXPR04MB0462apcp_"

--_000_SIXPR04MB0462DF3C7F4E2BD4EF05B39B938D0SIXPR04MB0462apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


I am trying to bring QT 5.5 on armv6 arch which is running on linux kernel =
v 2.6.27,

the qt5 libraries depends on glib 2.12+, I tried installing latest glibc to=
 satisfy run time depends on target


when I run the qt application, I get

FATAL: kernel too old


1. is the glib 2.21 tightly coupled with kernel version ? 2.6.32+ ?

how do I make this is compatible with older versions of kernel


2. I tried passing conf param --enable-kernel=3D2.6.27, I still get the sam=
e error


any idea ?

--_000_SIXPR04MB0462DF3C7F4E2BD4EF05B39B938D0SIXPR04MB0462apcp_
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
<p><br>
</p>
<p>I am trying to bring QT 5.5 on armv6 arch which is running on&nbsp;linux=
 kernel v 2.6.27,</p>
<p>the qt5 libraries depends on glib 2.12&#43;, I tried installing latest g=
libc to satisfy run time depends on target</p>
<p><br>
</p>
<p>when I run the qt&nbsp;application, I get</p>
<p><b>FATAL: kernel too old</b></p>
<p><span style=3D"font-size: 12pt;"><br>
</span></p>
<p><span style=3D"font-size: 12pt;">1. is the glib 2.21 tightly coupled wit=
h kernel version ? 2.6.32&#43; ?</span></p>
<p><span style=3D"font-size: 12pt;">how do I make this is compatible with o=
lder versions of kernel</span></p>
<p><span style=3D"font-size: 12pt;"><br>
</span></p>
<p><span style=3D"font-size: 12pt;">2. I tried passing conf param&nbsp;</sp=
an><span style=3D"font-size: 12pt;">--enable-kernel=3D2.6.27, I still get t=
he same error</span><br>
</p>
<p><span style=3D"font-size: 12pt;"><br>
</span></p>
<p><span style=3D"font-size: 12pt;">any idea ?</span></p>
</div>
</body>
</html>

--_000_SIXPR04MB0462DF3C7F4E2BD4EF05B39B938D0SIXPR04MB0462apcp_--
