Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F14BE01275
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2012 09:23:58 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Nov 2012 09:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,746,1344236400"; 
	d="scan'208,217";a="217394541"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga001.jf.intel.com with ESMTP; 09 Nov 2012 09:23:57 -0800
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 9 Nov 2012 17:23:38 +0000
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.16]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.119]) with mapi id
	14.01.0355.002; Fri, 9 Nov 2012 17:23:42 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: Sean Liming <sean.liming@annabooks.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Cannot Compile Application in Eclipse IDE Juno
Thread-Index: Ac2+Q7NY4AZWZUVETMqSgwaAq2v0mgAUCl3gAAEpnYAAAIxFMA==
Date: Fri, 9 Nov 2012 17:23:30 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E96167235DC@IRSMSX104.ger.corp.intel.com>
References: <000301cdbe44$ace11c60$06a35520$@annabooks.com>
	<1FFB62CE8AEB0D4298B51122D8903E961672353D@IRSMSX104.ger.corp.intel.com>
	<000801cdbe98$853b87f0$8fb297d0$@annabooks.com>
In-Reply-To: <000801cdbe98$853b87f0$8fb297d0$@annabooks.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: Cannot Compile Application in Eclipse IDE Juno
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
X-List-Received-Date: Fri, 09 Nov 2012 17:23:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E96167235DCIRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E96167235DCIRSMSX104gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

ADT installs by default not only the toolchain, but also the sysroot (ADT h=
ave to be configured and installed by matching your target architecture). I=
t asks you where to install the tooclhain, but the sysroot is installed by =
default in this location: YOCTOADT_TARGET_SYSROOT_LOC_arm=3D"$HOME/test-yoc=
to/arm".
That parameter can be found in adt-installer/adt_installer.conf.

Basically, to deploy an app to your target using Eclipse, you have to speci=
fy 3 parameters:
 "Toolchain Root Location", "Sysroot location" and configure the Target opt=
ions.

Use the "Toolchain Root Location" as location where you have installed the =
ADT, and the Sysroot Location as specified in the adt_installer.conf. ADT n=
eeds the first two params in order to build you app locally.

"runqemu-extract-sdk" is used to extract the qemu tarball that can be used =
as sysroot location. More details about the ADT tools are found at the same=
 location: http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.h=
tml.

Regards,
--
Alexandru Georgescu

From: Sean Liming [mailto:sean.liming@annabooks.com]
Sent: Friday, November 09, 2012 18:38
To: Georgescu, Alexandru C; yocto@yoctoproject.org
Subject: RE: [yocto] Cannot Compile Application in Eclipse IDE Juno


Do I have to use Qemu? Can I use my target's rootfs?

If I can use my target's rootfs, how do I extract the SDK? runqemu-extract-=
sdk?

Regards,

Sean Liming
Owner
Annabooks
Tel: 714-970-7523 / Cell: 858-774-3176

From: Georgescu, Alexandru C [mailto:alexandru.c.georgescu@intel.com]<mailt=
o:[mailto:alexandru.c.georgescu@intel.com]>
Sent: Friday, November 09, 2012 8:21 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Cc: Sean Liming
Subject: RE: [yocto] Cannot Compile Application in Eclipse IDE Juno

Hi Sean,
There may be a problem with your sysroot setup. Please make sure you have s=
et it correctly by following the tutorial from here: http://www.yoctoprojec=
t.org/docs/current/adt-manual/adt-manual.html#extracting-the-root-filesyste=
m

Regards,
--
Alexandru Georgescu

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Sean Liming
Sent: Friday, November 09, 2012 08:37
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] Cannot Compile Application in Eclipse IDE Juno


Yocto 1.3 Danny
Target: n450 Black Sand
Eclipse: Juno C/C++ Developers

After going through the steps to setup the ADT and Eclipse plugin, I am try=
ing to compile the Hello World application based on the Hello World ANSI C =
Autotools Project type. I think I have the ADT Preference set correctly. It=
 is not complaining about a missing tool chain.

Compiling results in errors:

Compiler cannot create executable in /home/sean/workspace/HelloADT - Config=
uration problem
Make *** No rules to make target 'all' - C/C++ problem

What am I missing?

Regards,

Sean


--_000_1FFB62CE8AEB0D4298B51122D8903E96167235DCIRSMSX104gercor_
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
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">ADT installs by defaul=
t not only the toolchain, but also the sysroot (ADT have to be configured a=
nd installed by matching your target architecture). It asks you where to in=
stall the tooclhain, but the sysroot
 is installed by default in this location: YOCTOADT_TARGET_SYSROOT_LOC_arm=
=3D&quot;$HOME/test-yocto/arm&quot;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">That parameter can be =
found in adt-installer/adt_installer.conf.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Basically, to deploy a=
n app to your target using Eclipse, you have to specify 3 parameters:
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"color:#1F4=
97D">&nbsp;&#8220;Toolchain Root Location&#8221;, &#8220;Sysroot location&#=
8221; and configure the Target options.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Use the &#8220;Toolcha=
in Root Location&#8221; as location where you have installed the ADT, and t=
he Sysroot Location as specified in the adt_installer.conf. ADT needs the f=
irst two params in order to build you app locally.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&#8220;runqemu-extract=
-sdk&#8221; is used to extract the qemu tarball that can be used as sysroot=
 location. More details about the ADT tools are found at the same location:
</span><a href=3D"http://www.yoctoproject.org/docs/current/adt-manual/adt-m=
anual.html">http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.=
html</a>.<span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Regards,<o:p></o:p></s=
pan></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">--<=
o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Ale=
xandru Georgescu<o:p></o:p></span></b></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Sean Lim=
ing [mailto:sean.liming@annabooks.com]
<br>
<b>Sent:</b> Friday, November 09, 2012 18:38<br>
<b>To:</b> Georgescu, Alexandru C; yocto@yoctoproject.org<br>
<b>Subject:</b> RE: [yocto] Cannot Compile Application in Eclipse IDE Juno<=
o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Do I have to use Qemu?=
 Can I use my target&#8217;s rootfs?
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">If I can use my target=
&#8217;s rootfs, how do I extract the SDK? runqemu-extract-sdk?<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Regards,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Sean Liming<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Owner<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Annabooks<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Tel: 714-970-7523 / Ce=
ll: 858-774-3176<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Georgesc=
u, Alexandru C
<a href=3D"mailto:[mailto:alexandru.c.georgescu@intel.com]">[mailto:alexand=
ru.c.georgescu@intel.com]</a>
<br>
<b>Sent:</b> Friday, November 09, 2012 8:21 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Cc:</b> Sean Liming<br>
<b>Subject:</b> RE: [yocto] Cannot Compile Application in Eclipse IDE Juno<=
o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi Sean,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">There may be a problem=
 with your sysroot setup. Please make sure you have set it correctly by fol=
lowing the tutorial from here:
<a href=3D"http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.h=
tml#extracting-the-root-filesystem">
http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#extract=
ing-the-root-filesystem</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Regards,<o:p></o:p></s=
pan></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">--<=
o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Ale=
xandru Georgescu<o:p></o:p></span></b></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoprojec=
t.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-b=
ounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Sean Liming<br>
<b>Sent:</b> Friday, November 09, 2012 08:37<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject:</b> [yocto] Cannot Compile Application in Eclipse IDE Juno<o:p>=
</o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Yocto 1.3 Danny<o:p></o:p></p>
<p class=3D"MsoNormal">Target: n450 Black Sand<o:p></o:p></p>
<p class=3D"MsoNormal">Eclipse: Juno C/C&#43;&#43; Developers<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After going through the steps to setup the ADT and E=
clipse plugin, I am trying to compile the Hello World application based on =
the Hello World ANSI C Autotools Project type. I think I have the ADT Prefe=
rence set correctly. It is not complaining
 about a missing tool chain.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Compiling results in errors:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Compiler cannot create executable in /home/sean/work=
space/HelloADT &#8211; Configuration problem<o:p></o:p></p>
<p class=3D"MsoNormal">Make *** No rules to make target &#8216;all&#8217; &=
#8211; C/C&#43;&#43; problem<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What am I missing?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sean <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E96167235DCIRSMSX104gercor_--
