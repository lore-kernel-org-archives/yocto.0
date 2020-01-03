Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1452.1578084245165153340
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jan 2020 12:44:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sierrawireless.com header.s=selector1 header.b=CIhoNurP;
 spf=softfail (domain: sierrawireless.com, ip: 140.211.169.56, mailfrom: dwatkins@sierrawireless.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C958E013FF; Fri,  3 Jan 2020 12:44:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.92.69 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2069.outbound.protection.outlook.com [40.107.92.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23C97E01387
	for <yocto@yoctoproject.org>; Fri,  3 Jan 2020 12:44:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UbKsggfFNHr/FNJfkrwjduIFIM54zndYrGikmKjnR2INlk4GDzyuEdLyXEDPWLFxzGDzuXVpYvp3cNRZD43bYdO8RbIea5yhm+sA6LmdlFn7Egrn0omCJMeQhK+nKnDCXuth+2O6quSdxRrjvS0D860tSkg8DICpPyCKOKZyFdyaApj1QHfSyzXX0Ikbm+p9WFana5+svqV3lOtxk/GHIsv0aPuvB54f/Nop6CdgxnAKktcxBHFTWRy/RTbyTMTSdwCd46jH+t8BSikGnCfcoODsInprOaoMNVIpYM8ejxrQKB2NIsHZQbaXb9VO6Tjov5cce91jQhTzLTS/9Ud1Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PZQMekEwBM5joaX+vztG+fQfOPAtTxZBtT5a3+0L2xM=;
 b=IyoixOR5oLYPan/HNWOMgA6TrErcM0tLtI7BWzePEc0bVF7b5O7Y4FsQgez5V/A2mw9Dbkn7KWU5orGsRGb/6JNiZMORrBLzcapW1qlshhDPJIuYRj8nJ28Hpvo4mdgt8FFyv057bb97fX6aPPdG+mIjFq8ro+tSZ8q1FcWS4+eDV4HJwc8zIAhzMnNREfElc67W+IWg62tgdrfvwDtPzi4cQI80e6Ie25ssVL6lMshKH3sLON7UbsE+x0LIyXVUTEnnKzuz4vlp96rvf1zQsdCDX//Ze5Y6S8Y6MH/B1lYTwFbUE8tlNOfQQHQwl5xmzOwDEy0H6+72mmaEeQIiKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sierrawireless.com; dmarc=pass action=none
 header.from=sierrawireless.com; dkim=pass header.d=sierrawireless.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sierrawireless.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PZQMekEwBM5joaX+vztG+fQfOPAtTxZBtT5a3+0L2xM=;
 b=CIhoNurPygy048ahr3CdrxemWR1veAKftxAoavsQMqsHgVd+bY5h1fzud2AlU/fG1T9IBW/InaWFIOZChRzO9ct9SP+0WdCpQN8gjl7q+Xli6KGpSbbaLUAJ6Gdfi7rHjtErtXQq1k7U/dRgbgLrzaN9PRHeacDwD4LKIhawH1c=
Received: from MWHPR02MB2463.namprd02.prod.outlook.com (10.168.204.145) by
 MWHPR02MB3373.namprd02.prod.outlook.com (10.164.205.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.13; Fri, 3 Jan 2020 20:43:57 +0000
Received: from MWHPR02MB2463.namprd02.prod.outlook.com
 ([fe80::b502:13ea:55a7:9cf7]) by MWHPR02MB2463.namprd02.prod.outlook.com
 ([fe80::b502:13ea:55a7:9cf7%11]) with mapi id 15.20.2581.014; Fri, 3 Jan 2020
 20:43:57 +0000
From: "Darcy Watkins" <dwatkins@sierrawireless.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: meta-java / openjdk-8-native spontaneously broken in warrior on CentOS7
Thread-Topic: meta-java / openjdk-8-native spontaneously broken in warrior on
 CentOS7
Thread-Index: AdXCdoRk40GdJvA+TXWv8P2Qtzirrg==
Date: Fri, 3 Jan 2020 20:43:57 +0000
Message-ID: 
 <MWHPR02MB2463ECAC0C98AF970B2EC44FB2230@MWHPR02MB2463.namprd02.prod.outlook.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=dwatkins@sierrawireless.com; 
x-originating-ip: [208.81.120.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1a3e8ded-fb61-4d0c-5625-08d7908da7dd
x-ms-traffictypediagnostic: MWHPR02MB3373:|MWHPR02MB3373:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <MWHPR02MB3373AF0A6635DB28BDE6F51CB2230@MWHPR02MB3373.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0271483E06
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(346002)(396003)(39860400002)(136003)(366004)(376002)(189003)(199004)(71200400001)(81156014)(81166006)(8676002)(186003)(2906002)(8936002)(26005)(6506007)(9686003)(66446008)(55016002)(33656002)(86362001)(316002)(64756008)(6916009)(66476007)(5660300002)(66556008)(478600001)(7696005)(76116006)(66946007)(52536014);DIR:OUT;SFP:1101;SCL:1;SRVR:MWHPR02MB3373;H:MWHPR02MB2463.namprd02.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: sierrawireless.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 HFTaRmxVBchWyhxF+9afZlDIywPSxVi2cZ7Gr72r4R/fOfpEfJxnTGuc/eqYQlMsBwb7opmJWIKosxmFyQYpIqOSt/AZP5Yf0oEiTpwM8Ca1wk/QcWh4tQoE5Whf5QvrgiBABvVhFWmX0IL7YYW4SFQwB044NOa9DZ51mU4Q+V72ctseETST8krqDoCBAwaFmDbeWySCWCKoqXN2Bp9LQFFrRAFq8spw0w2pwlnBUJlOdZlUGKGYfJTMnaJnNsaZlHt24OzN2J/nA4/P/1F/f6YywCFo2cYymdGwWEP+b6mhRJWs+ZOQTatNIrIrOznZDenuL3ZjTGzapYaTIP7kbDo87wALdO9IhB0mfB1KvbhkZaYQ0KwzE/Lkc4+U2RJBI2VC9crLovAE8+Y1o86DM5TCAe50dqTNnZNKX0Dwa/eIlWy0gzMuQKzNDwx1EQ9T4h21nKQaJebzPSGfEIm2gBZOeexoC7M2yuBSl/ktwlA=
MIME-Version: 1.0
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a3e8ded-fb61-4d0c-5625-08d7908da7dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2020 20:43:57.5224
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +csi/LGaRzaHmgaDvoYwhM/H4oTTmMDJpZKJj81bm4e1CGWISkYQiC29Jm4QxyjzoRgeOWUFjDFFcMYt6TAcPVamPXBOdRGG6LMwbtiaIEg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB3373
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR02MB2463ECAC0C98AF970B2EC44FB2230MWHPR02MB2463namp_"

--_000_MWHPR02MB2463ECAC0C98AF970B2EC44FB2230MWHPR02MB2463namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Happy New Year

Hi,

My warrior build with meta-java spontaneously broke over the holidays...

...
checking if Boot JDK is 32 or 64 bits... 64
checking flags for boot jdk java command ...
checking flags for boot jdk java command for big workloads...  -Xms64M -Xmx=
1600M -XX:ThreadStackSize=3D1536 -XX:PermSize=3D32m -XX:MaxPermSize=3D160m
checking flags for boot jdk java command for small workloads...  -XX:+UseSe=
rialGC -Xms32M -Xmx512M
checking for jtreg... no
configure: Rewriting FOUND_CC to "/home/dwatkins/workspace/zeta/upgrade-yoc=
to_mg90-MG-os/build/tmp/hosttools/gcc "
configure: Using gcc (GCC) 4.8.5 20150623 (Red Hat-39) C compiler version 4=
.8.5 (located at /home/dwatkins/workspace/zeta/upgrade-yocto_mg90-MG-os/bui=
ld/tmp/hosttools/gcc )
checking for x86_64-linux-/home/dwatkins/workspace/zeta/upgrade-yocto_mg90-=
MG-os/build/tmp/hosttools/gcc... /home/dwatkins/workspace/zeta/upgrade-yoct=
o_mg90-MG-os/build/tmp/hosttools/gcc
checking whether the C compiler works... no
configure: error: in `/home/dwatkins/workspace/zeta/upgrade-yocto_mg90-MG-o=
s/build/tmp/work/x86_64-linux/openjdk-8-native/172b11-r0/build':
configure: error: C compiler cannot create executables
See `config.log' for more details
NOTE: The following config.log files may provide further information.
NOTE: /home/dwatkins/workspace/zeta/upgrade-yocto_mg90-MG-os/build/tmp/work=
/x86_64-linux/openjdk-8-native/172b11-r0/build/config.log
ERROR: configure failed
WARNING: /home/dwatkins/workspace/zeta/upgrade-yocto_mg90-MG-os/build/tmp/w=
ork/x86_64-linux/openjdk-8-native/172b11-r0/temp/run.do_configure.7614:1 ex=
it 1 from 'exit 1'
ERROR: Function failed: do_configure (log file is located at /home/dwatkins=
/workspace/zeta/upgrade-yocto_mg90-MG-os/build/tmp/work/x86_64-linux/openjd=
k-8-native/172b11-r0/temp/log.do_configure.7614)

For some reason, it has decided that the CentOS GCC compiler doesn't genera=
te executable code any more.

I inspected the git logs of meta-java along with other layers (OE and Yocto=
) and there doesn't appear to be any changes since October.

This failed same way both when resuming a build that worked in early to mid=
 December, and when building from scratch.

CentOS 7.7.1908
Intel i9
32G DRAM
Target: NXP Layerscape LS1021A (but the build is failing during "-native" s=
tage so target isn't really that relevant yet).

I inspected build/tmp/work/x86_64-linux/ and found numerous built "-native"=
 packages built OK (including python-native and python3-native).

After inspecting the config.log, it appears that "-Wno-error=3Dstringop-ove=
rflow" was among the BUILD_CFLAGS.  The old GCC 4.8.5 provided by CentOS di=
d not like this.  My workaround was:

local.conf:
   BUILD_CFLAGS_remove =3D "-Wno-error=3Dstringop-overflow"

I still haven't a clue why this only shows up now when the commit that chan=
ged openjdk-8-release-172b11-common.inc is dated June 25, 2019 "openjdk-8: =
disable stringop-overflow compiler errors".



Regards,

Darcy

Darcy Watkins ::  Senior Staff Engineer, Firmware

SIERRA WIRELESS
Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231 11=
00
13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
[P2]
dwatkins@sierrawireless.com<mailto:dwatkins@sierrawireless.com> :: www.sier=
rawireless.com<http://www.sierrawireless.com/>


--_000_MWHPR02MB2463ECAC0C98AF970B2EC44FB2230MWHPR02MB2463namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Happy New Year<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My warrior build with meta-java spontaneously broke =
over the holidays&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal">checking if Boot JDK is 32 or 64 bits... 64<o:p></o:=
p></p>
<p class=3D"MsoNormal">checking flags for boot jdk java command ...&nbsp; <=
o:p></o:p></p>
<p class=3D"MsoNormal">checking flags for boot jdk java command for big wor=
kloads...&nbsp; -Xms64M -Xmx1600M -XX:ThreadStackSize=3D1536 -XX:PermSize=
=3D32m -XX:MaxPermSize=3D160m<o:p></o:p></p>
<p class=3D"MsoNormal">checking flags for boot jdk java command for small w=
orkloads...&nbsp; -XX:&#43;UseSerialGC -Xms32M -Xmx512M<o:p></o:p></p>
<p class=3D"MsoNormal">checking for jtreg... no<o:p></o:p></p>
<p class=3D"MsoNormal">configure: Rewriting FOUND_CC to &quot;/home/dwatkin=
s/workspace/zeta/upgrade-yocto_mg90-MG-os/build/tmp/hosttools/gcc &quot;<o:=
p></o:p></p>
<p class=3D"MsoNormal">configure: Using gcc (GCC) 4.8.5 20150623 (Red Hat-3=
9) C compiler version 4.8.5 (located at /home/dwatkins/workspace/zeta/upgra=
de-yocto_mg90-MG-os/build/tmp/hosttools/gcc )<o:p></o:p></p>
<p class=3D"MsoNormal">checking for x86_64-linux-/home/dwatkins/workspace/z=
eta/upgrade-yocto_mg90-MG-os/build/tmp/hosttools/gcc... /home/dwatkins/work=
space/zeta/upgrade-yocto_mg90-MG-os/build/tmp/hosttools/gcc
<o:p></o:p></p>
<p class=3D"MsoNormal">checking whether the C compiler works... no<o:p></o:=
p></p>
<p class=3D"MsoNormal">configure: error: in `/home/dwatkins/workspace/zeta/=
upgrade-yocto_mg90-MG-os/build/tmp/work/x86_64-linux/openjdk-8-native/172b1=
1-r0/build':<o:p></o:p></p>
<p class=3D"MsoNormal">configure: error: C compiler cannot create executabl=
es<o:p></o:p></p>
<p class=3D"MsoNormal">See `config.log' for more details<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: The following config.log files may provide fur=
ther information.<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: /home/dwatkins/workspace/zeta/upgrade-yocto_mg=
90-MG-os/build/tmp/work/x86_64-linux/openjdk-8-native/172b11-r0/build/confi=
g.log<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: configure failed<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: /home/dwatkins/workspace/zeta/upgrade-yocto=
_mg90-MG-os/build/tmp/work/x86_64-linux/openjdk-8-native/172b11-r0/temp/run=
.do_configure.7614:1 exit 1 from 'exit 1'<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Function failed: do_configure (log file is lo=
cated at /home/dwatkins/workspace/zeta/upgrade-yocto_mg90-MG-os/build/tmp/w=
ork/x86_64-linux/openjdk-8-native/172b11-r0/temp/log.do_configure.7614)<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For some reason, it has decided that the CentOS GCC =
compiler doesn&#8217;t generate executable code any more.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I inspected the git logs of meta-java along with oth=
er layers (OE and Yocto) and there doesn&#8217;t appear to be any changes s=
ince October.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This failed same way both when resuming a build that=
 worked in early to mid December, and when building from scratch.<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">CentOS 7.7.1908<o:p></o:p></p>
<p class=3D"MsoNormal">Intel i9<o:p></o:p></p>
<p class=3D"MsoNormal">32G DRAM<o:p></o:p></p>
<p class=3D"MsoNormal">Target: NXP Layerscape LS1021A (but the build is fai=
ling during &#8220;-native&#8221; stage so target isn&#8217;t really that r=
elevant yet).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I inspected build/tmp/work/x86_64-linux/ and found n=
umerous built &#8220;-native&#8221; packages built OK (including python-nat=
ive and python3-native).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After inspecting the config.log, it appears that &#8=
220;-Wno-error=3Dstringop-overflow&#8221; was among the BUILD_CFLAGS.&nbsp;=
 The old GCC 4.8.5 provided by CentOS did not like this.&nbsp; My workaroun=
d was:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">local.conf:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; BUILD_CFLAGS_remove =3D &#8220;-Wno-err=
or=3Dstringop-overflow&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I still haven&#8217;t a clue why this only shows up =
now when the commit that changed openjdk-8-release-172b11-common.inc is dat=
ed June 25, 2019 &#8220;openjdk-8: disable stringop-overflow compiler error=
s&#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565;mso-fareast-language:EN-CA"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565;mso-fareast-language:EN-CA">Regards,<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565;mso-fareast-language:EN-CA"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565;mso-fareast-language:EN-CA">Darcy<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565;mso-fareast-language:EN-CA"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#=
656565;mso-fareast-language:EN-CA">Darcy Watkins ::&nbsp;&nbsp;Senior Staff=
 Engineer, Firmware<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#=
E33A2F;mso-fareast-language:EN-CA"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#=
E33A2F;mso-fareast-language:EN-CA">SIERRA WIRELESS<o:p></o:p></span></b></p=
>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E33=
A2F;mso-fareast-language:EN-CA">Direct</span><span lang=3D"EN-US" style=3D"=
font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#656565;mso-=
fareast-language:EN-CA">&nbsp;
 &#43;1 604 233 7989&nbsp; &nbsp;::&nbsp; </span><span lang=3D"EN-US" style=
=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E33A2F;=
mso-fareast-language:EN-CA">Fax&nbsp;
</span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Aria=
l&quot;,sans-serif;color:#656565;mso-fareast-language:EN-CA">&#43;1 604 231=
 1109&nbsp; ::&nbsp;
</span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Aria=
l&quot;,sans-serif;color:#C00000;mso-fareast-language:EN-CA">Main</span><sp=
an lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sa=
ns-serif;mso-fareast-language:EN-CA">&nbsp;
<span style=3D"color:#656565">&#43;1 604 231 1100</span><o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#656=
565;mso-fareast-language:EN-CA">13811 Wireless Way&nbsp; ::&nbsp;Richmond, =
BC Canada V6V 3A4<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#656=
565;mso-fareast-language:EN-CA">[P2]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><u><span lang=3D"EN-US=
" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:b=
lue;mso-fareast-language:EN-CA"><a href=3D"mailto:dwatkins@sierrawireless.c=
om"><span style=3D"color:blue">dwatkins@sierrawireless.com</span></a></span=
></u><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Arial&=
quot;,sans-serif;color:#E43B30;mso-fareast-language:EN-CA">
 :: <a href=3D"http://www.sierrawireless.com/"><span style=3D"color:blue">w=
ww.sierrawireless.com</span></a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_MWHPR02MB2463ECAC0C98AF970B2EC44FB2230MWHPR02MB2463namp_--
