Return-Path: <Mark.Clark2@nov.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10EAFE00D87; Tue,  6 Sep 2016 12:49:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.79 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0079.outbound.protection.outlook.com [104.47.41.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF4FFE00CC8
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 12:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nov.onmicrosoft.com;
	s=selector1-nov-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=9whVH3XPBarkMz1oMlbZVsW9xeRjTm7o2xiCWtVp52Y=;
	b=eL+1xqwacGf55h+xMv5ux5zTmvXj2HJxrkFhYqMy+SNjnCB0zTr92Nuu57yEJE7pqhBxE6T4t9jfVtJGBfOZme3rB8Myj9GliKrFp7y5Qm/IDU+jX7vj0nyJmP4KjuNvO8cM9pzkPXlr2zhPEVckhUN1tM/8RZvGuaimGnSTUSk=
Received: from BY1PR15MB0038.namprd15.prod.outlook.com (10.161.96.28) by
	BY1PR15MB0039.namprd15.prod.outlook.com (10.161.97.11) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.599.9; Tue, 6 Sep 2016 18:17:20 +0000
Received: from BY1PR15MB0038.namprd15.prod.outlook.com ([10.161.96.28]) by
	BY1PR15MB0038.namprd15.prod.outlook.com ([10.161.96.28]) with mapi id
	15.01.0609.016; Tue, 6 Sep 2016 18:17:20 +0000
From: "Clark, Mark A" <Mark.Clark2@nov.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Update on issue witn do_package_qa
Thread-Index: AdIIaqw+cBpGebyISeqXZhKlysLcgg==
Date: Tue, 6 Sep 2016 18:17:20 +0000
Message-ID: <BY1PR15MB0038C23C62995E16B5C66E2EBCF90@BY1PR15MB0038.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Mark.Clark2@nov.com; 
x-originating-ip: [208.92.228.62]
x-ms-office365-filtering-correlation-id: c63b3107-5017-477e-fd0b-08d3d6820ac0
x-microsoft-exchange-diagnostics: 1; BY1PR15MB0039;
	6:zDM9M3LI+oCYS2YrRKDADDFi3LDmQtK1LdDp2FLxToD5YU9qMYjAMWgYw5rcZD25Yjr9ngmxKT1IF+cI9+56mc39p3P1/ZWQK5Gz/+jvSTjYGO+7mVnzwtXZlbsQssEM/kREG3n7rBYRQ4i/tcvvZTir7ihMBlUorOgjRcGAM5SittImSW5sBxdlmU7wBuhKBANHszR9+Pa2wi7BQ0a5m4uT+ZtvGNrx3xoWV/roJRIxSMC1Xfvb5RX07IMk5dyM7YCCTo/NQLUkf0GWi+WQ3g6e0foV9xe++vasBvkL18E5mrQPr32U2/q1nnyWQtGa;
	5:+uPUDNSG+3ihxl2RXMLBGaycBrJEKLcpY9vUK7ue3wtfcRo7tCDaA4nqXQJW/5mX4ZdpSaqiwUKdaPsmT/499v3Hxm2pkRLZmJdKjTDy1FAYi94gRFriyVIES2tPesN0giv2r7Yf5onJytbw6+z0zg==;
	24:jMH/hKXIwk6DxE9JUY4DJa0TRn5H/dpus7Th5aZKBqRBQwoBGwlNER492zAfX+IEYr/d1z6nmhas0TFUSp+ghhltcOi5+Z2DaF0p+XplW3g=;
	7:7ryp5zgTv8Ka/tmsRI4NJ673N4G7RpUcIC6wVvSZzzfqxXmFRCPEy6DcwDzwIq6UFDmPSO3W0MAnrlyL4ppYElexCCu4XTpBQOq5dGIklAHncLewpP1+IN99EJ6OImI84ggM9NcBDl1NTY8LK5dUgDrWmTfhgPPJy8qmGp0VDUeBkHQ8EH1j5tuvnXdGdsJBeqrDD8zuKil9plFPVfccgfv/PnFbceVsGUU3kRZ1JZGno7aHRMF/ZdHvIMfG5Kx2
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR15MB0039;
x-microsoft-antispam-prvs: <BY1PR15MB0039D9A6296056A8CA8076A7BCF90@BY1PR15MB0039.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(22074186197030)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415321)(6040176)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6043046)(6042046);
	SRVR:BY1PR15MB0039; BCL:0; PCL:0; RULEID:; SRVR:BY1PR15MB0039; 
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(189002)(99286002)(106356001)(7846002)(105586002)(8676002)(81156014)(3660700001)(1730700003)(2420400007)(9686002)(74316002)(81166006)(15650500001)(7696003)(7736002)(10710500007)(2906002)(5630700001)(5640700001)(3280700002)(19300405004)(586003)(229853001)(68736007)(92566002)(66066001)(86362001)(189998001)(2900100001)(19580405001)(2501003)(19627595001)(19580395003)(87936001)(6116002)(33656002)(102836003)(575784001)(122556002)(3846002)(790700001)(450100001)(18206015028)(19625215002)(19609705001)(76576001)(16236675004)(97736004)(110136002)(17760045003)(11100500001)(77096005)(5660300001)(107886002)(8936002)(15975445007)(7110500001)(54356999)(10400500002)(50986999)(99936001)(101416001)(5002640100001)(2351001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR15MB0039;
	H:BY1PR15MB0038.namprd15.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nov.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nov.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2016 18:17:20.2512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ebe82bb-f23f-4bb6-b7d0-b038c066ad05
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR15MB0039
Subject: Update on issue witn do_package_qa
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
X-List-Received-Date: Tue, 06 Sep 2016 19:49:44 -0000
X-Groupsio-MsgNum: 31809
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_BY1PR15MB0038C23C62995E16B5C66E2EBCF90BY1PR15MB0038namp_";
	type="multipart/alternative"

--_004_BY1PR15MB0038C23C62995E16B5C66E2EBCF90BY1PR15MB0038namp_
Content-Type: multipart/alternative;
	boundary="_000_BY1PR15MB0038C23C62995E16B5C66E2EBCF90BY1PR15MB0038namp_"

--_000_BY1PR15MB0038C23C62995E16B5C66E2EBCF90BY1PR15MB0038namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Did a complete clone / checkout of krogoth this morning.  Same results.   C=
an't get a core-image-rt build of the latest poky.

yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build$ bitbake core-image-rt
Parsing recipes: 100% |####################################################=
################################| Time: 00:00:23
Parsing of 871 .bb files complete (0 cached, 871 parsed). 1301 targets, 46 =
skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.30.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-14.04"
TARGET_SYS        =3D "i686-poky-linux"
MACHINE           =3D "genericx86"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "2.1.1"
TUNE_FEATURES     =3D "m32 core2"
TARGET_FPU        =3D ""
meta
meta-poky
meta-yocto-bsp    =3D "krogoth:aad7166704021d82ad3a5ec468552f8f10360d41"

NOTE: Fetching uninative binary shim from http://downloads.yoctoproject.org=
/releases/uninative/1.0.1/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dacf1e44=
a0ac2e855e81da6426197d36358bf7b4e88e552ef933128498c8910f8
NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: quilt-native-0.64-r0 do_fetch: Failed to fetch URL http://download=
.savannah.gnu.org/releases/quilt/quilt-0.64.tar.gz, attempting MIRRORS if a=
vailable
WARNING: attr-native-2.4.47-r0 do_fetch: Failed to fetch URL http://downloa=
d.savannah.gnu.org/releases/attr/attr-2.4.47.src.tar.gz, attempting MIRRORS=
 if available
WARNING: acl-native-2.2.52-r0 do_fetch: Failed to fetch URL http://download=
.savannah.gnu.org/releases/acl/acl-2.2.52.src.tar.gz, attempting MIRRORS if=
 available
ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0 do_package=
_qa: QA Issue: Architecture did not match (3 to 62) on work/genericx86-poky=
-linux/linux-yocto-rt/4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0/packages-s=
plit/kernel-vmlinux/boot/vmlinux-4.4.11-rt3-yocto-preempt-rt [arch]
ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0 do_package=
_qa: QA run found fatal errors. Please consider fixing them.
ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0 do_package=
_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in: /home/yocto/poky/build/tmp/work/generi=
cx86-poky-linux/linux-yocto-rt/4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0/t=
emp/log.do_package_qa.2446
ERROR: Task 61 (/home/yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_4=
.4.bb, do_package_qa) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1552 tasks of which 14 didn't need to be rer=
un and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb, do_pack=
age_qa
Summary: There were 3 WARNING messages shown.
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build$

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Changes from local.conf

yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build/conf$ diff local.conf =
local.conf.org
32c32
< MACHINE ?=3D "genericx86"
---
> #MACHINE ?=3D "genericx86"
117c117
< SDKMACHINE ?=3D "i686"
---
> #SDKMACHINE ?=3D "i686"
239,240d238
< PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-rt"
< COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build/conf$



Mark Clark
Embedded Software Engineer
Embedded Software, Cedar Park, TX
[Description: Description: Description: Description: National Oilwell Varco=
 Logo Color CMYK.jpg]
 Wellbore Technologies - Dynamic Drilling Solutions
Global Software Engineering
Office: (512) 340-5435
Mobile: (512) 736-9396
"One Team - Infinite Solutions"


--_000_BY1PR15MB0038C23C62995E16B5C66E2EBCF90BY1PR15MB0038namp_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Gill Sans MT";
	panose-1:2 11 5 2 2 1 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Did a complete clone / checkout of krogoth this morn=
ing.&nbsp; Same results.&nbsp;&nbsp; Can&#8217;t get a core-image-rt build =
of the latest poky.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build=
$ bitbake core-image-rt<o:p></o:p></p>
<p class=3D"MsoNormal">Parsing recipes: 100% |#############################=
#######################################################| Time: 00:00:23<o:p=
></o:p></p>
<p class=3D"MsoNormal">Parsing of 871 .bb files complete (0 cached, 871 par=
sed). 1301 targets, 46 skipped, 0 masked, 0 errors.<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Resolving any missing task queue dependencies<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Build Configuration:<o:p></o:p></p>
<p class=3D"MsoNormal">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;1.30.0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =3D &quot;x86_64-linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;Ubuntu-14.04&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;i686-poky-linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D &quot;genericx86&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; =3D &quot;poky&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;2.1.1&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m32 =
core2&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D &quot;krogoth:a=
ad7166704021d82ad3a5ec468552f8f10360d41&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">NOTE: Fetching uninative binary shim from http://dow=
nloads.yoctoproject.org/releases/uninative/1.0.1/x86_64-nativesdk-libc.tar.=
bz2;sha256sum=3Dacf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef933128498c8=
910f8<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Preparing RunQueue<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Executing SetScene Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Executing RunQueue Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: quilt-native-0.64-r0 do_fetch: Failed to fe=
tch URL http://download.savannah.gnu.org/releases/quilt/quilt-0.64.tar.gz, =
attempting MIRRORS if available<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: attr-native-2.4.47-r0 do_fetch: Failed to f=
etch URL http://download.savannah.gnu.org/releases/attr/attr-2.4.47.src.tar=
.gz, attempting MIRRORS if available<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: acl-native-2.2.52-r0 do_fetch: Failed to fe=
tch URL http://download.savannah.gnu.org/releases/acl/acl-2.2.52.src.tar.gz=
, attempting MIRRORS if available<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: linux-yocto-rt-4.4.11&#43;gitAUTOINC&#43;6ec9=
3aaa70_bf2fbe7f2c-r0 do_package_qa: QA Issue: Architecture did not match (3=
 to 62) on work/genericx86-poky-linux/linux-yocto-rt/4.4.11&#43;gitAUTOINC&=
#43;6ec93aaa70_bf2fbe7f2c-r0/packages-split/kernel-vmlinux/boot/vmlinux-4.4=
.11-rt3-yocto-preempt-rt
 [arch]<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: linux-yocto-rt-4.4.11&#43;gitAUTOINC&#43;6ec9=
3aaa70_bf2fbe7f2c-r0 do_package_qa: QA run found fatal errors. Please consi=
der fixing them.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: linux-yocto-rt-4.4.11&#43;gitAUTOINC&#43;6ec9=
3aaa70_bf2fbe7f2c-r0 do_package_qa: Function failed: do_package_qa<o:p></o:=
p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /home/yocto/pok=
y/build/tmp/work/genericx86-poky-linux/linux-yocto-rt/4.4.11&#43;gitAUTOINC=
&#43;6ec93aaa70_bf2fbe7f2c-r0/temp/log.do_package_qa.2446<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task 61 (/home/yocto/poky/meta/recipes-kernel=
/linux/linux-yocto-rt_4.4.bb, do_package_qa) failed with exit code '1'<o:p>=
</o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 1552 tasks of which 1=
4 didn't need to be rerun and 1 failed.<o:p></o:p></p>
<p class=3D"MsoNormal">Waiting for 0 running tasks to finish:<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: 1 task failed:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; /home/yocto/poky/meta/recipes-kernel/linux/li=
nux-yocto-rt_4.4.bb, do_package_qa<o:p></o:p></p>
<p class=3D"MsoNormal">Summary: There were 3 WARNING messages shown.<o:p></=
o:p></p>
<p class=3D"MsoNormal">Summary: There were 3 ERROR messages shown, returnin=
g a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal">yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build=
$ <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Changes from local.conf<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build=
/conf$ diff local.conf local.conf.org
<o:p></o:p></p>
<p class=3D"MsoNormal">32c32<o:p></o:p></p>
<p class=3D"MsoNormal">&lt; MACHINE ?=3D &quot;genericx86&quot;<o:p></o:p><=
/p>
<p class=3D"MsoNormal">---<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; #MACHINE ?=3D &quot;genericx86&quot;<o:p></o:p>=
</p>
<p class=3D"MsoNormal">117c117<o:p></o:p></p>
<p class=3D"MsoNormal">&lt; SDKMACHINE ?=3D &quot;i686&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">---<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; #SDKMACHINE ?=3D &quot;i686&quot;<o:p></o:p></p=
>
<p class=3D"MsoNormal">239,240d238<o:p></o:p></p>
<p class=3D"MsoNormal">&lt; PREFERRED_PROVIDER_virtual/kernel =3D &quot;lin=
ux-yocto-rt&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&lt; COMPATIBLE_MACHINE_genericx86 =3D &quot;generic=
x86&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build=
/conf$ <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#0070C0">Mark Clark<o:p></o:=
p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070C0">Embedded Software Engi=
neer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070C0">Embedded Software, Ced=
ar Park, TX<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Gi=
ll Sans MT&quot;,sans-serif;color:#1F497D"><img width=3D"245" height=3D"24"=
 style=3D"width:2.552in;height:.25in" id=3D"Picture_x0020_1" src=3D"cid:ima=
ge001.png@01D20840.A6576440" alt=3D"Description: Description: Description: =
Description: National Oilwell Varco Logo Color CMYK.jpg"><o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#1F497D">&nbsp;Wellbore Technologies &#8211; Dyna=
mic Drilling Solutions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#1F497D">Global Software Engineering<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070C0">Office: (512) 340-5435=
</span><span style=3D"color:#0070C0"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070C0">Mobile: (512) 736-9396=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><i><span style=3D"font-family:&quot;Times New Roman&=
quot;,serif;color:#0070C0">&#8220;One Team &#8211; Infinite Solutions&#8221=
;</span></i><span style=3D"font-family:&quot;Times New Roman&quot;,serif;co=
lor:#0070C0"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BY1PR15MB0038C23C62995E16B5C66E2EBCF90BY1PR15MB0038namp_--

--_004_BY1PR15MB0038C23C62995E16B5C66E2EBCF90BY1PR15MB0038namp_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=9171;
	creation-date="Tue, 06 Sep 2016 18:17:14 GMT";
	modification-date="Tue, 06 Sep 2016 18:17:14 GMT"
Content-ID: <image001.png@01D20840.A6576440>
Content-Transfer-Encoding: base64

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

--_004_BY1PR15MB0038C23C62995E16B5C66E2EBCF90BY1PR15MB0038namp_--
