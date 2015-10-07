Return-Path: <yukatharsanij@tataelxsi.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C307CE00CAF; Tue,  6 Oct 2015 23:48:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [104.47.125.126 listed in list.dnswl.org]
Received: from APC01-SG2-obe.outbound.protection.outlook.com
	(mail-sg2apc01on0126.outbound.protection.outlook.com
	[104.47.125.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1575CE0049B
	for <yocto@yoctoproject.org>; Tue,  6 Oct 2015 23:48:04 -0700 (PDT)
Received: from HK2PR04MB1188.apcprd04.prod.outlook.com (10.165.60.14) by
	HK2PR04MB1186.apcprd04.prod.outlook.com (10.165.60.12) with Microsoft
	SMTP Server (TLS) id 15.1.286.20; Wed, 7 Oct 2015 06:48:01 +0000
Received: from HK2PR04MB1188.apcprd04.prod.outlook.com ([10.165.60.14]) by
	HK2PR04MB1188.apcprd04.prod.outlook.com ([10.165.60.14]) with mapi id
	15.01.0286.019; Wed, 7 Oct 2015 06:48:01 +0000
From: YUKATHARSANI JEYACHANDRA <yukatharsanij@tataelxsi.co.in>
To: Vivek Per <pervivek@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] can any one please tell the difference between DEPENDS
	and	RDEPENDS
Thread-Index: AQHRAMdIlRKR1fYvqEiy1eN7Uv9dP55flkUg
Date: Wed, 7 Oct 2015 06:48:00 +0000
Message-ID: <HK2PR04MB118896F462031C4D1777F984EC360@HK2PR04MB1188.apcprd04.prod.outlook.com>
References: <CALLyC8TznpzYwCFAf_30N_OEjexLEtkRXc+mTt64GnKyNdEpQg@mail.gmail.com>
In-Reply-To: <CALLyC8TznpzYwCFAf_30N_OEjexLEtkRXc+mTt64GnKyNdEpQg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yukatharsanij@tataelxsi.co.in; 
x-originating-ip: [25.169.50.4]
x-microsoft-exchange-diagnostics: 1; HK2PR04MB1186;
	5:Hz06gR7mhH82vjxnr4G7eRXdf7cvI29Ni6RctWA8TZQTEzSTAffpyKTC+ie4HJDrV22Jq5RVBTqt45QhpxG4gKeq9XmICgeZthygVbi5/Ov+q1S3mvNVudYv9mSHFBkw3ymHXKWXvDyzW7PSkMYcEg==;
	24:8VhN0WQ5T4RWqyRlk9nr2JHZgRnO/YhoMiRhy5Y/JBq/6X/DFlpeuRKzq8YooWWAmM0AgtTmF8RoPuWszbLGlPLKM5msChDmA8vnki1x+pE=;
	20:2DNZPwI1GwQwBP/AUuWUQtKUELb4keCrZyJbwaY/Zq4MeoljrG35JitoVln82GkY+k6InijecwVuWtjj1fIdIw==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:HK2PR04MB1186;
x-microsoft-antispam-prvs: <HK2PR04MB1186704891577E65BED1DF3BEC360@HK2PR04MB1186.apcprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(520078)(3002001);
	SRVR:HK2PR04MB1186; BCL:0; PCL:0; RULEID:; SRVR:HK2PR04MB1186; 
x-forefront-prvs: 0722981D2A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(189002)(377454003)(2950100001)(5003600100002)(74482002)(5002640100001)(105586002)(46102003)(5001770100001)(33656002)(40100003)(86362001)(101416001)(50986999)(19627405001)(81156007)(77096005)(122556002)(2501003)(106116001)(54356999)(106356001)(66066001)(97736004)(16236675004)(76176999)(2900100001)(74316001)(64706001)(5001920100001)(5004730100002)(76576001)(450100001)(189998001)(107886002)(19625215002)(87936001)(102836002)(5001960100002)(5008740100001)(10400500002)(19580395003)(5007970100001)(19580405001)(92566002)(11100500001)(80872002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HK2PR04MB1186;
	H:HK2PR04MB1188.apcprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:0; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: tataelxsi.co.in does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: tataelxsi.co.in
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2015 06:48:00.8729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad6a39dd-96b6-4368-82da-f2ec4d92e26a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR04MB1186
Subject: Re: can any one please tell the difference between DEPENDS and	RDEPENDS
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
X-List-Received-Date: Wed, 07 Oct 2015 06:48:10 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK2PR04MB118896F462031C4D1777F984EC360HK2PR04MB1188apcp_"

--_000_HK2PR04MB118896F462031C4D1777F984EC360HK2PR04MB1188apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



DEPENDS means a build-time dependency i.e. between recipes, RDEPENDS means =
a
runtime dependency i.e. between packages.


________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Vivek Per <pervivek@gmail.com>
Sent: Wednesday, October 7, 2015 11:40 AM
To: yocto@yoctoproject.org
Subject: [yocto] can any one please tell the difference between DEPENDS and=
 RDEPENDS

Hi,
     Can any one please tell the what is the exact difference between DEPEN=
DS and RDEPENDS . I am not able to get it . How these variables are exactly=
 parsed.


regards
vivek

--_000_HK2PR04MB118896F462031C4D1777F984EC360HK2PR04MB1188apcp_
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
<p></p>
<pre><br><br>DEPENDS means a build-time dependency i.e. between recipes, RD=
EPENDS means a =0A=
runtime dependency i.e. between packages. <br></pre>
<p></p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> yocto-bounces@yocto=
project.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of Vivek Per &=
lt;pervivek@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, October 7, 2015 11:40 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] can any one please tell the difference between DEPE=
NDS and RDEPENDS</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi,
<div>&nbsp; &nbsp; &nbsp;Can any one please tell the what is the exact diff=
erence between DEPENDS and RDEPENDS . I am not able to get it . How these v=
ariables are exactly parsed.</div>
<div><br>
</div>
<div><br>
</div>
<div>regards</div>
<div>vivek</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_HK2PR04MB118896F462031C4D1777F984EC360HK2PR04MB1188apcp_--
