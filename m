Return-Path: <yukatharsanij@tataelxsi.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC2C6E0088C; Wed, 28 Oct 2015 22:30:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.126.133 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 898 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Oct 2015 22:30:11 PDT
Received: from APC01-PU1-obe.outbound.protection.outlook.com
	(mail-pu1apc01on0133.outbound.protection.outlook.com
	[104.47.126.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5228E007E1
	for <yocto@yoctoproject.org>; Wed, 28 Oct 2015 22:30:11 -0700 (PDT)
Received: from SIXPR04MB0668.apcprd04.prod.outlook.com (10.162.175.143) by
	SIXPR04MB0666.apcprd04.prod.outlook.com (10.162.175.141) with Microsoft
	SMTP Server (TLS) id 15.1.306.13; Thu, 29 Oct 2015 05:15:10 +0000
Received: from SIXPR04MB0668.apcprd04.prod.outlook.com ([10.162.175.143]) by
	SIXPR04MB0668.apcprd04.prod.outlook.com ([10.162.175.143]) with mapi id
	15.01.0306.003; Thu, 29 Oct 2015 05:15:10 +0000
From: YUKATHARSANI JEYACHANDRA <yukatharsanij@tataelxsi.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] To Specify the Linux Kernel Local Path In SRC_URI
Thread-Index: AQHREgjIg/+bhwMAyUqihiARePOJLg==
Date: Thu, 29 Oct 2015 05:15:10 +0000
Message-ID: <SIXPR04MB0668A492F04048D5C7998873EC200@SIXPR04MB0668.apcprd04.prod.outlook.com>
References: <2413401446092375@web22h.yandex.ru>
In-Reply-To: <2413401446092375@web22h.yandex.ru>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yukatharsanij@tataelxsi.co.in; 
x-originating-ip: [59.160.207.20]
x-microsoft-exchange-diagnostics: 1; SIXPR04MB0666;
	5:RUng/ZrQ4Hp1PSqQCLmM76YbCFl2N7gLzFoa48FaCwcis7YWaZ0LQ2FAP8tCLBlMsqbC6AQjsRrfvCdtRe07kYhpZKhWh+SFYzMzQPCJh7Jv3IBCFPFkuKalh6i9Uss+geBlKRqCjeGqPYrsUsI1Iw==;
	24:kMO7LuRyzcxsflr4zWdmbq0IwT24C3WwaROFwwruU+awDTGNNFTzZTItGnRscjaqd3PVhryBl3ONm8zFY2B8IkIOwP0sUj7h2PFpxagNUqI=;
	20:CCitlyazt8EIvMniiDXz8fF6V65QF8ajNiOMnma0CJck8OnXTXuDjuuT1sjd34cQbJh65hka2xZSyay7E7kArg==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:SIXPR04MB0666;
x-microsoft-antispam-prvs: <SIXPR04MB066642618009CE9EDEF001C9EC200@SIXPR04MB0666.apcprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(185590752853456);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(520078)(5005006)(10201501046)(3002001)(102215026);
	SRVR:SIXPR04MB0666; BCL:0; PCL:0; RULEID:; SRVR:SIXPR04MB0666; 
x-forefront-prvs: 0744CFB5E8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(189002)(377454003)(77096005)(2501003)(105586002)(97736004)(5004730100002)(122556002)(102836002)(76576001)(74482002)(5002640100001)(5003600100002)(81156007)(450100001)(19627405001)(5008740100001)(189998001)(5007970100001)(10400500002)(40100003)(5001960100002)(16236675004)(107886002)(86362001)(66066001)(229853001)(2351001)(110136002)(106356001)(50986999)(74316001)(19580395003)(19625215002)(19580405001)(106116001)(87936001)(2900100001)(54356999)(101416001)(33656002)(76176999)(92566002)(2950100001)(11100500001)(80872002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SIXPR04MB0666;
	H:SIXPR04MB0668.apcprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:0; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: tataelxsi.co.in does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: tataelxsi.co.in
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2015 05:15:10.4056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad6a39dd-96b6-4368-82da-f2ec4d92e26a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SIXPR04MB0666
Subject: To Specify the Linux Kernel Local Path In SRC_URI
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
X-List-Received-Date: Thu, 29 Oct 2015 05:30:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SIXPR04MB0668A492F04048D5C7998873EC200SIXPR04MB0668apcp_"

--_000_SIXPR04MB0668A492F04048D5C7998873EC200SIXPR04MB0668apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to build kernel image for new hardware.

So, I prefer to use my linux 3.x version with specific changes.

I want bitbake to fetch the local path of my linux.

Is it possible to specify the local path in SRC_URI.


Thanks and Regards,

Yukatharsani J.




________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Andres Sagot <andres.sagot@yandex.com>
Sent: Thursday, October 29, 2015 9:49 AM
To: yocto@yoctoproject.org
Subject: [yocto] Kernel Version Dependency in BB Recipe

Hello Yocto Community,

I did a search and found a great deal about layer dependencies, but I am st=
ill not clear on how or if it is possible to add a kernel version dependenc=
y to a BB recipe. I would like to bitbake to report an error if it attempts=
 to build my custom package with an unsupported version of Linux.

Thank you and best regards,
Andres

--_000_SIXPR04MB0668A492F04048D5C7998873EC200SIXPR04MB0668apcp_
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
<p><span style=3D"font-family: Arial,Helvetica,sans-serif; color: rgb(0, 11=
1, 201);"><font style=3D"color: rgb(0, 111, 201);" size=3D"2"><span style=
=3D"font-size: 10pt; color: rgb(0, 111, 201);"><span style=3D"color: rgb(0,=
 111, 201);">Hi,</span><br style=3D"color: rgb(0, 111, 201);">
<span style=3D"color: rgb(0, 111, 201);">&nbsp; </span><br style=3D"color: =
rgb(0, 111, 201);">
</span></font><span style=3D"color: rgb(0, 111, 201);">I am trying to build=
 kernel image for new hardware.</span></span></p>
<p><span style=3D"font-family: Arial,Helvetica,sans-serif; color: rgb(0, 11=
1, 201);"><span style=3D"color: rgb(0, 111, 201);">So, I prefer to use my l=
inux 3.x version with specific changes.</span><font style=3D"color: rgb(0, =
111, 201);" size=3D"2"><span style=3D"font-size: 10pt; color: rgb(0, 111, 2=
01);"></span></font><br style=3D"color: rgb(0, 111, 201);">
</span></p>
<p><span style=3D"font-family: Arial,Helvetica,sans-serif; color: rgb(0, 11=
1, 201);"><span style=3D"color: rgb(0, 111, 201);">I want bitbake to fetch =
the local path of my linux.</span></span></p>
<p><span style=3D"font-family: Arial,Helvetica,sans-serif; color: rgb(0, 11=
1, 201);"><span style=3D"color: rgb(0, 111, 201);">Is it possible to specif=
y the local path in SRC_URI.</span></span></p>
<p><br style=3D"font-family: Arial,Helvetica,sans-serif; color: rgb(0, 111,=
 201);">
</p>
<p><span style=3D"font-family: Arial,Helvetica,sans-serif; color: rgb(0, 11=
1, 201);"><span style=3D"color: rgb(0, 111, 201);">Thanks and Regards,</spa=
n></span></p>
<p><span style=3D"font-family: Arial,Helvetica,sans-serif; color: rgb(0, 11=
1, 201);"><span style=3D"color: rgb(0, 111, 201);">Yukatharsani J.</span></=
span><br style=3D"color: rgb(0, 111, 201);">
<span style=3D"color: rgb(0, 111, 201);"></span></p>
<p><font size=3D"2"><span style=3D"font-size:10pt;"></p>
<p>&nbsp; <br>
</p>
</span></font>
<p></p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> yocto-bounces@yocto=
project.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of Andres Sago=
t &lt;andres.sagot@yandex.com&gt;<br>
<b>Sent:</b> Thursday, October 29, 2015 9:49 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Kernel Version Dependency in BB Recipe</font>
<div>&nbsp;</div>
</div>
<div>
<div>Hello Yocto Community,</div>
<div>&nbsp;</div>
<div>I did a search and found a great deal about layer dependencies, but I =
am still not clear on how or if it is possible to add a kernel version depe=
ndency to a BB recipe. I would like to bitbake to report an error if it att=
empts to build my custom package
 with an unsupported version of Linux.</div>
<div>&nbsp;</div>
<div>Thank you and best regards,</div>
<div>Andres</div>
</div>
</div>
</div>
</body>
</html>

--_000_SIXPR04MB0668A492F04048D5C7998873EC200SIXPR04MB0668apcp_--
