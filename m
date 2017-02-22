Return-Path: <peter.spierenburg@nautel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D68CE00A1F; Wed, 22 Feb 2017 12:46:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.37.124 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0124.outbound.protection.outlook.com
	[104.47.37.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B732E00724
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 12:46:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nautel.onmicrosoft.com; s=selector1-nautel-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=+EGa0rnUeqd0Qf7ahTJRkv/gvJlm1CEwT22OFGwxrM8=;
	b=fv+qORJaMSL50VzSojCXWnIfpTsgHNBhBf29fVhsVJ+wqum11UMTvQNk5LnTwR3ucBD54XFxmcz19dOSPi2zr+QDR+ZBEGhgyUskUzrHWvarv+cdV+y7I0eRCKNdKUX62spoLLKk/MSJ4SkjhAOUO0ZF77RyKUQRG4WVs0Bs9Wc=
Received: from BN6PR05MB2851.namprd05.prod.outlook.com (10.168.255.136) by
	BN6PR05MB2850.namprd05.prod.outlook.com (10.168.255.135) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.933.7; Wed, 22 Feb 2017 20:46:04 +0000
Received: from BN6PR05MB2851.namprd05.prod.outlook.com ([10.168.255.136]) by
	BN6PR05MB2851.namprd05.prod.outlook.com ([10.168.255.136]) with mapi id
	15.01.0933.011; Wed, 22 Feb 2017 20:46:04 +0000
From: Peter Spierenburg <peter.spierenburg@nautel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Trying to build: DEFAULTTUNE = "armcortexa5hf-neon"
Thread-Index: AQHSjUrT31c1fXRRd0eyQKpslBEEng==
Date: Wed, 22 Feb 2017 20:46:04 +0000
Message-ID: <BN6PR05MB285193B762D66992B19764999E500@BN6PR05MB2851.namprd05.prod.outlook.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=nautel.com;
x-originating-ip: [25.171.172.4]
x-ms-office365-filtering-correlation-id: b8ac7e89-0e9a-4923-9775-08d45b63d1ea
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:BN6PR05MB2850;
x-microsoft-exchange-diagnostics: 1; BN6PR05MB2850;
	7:bPrzspS6qMr5fkvI83T1e9fnV2MfISyUCVUy9zJ0gayFki5cbCl1Gu1iVCS+/yxq86LEeiikHBjmeEeY1cwe9r4AeGrrq3OxDEMn32RRyqnqMvntx31W4xO9GSf9id+SPWzGJq7G35tND7vnc4hbAqMI4gd2kjX5p0WazB378VoIkbe9qZTOU5f5tcOwl19En+zf/Bnvcn01Tjz6JZYK57EAcG2DOIGuc/taElAdGv9n7eKx7mNPOZh8K8ACwd9YEQOY1nVVqM3ToSAcmIN2roTtagfz2Z/DS9gmiGXGdLmqN3Zy97InDVJb0cCRFjmSmaABW5zlBc7GQLgJS+bupw==
x-microsoft-antispam-prvs: <BN6PR05MB2850E3C925DB498FB0AF38529E500@BN6PR05MB2850.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123560025)(20161123558025)(20161123564025)(20161123562025)(20161123555025)(6072148);
	SRVR:BN6PR05MB2850; BCL:0; PCL:0; RULEID:; SRVR:BN6PR05MB2850; 
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(39450400003)(450100001)(66066001)(110136004)(5640700003)(9686003)(19627405001)(86362001)(25786008)(3280700002)(6436002)(99286003)(575784001)(55016002)(6506006)(33656002)(106116001)(5660300001)(38730400002)(54896002)(2351001)(3660700001)(2900100001)(92566002)(189998001)(7696004)(6606003)(6916009)(54356999)(8676002)(1730700003)(6116002)(102836003)(3846002)(81166006)(53936002)(50986999)(77096006)(8936002)(2501003)(74316002)(2906002)(122556002)(7736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR05MB2850;
	H:BN6PR05MB2851.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:nspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nautel.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2017 20:46:04.4201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 656f830c-eb88-49fe-90f1-433363ec7ccf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR05MB2850
Subject: Trying to build: DEFAULTTUNE = "armcortexa5hf-neon"
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
X-List-Received-Date: Wed, 22 Feb 2017 20:46:10 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_BN6PR05MB285193B762D66992B19764999E500BN6PR05MB2851namp_"

--_000_BN6PR05MB285193B762D66992B19764999E500BN6PR05MB2851namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am trying to build yocto for the ADSP-SC589 chip which includes an ARM. I=
 believe that the correct directive is:


DEFAULTTUNE =3D "armcortexa5hf-neon"


I started by trying to add the directive to the local.conf file, but I got =
this result:


    Tuning 'armcortexa5hf-neon' has no defined features, and cannot be used=
.


Then I tried defining my own version of conf/machine/qemuarm.conf


---

#@TYPE: Machine
#@NAME: arm_cortexa5_hf_neon
#@DESCRIPTION: arm_cortexa5_hf_neon

DEFAULTTUNE =3D "cortexa5hf-neon"

require conf/machine/include/qemu.inc
require conf/machine/include/tune-cortexa5.inc
#require conf/machine/include/tune-arm1136jf-s.inc

KERNEL_IMAGETYPE =3D "zImage"

SERIAL_CONSOLES =3D "115200;ttyAMA0 115200;ttyAMA1"
---

This built great, and the opening:

Build Configuration:
BB_VERSION        =3D "1.30.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "universal"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "qemuarm-nautel"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "2.1.2"
TUNE_FEATURES     =3D "arm armv7a vfp  neon        callconvention-hard     =
   cortexa5"
TARGET_FPU        =3D "hard"
meta
meta-poky
meta-yocto-bsp    =3D "krogoth:ae9b341ecfcc60e970f29cfe04306411ad26c0cf"
meta-local        =3D "master:ed515d2261eace09dc0ac7c9cfb659692ae07aeb"

looked really hopeful.

However, when I boot the result with 'runqemu qemuarm' I get a kernel panic=
.

What should my next step be?

Peter.


--_000_BN6PR05MB285193B762D66992B19764999E500BN6PR05MB2851namp_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica, sans-serif, &quot;=
Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p>I am trying to build yocto for the ADSP-SC589 chip which includes an ARM=
. I believe that the correct directive is:</p>
<p><br>
</p>
<p>DEFAULTTUNE =3D &quot;armcortexa5hf-neon&quot;</p>
<p><br>
</p>
<p>I started by trying to add the directive to the local.conf file, but I g=
ot this result:</p>
<p><br>
</p>
<p>&nbsp; &nbsp; Tuning '<span>armcortexa5hf-neon' has no defined features,=
 and cannot be used.</span></p>
<p><span><br>
</span></p>
<p><span>Then I tried defining my own version of conf/machine/qemuarm.conf<=
/span></p>
<p><span><br>
</span></p>
<p><span>---</span></p>
<p><span></span></p>
<div>#@TYPE: Machine</div>
<div>#@NAME: arm_cortexa5_hf_neon</div>
<div>#@DESCRIPTION: arm_cortexa5_hf_neon</div>
<div><br>
</div>
<div>DEFAULTTUNE =3D &quot;cortexa5hf-neon&quot;</div>
<div><br>
</div>
<div>require conf/machine/include/qemu.inc</div>
<div>require conf/machine/include/tune-cortexa5.inc</div>
<div>#require conf/machine/include/tune-arm1136jf-s.inc</div>
<div><br>
</div>
<div>KERNEL_IMAGETYPE =3D &quot;zImage&quot;</div>
<div><br>
</div>
<div>SERIAL_CONSOLES =3D &quot;115200;ttyAMA0 115200;ttyAMA1&quot;</div>
<div>---</div>
<div><br>
</div>
<div>This built great, and the opening:</div>
<div><br>
</div>
<div>
<div style=3D"color: rgb(33, 33, 33); font-size: 15px;">
<div style=3D"margin: 0px;"><font face=3D"Calibri,sans-serif" size=3D"2"><s=
pan style=3D"font-size: 11pt;"><font size=3D"3" color=3D"black"><span style=
=3D"font-size: 12pt;">Build Configuration:</span></font></span></font></div=
>
</div>
<div style=3D"color: rgb(33, 33, 33); font-size: 15px;">
<div style=3D"margin: 0px;"><font face=3D"Calibri,sans-serif" size=3D"2"><s=
pan style=3D"font-size: 11pt;"><font size=3D"3" color=3D"black"><span style=
=3D"font-size: 12pt;">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;1.30.=
0&quot;</span></font></span></font></div>
</div>
<div style=3D"color: rgb(33, 33, 33); font-size: 15px;">
<div style=3D"margin: 0px;"><font face=3D"Calibri,sans-serif" size=3D"2"><s=
pan style=3D"font-size: 11pt;"><font size=3D"3" color=3D"black"><span style=
=3D"font-size: 12pt;">BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;x86_6=
4-linux&quot;</span></font></span></font></div>
</div>
<div style=3D"color: rgb(33, 33, 33); font-size: 15px;">
<div style=3D"margin: 0px;"><font face=3D"Calibri,sans-serif" size=3D"2"><s=
pan style=3D"font-size: 11pt;"><font size=3D"3" color=3D"black"><span style=
=3D"font-size: 12pt;">NATIVELSBSTRING &nbsp; =3D &quot;universal&quot;</spa=
n></font></span></font></div>
</div>
<div style=3D"color: rgb(33, 33, 33); font-size: 15px;">
<div style=3D"margin: 0px;"><font face=3D"Calibri,sans-serif" size=3D"2"><s=
pan style=3D"font-size: 11pt;"><font size=3D"3" color=3D"black"><span style=
=3D"font-size: 12pt;">TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;arm-p=
oky-linux-gnueabi&quot;</span></font></span></font></div>
</div>
<div style=3D"color: rgb(33, 33, 33); font-size: 15px;">
<div style=3D"margin: 0px;"><font face=3D"Calibri,sans-serif" size=3D"2"><s=
pan style=3D"font-size: 11pt;"><font size=3D"3" color=3D"black"><span style=
=3D"font-size: 12pt;">MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;=
qemuarm-nautel&quot;</span></font></span></font></div>
</div>
<div style=3D"color: rgb(33, 33, 33); font-size: 15px;">
<div style=3D"margin: 0px;"><font face=3D"Calibri,sans-serif" size=3D"2"><s=
pan style=3D"font-size: 11pt;"><font size=3D"3" color=3D"black"><span style=
=3D"font-size: 12pt;">DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D &=
quot;poky&quot;</span></font></span></font></div>
</div>
<div style=3D"color: rgb(33, 33, 33); font-size: 15px;">
<div style=3D"margin: 0px;"><font face=3D"Calibri,sans-serif" size=3D"2"><s=
pan style=3D"font-size: 11pt;"><font size=3D"3" color=3D"black"><span style=
=3D"font-size: 12pt;">DISTRO_VERSION &nbsp; &nbsp;=3D &quot;2.1.2&quot;</sp=
an></font></span></font></div>
</div>
<div style=3D"color: rgb(33, 33, 33); font-size: 15px;">
<div style=3D"margin: 0px;"><font face=3D"Calibri,sans-serif" size=3D"2"><s=
pan style=3D"font-size: 11pt;"><font size=3D"3" color=3D"black"><span style=
=3D"font-size: 12pt;">TUNE_FEATURES &nbsp; &nbsp; =3D &quot;arm armv7a vfp =
&nbsp;neon &nbsp; &nbsp; &nbsp; &nbsp;callconvention-hard &nbsp; &nbsp; &nb=
sp; &nbsp;cortexa5&quot;</span></font></span></font></div>
</div>
<div style=3D"color: rgb(33, 33, 33); font-size: 15px;">
<div style=3D"margin: 0px;"><font face=3D"Calibri,sans-serif" size=3D"2"><s=
pan style=3D"font-size: 11pt;"><font size=3D"3" color=3D"black"><span style=
=3D"font-size: 12pt;">TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;hard&=
quot;</span></font></span></font></div>
</div>
<div style=3D"color: rgb(33, 33, 33); font-size: 15px;">
<div style=3D"margin: 0px;"><font face=3D"Calibri,sans-serif" size=3D"2"><s=
pan style=3D"font-size: 11pt;"><font size=3D"3" color=3D"black"><span style=
=3D"font-size: 12pt;">meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
</span></font></span></font></div>
</div>
<div style=3D"color: rgb(33, 33, 33); font-size: 15px;">
<div style=3D"margin: 0px;"><font face=3D"Calibri,sans-serif" size=3D"2"><s=
pan style=3D"font-size: 11pt;"><font size=3D"3" color=3D"black"><span style=
=3D"font-size: 12pt;">meta-poky &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></f=
ont></span></font></div>
</div>
<div style=3D"color: rgb(33, 33, 33); font-size: 15px;">
<div style=3D"margin: 0px;"><font face=3D"Calibri,sans-serif" size=3D"2"><s=
pan style=3D"font-size: 11pt;"><font size=3D"3" color=3D"black"><span style=
=3D"font-size: 12pt;">meta-yocto-bsp &nbsp; &nbsp;=3D &quot;krogoth:ae9b341=
ecfcc60e970f29cfe04306411ad26c0cf&quot;</span></font></span></font></div>
</div>
<div style=3D"color: rgb(33, 33, 33); font-size: 15px;">
<div style=3D"margin: 0px;"><font face=3D"Calibri,sans-serif" size=3D"2"><s=
pan style=3D"font-size: 11pt;"><font size=3D"3" color=3D"black"><span style=
=3D"font-size: 12pt;">meta-local &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;maste=
r:ed515d2261eace09dc0ac7c9cfb659692ae07aeb&quot;</span></font></span></font=
></div>
</div>
<br>
</div>
<div>looked really hopeful.</div>
<div><br>
</div>
<div>However, when I boot the result with 'runqemu qemuarm' I get a kernel =
panic.</div>
<div><br>
</div>
<div>What should my next step be?</div>
<div><br>
</div>
<div>Peter.</div>
<div><br>
</div>
</div>
</body>
</html>

--_000_BN6PR05MB285193B762D66992B19764999E500BN6PR05MB2851namp_--
