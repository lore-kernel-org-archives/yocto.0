Return-Path: <AnindyaSundar.Gayen@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDD5CE00D4C; Tue, 26 Jul 2016 03:56:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.101.48 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1970 seconds by postgrey-1.32 at yocto-www;
	Tue, 26 Jul 2016 03:56:25 PDT
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0048.outbound.protection.outlook.com [104.47.101.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE685E00D45
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 03:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=inedasystems.onmicrosoft.com; s=selector1-inedasystems-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=DIO8B2+dV28Sf5Wr4Lil1s4/wVPH5Q05vzT7uoUA/Zk=;
	b=OPh+1yD6V1z9gzLA25QWBlNhqxPaH7LyfYQvjBPCvekyG+KE6tc4n/ujprKJeJIRbzaJmq/TfabVL2lWzWq0tFKqrXAPRzMmomq+MOg6g2ph9kHbhq4xEQm+R7W8vzZv5vlohoN6Lcsrw1PLL4x9CPekHdLz3ui20KxuhYfcvpw=
Received: from BM1PR01MB0563.INDPRD01.PROD.OUTLOOK.COM (10.164.132.14) by
	BM1PR01MB0564.INDPRD01.PROD.OUTLOOK.COM (10.164.132.15) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.549.15; Tue, 26 Jul 2016 10:23:30 +0000
Received: from BM1PR01MB0563.INDPRD01.PROD.OUTLOOK.COM ([10.164.132.14]) by
	BM1PR01MB0563.INDPRD01.PROD.OUTLOOK.COM ([10.164.132.14]) with mapi id
	15.01.0549.016; Tue, 26 Jul 2016 10:23:31 +0000
From: Anindya Sundar Gayen <AnindyaSundar.Gayen@inedasystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Kernel panic - not syncing: Attempted to kill init!
	exitcode=0x00007f00
Thread-Index: AQHR5yYPwmJCR/at+kSRDHRnfFZw9A==
Date: Tue, 26 Jul 2016 10:23:30 +0000
Message-ID: <BM1PR01MB0563A5094BEDF13CF53B0053950E0@BM1PR01MB0563.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US, en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=AnindyaSundar.Gayen@inedasystems.com; 
x-originating-ip: [175.101.7.226]
x-ms-office365-filtering-correlation-id: fdea60ba-7e3c-4004-24f5-08d3b53ee432
x-microsoft-exchange-diagnostics: 1; BM1PR01MB0564;
	20:iyJBlDDqtu3C6ZzLlujKmiZBL9UnIJJdfB7qRqJBvDEGvA/sN6wk2qJUJQZ2uDow9MPbjzSL5V2eFklyBDCZ4jBQ6RA/pTQGhBZknsQNQnjIA+FmR+Ft7M/2WSnKv8qCtkSaqUYszgDJWQFohG4WAMe/wG8aDjKwArRYyi2RYdg=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BM1PR01MB0564;
x-microsoft-antispam-prvs: <BM1PR01MB0564D09E85EE61EFC55BCC97950E0@BM1PR01MB0564.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:BM1PR01MB0564; BCL:0; PCL:0; RULEID:; SRVR:BM1PR01MB0564; 
x-forefront-prvs: 00159D1518
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(189002)(199003)(19625215002)(106356001)(7846002)(106116001)(2351001)(110136002)(19627405001)(8936002)(74316002)(105586002)(101416001)(5640700001)(5002640100001)(68736007)(107886002)(229853001)(3280700002)(7736002)(3660700001)(5003600100003)(16236675004)(7696003)(92566002)(10400500002)(2501003)(97736004)(189998001)(9686002)(122556002)(8676002)(1730700003)(81156014)(81166006)(33656002)(54356999)(50986999)(77096005)(450100001)(2900100001)(86362001)(586003)(2906002)(3846002)(87936001)(6116002)(102836003)(66066001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BM1PR01MB0564;
	H:BM1PR01MB0563.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: inedasystems.com does not
	designate permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: inedasystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2016 10:23:30.9562 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 854eba29-8407-45bb-9043-7b8b086143dd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BM1PR01MB0564
X-Mailman-Approved-At: Tue, 26 Jul 2016 04:38:56 -0700
Subject: Kernel panic - not syncing: Attempted to kill init! exitcode=0x00007f00
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
X-List-Received-Date: Tue, 26 Jul 2016 10:56:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB0563A5094BEDF13CF53B0053950E0BM1PR01MB0563INDP_"

--_000_BM1PR01MB0563A5094BEDF13CF53B0053950E0BM1PR01MB0563INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I am trying to build Yocto for my custom FPGA board. I added the meta-bsp l=
ayer. But after successful building of Yocto I am getting "Kernel panic - n=
ot syncing: Attempted to kill init! exitcode=3D0x00007f00". Kernel log ment=
ioned below.


I am using Yocto version dizzy and the same rfs is working fine with phycor=
e Vybrid board because both (Vybrid & my custom FPGA) are using cortex-A5. =
I am compiling my Linux kernel externally using poky toolchain because I ne=
ed to make it initramfs. Phycore Vybrid board is using Linux kernel version=
 3.0.15 and for my custom FPGA board it is 4.6. It seems to be noticed that=
 4.6 Linux kernel with openWRT is perfectly running whenever I am creating =
that also as initramfs for my custom FPGA.


So, please let me know how to resolve it.


LOG:~


[   10.160000] console [ttyS0] enabled
[   10.160000] console [ttyS0] enabled
[   10.170000] bootconsole [earlycon0] disabled
[   10.170000] bootconsole [earlycon0] disabled
[   10.380000] Warning: unable to open an initial console.
[   10.390000] devtmpfs: mounted
[   12.130000] Freeing unused kernel memory: 4648K (2022e000 - 206b8000)
[   12.140000] This architecture does not have kernel memory protection.
[   12.320000] Kernel panic - not syncing: Attempted to kill init! exitcode=
=3D0x00007f00
[   12.320000]
[   12.320000] Rebooting in 5 seconds..Reboot failed -- System halted



Thanks & regards,
Anindya Sundar Gayen
Contact | 7842753740

--_000_BM1PR01MB0563A5094BEDF13CF53B0053950E0BM1PR01MB0563INDP_
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
<p>I am trying to build Yocto for my custom FPGA board. I added the meta-bs=
p layer. But after successful building of Yocto I am getting
<span>&quot;Kernel panic - not syncing: Attempted to kill init! exitcode=3D=
0x00007f00&quot;. Kernel log mentioned below.</span></p>
<p><span><br>
</span></p>
<p><span>I am using Yocto version dizzy and the same rfs is working fine wi=
th phycore Vybrid board because both (Vybrid &amp; my custom FPGA) are usin=
g cortex-A5. I am compiling my Linux kernel externally using poky toolchain=
 because I need to make it initramfs.
 Phycore Vybrid board is using Linux kernel version 3.0.15 and for my custo=
m FPGA board it is 4.6. It seems to be noticed that 4.6 Linux kernel with o=
penWRT is perfectly running whenever I am creating that also as initramfs f=
or my custom FPGA.</span></p>
<p><span><br>
</span></p>
<p><span>So, please let me know how to resolve it.</span><br>
</p>
<p><br>
</p>
<p><b>LOG:~</b></p>
<p><br>
</p>
<p></p>
<div>[&nbsp;&nbsp; 10.160000] console [ttyS0] enabled<br>
[&nbsp;&nbsp; 10.160000] console [ttyS0] enabled<br>
[&nbsp;&nbsp; 10.170000] bootconsole [earlycon0] disabled<br>
[&nbsp;&nbsp; 10.170000] bootconsole [earlycon0] disabled<br>
[&nbsp;&nbsp; 10.380000] Warning: unable to open an initial console.<br>
[&nbsp;&nbsp; 10.390000] devtmpfs: mounted<br>
[&nbsp;&nbsp; 12.130000] Freeing unused kernel memory: 4648K (2022e000 - 20=
6b8000)<br>
[&nbsp;&nbsp; 12.140000] This architecture does not have kernel memory prot=
ection.<br>
[&nbsp;&nbsp; 12.320000] Kernel panic - not syncing: Attempted to kill init=
! exitcode=3D0x00007f00<br>
[&nbsp;&nbsp; 12.320000] <br>
[&nbsp;&nbsp; 12.320000] Rebooting in 5 seconds..Reboot failed -- System ha=
lted<br>
</div>
<br>
<p></p>
<p><br>
</p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
<b><font color=3D"3366FF" size=3D"3">Thanks &amp; regards,</font><br>
<font color=3D"808080" size=3D"2">Anindya Sundar Gayen</font><br>
<font color=3D"3366FF">Contact |</font> <font color=3D"999999" size=3D"2">7=
842753740</font></b><br>
</div>
</div>
</div>
</body>
</html>

--_000_BM1PR01MB0563A5094BEDF13CF53B0053950E0BM1PR01MB0563INDP_--
