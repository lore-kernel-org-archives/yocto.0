Return-Path: <peter.spierenburg@nautel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D4CAE00E22; Sun,  4 Feb 2018 06:54:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.125 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0125.outbound.protection.outlook.com [104.47.38.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F68BE005BB
	for <yocto@yoctoproject.org>; Sun,  4 Feb 2018 06:54:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nautel.onmicrosoft.com; s=selector1-nautel-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=kjOrmg7PZheoHIna4wfw8lJeX3CCYecy9qPAR0uB9q4=;
	b=dxlAWV/cGu182UjR3KrHZfeiRXzk6U37JI6YRMJEwM9nFfMs13tnXOkaZd8npwFt5KilSZf03wHZZgasRsrU4F2VKSghv9CGYiTdA0Z0Xj16eif0vOaQNYpXHNn6jVn9yd2TgnBK00rgx6zLcblgzQXQ1ghybJ74byZDhEOkpOg=
Received: from MWHPR13MB1584.namprd13.prod.outlook.com (10.175.140.149) by
	MWHPR13MB1213.namprd13.prod.outlook.com (10.169.206.23) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.485.3; Sun, 4 Feb 2018 14:54:14 +0000
Received: from MWHPR13MB1584.namprd13.prod.outlook.com ([10.175.140.149]) by
	MWHPR13MB1584.namprd13.prod.outlook.com ([10.175.140.149]) with mapi id
	15.20.0485.009; Sun, 4 Feb 2018 14:54:14 +0000
From: Peter Spierenburg <peter.spierenburg@nautel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: runqemu looking for qemuboot.conf file...
Thread-Index: AQHTncgFvI3ilYTiakCbUSctAce6lw==
Date: Sun, 4 Feb 2018 14:54:14 +0000
Message-ID: <MWHPR13MB1584A894E54CA2AD29EA0DEA9EFF0@MWHPR13MB1584.namprd13.prod.outlook.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=peter.spierenburg@nautel.com; 
x-originating-ip: [24.138.24.95]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR13MB1213;
	7:Smrr6QpAiXA5Z6hP4Be540LbB4Xc5sQagfKbsdAbdWDRXfM6gJ9cNKOWQ3KTMvSlQ6pxRlDLV11u1KRD1XcVkdsunsoLTh4aVX6tM54rXwXXTM3xI2ZHUZmf/8g5yGVrDvi5Bht323oZNuDfAAZjRgr4g6N2+kC00uN4qeEn1LyqetsgRNWTUsGpmRiuzZYjQ8B2WhIxndO/uUNoYT2gsMrxmmNMaCAIusRdiEd2tKw8Rn2O4HsXqL7m/J8oRl7g
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 9804e00d-af00-41a4-3762-08d56bdf2898
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:MWHPR13MB1213; 
x-ms-traffictypediagnostic: MWHPR13MB1213:
x-microsoft-antispam-prvs: <MWHPR13MB1213D6A2D2F934D55F22B67F9EFF0@MWHPR13MB1213.namprd13.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(5005006)(8121501046)(93006095)(93001095)(3002001)(3231101)(2400082)(944501161)(10201501046)(6041288)(20161123564045)(20161123562045)(20161123560045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011);
	SRVR:MWHPR13MB1213; BCL:0; PCL:0; RULEID:; SRVR:MWHPR13MB1213; 
x-forefront-prvs: 05739BA1B5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(39840400004)(39380400002)(376002)(346002)(396003)(199004)(189003)(106356001)(19627405001)(26005)(97736004)(9686003)(2351001)(77096007)(55016002)(25786009)(54896002)(6436002)(105586002)(33656002)(66066001)(5640700003)(186003)(8676002)(81156014)(81166006)(1730700003)(68736007)(3280700002)(6916009)(8936002)(478600001)(74316002)(6606003)(102836004)(86362001)(53936002)(2900100001)(6506007)(2501003)(3660700001)(5890100001)(7736002)(316002)(59450400001)(2906002)(14454004)(5660300001)(7696005)(3846002)(6116002)(99286004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR13MB1213;
	H:MWHPR13MB1584.namprd13.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nautel.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: /Za2JzwZm47yEpXEgBbrujZG6iCtBsRGCUMZjObe6vPGS+MfpI6hlNzwXGo9dFkscTIF03GDCLh6PUVES/FYrw==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nautel.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9804e00d-af00-41a4-3762-08d56bdf2898
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2018 14:54:14.2142 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 656f830c-eb88-49fe-90f1-433363ec7ccf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR13MB1213
Subject: runqemu looking for qemuboot.conf file...
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
X-List-Received-Date: Sun, 04 Feb 2018 14:54:20 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_MWHPR13MB1584A894E54CA2AD29EA0DEA9EFF0MWHPR13MB1584namp_"

--_000_MWHPR13MB1584A894E54CA2AD29EA0DEA9EFF0MWHPR13MB1584namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've written a bsp  for the adzs-sc589-ezlite board from analog devices. I =
am trying to use qemu to emulate the board, but I get the following

runqemu - INFO - Can't find qemuboot conf file, DEPLOY_DIR_IMAGE is NULL!
runqemu - INFO - Running MACHINE=3Dadzs-sc589-ezlite bitbake -e...
runqemu - INFO - Overriding conf file setting of STAGING_DIR_NATIVE to /hom=
e/peter/yocto-build/build/tmp/work/armv5e-poky-linux-gnueabi/defaultpkgname=
/1.0-r0/recipe-sysroot-native from Bitbake environment
Traceback (most recent call last):
  File "/home/peter/yocto-build/poky/scripts/runqemu", line 1243, in <modul=
e>
    ret =3D main()
  File "/home/peter/yocto-build/poky/scripts/runqemu", line 1230, in main
    config.check_and_set()
  File "/home/peter/yocto-build/poky/scripts/runqemu", line 652, in check_a=
nd_set
    self.check_fstype()
  File "/home/peter/yocto-build/poky/scripts/runqemu", line 513, in check_f=
stype
    raise Exception("FSTYPE is NULL!")
Exception: FSTYPE is NULL!

I've tried forcing:

$ bitbake core-image-minimal -c do_write_qemuboot_conf

but with no success.

Peter.

This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the contents is strictly prohibited. If you h=
ave received this message in error, please contact us immediately so we may=
 correct our records. Please then delete or destroy the original transmissi=
on and any subsequent reply. Thank you.

--_000_MWHPR13MB1584A894E54CA2AD29EA0DEA9EFF0MWHPR13MB1584namp_
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
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>I've written a bsp&nbsp;&nbsp;for the adzs-sc589-ezlite board from ana=
log devices. I am trying to use qemu to emulate the board, but I get the fo=
llowing</div>
<div><br>
</div>
<div>runqemu - INFO - Can't find qemuboot conf file, DEPLOY_DIR_IMAGE is NU=
LL!</div>
<div>runqemu - INFO - Running MACHINE=3Dadzs-sc589-ezlite bitbake -e...</di=
v>
<div>runqemu - INFO - Overriding conf file setting of STAGING_DIR_NATIVE to=
 /home/peter/yocto-build/build/tmp/work/armv5e-poky-linux-gnueabi/defaultpk=
gname/1.0-r0/recipe-sysroot-native from Bitbake environment</div>
<div>Traceback (most recent call last):</div>
<div>&nbsp; File &quot;/home/peter/yocto-build/poky/scripts/runqemu&quot;, =
line 1243, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; ret =3D main()</div>
<div>&nbsp; File &quot;/home/peter/yocto-build/poky/scripts/runqemu&quot;, =
line 1230, in main</div>
<div>&nbsp; &nbsp; config.check_and_set()</div>
<div>&nbsp; File &quot;/home/peter/yocto-build/poky/scripts/runqemu&quot;, =
line 652, in check_and_set</div>
<div>&nbsp; &nbsp; self.check_fstype()</div>
<div>&nbsp; File &quot;/home/peter/yocto-build/poky/scripts/runqemu&quot;, =
line 513, in check_fstype</div>
<div>&nbsp; &nbsp; raise Exception(&quot;FSTYPE is NULL!&quot;)</div>
<div>Exception: FSTYPE is NULL!</div>
<div><br>
</div>
I've tried forcing:
<p></p>
<div><br>
</div>
<div>$ bitbake core-image-minimal -c&nbsp;<span>do_write_qemuboot_conf</spa=
n></div>
<div><span><br>
</span></div>
<div><span>but with no success.</span></div>
<div><span><br>
</span></div>
<div><span>Peter.</span></div>
<div><span><br>
</span></div>
</div>
This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the
 contents is strictly prohibited. If you have received this message in erro=
r, please contact us immediately so we may correct our records. Please then=
 delete or destroy the original transmission and any subsequent reply. Than=
k you.
</body>
</html>

--_000_MWHPR13MB1584A894E54CA2AD29EA0DEA9EFF0MWHPR13MB1584namp_--
