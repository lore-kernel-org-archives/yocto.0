Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 70A704C802F2
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2011 04:53:33 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Mar 2011 02:53:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,230,1299484800"; 
	d="jpg'145?scan'145,208,217,145";a="900410315"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 23 Mar 2011 02:53:31 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 23 Mar 2011 17:52:46 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 23 Mar 2011 17:52:45 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "Li, Simon" <simon.li@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 23 Mar 2011 17:52:44 +0800
Thread-Topic: where is the Sysroot Location?
Thread-Index: AcvoQ/pCxCJKunNSSreJbCRFgYbahgAOGEagAC3Zt8AAArvl8A==
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F22A734AB1D@shsmsx502.ccr.corp.intel.com>
References: <23F1A04A50711046AF124F3D4D1EB2ECB8ACADB0@pgsmsx507.gar.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F22969434D8@shsmsx502.ccr.corp.intel.com>
	<23F1A04A50711046AF124F3D4D1EB2ECC073E7E0@pgsmsx507.gar.corp.intel.com>
In-Reply-To: <23F1A04A50711046AF124F3D4D1EB2ECC073E7E0@pgsmsx507.gar.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: where is the Sysroot Location?
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
X-List-Received-Date: Wed, 23 Mar 2011 09:53:33 -0000
X-Groupsio-MsgNum: 1180
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_C10D3FB0CD45994C8A51FEC1227CE22F22A734AB1Dshsmsx502ccrc_";
	type="multipart/alternative"

--_004_C10D3FB0CD45994C8A51FEC1227CE22F22A734AB1Dshsmsx502ccrc_
Content-Type: multipart/alternative;
	boundary="_000_C10D3FB0CD45994C8A51FEC1227CE22F22A734AB1Dshsmsx502ccrc_"

--_000_C10D3FB0CD45994C8A51FEC1227CE22F22A734AB1Dshsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Simon,

Since you have run "poky-extract-sdk", I assume you already had the rootfs.=
 The poky-extract-sdk is meant to extract the rootfs from a tarball to a us=
er specified directory, which should be specified  as the sysroot in the pl=
ug-in.

To build a rootfs, you may want to run "bitbake poky-image-sdk"(for yocto 0=
.9) or "bitbake poky-image-sato-sdk" (for current git master), and use the =
poky-extract-sdk to extract the corresponding rootfs located in ${TMPDIR}/d=
eploy/images.

Best Regards,
Lianhao

From: Li, Simon
Sent: Wednesday, March 23, 2011 5:27 PM
To: Lu, Lianhao; yocto@yoctoproject.org
Subject: RE: where is the Sysroot Location?

Hi, Lianhao,
Thanks for your replying.
Actually, I already did "bitbake meta-ide-support".
And I use poky-extract-sdk to extract the pseudo.
However, when I clicked Run->External Tools->qemu_i586-poky-linux.
After kernel booting up , I got kernel panic because kernel panic - not syn=
cing, init not Found.
According to the status, I think I setup the wrong Sysroot location.
As the screenshot,
[cid:image001.jpg@01CBE981.C00001B0]

Since I did not find any full root file system after finishing the build, c=
ould you tell me where I can make the full root file system?
Thanks very much.

Best Regards,

Simon
From: Lu, Lianhao
Sent: Tuesday, March 22, 2011 6:36 PM
To: Li, Simon; yocto@yoctoproject.org
Subject: RE: where is the Sysroot Location?

Hi Simon,

Before using the poky tree mode, you need to run "bitbake meta-ide-support"=
 within the poky tree in a terminal. The eclipse plug-in needs the output o=
f that to determine several configuration options for cross compilation.

Best Regards,
Lianhao

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Li, Simon
Sent: Tuesday, March 22, 2011 11:48 AM
To: yocto@yoctoproject.org
Subject: [yocto] where is the Sysroot Location?

To whom may concern,
I tried configure the Yocto SDK.
Firstly, I need to config cross compiler options.
I choose Pocky Tree Mode.
I always get the error message, said, Yockto Configuration Error!
Specification Poky Tree Toolchain Root does not contain any toolchain yet.
Please run "bitbake meta-ide-support" to build the toolchain."

However, I assigned the toolchain directory which gcc resides, I still get =
this prompt message.
Could anyone please tell me what I have done wrong.
Thanks.

Simon Li
Intel Software & Service Group

B1 #205 Tun-Hwa North Rd, Taipei, Taiwan

Desk

+886-2-2514-4287

Mobile

+886-987-303-523

E-Mail

simon.li@intel.com<mailto:gorden.nieh@intel.com>




--_000_C10D3FB0CD45994C8A51FEC1227CE22F22A734AB1Dshsmsx502ccrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Cambria;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
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
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Cambria","serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Cambria","serif";}
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
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"2050" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DZH-CN link=3Dblue vlink=3Dpurple style=3D'text-justify-trim:pu=
nctuation'>

<div class=3DWordSection1>

<div>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>Hi Simon,<o:p></o:p><=
/span></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'><o:p>&nbsp;</o:p></sp=
an></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>Since you have run &#=
8220;poky-extract-sdk&#8221;,
I assume you already had the rootfs. The poky-extract-sdk is meant to extra=
ct
the rootfs from a tarball to a user specified directory, which should be
specified &nbsp;as the sysroot in the plug-in.<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'><o:p>&nbsp;</o:p></sp=
an></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>To build a rootfs, yo=
u may
want to run &#8220;bitbake poky-image-sdk&#8221;(for yocto 0.9) or &#8220;b=
itbake
poky-image-sato-sdk&#8221; (for current git master), and use the poky-extra=
ct-sdk
to extract the corresponding rootfs located in ${TMPDIR}/deploy/images.<o:p=
></o:p></span></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'><o:p>&nbsp;</o:p></sp=
an></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>Best Regards,<o:p></o=
:p></span></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>Lianhao<o:p></o:p></s=
pan></p>

</div>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F=
497D'><o:p>&nbsp;</o:p></span></p>

<div style=3D'border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt'>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm'>

<p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Tahoma","sans-serif"'>From:</span></b><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;
font-family:"Tahoma","sans-serif"'> Li, Simon <br>
<b>Sent:</b> Wednesday, March 23, 2011 5:27 PM<br>
<b>To:</b> Lu, Lianhao; yocto@yoctoproject.org<br>
<b>Subject:</b> RE: where is the Sysroot Location?<o:p></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Hi, Lianhao=
,<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Thanks for =
your
replying.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Actually, I=
 already
did &#8220;bitbake meta-ide-support&#8221;.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>And I use
poky-extract-sdk to extract the pseudo. <o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>However, wh=
en I
clicked Run-&gt;External Tools-&gt;qemu_i586-poky-linux.<o:p></o:p></span><=
/p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>After kerne=
l booting
up , I got kernel panic because kernel panic &#8211; not syncing, init not
Found.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>According t=
o the
status, I think I setup the wrong Sysroot location.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>As the scre=
enshot,<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'><img width=
=3D627
height=3D336 id=3D"Picture_x0020_3" src=3D"cid:image001.jpg@01CBE981.C00001=
B0"
alt=3DScreenshot.png></span><span lang=3DEN-US style=3D'color:#1F497D'><o:p=
></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;=
</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Since I did=
 not find
any full root file system after finishing the build, could you tell me wher=
e I
can make the full root file system?<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Thanks very=
 much.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;=
</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Best Regard=
s,<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;=
</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Simon<o:p><=
/o:p></span></p>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm'>

<p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Tahoma","sans-serif"'>From:</span></b><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;
font-family:"Tahoma","sans-serif"'> Lu, Lianhao <br>
<b>Sent:</b> Tuesday, March 22, 2011 6:36 PM<br>
<b>To:</b> Li, Simon; yocto@yoctoproject.org<br>
<b>Subject:</b> RE: where is the Sysroot Location?<o:p></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<div>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>Hi Simon,<o:p></o:p><=
/span></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'><o:p>&nbsp;</o:p></sp=
an></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>Before using the poky=
 tree
mode, you need to run &#8220;bitbake meta-ide-support&#8221; within the pok=
y
tree in a terminal. The eclipse plug-in needs the output of that to determi=
ne
several configuration options for cross compilation.<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'><o:p>&nbsp;</o:p></sp=
an></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>Best Regards,<o:p></o=
:p></span></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>Lianhao<o:p></o:p></s=
pan></p>

</div>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F=
497D'><o:p>&nbsp;</o:p></span></p>

<div style=3D'border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt'>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm'>

<p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Tahoma","sans-serif"'>From:</span></b><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;
font-family:"Tahoma","sans-serif"'> yocto-bounces@yoctoproject.org
[mailto:yocto-bounces@yoctoproject.org] <b>On Behalf Of </b>Li, Simon<br>
<b>Sent:</b> Tuesday, March 22, 2011 11:48 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] where is the Sysroot Location?<o:p></o:p></span></p=
>

</div>

</div>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>To whom may concern,<o:p></o:p></sp=
an></p>

<p class=3DMsoNormal><span lang=3DEN-US>I tried configure the Yocto SDK.<o:=
p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Firstly, I need to config cross com=
piler
options.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I choose Pocky Tree Mode. <o:p></o:=
p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I always get the error message, sai=
d,
Yockto Configuration Error!<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Specification Poky Tree Toolchain R=
oot does
not contain any toolchain yet.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Please run &#8220;bitbake
meta-ide-support&#8221; to build the toolchain.&#8221;<o:p></o:p></span></p=
>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>However, I assigned the toolchain d=
irectory
which gcc resides, I still get this prompt message.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Could anyone please tell me what I =
have
done wrong.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Thanks.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Verdana","san=
s-serif";
color:blue'>Simon Li<o:p></o:p></span></p>

<table class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0
 style=3D'border-collapse:collapse'>
 <tr>
  <td width=3D276 colspan=3D2 valign=3Dtop style=3D'width:207.0pt;padding:0=
cm 5.4pt 0cm 5.4pt'>
  <p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;
  line-height:10.0pt;layout-grid-mode:char'><span lang=3DEN-US style=3D'fon=
t-size:
  10.0pt;font-family:"Arial","sans-serif";color:blue'>Intel Software
  &amp;&nbsp;Service Group<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width=3D276 colspan=3D2 valign=3Dtop style=3D'width:207.0pt;padding:0=
cm 5.4pt 0cm 5.4pt'>
  <p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;
  line-height:10.0pt;layout-grid-mode:char'><span lang=3DEN-US style=3D'fon=
t-size:
  10.0pt;font-family:"Arial","sans-serif";color:blue'>B1 #205 Tun-Hwa North=
 Rd,
  Taipei, Taiwan<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width=3D55 valign=3Dtop style=3D'width:41.55pt;padding:0cm 5.4pt 0cm =
5.4pt'>
  <p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;
  line-height:10.0pt;layout-grid-mode:char'><span lang=3DEN-US style=3D'fon=
t-size:
  10.0pt;font-family:"Arial","sans-serif";color:blue'>Desk<o:p></o:p></span=
></p>
  </td>
  <td width=3D221 valign=3Dtop style=3D'width:165.45pt;padding:0cm 5.4pt 0c=
m 5.4pt'>
  <p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;
  line-height:10.0pt;layout-grid-mode:char'><span lang=3DSV style=3D'font-s=
ize:
  10.0pt;font-family:"Arial","sans-serif";color:blue'>+886-2-2514-4287</spa=
n><span
  lang=3DEN-US style=3D'font-family:"Times New Roman","serif"'><o:p></o:p><=
/span></p>
  </td>
 </tr>
 <tr>
  <td width=3D55 valign=3Dtop style=3D'width:41.55pt;padding:0cm 5.4pt 0cm =
5.4pt'>
  <p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;
  line-height:10.0pt;layout-grid-mode:char'><span lang=3DEN-US style=3D'fon=
t-size:
  10.0pt;font-family:"Arial","sans-serif";color:blue'>Mobile<o:p></o:p></sp=
an></p>
  </td>
  <td width=3D221 valign=3Dtop style=3D'width:165.45pt;padding:0cm 5.4pt 0c=
m 5.4pt'>
  <p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;
  line-height:10.0pt;layout-grid-mode:char'><span lang=3DSV style=3D'font-s=
ize:
  10.0pt;font-family:"Arial","sans-serif";color:blue'>+886-987-303-523</spa=
n><span
  lang=3DEN-US style=3D'font-family:"Times New Roman","serif"'><o:p></o:p><=
/span></p>
  </td>
 </tr>
 <tr>
  <td width=3D55 valign=3Dtop style=3D'width:41.55pt;padding:0cm 5.4pt 0cm =
5.4pt'>
  <p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;
  line-height:10.0pt;layout-grid-mode:char'><span lang=3DEN-US style=3D'fon=
t-size:
  10.0pt;font-family:"Arial","sans-serif";color:blue'>E-Mail<o:p></o:p></sp=
an></p>
  </td>
  <td width=3D221 valign=3Dtop style=3D'width:165.45pt;padding:0cm 5.4pt 0c=
m 5.4pt'>
  <p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;
  layout-grid-mode:char'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:
  "Times New Roman","serif"'><a href=3D"mailto:gorden.nieh@intel.com">simon=
.li@intel.com</a></span><span
  lang=3DEN-US style=3D'font-family:"Times New Roman","serif"'><o:p></o:p><=
/span></p>
  </td>
 </tr>
</table>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

</div>

</div>

</div>

</body>

</html>

--_000_C10D3FB0CD45994C8A51FEC1227CE22F22A734AB1Dshsmsx502ccrc_--

--_004_C10D3FB0CD45994C8A51FEC1227CE22F22A734AB1Dshsmsx502ccrc_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=28064;
	creation-date="Wed, 23 Mar 2011 17:52:44 GMT";
	modification-date="Wed, 23 Mar 2011 17:52:44 GMT"
Content-ID: <image001.jpg@01CBE981.C00001B0>
Content-Transfer-Encoding: base64

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
/wDdd7F2quqYl5MVYot0xNMO9ERet89HT/2sP+Nv7KRVjct0NNFHFK6RrmsAIzZOkBOEWTetk8oo
O7etNns9veLOXvjwC91KqzhFk3rZPKKcIsm9bJ5RQWaKs4RZN62TyinCLJvWyeUUFmirOEWTetk8
orDt0uSmWxTSC/snILRFVcJclEXz0nlOWeEuSuuk8pyC0RVfCXJXXSeU5OEuSuuk8pyC0RVfCXJX
XSeU5OEuSuuk8pyC0RVfCXJXXSeU5OEuSuuk8pyC0RVfCXJXXSeU5OEuSuuk8pyC0RVfCXJXXSeU
5OEuSuuk8pyC0RVfCXJXXSeU5OEuSuuk8pyC0RVfCXJXXSeU5OEuSuuk8pyC0RVfCXJXXSeU5OEu
Suuk8pyC0RVfCXJXXSeU5OEuSuuk8pyC0RVfCXJXXSeU5OEuSuuk8pyC0RVfCXJXXSeU5OEuSuuk
8pyC0RVfCXJXXSeU5OEuSuuk8pyC0RVfCXJXXSeU5OEuSuuk8pyC0RVfCXJXXSeU5OEuSuuk8pyC
0RVfCXJXXSeU5OEuSuuk8pyC0RVfCXJXXSeU5OEuSuuk8pyC0RVfCXJXXSeU5OEuSuuk8pyC0RVf
CXJXXSeU5OEuSuuk8pyC0RVfCXJXXSeU5OEuSuuk8pyC0RVfCXJXXSeU5OEuSuuk8pyC0RVfCXJX
XSeU5OEuSuuk8pyC0RVfCXJXXSeU5OEuSuuk8pyC0RVfCXJXXSeU5OEuSuuk8pyC0RVfCXJXXSeU
5OEuSuuk8pyCyljbNE+J17OFjZcByS8n+5Hl/wArThLkrrpPKcnCXJXXSeU5Bt6Id94b5f8AKeiH
feG+X/K14S5K66TynJwlyV10nlOQbeiXfeG+X/KeiXfeG+X/ACteEuSuuk8pycJclddJ5TkG3ol3
3hvl/wAp6Id94b5f8rXhLkrrpPKcnCXJXXSeU5Bt6Jd94b5f8qamyfmJhI6XGW3wgNsAufhLkrrp
PKcnCXJXXSeU5BLlLJLMoPZJnTG9ow3w3BC4eDI++fpfyunhLkrrpPKcnCXJXXSeU5c6rVFU5zDr
TfuURlTP0c3BgffP0v5TgwPvn6X8rp4S5K66TynJwlyV10nlOU3Nvg16m9qc3BgffP0v5TgwPvn6
X8rp4S5K66TynJwlyV10nlOTc2+B6m7qc3BgffP0v5TgwPvn6X8rp4S5K66TynJwlyV10nlOTc2+
B6m9qc3Bm3/xn6X8q3o6VlFTNgY4uAJJceUnWuHhLkrrpPKcnCXJXXSeU5apt00/WIYru11xlVOa
0RVoy9k5wuJJNPsyi25v/9k=

--_004_C10D3FB0CD45994C8A51FEC1227CE22F22A734AB1Dshsmsx502ccrc_--
