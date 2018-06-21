Return-Path: <JAEWON@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C155E00CDE; Thu, 21 Jun 2018 19:14:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.46 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7205 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Jun 2018 19:14:15 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0046.outbound.protection.outlook.com [104.47.41.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6366DE0097C
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 19:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=5tUcPShG4y+8vAF3RFGIOXmyi91IV5cOKTWABKQtDug=;
	b=FoOptFRYCHcO0/VG/nem2rml1ZjAXZmytg6UhYZjhDmkRuOTRuBE2wP7o51NKiy6Fgi4OGf/tyY2IXTkKIH5YAzuSdEQAv7vFZgMhlbZbPPA0UL4ePRgye1pS+diZrO3/I5VZVTg0Wxp3ydtAQu7Qxdx4CB17eAyZvPeIoT+4GQ=
Received: from DM6PR02MB4073.namprd02.prod.outlook.com (20.176.75.26) by
	DM6PR02MB4539.namprd02.prod.outlook.com (20.176.107.28) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.863.19; Thu, 21 Jun 2018 23:39:34 +0000
Received: from DM6PR02MB4073.namprd02.prod.outlook.com
	([fe80::85e6:9a81:877e:98a0]) by
	DM6PR02MB4073.namprd02.prod.outlook.com
	([fe80::85e6:9a81:877e:98a0%3]) with mapi id 15.20.0884.010;
	Thu, 21 Jun 2018 23:39:34 +0000
From: Jaewon Lee <JAEWON@xilinx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: openssl does not support building for SDK_MACHINE x86_64-mingw32
Thread-Index: AdQJt9THcNKXDWpjS5ickczKNQT0bQ==
Date: Thu, 21 Jun 2018 23:39:33 +0000
Message-ID: <DM6PR02MB40737D28E9B6B13F18E76B47AF760@DM6PR02MB4073.namprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=JAEWON@xilinx.com; 
x-originating-ip: [149.199.62.254]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM6PR02MB4539;
	7:WX7vXAw2z4K31RwtcCh3JvdChI/Q6ouxyas6YGo6p5XIzlvuhrQL4GKucVNJqyxLYcTV/rv86/Mx+VvnV78ETJeYmXVNo+l5/Nq8nhR5ZMeKn4tpWb1+wiEqIYVZmWPU1dK5lQM8liDDzih7qRO61qgORby7cUcnvmj9SN1+7yfkQ8Fe8hMxOEzap/79QIp2GVEO6L5XXHDvwRiNYWprDICN85glgAZ1S3bvKht1saZtf8UI37YhNeRMIWO1SUy8
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: cbf9de36-9210-4aad-4987-08d5d7d03e40
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(711020)(48565401081)(2017052603328)(7153060)(7193020);
	SRVR:DM6PR02MB4539; 
x-ms-traffictypediagnostic: DM6PR02MB4539:
x-microsoft-antispam-prvs: <DM6PR02MB45391192E40C258FA4CC7156AF760@DM6PR02MB4539.namprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3002001)(10201501046)(3231254)(944501410)(52105095)(93006095)(93001095)(6055026)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123564045)(20161123562045)(20161123558120)(6072148)(201708071742011)(7699016);
	SRVR:DM6PR02MB4539; BCL:0; PCL:0; RULEID:; SRVR:DM6PR02MB4539; 
x-forefront-prvs: 07106EF9B9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(376002)(346002)(366004)(39860400002)(39380400002)(53754006)(189003)(199004)(236005)(54896002)(55016002)(97736004)(68736007)(575784001)(606006)(5660300001)(25786009)(316002)(9686003)(6306002)(66066001)(86362001)(33656002)(6116002)(3846002)(790700001)(99286004)(6916009)(6436002)(5640700003)(106356001)(478600001)(105586002)(26005)(966005)(6506007)(14454004)(102836004)(3280700002)(72206003)(3660700001)(2900100001)(186003)(2351001)(486006)(476003)(5630700001)(74316002)(7736002)(2906002)(53936002)(7696005)(2501003)(8936002)(81166006)(1730700003)(8676002)(81156014)(5250100002)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4539;
	H:DM6PR02MB4073.namprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 4Cl94qWRgbdQnii9Lfy5A1vTjcWTxfjLPXKE7mpAnQDxvGn4xoMNonWm8gy0VybTt25FnGHCY+11L1lm/RzUzcZ38DJcA2l4KkrgNKtCdeenwF3gWhn4Gf8nIXXQqXZNLbsPDKQ1T2xLUE9eqCno8wA1muJq8+XfteimHysfQyxoaBSxdKvDLRJRd6SSLiFLAhl+3wMVjq0SVBhyp1sJ1xIIFoij9pBGegjsqNirrjxV3+FThNSxC83WahW3MiWKEe1eYM+0Ox/4IKyRyAGFHly7or/PN6B9HWt+1Fk3ExFlNAg1mUb6nXa/eUaWapb5f9AfbePmKVJLhkTYut0WPg==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbf9de36-9210-4aad-4987-08d5d7d03e40
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2018 23:39:33.8956 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4539
Subject: openssl does not support building for SDK_MACHINE x86_64-mingw32
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
X-List-Received-Date: Fri, 22 Jun 2018 02:14:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR02MB40737D28E9B6B13F18E76B47AF760DM6PR02MB4073namp_"

--_000_DM6PR02MB40737D28E9B6B13F18E76B47AF760DM6PR02MB4073namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,


Since December, glib is pulling python3 for codegen, which because of BBCLA=
SSEXTENDS, tries to build nativesdk-python3 which in turn tries to build na=
tivesdk-openssl, and it looks like openssl does not support it      SDK_MAC=
HINE=3Dx86_64-mingw32

There is a do_configure error and I get

| DEBUG: Executing shell function do_configure
| Usage: Configure [no-<cipher> ...] [enable-<cipher> ...] [experimental-<c=
ipher> ...] [-Dxxx] [-lxxx] [-Lxxx] [-fxxx] [-Kxxx] [no-hw-xxx|no-hw] [[no-=
]threads] [[no-]shared] [[no-]zlib|zlib-dynamic] [no-asm] [no-dso] [no-krb5=
] [sctp] [386] [--prefix=3DDIR] [--openssldir=3DOPENSSLDIR] [--with-xxx[=3D=
vvv]] [--test-sanity] os/compiler[:flags]

| pick os/compiler from:
| BC-32 BS2000-OSD BSD-generic32 BSD-generic64 BSD-ia64 BSD-sparc64 BSD-spa=
rcv8
| BSD-x86 BSD-x86-elf BSD-x86_64 Cygwin Cygwin-x86_64 DJGPP MPE/iX-gcc OS2-=
EMX
| OS390-Unix QNX6 QNX6-i386 ReliantUNIX SINIX SINIX-N UWIN VC-CE VC-WIN32
...
And there is a long list of available options. I see mingw and mingw64 in t=
his list but no mingw32

I do see a patch from Juro in meta-mingw-contrib:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-mingw-contrib/commit/?h=3Dju=
ro/jethro/openssl&id=3D9060e6feb38bddf0e130dedf5666b3b7492246f1
which seems to be what I need, but with this applied,  I get nativesdk-gdbm=
 compile failures saying it cant find header files


| ../../gdbm-1.13/src/gdbmdump.c:20:11: fatal error: pwd.h: No such file or=
 directory
|  # include <pwd.h>
|            ^~~~~~~
| compilation terminated.

| ../../gdbm-1.13/src/gdbmimp.c:21:11: fatal error: arpa/inet.h: No such fi=
le or directory
|  # include <arpa/inet.h>
|            ^~~~~~~~~~~~~
| compilation terminated.

Any ideas/pointers?


Thanks,
Jaewon


--_000_DM6PR02MB40737D28E9B6B13F18E76B47AF760DM6PR02MB4073namp_
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Since December, glib i=
s pulling python3 for codegen, which because of BBCLASSEXTENDS, tries to bu=
ild nativesdk-python3 which in turn tries to build nativesdk-openssl, and i=
t looks like openssl does not support
 it&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SDK_MACHINE=3Dx86_64-mingw32<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">There is a do_configur=
e error and I get
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">| DEBUG: Executing she=
ll function do_configure<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">| Usage: Configure [no=
-&lt;cipher&gt; ...] [enable-&lt;cipher&gt; ...] [experimental-&lt;cipher&g=
t; ...] [-Dxxx] [-lxxx] [-Lxxx] [-fxxx] [-Kxxx] [no-hw-xxx|no-hw] [[no-]thr=
eads] [[no-]shared] [[no-]zlib|zlib-dynamic] [no-asm]
 [no-dso] [no-krb5] [sctp] [386] [--prefix=3DDIR] [--openssldir=3DOPENSSLDI=
R] [--with-xxx[=3Dvvv]] [--test-sanity] os/compiler[:flags]<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">| pick os/compiler fro=
m:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">| BC-32 BS2000-OSD BSD=
-generic32 BSD-generic64 BSD-ia64 BSD-sparc64 BSD-sparcv8<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">| BSD-x86 BSD-x86-elf =
BSD-x86_64 Cygwin Cygwin-x86_64 DJGPP MPE/iX-gcc OS2-EMX<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">| OS390-Unix QNX6 QNX6=
-i386 ReliantUNIX SINIX SINIX-N UWIN VC-CE VC-WIN32<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&#8230;<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">And there is a long li=
st of available options. I see mingw and mingw64 in this list but no mingw3=
2<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I do see a patch from =
Juro in meta-mingw-contrib:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><a href=3D"http://git.=
yoctoproject.org/cgit/cgit.cgi/meta-mingw-contrib/commit/?h=3Djuro/jethro/o=
penssl&amp;id=3D9060e6feb38bddf0e130dedf5666b3b7492246f1">http://git.yoctop=
roject.org/cgit/cgit.cgi/meta-mingw-contrib/commit/?h=3Djuro/jethro/openssl=
&amp;id=3D9060e6feb38bddf0e130dedf5666b3b7492246f1</a><o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">which seems to be what=
 I need, but with this applied, &nbsp;I get nativesdk-gdbm compile failures=
 saying it cant find header files<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">| ../../gdbm-1.13/s=
rc/gdbmdump.c:20:11: fatal error: pwd.h: No such file or directory<o:p></o:=
p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">|&nbsp; # include &=
lt;pwd.h&gt;<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">|&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~<o:p></o:p></span><=
/b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">| compilation termi=
nated.<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">| ../../gdbm-1.13/s=
rc/gdbmimp.c:21:11: fatal error: arpa/inet.h: No such file or directory<o:p=
></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">|&nbsp; # include &=
lt;arpa/inet.h&gt;<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">|&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~<o:p></o:p></=
span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">| compilation termi=
nated.<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal">Any ideas/pointers?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Jaewon<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM6PR02MB40737D28E9B6B13F18E76B47AF760DM6PR02MB4073namp_--
