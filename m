Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E761E003D7; Sun, 29 Jan 2017 21:45:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.85 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0085.outbound.protection.outlook.com [104.47.34.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6731AE0030B
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 21:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=qMKzryiU+FGSlAPJDlFrodBNnT40jibRhyyRVNYzXbY=;
	b=rI7iQwm6OTrYBWJ2lb944n3JObn6d22Ai8ZCiyFY8p5DDAA+C/5Da5Y/n9lw+ySmStbMrZ28JuhY23BltGF2st3FhK62iWEZY0ozWoGHpk/LsTslXq45+QToVRgi4i6uHx10Yj8/T/bfG5SJ6cpPoK2+kqI6RYJ6MA1wAODpVgQ=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.860.13; Mon, 30 Jan 2017 05:29:53 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0860.026; Mon, 30 Jan 2017 05:29:53 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: pkg_postinst shell?
Thread-Index: AQHSeRJXqfLOGUVvzEKgC07itriPAKFQgOcE
Date: Mon, 30 Jan 2017 05:29:52 +0000
Message-ID: <CY1PR0101MB1594FE408435CBAB28FDAB9AB64B0@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB159483D0BB39CD4126D1B71CB6490@CY1PR0101MB1594.prod.exchangelabs.com>
In-Reply-To: <CY1PR0101MB159483D0BB39CD4126D1B71CB6490@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [118.238.252.194]
x-ms-office365-filtering-correlation-id: 3914976d-9a57-4ab5-58a2-08d448d104b2
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:CY1PR0101MB1594; 
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1594;
	7:70bjOECnmhYmKDwJhARSuY+eZ71WBLJk1ZIMsdVzIhFpNqx+w/OSmFKIilJ48qhzPIaU7k5tJ3h4/VrvetMw+qP0CMnPOr4JO9b+VZ2O0En0649goXkc/YMx4aPP350p3lhHek0iF5fGOXNdfvXMS/D2FuHCk+9ytk0LpKZyQYRwTcR23BfZZFxEJ3LmL0PlsGPZdYc/RMm4AmHRVOHdr6PsHl67dMwjMlS1fwW91YuFd2hfM/TSLJNPmz5TOsJmISfoB2dD1kT49wzsjg7tu++0kIrPMVvZq2pSe8LhSw4OQCrOq15YjCHHKuOzp3iaTzRUGeTNATLmzYS4o1ymw9tFG+T9l4eRG7X8cu1YEI2YM2YUsqwU8qOhtgez6O9Oe2bD2hDHyF8ts9QbmnUuHrIv4Jpdl1e7vUOEAvRJvVmawp7zQuXbgrV9IdXqBwWM/id94XGw3fdlEZtdx9Pmrg==
x-microsoft-antispam-prvs: <CY1PR0101MB1594710C63DCC0E45E51068CB64B0@CY1PR0101MB1594.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123564025)(20161123562025)(20161123555025)(20161123560025)(6072148);
	SRVR:CY1PR0101MB1594; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1594; 
x-forefront-prvs: 0203C93D51
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39450400003)(377454003)(199003)(189002)(3660700001)(110136003)(53936002)(7736002)(74316002)(9686003)(99286003)(2906002)(19627405001)(450100001)(5640700003)(2351001)(25786008)(55016002)(66066001)(5660300001)(7696004)(7116003)(2501003)(101416001)(2900100001)(68736007)(3900700001)(92566002)(54356999)(2950100002)(6916009)(189998001)(107886002)(76176999)(6606003)(97736004)(106116001)(106356001)(122556002)(8936002)(81156014)(229853002)(81166006)(1730700003)(54896002)(6306002)(77096006)(102836003)(3846002)(6116002)(50986999)(6506006)(33656002)(8676002)(86362001)(38730400001)(6436002)(3280700002)(105586002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1594;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2017 05:29:52.7992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1594
Subject: Re: pkg_postinst shell?
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
X-List-Received-Date: Mon, 30 Jan 2017 05:45:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB1594FE408435CBAB28FDAB9AB64B0CY1PR0101MB1594_"

--_000_CY1PR0101MB1594FE408435CBAB28FDAB9AB64B0CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.
It seems the below patch fixes this problem.

systemd.bbclass: don't block on service restart
https://patchwork.openembedded.org/patch/134317/

(By the way, it may related to my question in another thread, but which is =
the convenient way to apply this kind of patches to my local build system?)

________________________________
From: Takashi Matsuzawa
Sent: Saturday, January 28, 2017 11:58 AM
To: yocto@yoctoproject.org
Subject: pkg_postinst shell?


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




--_000_CY1PR0101MB1594FE408435CBAB28FDAB9AB64B0CY1PR0101MB1594_
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
<div>Hello.</div>
<div>It seems the below patch fixes&nbsp;this problem.</div>
<div><br>
</div>
<div>systemd.bbclass: don't block on service restart</div>
<div>https://patchwork.openembedded.org/patch/134317/</div>
<p></p>
<div><br>
</div>
(By the way, it may related to my question in another thread, but which is =
the convenient way to apply this kind of patches to my local build system?)
<div><br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Takashi Matsuzawa<br>
<b>Sent:</b> Saturday, January 28, 2017 11:58 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> pkg_postinst shell?</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p></p>
<div><span style=3D"font-size:12pt">Hello Yocto.</span><br>
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
</div>
</div>
</div>
</div>
</body>
</html>

--_000_CY1PR0101MB1594FE408435CBAB28FDAB9AB64B0CY1PR0101MB1594_--
