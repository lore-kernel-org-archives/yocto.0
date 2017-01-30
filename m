Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A621DE00935; Sun, 29 Jan 2017 19:32:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.74 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0074.outbound.protection.outlook.com [104.47.41.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D130E0082A
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 19:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=IMyJT7bT4oXxd5X1wMR0nZMKmCjTzF340Pmc5HHugXk=;
	b=the8ITKSDzXdl1iG2+RyLdSCKLfULAq3CRx6/HqnqjxIRP1q8u2aWKY5hJbwB6kHQAQlLuKuh2ryjqSDz0z+1kqISpNzzYIWrg/o4rgL0BX9CUGoZXZxsqt1zUmul2Pk5bP8bF/nBM8091bedqYSemzQmNbhER1LeX1044fYLRw=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1593.prod.exchangelabs.com (10.163.139.12) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.860.13; Mon, 30 Jan 2017 02:00:41 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0860.026; Mon, 30 Jan 2017 02:00:40 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: patching .bbclass files?
Thread-Index: AQHSepyncpo3Pz/Vkka7Vim2pvlBLg==
Date: Mon, 30 Jan 2017 02:00:40 +0000
Message-ID: <CY1PR0101MB1594DCF757DEC39182FB3F8FB64B0@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [118.238.252.194]
x-ms-office365-filtering-correlation-id: 064fb45e-9306-481b-4803-08d448b3cacd
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:CY1PR0101MB1593; 
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1593;
	7:jgggnglTo4s+lGGgbp85BMOwDj7t3pgYRgkU2wdITef+Xu6LhVY0uDbeazRqp6BcTYgRMNYv/xwpPianxX5MaYAbCtr1Lix8Y2XsnKqW4p2sOJIPzBP0fi0RHWvFg1GGlU5GKElt8dPABC2xbPT8XEqi5r0wNUgmgubcg4XAeP1IClW7WM6ogMu1XgoJ+F5S6gHeyFy9259soM9RFaRXjycIghAyvROxR6t5+9ejDs+KU1/otvhqTa7nCIYkAflTCuptkpoFgZ4hRBDuEIlmzc+gfybmuHMMkF7/F2sNR+qL4z3t3QpccenpHE4BperrsGCGDdH1p7k0lNkaVHPL0v+URObPvARVQIRC0HouVbGCSgz1H4TrgA39A9FJjxZdKCHmmmrTOfIqTsFz0xnwaXAtj/rwTV40/EBV5SqfJdfm3bGxEtL8k0NRn+59hBo3owlvdcIxJb0M0GvJEQmUvw==
x-microsoft-antispam-prvs: <CY1PR0101MB1593BBC894BF9AC80EAE5306B64B0@CY1PR0101MB1593.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6041248)(20161123564025)(20161123562025)(20161123555025)(20161123560025)(6072148);
	SRVR:CY1PR0101MB1593; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1593; 
x-forefront-prvs: 0203C93D51
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39450400003)(189002)(199003)(81166006)(81156014)(101416001)(102836003)(8936002)(2906002)(1730700003)(2900100001)(7696004)(107886002)(110136003)(105586002)(3280700002)(189998001)(5660300001)(97736004)(122556002)(19627405001)(6916009)(106356001)(6116002)(53936002)(6606003)(450100001)(2351001)(106116001)(8676002)(33656002)(3846002)(38730400001)(92566002)(6436002)(77096006)(6506006)(68736007)(86362001)(25786008)(7736002)(74316002)(9686003)(54896002)(2501003)(54356999)(55016002)(66066001)(5640700003)(50986999)(99286003)(3660700001)(142923001)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1593;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2017 02:00:40.0935 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1593
Subject: patching .bbclass files?
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
X-List-Received-Date: Mon, 30 Jan 2017 03:32:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB1594DCF757DEC39182FB3F8FB64B0CY1PR0101MB1594_"

--_000_CY1PR0101MB1594DCF757DEC39182FB3F8FB64B0CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yocto
I am curious if there is a better way of doing this manually every time I r=
e-synch to Yocto based BSP.

Say, I have a patch or customization I want to try on .bbclass files (inste=
ad of .bb or .bbappend, or the source files that are fetched.)
The reason for this is sometimes I want to try the latest fix to the BSP wh=
ile building old versino of my image, or debbuging image by modifying the b=
uild system files.

I think by using .bbappend files I can try modification to the .bb file beh=
aviros, but it does not for .bbclass files.
I could add slightly modified xxx.bbclass to my own layer so that it may ov=
erride what is available in poky/meta/..., but it may mean I just duplicate=
 a lot of bitbake related files in my layer for just a few lines of changes=
.

'repo' having a feature copying files when repositories are synched.  This =
may work for me?

Ideally, the poky and other remote gits have branches or releases that have=
 the patches I want to try, or I should be using the latest releases that s=
hould include meaningful fixes already.
But it is not possible always.


--_000_CY1PR0101MB1594DCF757DEC39182FB3F8FB64B0CY1PR0101MB1594_
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
<div><span style=3D"font-size: 12pt;">Hello Yocto</span><br>
</div>
<div>I am curious if there is a better way of doing this manually every tim=
e I re-synch to Yocto based BSP.</div>
<div><br>
</div>
<div>Say, I have a patch or customization I want to try on .bbclass files (=
instead of .bb or .bbappend, or the source files that are fetched.)</div>
<div>The reason for this is sometimes I want to try the latest fix to the B=
SP while building old versino of my image, or debbuging image by modifying =
the build system files.</div>
<div><br>
</div>
<div>I think by using .bbappend files I can try modification to the .bb fil=
e behaviros, but it does not for .bbclass files.</div>
<div>I could add slightly modified xxx.bbclass to my own layer so that it m=
ay override what is available in poky/meta/..., but it may mean I just dupl=
icate a lot of bitbake related files in my layer for just a few lines of ch=
anges.</div>
<div><br>
</div>
<div>'repo' having a feature copying files when repositories are synched. &=
nbsp;This may work for me?</div>
<div><br>
</div>
<div>Ideally, the poky and other remote gits have branches or releases that=
 have the patches I want to try, or I should be using the latest releases t=
hat should include meaningful fixes already.</div>
<div>But it is not possible always.</div>
<div><br>
</div>
<p></p>
</div>
</body>
</html>

--_000_CY1PR0101MB1594DCF757DEC39182FB3F8FB64B0CY1PR0101MB1594_--
