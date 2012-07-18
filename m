Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CB3DE00348
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 10:12:15 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 18 Jul 2012 10:12:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="123960877"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Jul 2012 10:12:05 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 18 Jul 2012 10:11:50 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.166]) with mapi id
	14.01.0355.002; Wed, 18 Jul 2012 10:11:49 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Giovanni Foiani <fnognn@unife.it>
Thread-Topic: [yocto] Problem building Yocto Hello World demo on imx53QSB
Thread-Index: AQHNY/7BdryJGFYGykWteqYSxjVYiJctlKvQgAH6ywD//7ZHUA==
Date: Wed, 18 Jul 2012 17:11:48 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46AB73DE@ORSMSX101.amr.corp.intel.com>
References: <CANsUPaOcZUzv_bnFbcH1JcnMh1BHvba0LTmD0jHnUM-E9TBesQ@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46AB293D@ORSMSX101.amr.corp.intel.com>
	<CANsUPaOyauO5V1qpj3MbweFPJaQnAyyb40Q4BgNdY3Suhwu8VQ@mail.gmail.com>
In-Reply-To: <CANsUPaOyauO5V1qpj3MbweFPJaQnAyyb40Q4BgNdY3Suhwu8VQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 18 Jul 2012 17:12:15 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C46AB73DEORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C46AB73DEORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please see my comments below...







From: Giovanni Foiani [mailto:fnognn@unife.it]
Sent: Wednesday, July 18, 2012 7:25 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Problem building Yocto Hello World demo on imx53QSB



Hi Jessica,



downgrading from Ubuntu 11.04 (32 bit) to Ubuntu 10.04 (32 bit) and followi=
ng the ADT manual procedure HelloWorld demo works.

[JZ] This I'm assuming you strictly follow the ADT manual and use the Yocto=
 project built out toolchain, right?  Why downgrade from Ubuntu 11.04 to 10=
.04? I don't think you need to do that unless 10.04 is what you want.





I noticed that ADT creates an armv5 tool chain instead building the toolcha=
in using Freescale layer (because I need to deploy the application on a iMX=
53QSB) it creates an armv7 tool chain (that is the right processor architec=
ture).

Can this create problems?

[JZ] In that case, you need to build out an armv7 toolchain.  The key is to=
 add the Freescale layer and set target MACHINE appropriately.  And use tha=
t toolchain  for your cross development.  It should work.



Thanks



Giovanni


--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it<mailto:giovanni.foiani@unife.it>

CenTec - Corso Guercino, 47 - 44042 Cento (FE)





On Tue, Jul 17, 2012 at 5:12 PM, Zhang, Jessica <jessica.zhang@intel.com<ma=
ilto:jessica.zhang@intel.com>> wrote:

Hi Giovanni,



Can you following the ADT manual and use the built 1.2.1 toolchain tar ball=
?  The meta-ide-support is supposed to be used under build tree instead of =
copied over to /opt/poky.



Cheers,

Jessica



From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of Giovanni Foiani
Sent: Tuesday, July 17, 2012 2:29 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
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

   Cell:        +39-349-3577515<tel:%2B39-349-3577515>
   Phone:    +39-0532-97-4106<tel:%2B39-0532-97-4106>
   mail:        giovanni.foiani@unife.it<mailto:giovanni.foiani@unife.it>

   CenTec - Corso Guercino, 47 - 44042 Cento (FE)






--_000_C6510F6D410BB64A8C15398EDC6B847C46AB73DEORSMSX101amrcor_
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
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
	{mso-list-id:1120415434;
	mso-list-template-ids:1542871556;}
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
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1
	{mso-list-id:1610307655;
	mso-list-template-ids:-452697442;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Please see my comments be=
low&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Giovanni=
 Foiani [mailto:fnognn@unife.it]
<br>
<b>Sent:</b> Wednesday, July 18, 2012 7:25 AM<br>
<b>To:</b> Zhang, Jessica<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Problem building Yocto Hello World demo on imx5=
3QSB<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi Jessica,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">downgrading from Ubuntu 11.04 (32 bit) to&nbsp;Ubunt=
u 10.04 (32 bit) and following the ADT manual procedure HelloWorld demo wor=
ks.<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">[JZ] This I&#8217;m assum=
ing you strictly follow the ADT manual and use the Yocto project built out =
toolchain, right?&nbsp; Why downgrade from Ubuntu 11.04 to 10.04? I
 don&#8217;t think you need to do that unless 10.04 is what you want.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal">I noticed that ADT creates an&nbsp;armv5 tool chain =
instead building the toolchain using Freescale layer (because I need to dep=
loy the application on a iMX53QSB) it creates an armv7&nbsp;tool chain (tha=
t is the right processor architecture).<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Can this create problems?<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">[JZ] In that case, you ne=
ed to build out an armv7 toolchain.&nbsp; The key is to add the Freescale l=
ayer and set target MACHINE appropriately.&nbsp; And use that toolchain&nbs=
p;
 for your cross development.&nbsp; It should work.<o:p></o:p></span></p>
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
<p class=3D"MsoNormal">Giovanni<br clear=3D"all">
<o:p></o:p></p>
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
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
<br>
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On Tue, Jul 17, 2012 at 5:12 PM, Zhang, Jessica &lt;=
<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@=
intel.com</a>&gt; wrote:<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Hi Giovanni,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Can you following the ADT manual and us=
e the built 1.2.1 toolchain tar ball?&nbsp; The meta-ide-support
 is supposed to be used under build tree instead of copied over to /opt/pok=
y.</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Cheers,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Jessica</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,=
&quot;sans-serif&quot;">From:</span></b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Giovanni Foiani<br>
<b>Sent:</b> Tuesday, July 17, 2012 2:29 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Problem building Yocto Hello World demo on imx53QSB=
</span><o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Hi,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I need to deploy a C application that I have made on a Freescale i=
MX53 QSB.&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">First I wanted to test the cross-compilation environment building =
the Hello World demo but I got some issues.&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I made the following steps:<o:p></o:p></p>
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
alt:auto;mso-list:l1 level2 lfo2">
toolchain root location:&nbsp;/opt/poky/1.2.1<o:p></o:p></li><li class=3D"M=
soNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-l=
ist:l1 level2 lfo2">
sysroot location:&nbsp;/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-=
gnueabi<o:p></o:p></li></ul>
</ul>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">When I build the project I get the following error:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i>Invoking autogen.sh in build directory: /home/gfoiani/workspace=
/idea-c-application</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i>Command-line environment variables:</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; CFLAGS=3D&quot; -g -O0 &nbsp;-march=3Darmv7-a -fno-tree-vectorize &nbsp=
; &nbsp; -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcorte=
x-a8 --sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueab=
i&quot;
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i>sh /home/gfoiani/workspace/idea-c-application/autogen.sh --with=
-libtool-sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnue=
abi --target=3Darm-poky-linux-gnueabi --host=3Darm-poky-linux-gnueabi
 --build=3Di686-linux --with-libtool-sysroot=3D/opt/poky/1.2.1/sysroots/arm=
v7a-vfp-neon-poky-linux-gnueabi&nbsp;</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i><a href=3D"http://configure.ac:24" target=3D"_blank">configure.=
ac:24</a>: error: AC_SUBST: `idea-c-application_CFLAGS' is not a valid shel=
l variable name</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i><a href=3D"http://configure.ac:24" target=3D"_blank">configure.=
ac:24</a>: the top level</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i>autom4te: m4 failed with exit status: 1</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i>aclocal: autom4te failed with exit status: 1</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i><a href=3D"http://configure.ac:24" target=3D"_blank">configure.=
ac:24</a>: error: AC_SUBST: `idea-c-application_CFLAGS' is not a valid shel=
l variable name</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i><a href=3D"http://configure.ac:24" target=3D"_blank">configure.=
ac:24</a>: the top level</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i>autom4te: m4 failed with exit status: 1</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i><a href=3D"http://configure.ac:24" target=3D"_blank">configure.=
ac:24</a>: error: AC_SUBST: `idea-c-application_CFLAGS' is not a valid shel=
l variable name</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i><a href=3D"http://configure.ac:24" target=3D"_blank">configure.=
ac:24</a>: the top level</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i>autom4te: m4 failed with exit status: 1</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i>autoheader: '/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bi=
n/autom4te' failed with exit status: 1</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i><a href=3D"http://configure.ac:24" target=3D"_blank">configure.=
ac:24</a>: error: AC_SUBST: `idea-c-application_CFLAGS' is not a valid shel=
l variable name</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i><a href=3D"http://configure.ac:24" target=3D"_blank">configure.=
ac:24</a>: the top level</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i>autom4te: m4 failed with exit status: 1</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i>automake: autoconf failed with exit status: 1</i><o:p></o:p></p=
>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i>/home/gfoiani/workspace/idea-c-application/autogen.sh: line 9: =
./configure: No such file or directory</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><i>Configuration failed with error</i><o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">What Am I doing wrong?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Thanks<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Giovanni<o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t">--<br>
<br>
Dott. Ing. Giovanni Foiani<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Cell:&nbsp; &nbsp; &nbsp; &nbsp;
<a href=3D"tel:%2B39-349-3577515" target=3D"_blank">&#43;39-349-3577515</a>=
<br>
Phone: &nbsp;&nbsp; <a href=3D"tel:%2B39-0532-97-4106" target=3D"_blank">&#=
43;39-0532-97-4106</a><br>
mail:&nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"mailto:giovanni.foiani@unife.it=
" target=3D"_blank">giovanni.foiani@unife.it</a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span><o=
:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C46AB73DEORSMSX101amrcor_--
