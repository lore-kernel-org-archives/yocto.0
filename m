Return-Path: <fcamarda@micron.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8861AE00B01; Thu, 13 Jul 2017 06:17:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [137.201.242.129 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1066 seconds by postgrey-1.32 at yocto-www;
	Thu, 13 Jul 2017 06:17:48 PDT
Received: from mailout.micron.com (mailout.micron.com [137.201.242.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22442E009A4;
	Thu, 13 Jul 2017 06:17:48 -0700 (PDT)
Received: from mail.micron.com (bowex17h.micron.com [137.201.20.32])
	by mailout.micron.com (8.14.4/8.14.6) with ESMTP id v6DCxxQP032694;
	Thu, 13 Jul 2017 07:00:01 -0600
Received: from bowex36c.micron.com (137.201.84.132) by BOWEX17H.micron.com
	(137.201.20.32) with Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Thu, 13 Jul 2017 07:00:00 -0600
Received: from bowex36c.micron.com ([fe80::8143:7a9:4aa:a105]) by
	bowex36c.micron.com ([fe80::8143:7a9:4aa:a105%21]) with mapi id
	15.00.1263.000; Thu, 13 Jul 2017 07:00:00 -0600
From: "Francesco Camarda (fcamarda)" <fcamarda@micron.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>
Thread-Topic: How to build module iasImage from bzImage outside yocto
Thread-Index: AdL7z3+dAFULDapbTy+olNlxz25uKA==
Date: Thu, 13 Jul 2017 12:59:59 +0000
Message-ID: <29844a74085e4efd9f279dfea9054c09@bowex36c.micron.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [137.201.20.7]
x-tm-as-product-ver: SMEX-12.0.0.1464-8.100.1062-23192.005
x-tm-as-result: No--13.014900-0.000000-31
x-tm-as-matchedid: 139704-113220-708196-111604-700362-705718-700782-706817-7
	02609-703321-188114-700345-702127-701827-700264-702497-700450-700732-701306
	-709859-111605-700074-303242-188124-186055-847298-701669-121536-862883-7014
	45-703491-707788-700648-861157-712062-853842-703366-700416-702668-187067-11
	2074-709137-703004-700826-188019-702762-701232-709584-702113-703176-701604-
	860851-700802-136307-103300-701246-103507-703223-702209-188093-160102-14803
	5-148050-23116-52000-63
x-tm-as-user-approved-sender: Yes
x-tm-as-user-blocked-sender: No
x-mt-checkinternalsenderrule: True
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 137.201.130.65
Subject: How to build module iasImage from bzImage outside yocto
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
X-List-Received-Date: Thu, 13 Jul 2017 13:17:50 -0000
X-Groupsio-MsgNum: 37018
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_29844a74085e4efd9f279dfea9054c09bowex36cmicroncom_";
	type="multipart/alternative"

--_004_29844a74085e4efd9f279dfea9054c09bowex36cmicroncom_
Content-Type: multipart/alternative;
	boundary="_000_29844a74085e4efd9f279dfea9054c09bowex36cmicroncom_"

--_000_29844a74085e4efd9f279dfea9054c09bowex36cmicroncom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
Starting from a yocto build (details below):

$ bitbake ias-kc-pf-image
Loading cache: 100% |######################################################=
######################################| ETA:  00:00:00
Loaded 2536 entries from dependency cache.
Parsing recipes: 100% |####################################################=
######################################| Time: 00:00:00
Parsing of 1964 .bb files complete (1963 cached, 1 parsed). 2536 targets, 3=
22 skipped, 2 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.28.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-16.04"
TARGET_SYS        =3D "x86_64-poky-linux"
MACHINE           =3D "gr-mrb-64"
DISTRO            =3D "poky-ivi-systemd"
DISTRO_VERSION    =3D "10.0+snapshot-20170713"
TUNE_FEATURES     =3D "m64 corei7"
TARGET_FPU        =3D ""
meta
meta-yocto
meta-yocto-bsp    =3D "first_build:dade0e68c645473d94e1b05020b064df40677e81=
"
meta-ias-audio
meta-ias-boot
meta-ias-core
meta-ias-devtools
meta-ias-earlyapplication
meta-ias-graphics
meta-ias-gr-mrb-bsp
meta-ias-ivi-adapt
meta-ias-kc-reference
meta-ias-lifecycle
meta-ias-mediasdk
meta-ias-mediatransport
meta-ias-oss
meta-ias-security
meta-ias-setup
meta-ias-systembus
meta-ias-targetutilities
meta-ias-vehiclebus =3D "master:89811f29229764d65db9b577252e9016083b8699"
meta-intel
meta-valleyisland =3D "first_build:8c15de8dbaa1414ffd0f69bea7227e7285816f85=
"
meta-ivi          =3D "first_build:e42777ef74b476ed6702b036818bcffd4fe0d768=
"
meta-filesystems
meta-networking
meta-oe
meta-python       =3D "first_build:dc5634968b270dde250690609f0015f881db81f2=
"
meta-oracle-java  =3D "first_build:f7c98706f80a2488ad2628e5b0c6d3f9f80c24fd=
"

After building the bzImage from an external toolchain is it possible to bui=
ld (outside yocto) the iasImage necessary to boot the Gordon peak (Intel Ap=
ollo lake SoC).

Also I am trying to build a sato image but:

$ bitbake core-image-sato
Loading cache: 100% |######################################################=
######################################| ETA:  00:00:00
Loaded 2536 entries from dependency cache.
Parsing recipes: 100% |####################################################=
######################################| Time: 00:00:00
Parsing of 1964 .bb files complete (1963 cached, 1 parsed). 2536 targets, 3=
22 skipped, 2 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'packagegroup-core-x11-sato-games' (but /home/rah/=
workspace/intel_GP_APL/GR_Yocto/poky/meta/recipes-sato/images/core-image-sa=
to.bb RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'packagegroup-core-x11-sato-games' is unbuildable, rem=
oving...
Missing or unbuildable dependency chain was: ['packagegroup-core-x11-sato-g=
ames']
ERROR: Required build target 'core-image-sato' has no buildable providers.
Missing or unbuildable dependency chain was: ['core-image-sato', 'packagegr=
oup-core-x11-sato-games']

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.


Regards,
Francesco

[cid:image001.png@01CD43D9.BE221000]
Francesco Camarda | EBU
Automotive Sr. System AE
desk +39.095.7483536 | mobile +39.346.7897221


--_000_29844a74085e4efd9f279dfea9054c09bowex36cmicroncom_
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
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	color:#1F497D;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hello,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Starting from a yocto =
build (details below):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">$ bitbake ias-kc-pf=
-image<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">Loading cache: 100%=
 |#########################################################################=
###################| ETA:&nbsp; 00:00:00<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">Loaded 2536 entries=
 from dependency cache.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">Parsing recipes: 10=
0% |#######################################################################=
###################| Time: 00:00:00<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">Parsing of 1964 .bb=
 files complete (1963 cached, 1 parsed). 2536 targets, 322 skipped, 2 maske=
d, 0 errors.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">NOTE: Resolving any=
 missing task queue dependencies<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">Build Configuration=
:<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">BB_VERSION&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.28.0&quot;<o:p></o:p></span><=
/i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">BUILD_SYS&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-linux&quot;<o:p></o=
:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">NATIVELSBSTRING&nbs=
p;&nbsp; =3D &quot;Ubuntu-16.04&quot;<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">TARGET_SYS&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-poky-linux&quot;<o:p></o=
:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">MACHINE&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;gr-mrb-64&quot;<=
o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">DISTRO&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;poky-ivi-sy=
stemd&quot;<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">DISTRO_VERSION&nbsp=
;&nbsp;&nbsp; =3D &quot;10.0&#43;snapshot-20170713&quot;<o:p></o:p></span><=
/i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">TUNE_FEATURES&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;m64 corei7&quot;<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">TARGET_FPU&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;&quot;<o:p></o:p></span></i></p=
>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p>=
</span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-yocto&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-yocto-bsp&nbsp=
;&nbsp;&nbsp; =3D &quot;first_build:dade0e68c645473d94e1b05020b064df40677e8=
1&quot;<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-audio&nbsp=
;&nbsp;&nbsp; <o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-boot&nbsp;=
&nbsp;&nbsp;&nbsp; <o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-core&nbsp;=
&nbsp;&nbsp;&nbsp; <o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-devtools <=
o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-earlyappli=
cation <o:p>
</o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-graphics <=
o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-gr-mrb-bsp=
 <o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-ivi-adapt =
<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-kc-referen=
ce <o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-lifecycle =
<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-mediasdk <=
o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-mediatrans=
port <o:p>
</o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-oss&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-security <=
o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-setup&nbsp=
;&nbsp;&nbsp; <o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-systembus =
<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-targetutil=
ities <o:p>
</o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ias-vehiclebus=
 =3D &quot;master:89811f29229764d65db9b577252e9016083b8699&quot;<o:p></o:p>=
</span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-intel&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-valleyisland =
=3D &quot;first_build:8c15de8dbaa1414ffd0f69bea7227e7285816f85&quot;<o:p></=
o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-ivi&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;first_build:e42777ef7=
4b476ed6702b036818bcffd4fe0d768&quot;<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-filesystems&nb=
sp; <o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-networking&nbs=
p;&nbsp; <o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-oe&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-python&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;first_build:dc5634968b270dde25069060=
9f0015f881db81f2&quot;<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">meta-oracle-java&nb=
sp; =3D &quot;first_build:f7c98706f80a2488ad2628e5b0c6d3f9f80c24fd&quot;<o:=
p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></i></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">After building the bzI=
mage from an external toolchain is it possible to build (outside yocto) the=
 iasImage necessary to boot the Gordon peak (Intel Apollo lake SoC).
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Also I am trying to bu=
ild a sato image but:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">$ bitbake core-imag=
e-sato<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">Loading cache: 100%=
 |#########################################################################=
###################| ETA:&nbsp; 00:00:00<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">Loaded 2536 entries=
 from dependency cache.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">Parsing recipes: 10=
0% |#######################################################################=
###################| Time: 00:00:00<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">Parsing of 1964 .bb=
 files complete (1963 cached, 1 parsed). 2536 targets, 322 skipped, 2 maske=
d, 0 errors.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">NOTE: Resolving any=
 missing task queue dependencies<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:red">ERROR: Nothing RPROVIDE=
S 'packagegroup-core-x11-sato-games' (but /home/rah/workspace/intel_GP_APL/=
GR_Yocto/poky/meta/recipes-sato/images/core-image-sato.bb RDEPENDS on or ot=
herwise requires it)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">NOTE: Runtime targe=
t 'packagegroup-core-x11-sato-games' is unbuildable, removing...<o:p></o:p>=
</span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">Missing or unbuilda=
ble dependency chain was: ['packagegroup-core-x11-sato-games']<o:p></o:p></=
span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:red">ERROR: Required build t=
arget 'core-image-sato' has no buildable providers.<o:p></o:p></span></i></=
p>
<p class=3D"MsoNormal"><i><span style=3D"color:red">Missing or unbuildable =
dependency chain was: ['core-image-sato', 'packagegroup-core-x11-sato-games=
']<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D">Summary: There were=
 2 ERROR messages shown, returning a non-zero exit code.<o:p></o:p></span><=
/i></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Regards,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Francesco<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><img width=3D"115" hei=
ght=3D"34" style=3D"width:1.1979in;height:.3541in" id=3D"Picture_x0020_1" s=
rc=3D"cid:image001.png@01D2FBE1.A165C360" alt=3D"cid:image001.png@01CD43D9.=
BE221000"></span><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&=
quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#17365D">Francesco Camarda |=
</span></b><span style=3D"color:#17365D">
<b>EBU </b><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Automotive </span><spa=
n style=3D"color:#44546A">Sr. System AE</span><span lang=3D"IT" style=3D"co=
lor:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;color:#1F497D">de=
sk</span></b><span style=3D"font-size:10.0pt;color:#1F497D"> &#43;39.095.74=
83536
</span><span style=3D"color:#1F497D">|</span><span style=3D"font-size:10.0p=
t;color:#1F497D">
<b>mobile </b>&#43;39.346.7897221<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_29844a74085e4efd9f279dfea9054c09bowex36cmicroncom_--

--_004_29844a74085e4efd9f279dfea9054c09bowex36cmicroncom_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=3429;
	creation-date="Thu, 13 Jul 2017 12:59:57 GMT";
	modification-date="Thu, 13 Jul 2017 12:59:57 GMT"
Content-ID: <image001.png@01D2FBE1.A165C360>
Content-Transfer-Encoding: base64

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
AElFTkSuQmCC

--_004_29844a74085e4efd9f279dfea9054c09bowex36cmicroncom_--
