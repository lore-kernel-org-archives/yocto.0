Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00A4BE013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 10:35:50 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 14 Jun 2013 10:35:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,867,1363158000"; 
	d="scan'208,217";a="349970414"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2013 10:36:16 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.22]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.91]) with mapi id
	14.03.0123.003; Fri, 14 Jun 2013 10:35:45 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Thanassis Silis <djnass_18@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Can not build (configure) a simple Hello world program
	in eclipse with ADT
Thread-Index: AQHOaRs4kuWst/+wiUmz8Yx9RIPqRJk1Z+FggACAJoD//4/RgA==
Date: Fri, 14 Jun 2013 17:35:44 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C3B188@ORSMSX103.amr.corp.intel.com>
References: <DUB116-W9038BE05D96B60298CC60C98800@phx.gbl>,
	<C6510F6D410BB64A8C15398EDC6B847C73C3B0A6@ORSMSX103.amr.corp.intel.com>
	<DUB116-W136485E174295132673564498800@phx.gbl>
In-Reply-To: <DUB116-W136485E174295132673564498800@phx.gbl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: Can not build (configure) a simple Hello world program in eclipse with ADT
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
X-List-Received-Date: Fri, 14 Jun 2013 17:35:51 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C73C3B188ORSMSX103amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C73C3B188ORSMSX103amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Tanassis,



Can you install your sysroot setup by following the steps of ADT manual, ei=
ther download a prebuild image.tar.gz file and use runqemu-extract-sdk to e=
xtract it under /home/user/sysroot_*** directory, or use adt_installer to s=
et it up?  Any of the sysroot that you got by building  toolchain is just t=
oo minimum and we typically advise people to setup their sysroot base on ta=
rget image rootfs.



Thanks,

Jessica



From: Thanassis Silis [mailto:djnass_18@hotmail.com]
Sent: Friday, June 14, 2013 10:13 AM
To: Zhang, Jessica; yocto@yoctoproject.org
Subject: RE: [yocto] Can not build (configure) a simple Hello world program=
 in eclipse with ADT



Hi Jessica,
well I selected the toolchain from build dir and pointed both paths (toolch=
ain and sysroots) to
/home/<user>/<yocto_root>/build/tmp/

The rest is appended automatically I guess.
The target showed up  correctly in the dropdown box ( armv7a-vfp-neon-poky-=
linux-gnueabi ) .

Following your advice, I changed the toolchain and sysroots to point to /op=
t/poky/1.4.1/ (changed the radio button to point to "standalone prebuilt to=
olchain" - i bitbaked from the same build the meta-toolchain-sdk as well.

I then recreated the hello world autotools example and the problem persists=
.....

Thank you for your help!
Tanassis

  _____

From: jessica.zhang@intel.com<mailto:jessica.zhang@intel.com>
To: djnass_18@hotmail.com<mailto:djnass_18@hotmail.com>; yocto@yoctoproject=
.org<mailto:yocto@yoctoproject.org>
Subject: RE: [yocto] Can not build (configure) a simple Hello world program=
 in eclipse with ADT
Date: Fri, 14 Jun 2013 16:36:59 +0000

Hi Thanassis,



How did you configure your toolchain and sysroot, in the windows->preferenc=
e for ADT? I noticed from the commandling that your sysroot is sysroot=3D/h=
ome/nass/yocto/build/tmp/sysroots/imx6qsabrelite



Typically we'd advise people not to directly use the sysroot under the buil=
d environment.  If you follow the ADT manual there're couple ways for you t=
o setup sysroot, either extract from image rootfs or use adt_installer.



Thanks,

Jessica



From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Thanassis Silis
Sent: Friday, June 14, 2013 9:20 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] Can not build (configure) a simple Hello world program in =
eclipse with ADT



hello everyone,
I am following the yocto Project Devel Manual ( http://www.yoctoproject.org=
/docs/1.4/dev-manual/dev-manual.html#adt-eclipse ) to set up eclipse for us=
e with an embedded target . I am stuck in section 4.2.2.2 trying to make a =
simple autotools hello world application. The build fails at configure stag=
e

checking for style of include used by make... GNU
checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc  -mar=
ch=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon --sysroot=
=3D/home/nass/yocto/build/tmp/sysroots/imx6qsabrelite
checking whether the C compiler works... no
configure: error: in `/home/nass/eclipse/adt_hello/':
configure: error: in `/home/nass/eclipse/adt_hello/':
configure: error: C compiler cannot create executables
configure: error: C compiler cannot create executables
See `config.log' for more details

Configuration failed with error


config.log looks fairly similar to this post: https://lists.yoctoproject.or=
g/pipermail/yocto/2013-January/013860.html

I have configured to use the toolchain from the build directory. In fact th=
e paths to the toolchain and sysroots are (both):
"/home/nass/yocto/build/tmp/" .

I went on to try the slightly more manual in CLI :  http://www.yoctoproject=
.org/docs/1.4/adt-manual/adt-manual.html#creating-and-running-a-project-bas=
ed-on-gnu-autotools

again at configure  stage, I get:


checking for gcc... arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-in=
terwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon --sysroot=3D/home/nass/yocto/buil=
d/tmp/sysroots/imx6qsabrelite
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...
checking whether we are cross compiling... configure: error: in `/home/nass=
/appz/dev/yoctauto':
configure: error: cannot run C compiled programs.
If you meant to cross compile, use `--host'.
See `config.log' for more details


Should I really use --host? Wouldn't it be in the plugin setup options alre=
ady if that was necessary? OR wouldn't the environment-setup* file contain =
the necessary declarations?

Any ideas how to avert it?

Thank you for your help!


--_000_C6510F6D410BB64A8C15398EDC6B847C73C3B188ORSMSX103amrcor_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
p.ecxmsonormal, li.ecxmsonormal, div.ecxmsonormal
	{mso-style-name:ecxmsonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.ecxmsochpdefault, li.ecxmsochpdefault, div.ecxmsochpdefault
	{mso-style-name:ecxmsochpdefault;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.ecxmsohyperlink
	{mso-style-name:ecxmsohyperlink;}
span.ecxmsohyperlinkfollowed
	{mso-style-name:ecxmsohyperlinkfollowed;}
span.ecxemailstyle18
	{mso-style-name:ecxemailstyle18;}
p.ecxmsonormal1, li.ecxmsonormal1, div.ecxmsonormal1
	{mso-style-name:ecxmsonormal1;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.ecxmsohyperlink1
	{mso-style-name:ecxmsohyperlink1;
	color:blue;
	text-decoration:underline;}
span.ecxmsohyperlinkfollowed1
	{mso-style-name:ecxmsohyperlinkfollowed1;
	color:purple;
	text-decoration:underline;}
span.ecxemailstyle181
	{mso-style-name:ecxemailstyle181;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
p.ecxmsochpdefault1, li.ecxmsochpdefault1, div.ecxmsochpdefault1
	{mso-style-name:ecxmsochpdefault1;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:10.0pt;
	font-family:"Times New Roman","serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle30
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Tanassis,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Can you install your sysr=
oot setup by following the steps of ADT manual, either download a prebuild =
image.tar.gz file and use runqemu-extract-sdk to extract
 it under /home/user/sysroot_*** directory, or use adt_installer to set it =
up?&nbsp; Any of the sysroot that you got by building&nbsp; toolchain is ju=
st too minimum and we typically advise people to setup their sysroot base o=
n target image rootfs.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Thanassi=
s Silis [mailto:djnass_18@hotmail.com]
<br>
<b>Sent:</b> Friday, June 14, 2013 10:13 AM<br>
<b>To:</b> Zhang, Jessica; yocto@yoctoproject.org<br>
<b>Subject:</b> RE: [yocto] Can not build (configure) a simple Hello world =
program in eclipse with ADT<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;">Hi Jessica,<br>
well I selected the toolchain from build dir and pointed both paths (toolch=
ain and sysroots) to<br>
/home/&lt;user&gt;/&lt;yocto_root&gt;/build/tmp/<br>
<br>
The rest is appended automatically I guess. <br>
The target showed up&nbsp; correctly in the dropdown box ( armv7a-vfp-neon-=
poky-linux-gnueabi ) .<br>
<br>
Following your advice, I changed the toolchain and sysroots to point to /op=
t/poky/1.4.1/ (changed the radio button to point to &quot;standalone prebui=
lt toolchain&quot; - i bitbaked from the same build the meta-toolchain-sdk =
as well.
<br>
<br>
I then recreated the hello world autotools example and the problem persists=
.....<br>
<br>
Thank you for your help!<br>
Tanassis<o:p></o:p></span></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">
<hr size=3D"2" width=3D"100%" align=3D"center" id=3D"stopSpelling">
</span></div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;">From:
<a href=3D"mailto:jessica.zhang@intel.com">jessica.zhang@intel.com</a><br>
To: <a href=3D"mailto:djnass_18@hotmail.com">djnass_18@hotmail.com</a>; <a =
href=3D"mailto:yocto@yoctoproject.org">
yocto@yoctoproject.org</a><br>
Subject: RE: [yocto] Can not build (configure) a simple Hello world program=
 in eclipse with ADT<br>
Date: Fri, 14 Jun 2013 16:36:59 &#43;0000<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Thanassis,</span><span=
 style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;</span><span style=
=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">How did you configure you=
r toolchain and sysroot, in the windows-&gt;preference for ADT? I noticed f=
rom the commandling that your sysroot is sysroot=3D/home/nass/yocto/build/t=
mp/sysroots/imx6qsabrelite</span><span style=3D"font-family:&quot;Calibri&q=
uot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;</span><span style=
=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Typically we&#8217;d advi=
se people not to directly use the sysroot under the build environment.&nbsp=
; If you follow the ADT manual there&#8217;re couple ways for you to setup
 sysroot, either extract from image rootfs or use adt_installer.</span><spa=
n style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;</span><span style=
=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,</span><span style=
=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica</span><span style=
=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;</span><span style=
=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></sp=
an></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoprojec=
t.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-b=
ounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Thanassis Silis<br>
<b>Sent:</b> Friday, June 14, 2013 9:20 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject:</b> [yocto] Can not build (configure) a simple Hello world prog=
ram in eclipse with ADT</span><span style=3D"font-family:&quot;Calibri&quot=
;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;">hello everyone,<br>
I am following the yocto Project Devel Manual ( <a href=3D"http://www.yocto=
project.org/docs/1.4/dev-manual/dev-manual.html#adt-eclipse" target=3D"_bla=
nk">
http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#adt-eclipse=
</a> ) to set up eclipse for use with an embedded target . I am stuck in se=
ction 4.2.2.2 trying to make a simple autotools hello world application. Th=
e build fails at configure stage
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">checking for style of include used by make... GNU</span><s=
pan style=3D"font-family:&quot;Courier New&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc&nbsp=
; -march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon --sy=
sroot=3D/home/nass/yocto/build/tmp/sysroots/imx6qsabrelite</span><span styl=
e=3D"font-family:&quot;Courier New&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>checking whether the C compiler works... no</span><span style=3D"font-fami=
ly:&quot;Courier New&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>configure: error: in `/home/nass/eclipse/adt_hello/':</span><span style=3D=
"font-family:&quot;Courier New&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>configure: error: in `/home/nass/eclipse/adt_hello/':</span><span style=3D=
"font-family:&quot;Courier New&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>configure: error: C compiler cannot create executables</span><span style=
=3D"font-family:&quot;Courier New&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>configure: error: C compiler cannot create executables</span><span style=
=3D"font-family:&quot;Courier New&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>See `config.log' for more details</span><span style=3D"font-family:&quot;C=
ourier New&quot;"><br>
<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>Configuration failed with error</span><span style=3D"font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;"><br>
config.log looks fairly similar to this post: <a href=3D"https://lists.yoct=
oproject.org/pipermail/yocto/2013-January/013860.html" target=3D"_blank">
https://lists.yoctoproject.org/pipermail/yocto/2013-January/013860.html</a>=
<br>
<br>
I have configured to use the toolchain from the build directory. In fact th=
e paths to the toolchain and sysroots are (both):
<br>
&quot;/home/nass/yocto/build/tmp/&quot; .<br>
<br>
I went on to try the slightly more manual in CLI :&nbsp; <a href=3D"http://=
www.yoctoproject.org/docs/1.4/adt-manual/adt-manual.html#creating-and-runni=
ng-a-project-based-on-gnu-autotools" target=3D"_blank">
http://www.yoctoproject.org/docs/1.4/adt-manual/adt-manual.html#creating-an=
d-running-a-project-based-on-gnu-autotools</a>
<br>
<br>
again at configure&nbsp; stage, I get:<br>
&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">checking for gcc... arm-poky-linux-gnueabi-gcc&nbsp; -marc=
h=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon --sysroot=
=3D/home/nass/yocto/build/tmp/sysroots/imx6qsabrelite</span><span style=3D"=
font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>checking whether the C compiler works... yes</span><span style=3D"font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>checking for C compiler default output file name... a.out</span><span styl=
e=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>checking for suffix of executables...
</span><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot=
;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>checking whether we are cross compiling... configure: error: in `/home/nas=
s/appz/dev/yoctauto':</span><span style=3D"font-family:&quot;Calibri&quot;,=
&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>configure: error: cannot run C compiled programs.</span><span style=3D"fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>If you meant to cross compile, use `--host'.</span><span style=3D"font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>See `config.log' for more details</span><span style=3D"font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;"><br>
Should I really use --host? Wouldn't it be in the plugin setup options alre=
ady if that was necessary? OR wouldn't the environment-setup* file contain =
the necessary declarations?<br>
<br>
Any ideas how to avert it?<br>
<br>
Thank you for your help! <o:p></o:p></span></p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C73C3B188ORSMSX103amrcor_--
