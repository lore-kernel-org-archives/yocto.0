Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93CF6E0079A; Mon,  1 Feb 2016 11:54:47 -0800 (PST)
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
	*      [157.55.1.152 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 01 Feb 2016 11:54:44 PST
Received: from DUB004-OMC2S13.hotmail.com (dub004-omc2s13.hotmail.com
	[157.55.1.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0852E00444
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 11:54:44 -0800 (PST)
Received: from emea01-am1-obe.outbound.protection.outlook.com ([157.55.1.137])
	by DUB004-OMC2S13.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Mon, 1 Feb 2016 11:53:40 -0800
Received: from AMXPR01MB086.eurprd01.prod.exchangelabs.com (10.255.255.158) by
	AMXPR01MB088.eurprd01.prod.exchangelabs.com (10.255.255.160) with
	Microsoft
	SMTP Server (TLS) id 15.1.390.13; Mon, 1 Feb 2016 19:53:39 +0000
Received: from AMXPR01MB086.eurprd01.prod.exchangelabs.com ([169.254.5.223])
	by AMXPR01MB086.eurprd01.prod.exchangelabs.com ([169.254.5.223]) with
	mapi id 15.01.0390.019; Mon, 1 Feb 2016 19:53:39 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Missing task queue dependencie while building qt5-image-demo:
	SAMBA
Thread-Index: AQHRXSodfybkp2eAcE+TLVRcXyy9mA==
Date: Mon, 1 Feb 2016 19:53:39 +0000
Message-ID: <AMXPR01MB086771D7471FE3A7C7176DF92DE0@AMXPR01MB086.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [3O90APSlHHQ0kIwYxnbHa0JbaTLEdWzZ]
x-microsoft-exchange-diagnostics: 1; AMXPR01MB088;
	5:5guPyam9KrkQJJfwlCeiyDofg3FiIEg6uUUGdJKi5Snrl2su3yaZA5uw4emhCf1R9IqrzTLo57WMSR8je4/Gt++Vgo6dRtNfDElPyRE3qV0f4dHIATyAeU6xFwgvFOmuLV04L0GrMuC7lPK04hHX2w==;
	24:pUHhcobIm+24pPqnJuSTofiaTfNzcAvfKj2d5XkvhUOC1umoaJSVsa8wMQ8s3Mi3YGg/J6wO8Y6dUT8LVIV/NFlQMEwuYHgpNW4NkcL4FDk=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AMXPR01MB088;
x-ms-office365-filtering-correlation-id: c53eecd9-2e0f-4d38-b57b-08d32b41613d
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:AMXPR01MB088; BCL:0; PCL:0; RULEID:; SRVR:AMXPR01MB088; 
x-forefront-prvs: 0839D067E7
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070004)(6009001)(87936001)(54356999)(83332001)(50986999)(19580395003)(40100003)(87572001)(450100001)(189998001)(230783001)(5003600100002)(11100500001)(5002640100001)(74316001)(10400500002)(86362001)(102836003)(92566002)(1220700001)(122556002)(4000100100001)(2900100001)(586003)(107886002)(3660700001)(3280700002)(2501003)(5008740100001)(1730700002)(16236675004)(82202001)(229853001)(2351001)(19625215002)(19627405001)(33656002)(106116001)(110136002)(73972006)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:AMXPR01MB088;
	H:AMXPR01MB086.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: sct-15-1-318-9-msonline-outlook-fa212.templateTenant
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2016 19:53:39.2738 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AMXPR01MB088
X-OriginalArrivalTime: 01 Feb 2016 19:53:40.0926 (UTC)
	FILETIME=[3FB485E0:01D15D2A]
Subject: Missing task queue dependencie while building qt5-image-demo: SAMBA
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
X-List-Received-Date: Mon, 01 Feb 2016 19:54:47 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AMXPR01MB086771D7471FE3A7C7176DF92DE0AMXPR01MB086eurprd_"

--_000_AMXPR01MB086771D7471FE3A7C7176DF92DE0AMXPR01MB086eurprd_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I recently upgrade all my yocto tree to jethro.


Attempting to build qt5-image-demo recipe from meta-qt5, I get the followin=
g error:


Parsing of 1617 .bb files complete (0 cached, 1617 parsed). 2139 targets, 3=
62 skipped, 1 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'samba' (but /home/kai/yocto/build-rsp2-qt5/../poky=
-jethro/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb DEPE=
NDS on or otherwise requires it)

Should I add something to get samba built as well ?


K.

--_000_AMXPR01MB086771D7471FE3A7C7176DF92DE0AMXPR01MB086eurprd_
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
<p>Hi,</p>
<p><br>
</p>
<p>I recently upgrade all my yocto tree to jethro.</p>
<p><br>
</p>
<p>Attempting to build qt5-image-demo recipe from meta-qt5, I get the follo=
wing error:</p>
<p><br>
</p>
<p></p>
<div><b><i>Parsing of 1617 .bb files complete (0 cached, 1617 parsed). 2139=
 targets, 362 skipped, 1 masked, 0 errors.</i></b></div>
<div><b><i>NOTE: Resolving any missing task queue dependencies</i></b></div=
>
<div><b><i>ERROR: Nothing PROVIDES 'samba' (but /home/kai/yocto/build-rsp2-=
qt5/../poky-jethro/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_=
git.bb DEPENDS on or otherwise requires it)</i></b></div>
<div><br>
</div>
Should I add something to get samba built as well ?
<p></p>
<p><br>
</p>
<p>K.</p>
</div>
</body>
</html>

--_000_AMXPR01MB086771D7471FE3A7C7176DF92DE0AMXPR01MB086eurprd_--
