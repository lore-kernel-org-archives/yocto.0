Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE66CE002A8
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 08:13:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Jul 2012 08:13:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="169419149"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by azsmga001.ch.intel.com with ESMTP; 17 Jul 2012 08:13:00 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 17 Jul 2012 08:13:00 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.235]) with mapi id
	14.01.0355.002; Tue, 17 Jul 2012 08:13:00 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Giovanni Foiani <fnognn@unife.it>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Problem building Yocto Hello World demo on imx53QSB
Thread-Index: AQHNY/7BdryJGFYGykWteqYSxjVYiJctlKvQ
Date: Tue, 17 Jul 2012 15:12:59 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46AB293D@ORSMSX101.amr.corp.intel.com>
References: <CANsUPaOcZUzv_bnFbcH1JcnMh1BHvba0LTmD0jHnUM-E9TBesQ@mail.gmail.com>
In-Reply-To: <CANsUPaOcZUzv_bnFbcH1JcnMh1BHvba0LTmD0jHnUM-E9TBesQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: Problem building Yocto Hello World demo on imx53QSB
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 17 Jul 2012 15:13:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C46AB293DORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C46AB293DORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Giovanni,



Can you following the ADT manual and use the built 1.2.1 toolchain tar ball=
?  The meta-ide-support is supposed to be used under build tree instead of =
copied over to /opt/poky.



Cheers,

Jessica



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Giovanni Foiani
Sent: Tuesday, July 17, 2012 2:29 AM
To: yocto@yoctoproject.org
Subject: [yocto] Problem building Yocto Hello World demo on imx53QSB



Hi,



I need to deploy a C application that I have made on a Freescale iMX53 QSB.

First I wanted to test the cross-compilation environment building the Hello=
 World demo but I got some issues.

I made the following steps:

*       download yocto denzil
*       source oe-init-build-env
*       edit local.conf and bblayers.conf files
*       run 'bitbake meta-ide-support'
*       copied the resultant sdk in /opt/poky
*       installed Yocto Eclipse plugin
*       Configured the plugin as following

   *    toolchain root location: /opt/poky/1.2.1
   *    sysroot location: /opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-lin=
ux-gnueabi

   When I build the project I get the following error:



   Invoking autogen.sh in build directory: /home/gfoiani/workspace/idea-c-a=
pplication



   Command-line environment variables:

               CFLAGS=3D" -g -O0  -march=3Darmv7-a -fno-tree-vectorize     =
-mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8 --sy=
sroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi" CXXFLA=
GS=3D" -g -O0  -march=3Darmv7-a -fno-tree-vectorize     -mthumb-interwork -=
mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/opt/poky/1=
.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi" LDFLAGS=3D" --sysroot=3D/=
opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi" CPPFLAGS=3D" -m=
arch=3Darmv7-a -fno-tree-vectorize     -mthumb-interwork -mfloat-abi=3Dsoft=
fp -mfpu=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/opt/poky/1.2.1/sysroots/arm=
v7a-vfp-neon-poky-linux-gnueabi"



   sh /home/gfoiani/workspace/idea-c-application/autogen.sh --with-libtool-=
sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi --tar=
get=3Darm-poky-linux-gnueabi --host=3Darm-poky-linux-gnueabi --build=3Di686=
-linux --with-libtool-sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-po=
ky-linux-gnueabi

   configure.ac:24<http://configure.ac:24>: error: AC_SUBST: `idea-c-applic=
ation_CFLAGS' is not a valid shell variable name

   configure.ac:24<http://configure.ac:24>: the top level

   autom4te: m4 failed with exit status: 1

   aclocal: autom4te failed with exit status: 1

   configure.ac:24<http://configure.ac:24>: error: AC_SUBST: `idea-c-applic=
ation_CFLAGS' is not a valid shell variable name

   configure.ac:24<http://configure.ac:24>: the top level

   autom4te: m4 failed with exit status: 1

   configure.ac:24<http://configure.ac:24>: error: AC_SUBST: `idea-c-applic=
ation_CFLAGS' is not a valid shell variable name

   configure.ac:24<http://configure.ac:24>: the top level

   autom4te: m4 failed with exit status: 1

   autoheader: '/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/autom4t=
e' failed with exit status: 1

   configure.ac:24<http://configure.ac:24>: error: AC_SUBST: `idea-c-applic=
ation_CFLAGS' is not a valid shell variable name

   configure.ac:24<http://configure.ac:24>: the top level

   autom4te: m4 failed with exit status: 1

   automake: autoconf failed with exit status: 1

   /home/gfoiani/workspace/idea-c-application/autogen.sh: line 9: ./configu=
re: No such file or directory



   Configuration failed with error



   What Am I doing wrong?



   Thanks



   Giovanni

   --

   Dott. Ing. Giovanni Foiani

   Cell:        +39-349-3577515
   Phone:    +39-0532-97-4106
   mail:        giovanni.foiani@unife.it<mailto:giovanni.foiani@unife.it>

   CenTec - Corso Guercino, 47 - 44042 Cento (FE)




--_000_C6510F6D410BB64A8C15398EDC6B847C46AB293DORSMSX101amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.apple-tab-span
	{mso-style-name:apple-tab-span;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:244341136;
	mso-list-template-ids:1835429030;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Giovanni,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Can you following the ADT=
 manual and use the built 1.2.1 toolchain tar ball?&nbsp; The meta-ide-supp=
ort is supposed to be used under build tree instead of copied
 over to /opt/poky.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Cheers,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Giovanni Foiani<br>
<b>Sent:</b> Tuesday, July 17, 2012 2:29 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Problem building Yocto Hello World demo on imx53QSB=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I need to deploy a C application that I have made on=
 a Freescale iMX53 QSB.&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">First I wanted to test the cross-compilation environ=
ment building the Hello World demo but I got some issues.&nbsp;<o:p></o:p><=
/p>
</div>
<div>
<p class=3D"MsoNormal">I made the following steps:<o:p></o:p></p>
</div>
<div>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l0 level1 lfo1">
download yocto denzil<o:p></o:p></li><li class=3D"MsoNormal" style=3D"mso-m=
argin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l0 level1 lfo1">
source oe-init-build-env<o:p></o:p></li><li class=3D"MsoNormal" style=3D"ms=
o-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l0 level1 lfo1">
edit local.conf and bblayers.conf files<o:p></o:p></li><li class=3D"MsoNorm=
al" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l0=
 level1 lfo1">
run 'bitbake meta-ide-support'<o:p></o:p></li><li class=3D"MsoNormal" style=
=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l0 level1 l=
fo1">
copied the&nbsp;<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;background:white">resultant&nbsp;</span>sdk in /o=
pt/poky<o:p></o:p></li><li class=3D"MsoNormal" style=3D"mso-margin-top-alt:=
auto;mso-margin-bottom-alt:auto;mso-list:l0 level1 lfo1">
installed Yocto Eclipse plugin<o:p></o:p></li><li class=3D"MsoNormal" style=
=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l0 level1 l=
fo1">
Configured the plugin as following<o:p></o:p></li></ul>
<ul type=3D"disc">
<ul type=3D"circle">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l0 level2 lfo1">
toolchain root location:&nbsp;/opt/poky/1.2.1<o:p></o:p></li><li class=3D"M=
soNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-l=
ist:l0 level2 lfo1">
sysroot location:&nbsp;/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-=
gnueabi<o:p></o:p></li></ul>
</ul>
</div>
<div>
<p class=3D"MsoNormal">When I build the project I get the following error:<=
o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><i>Invoking autogen.sh in build directory: /home/gfo=
iani/workspace/idea-c-application</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>Command-line environment variables:</i><o:p></o:p=
></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-tab-span"><i>&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </i></span><i>CFLAGS=3D&qu=
ot; -g -O0 &nbsp;-march=3Darmv7-a -fno-tree-vectorize &nbsp; &nbsp; -mthumb=
-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8 --sysroot=
=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi&quot;
 CXXFLAGS=3D&quot; -g -O0 &nbsp;-march=3Darmv7-a -fno-tree-vectorize &nbsp;=
 &nbsp; -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex=
-a8 --sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi=
&quot; LDFLAGS=3D&quot; --sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neo=
n-poky-linux-gnueabi&quot;
 CPPFLAGS=3D&quot; -march=3Darmv7-a -fno-tree-vectorize &nbsp; &nbsp; -mthu=
mb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8 --sysroot=
=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi&quot;</i><o:=
p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>sh /home/gfoiani/workspace/idea-c-application/aut=
ogen.sh --with-libtool-sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-p=
oky-linux-gnueabi --target=3Darm-poky-linux-gnueabi --host=3Darm-poky-linux=
-gnueabi --build=3Di686-linux --with-libtool-sysroot=3D/opt/poky/1.2.1/sysr=
oots/armv7a-vfp-neon-poky-linux-gnueabi&nbsp;</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24">configure.ac:2=
4</a>: error: AC_SUBST: `idea-c-application_CFLAGS' is not a valid shell va=
riable name</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24">configure.ac:2=
4</a>: the top level</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>autom4te: m4 failed with exit status: 1</i><o:p><=
/o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>aclocal: autom4te failed with exit status: 1</i><=
o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24">configure.ac:2=
4</a>: error: AC_SUBST: `idea-c-application_CFLAGS' is not a valid shell va=
riable name</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24">configure.ac:2=
4</a>: the top level</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>autom4te: m4 failed with exit status: 1</i><o:p><=
/o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24">configure.ac:2=
4</a>: error: AC_SUBST: `idea-c-application_CFLAGS' is not a valid shell va=
riable name</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24">configure.ac:2=
4</a>: the top level</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>autom4te: m4 failed with exit status: 1</i><o:p><=
/o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>autoheader: '/opt/poky/1.2.1/sysroots/i686-pokysd=
k-linux/usr/bin/autom4te' failed with exit status: 1</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24">configure.ac:2=
4</a>: error: AC_SUBST: `idea-c-application_CFLAGS' is not a valid shell va=
riable name</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i><a href=3D"http://configure.ac:24">configure.ac:2=
4</a>: the top level</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>autom4te: m4 failed with exit status: 1</i><o:p><=
/o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>automake: autoconf failed with exit status: 1</i>=
<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>/home/gfoiani/workspace/idea-c-application/autoge=
n.sh: line 9: ./configure: No such file or directory</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>Configuration failed with error</i><o:p></o:p></p=
>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">What Am I doing wrong?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Giovanni<o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">--<br>
<br>
Dott. Ing. Giovanni Foiani<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Cell:&nbsp; &nbsp; &nbsp; &nbsp; &#43;39-349-3577515=
<br>
Phone: &nbsp;&nbsp; &#43;39-0532-97-4106<br>
mail:&nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"mailto:giovanni.foiani@unife.it=
" target=3D"_blank">giovanni.foiani@unife.it</a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">CenTec - Corso Guercino, 47 - 44042 Cento=
 (FE)</span><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C46AB293DORSMSX101amrcor_--
