Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB2B7E00B37; Mon,  1 Feb 2016 22:53:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.99 listed in list.dnswl.org]
Received: from DUB004-OMC4S24.hotmail.com (dub004-omc4s24.hotmail.com
	[157.55.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D12FE00AAB
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 22:53:30 -0800 (PST)
Received: from emea01-db3-obe.outbound.protection.outlook.com ([157.55.2.73])
	by DUB004-OMC4S24.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Mon, 1 Feb 2016 22:53:29 -0800
Received: from AMXPR01MB086.eurprd01.prod.exchangelabs.com (10.255.255.158) by
	AMXPR01MB086.eurprd01.prod.exchangelabs.com (10.255.255.158) with
	Microsoft
	SMTP Server (TLS) id 15.1.390.13; Tue, 2 Feb 2016 06:53:28 +0000
Received: from AMXPR01MB086.eurprd01.prod.exchangelabs.com ([169.254.5.223])
	by AMXPR01MB086.eurprd01.prod.exchangelabs.com ([169.254.5.223]) with
	mapi id 15.01.0390.019; Tue, 2 Feb 2016 06:53:28 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [raspberrypi2] do_rootfs() failure at the end of qt5-image-demo
	recipe
Thread-Index: AQHRXYYzZ7MfBxHNu02hpcx3ECd9iQ==
Date: Tue, 2 Feb 2016 06:53:27 +0000
Message-ID: <AMXPR01MB086D31E538EF035E1F7BCC592DF0@AMXPR01MB086.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [C87ylVWpbjAJVMaImtfytAIw8epNm1YQ]
x-microsoft-exchange-diagnostics: 1; AMXPR01MB086;
	5:++HIGUUPjCUOKkoyAWaN+4qwxzjuFqMHmxGwqrFZrn3Sc6jh5UEVYwJi1VNg/PmyQkNXSrvvgabaVhewCfFh+ksaos2p8aU1aSrWwPQvFb67WjUpWl+903kPVEpCLCNlgMQSU6y3VyFh2kRBjFLUDw==;
	24:DFYzqgDDtFfnYBQQjfXm62UdTAUVG345LwoHnCJZbdDYxqGwfT4bSNOVbnXy1YTfJ0/vkGm03MP8j3pawwBN5zqP7k600NOakzksV617za4=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AMXPR01MB086;
x-ms-office365-filtering-correlation-id: a5f910bd-5565-41da-b3bc-08d32b9d8dee
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:AMXPR01MB086; BCL:0; PCL:0; RULEID:; SRVR:AMXPR01MB086; 
x-forefront-prvs: 084080FC15
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070004)(6009001)(102836003)(54356999)(87572001)(50986999)(450100001)(87936001)(230783001)(189998001)(5003600100002)(74316001)(5002640100001)(40100003)(11100500001)(86362001)(10400500002)(122556002)(92566002)(1220700001)(2900100001)(107886002)(586003)(3660700001)(3280700002)(5008740100001)(2501003)(4000100100001)(1730700002)(19625215002)(110136002)(16236675004)(73972006)(82202001)(19627405001)(2351001)(33656002)(106116001)(229853001)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:AMXPR01MB086;
	H:AMXPR01MB086.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: sct-15-1-318-9-msonline-outlook-fa212.templateTenant
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2016 06:53:27.9214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AMXPR01MB086
X-OriginalArrivalTime: 02 Feb 2016 06:53:29.0051 (UTC)
	FILETIME=[6C1102B0:01D15D86]
Subject: [raspberrypi2] do_rootfs() failure at the end of qt5-image-demo recipe
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
X-List-Received-Date: Tue, 02 Feb 2016 06:53:35 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AMXPR01MB086D31E538EF035E1F7BCC592DF0AMXPR01MB086eurprd_"

--_000_AMXPR01MB086D31E538EF035E1F7BCC592DF0AMXPR01MB086eurprd_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,


I'm experiencing issue while building qt-image-demo (jethro) for raspberryp=
i2.

At the very end of the build: do_rootfs failure.


Collected errors:
 * satisfy_dependencies_for: Cannot satisfy the following dependencies for =
packagegroup-qt5-graphics:
 *      qt3d-tools *
 * opkg_install_cmd: Cannot install package packagegroup-qt5-graphics.

However, I haven't added or modified the layers and recipes.


Any idea ?



K.

--_000_AMXPR01MB086D31E538EF035E1F7BCC592DF0AMXPR01MB086eurprd_
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
<p>Hello,</p>
<p><br>
</p>
<p>I'm experiencing issue while building qt-image-demo (jethro) for raspber=
rypi2.</p>
<p>At the very end of the build: do_rootfs failure.</p>
<p><br>
</p>
<p></p>
<div><b>Collected errors:</b></div>
<div><b>&nbsp;* satisfy_dependencies_for: Cannot satisfy the following depe=
ndencies for packagegroup-qt5-graphics:</b></div>
<div><b>&nbsp;* &nbsp; &nbsp; &nbsp;qt3d-tools *</b></div>
<div><b>&nbsp;* opkg_install_cmd: Cannot install package packagegroup-qt5-g=
raphics.</b></div>
<div><br>
</div>
However, I haven't added or modified the layers and recipes.
<p></p>
<p><br>
</p>
<p>Any idea ?</p>
<p><br>
</p>
<p><br>
</p>
<p>K.</p>
</div>
</body>
</html>

--_000_AMXPR01MB086D31E538EF035E1F7BCC592DF0AMXPR01MB086eurprd_--
