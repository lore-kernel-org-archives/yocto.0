Return-Path: <suneetha.g@tataelxsi.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2489EE00A4F; Sun, 12 Mar 2017 21:39:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.125.114 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from APC01-SG2-obe.outbound.protection.outlook.com
	(mail-sg2apc01on0114.outbound.protection.outlook.com
	[104.47.125.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB64CE00A3B
	for <yocto@yoctoproject.org>; Sun, 12 Mar 2017 21:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tataelxsi.onmicrosoft.com; s=selector1-tataelxsi-co-in;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=qHO4UmlID6hoNJLvpGTEbVu7LIppC/XR550jab8/tTc=;
	b=KFlf75TPnI3tMOXjhJzCjCrLHrFKReroJFRzcJJXpc3xvD1j3jG1BubhvfcGT8PLgyeXkUX0Q5uDMsersTxLyaDvH5v0IQLBilhWSp0+IeFpfds4kF/v57WRu04PKVpuM9+zcPd8REvyXaSix82jHTuElj4Kw2cZ0iSOF7B6CWE=
Received: from HK2PR0401MB1492.apcprd04.prod.outlook.com (10.165.181.14) by
	HK2PR0401MB1491.apcprd04.prod.outlook.com (10.165.181.13) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.947.12; Mon, 13 Mar 2017 04:39:11 +0000
Received: from HK2PR0401MB1492.apcprd04.prod.outlook.com ([10.165.181.14]) by
	HK2PR0401MB1492.apcprd04.prod.outlook.com ([10.165.181.14]) with
	mapi id 15.01.0947.023; Mon, 13 Mar 2017 04:39:11 +0000
From: Suneetha Lakshmi G <suneetha.g@tataelxsi.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: kernel build failed
Thread-Index: AQHSm7PCl9fsGuWaEUSQD79IqaZ/ug==
Date: Mon, 13 Mar 2017 04:39:11 +0000
Message-ID: <HK2PR0401MB14928E9621541096BB5AB1BEC6250@HK2PR0401MB1492.apcprd04.prod.outlook.com>
References: <mailman.63189.1489153806.15860.yocto@yoctoproject.org>
	<HK2PR0401MB149200CF1FFB30976C65F1C0C6200@HK2PR0401MB1492.apcprd04.prod.outlook.com>,
	<CAMKF1sqfy8Rq5fQ5aDRK8T5AefffdEYahN2JHxkibF7hPK7_0g@mail.gmail.com>
In-Reply-To: <CAMKF1sqfy8Rq5fQ5aDRK8T5AefffdEYahN2JHxkibF7hPK7_0g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=tataelxsi.co.in;
x-originating-ip: [25.165.70.4]
x-ms-office365-filtering-correlation-id: 80e42b8b-a54d-46c7-426c-08d469cae54c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001)(48565401081);
	SRVR:HK2PR0401MB1491; 
x-microsoft-exchange-diagnostics: 1; HK2PR0401MB1491;
	7:ly7ofJfJjLzjaN4G+24rAiZctMVeZr/bn2H/wIo/Z0aLfIFAe+Ul0IUCdN9YiwD0bM9x0OHP5Y3w0R730A5zcAgAJ0V0SXU4Lhgd+IIGvaNsfECISLPTZyFer8eq8YrBKajhx6meub8FLu3oxWdEyjnafyK5GNPXcETmc9Y14VHJCZ7OrYs25/jKOJc6WRXx4IzjtTC5lNezC8ZAdhqQqI4GxBEPHOVhQqhZLcNHKiRgl4MSHfDkSMvgSfVjPzCpZa46+yuB+cBZrbtfe+Z8jzS1BIUWS/aaZTwlP7l+cguh2O9Yqt8n09RL+gnNqcf8Avvb5bRKUobc0yE5MUI0OA==
x-microsoft-antispam-prvs: <HK2PR0401MB1491E71AF1892002297FE804C6250@HK2PR0401MB1491.apcprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(90964069518039);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6055026)(6041248)(20161123558025)(20161123564025)(20161123562025)(20161123560025)(20161123555025)(6072148);
	SRVR:HK2PR0401MB1491; BCL:0; PCL:0; RULEID:;
	SRVR:HK2PR0401MB1491; 
x-forefront-prvs: 0245702D7B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39840400002)(39860400002)(39410400002)(39850400002)(39450400003)(24454002)(377454003)(53754006)(110136004)(66066001)(189998001)(6246003)(2351001)(38730400002)(19627405001)(2906002)(122556002)(74316002)(33656002)(76176999)(54356999)(5660300001)(106116001)(7736002)(7116003)(50986999)(53546006)(1730700003)(81166006)(8676002)(3280700002)(7696004)(2501003)(8936002)(9686003)(99286003)(54896002)(55016002)(236005)(5640700003)(25786008)(3846002)(6116002)(229853002)(102836003)(42882006)(2950100002)(86362001)(3660700001)(6606003)(74482002)(77096006)(6436002)(3480700004)(6506006)(53936002)(2900100001)(80872002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HK2PR0401MB1491;
	H:HK2PR0401MB1492.apcprd04.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: tataelxsi.co.in
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2017 04:39:11.6904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad6a39dd-96b6-4368-82da-f2ec4d92e26a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR0401MB1491
Subject: Re: kernel build failed
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
X-List-Received-Date: Mon, 13 Mar 2017 04:39:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK2PR0401MB14928E9621541096BB5AB1BEC6250HK2PR0401MB1492_"

--_000_HK2PR0401MB14928E9621541096BB5AB1BEC6250HK2PR0401MB1492_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hi Khem,


Sorry for late response .Kernel (4.1.17) build failed  with gcc 4.9.4 we ar=
e using gcc as a External toolchain (asdk-4.9.4-a7-EL-3.10-g2.19-a32nt-1602=
19)


Regards,

Suneetha


________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Friday, March 10, 2017 11:45 PM
To: Suneetha Lakshmi G
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] help



On Fri, Mar 10, 2017 at 6:25 AM, Suneetha Lakshmi G <suneetha.g@tataelxsi.c=
o.in<mailto:suneetha.g@tataelxsi.co.in>> wrote:

Hi All,


Im new to yocto and trying to build for my customer device im facing this i=
ssue.


| arm-linux-gnueabi-xgcc: error: unrecognized command line option '-mgenera=
l-regs-only'
| arm-linux-gnueabi-xgcc: error: unrecognized command line option '-mcmodel=
=3Dlarge'
| make: *** [opkg-compare-versions] Error 1
| ERROR: oe_runmake failed

Please guide how to progress further.


xgcc is internal name during building/testing gcc itself, which package it =
failing like this for you ?

--_000_HK2PR0401MB14928E9621541096BB5AB1BEC6250HK2PR0401MB1492_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p><br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
16px;">Hi Khem,</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
16px;"><br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
16px;">Sorry for late response .Kernel (4.1.17) build&nbsp;failed &nbsp;wit=
h gcc 4.9.4 we are using gcc as a External toolchain (asdk-4.9.4-a7-EL-3.10=
-g2.19-a32nt-160219<span style=3D"font-size: 12pt;">)&nbsp;</span></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
16px;"><span style=3D"font-size: 12pt;"></span></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
16px;"><span style=3D"font-size: 12pt;"><br>
</span></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
16px;"><span style=3D"font-size: 12pt;">Regards,</span></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
16px;"><span style=3D"font-size: 12pt;">Suneetha</span></p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Khem Raj &lt;raj.khem=
@gmail.com&gt;<br>
<b>Sent:</b> Friday, March 10, 2017 11:45 PM<br>
<b>To:</b> Suneetha Lakshmi G<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] help</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_default" style=3D"font-family:monospace,monospace"><br>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Fri, Mar 10, 2017 at 6:25 AM, Suneetha Lakshm=
i G <span dir=3D"ltr">
&lt;<a href=3D"mailto:suneetha.g@tataelxsi.co.in" target=3D"_blank">suneeth=
a.g@tataelxsi.co.in</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"m_7987613208375907027divtagdefaultwrapper" dir=3D"ltr" style=3D"=
font-size:12pt; color:#000000; font-family:Calibri,Arial,Helvetica,sans-ser=
if">
<p>Hi All,</p>
<p><br>
</p>
<p>Im new to yocto and trying&nbsp;to build for my&nbsp;customer device im =
facing this issue.</p>
<p><br>
</p>
<p></p>
<div>| arm-linux-gnueabi-xgcc: error: unrecognized command line option '-mg=
eneral-regs-only'<br>
| arm-linux-gnueabi-xgcc: error: unrecognized command line option '-mcmodel=
=3Dlarge'<br>
| make: *** [opkg-compare-versions] Error 1<br>
| ERROR: oe_runmake failed</div>
<div><br>
</div>
<div>Please guide how to progress further.</div>
<div><br>
</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:monospace,monospace">xgcc=
 is internal name during building/testing gcc itself, which package it fail=
ing like this for you ?</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_HK2PR0401MB14928E9621541096BB5AB1BEC6250HK2PR0401MB1492_--
