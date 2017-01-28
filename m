Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3941E0052B; Fri, 27 Jan 2017 20:31:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.83 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3647 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Jan 2017 20:31:46 PST
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0083.outbound.protection.outlook.com [104.47.36.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A338E0050B
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 20:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=DlMhsg6Mn17Z75ed9UB9R3ASKDPFIHXz1AekcuMd3bg=;
	b=3J1f4WFxNfamObxmaneaqFguHicHhYZ73dxD8povByYJKaQ2RRDp35hWcsn9jkzFhDP/0rpI5X/otOXA76h3HitMIMnMJZqPuR87BCnqW0NMaync7AIOgngh+LI/+i3NJcK7Jwk5+QtB1SZgFq+OtNPg6nJWYPQeMb7AKdlkwDQ=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1596.prod.exchangelabs.com (10.163.139.14) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.860.13; Sat, 28 Jan 2017 02:58:04 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0860.023; Sat, 28 Jan 2017 02:58:04 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: pkg_postinst shell?
Thread-Index: AQHSeRJXqfLOGUVvzEKgC07itriPAA==
Date: Sat, 28 Jan 2017 02:58:03 +0000
Message-ID: <CY1PR0101MB159483D0BB39CD4126D1B71CB6490@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [218.225.179.82]
x-ms-office365-filtering-correlation-id: c134b10b-8c4f-4a52-1085-08d447297a78
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:CY1PR0101MB1596; 
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1596;
	7:9sQI0ZTtgB2EhhKHfkTLA45S3h4itcUpUboKl+EBcSM7ISwmAjdnYd7aj41mcRF834ppDRx9reJe9bB0ACVhuvv6quaQwTvMtTGHNokN2NyZWAyXIXrjuZQ82P/G1x8gqhhiVVlAnnZlyQo0Um+J6rYXnCB/kqBSEo4hkw4m9Hy0NDUucGS4Axb+uRVbeJX/QBoBNOEzxTg0m96oNYAFNe5XxlmMXQ2dAZoqpFIKEIcgMu9D4XPbZwVDXEwtpFe4nlh4SRMl2rm7V3D9PhuFk0FAqZ9TmXuLi4QKm55Zn0jLxIeiTFD9MC0He88beUdI252FwEqLGr0Oc0AarMLAVEKSwtaTMO6avhTz8YRsHqeNcNvv2lkA/lKIWIbIHg0vI/t/Lppz2b0I+rgFC8HNLJwa/8CQB8OfLIG43iwAPmytQ72uGRRTg+1D2lmfV+br9ApxTMIfDd56M8IIBR/PGw==
x-microsoft-antispam-prvs: <CY1PR0101MB1596670C0600A17B9DB8C5C2B6490@CY1PR0101MB1596.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123560025)(20161123555025)(20161123564025)(20161123562025)(6072148);
	SRVR:CY1PR0101MB1596; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1596; 
x-forefront-prvs: 02015246A9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39450400003)(199003)(189002)(33656002)(25786008)(102836003)(5640700003)(6116002)(3846002)(38730400001)(19627405001)(2351001)(105586002)(101416001)(3660700001)(74316002)(2906002)(106116001)(7116003)(5660300001)(6506006)(68736007)(6916009)(3280700002)(97736004)(110136003)(7696004)(6606003)(77096006)(2900100001)(106356001)(53936002)(92566002)(54896002)(99286003)(7736002)(66066001)(450100001)(189998001)(1730700003)(8936002)(9686003)(8676002)(107886002)(2501003)(54356999)(122556002)(81156014)(81166006)(6436002)(55016002)(50986999)(86362001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1596;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2017 02:58:03.8141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1596
Subject: pkg_postinst shell?
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
X-List-Received-Date: Sat, 28 Jan 2017 04:31:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB159483D0BB39CD4126D1B71CB6490CY1PR0101MB1594_"

--_000_CY1PR0101MB159483D0BB39CD4126D1B71CB6490CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yocto.
I am debugging my recipe, which uses pkg_postinst but does not seem to work=
 as expected.

It runs fine without $D detection.
However, if I try to run it at first boot (skipping with exit 1 if $D is no=
t empty), the board boot seems to hang.
I think error (syntax error, etc.?) happening when it is run on the board, =
but package manager.

I doubt it is caused by non-existence of '#!/bin/sh' in my script but I am =
not sure since I am still trying the builds again and again.

i) Regarding the posttest script execution, is there log available so that =
I can look into (instead of writing out log file by myself from within my s=
cript)?  I do not seem to find it in temp folder of my recipes's working di=
rectory.

ii) Is '#!/bin/sh' always necessary?

iii) What happens with pkg_postinst_PN_append?  If it is defined without pk=
g_postinst_PN, it still works and executed?  If i) is true what about '#!/b=
in/sh' in this case?

If you have qucik suggestions, it is a great help.




--_000_CY1PR0101MB159483D0BB39CD4126D1B71CB6490CY1PR0101MB1594_
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
<p></p>
<div><span style=3D"font-size: 12pt;">Hello Yocto.</span><br>
</div>
<div>I am debugging my recipe, which uses pkg_postinst but does not seem to=
 work as expected.</div>
<div><br>
</div>
<div>It runs fine without $D detection.</div>
<div>However, if I try to run it at first boot (skipping with exit 1 if $D =
is not empty), the board boot seems to hang.</div>
<div>I think error (syntax error, etc.?) happening when it is run on the bo=
ard, but package manager.</div>
<div><br>
</div>
<div>I doubt it is caused by non-existence of '#!/bin/sh' in my script but =
I am not sure since I am still trying the builds again and again.</div>
<div><br>
</div>
<div>i) Regarding the posttest script execution, is there log available so =
that I can look into (instead of writing out log file by myself from within=
 my script)? &nbsp;I do not seem to find it in temp folder of my recipes's =
working directory.</div>
<div><br>
</div>
<div>ii) Is '#!/bin/sh' always necessary?</div>
<div><br>
</div>
<div>iii) What happens with pkg_postinst_PN_append? &nbsp;If it is defined =
without pkg_postinst_PN, it still works and executed? &nbsp;If i) is true w=
hat about '#!/bin/sh' in this case?</div>
<div><br>
</div>
<div>If you have qucik suggestions, it is a great help.</div>
<div><br>
</div>
<div><br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_CY1PR0101MB159483D0BB39CD4126D1B71CB6490CY1PR0101MB1594_--
