Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A4EB14C800AC
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 05:37:59 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Mar 2011 03:37:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,224,1299484800"; 
	d="scan'208,217";a="899882567"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 22 Mar 2011 03:37:47 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 22 Mar 2011 18:35:33 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 22 Mar 2011 18:35:32 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "Li, Simon" <simon.li@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 22 Mar 2011 18:35:30 +0800
Thread-Topic: where is the Sysroot Location?
Thread-Index: AcvoQ/pCxCJKunNSSreJbCRFgYbahgAOGEag
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F22969434D8@shsmsx502.ccr.corp.intel.com>
References: <23F1A04A50711046AF124F3D4D1EB2ECB8ACADB0@pgsmsx507.gar.corp.intel.com>
In-Reply-To: <23F1A04A50711046AF124F3D4D1EB2ECB8ACADB0@pgsmsx507.gar.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
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
X-List-Received-Date: Tue, 22 Mar 2011 10:38:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C10D3FB0CD45994C8A51FEC1227CE22F22969434D8shsmsx502ccrc_"

--_000_C10D3FB0CD45994C8A51FEC1227CE22F22969434D8shsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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




--_000_C10D3FB0CD45994C8A51FEC1227CE22F22969434D8shsmsx502ccrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
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
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
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
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
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

</body>

</html>

--_000_C10D3FB0CD45994C8A51FEC1227CE22F22969434D8shsmsx502ccrc_--
