Return-Path: <meenakumari.s@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9897E007FE; Wed,  6 Aug 2014 23:05:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from GWS06.hcl.com (gws06.avitas.hcl.com [203.105.185.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 059A6E00543
	for <yocto@yoctoproject.org>; Wed,  6 Aug 2014 23:04:58 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.01,816,1400005800"; d="scan'208,217";a="80913143"
Received: from unknown (HELO NDA-CORP-HT02.CORP.HCL.IN) ([10.248.64.34])
	by GWS06.hcl.com with ESMTP/TLS/AES128-SHA; 07 Aug 2014 11:32:20 +0530
Received: from NDA-HCLT-CSHT02.HCLT.CORP.HCL.IN (10.98.132.27) by
	NDA-CORP-HT02.CORP.HCL.IN (10.248.64.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 7 Aug 2014 11:34:52 +0530
Received: from NDA-HCLT-MBS05.HCLT.CORP.HCL.IN ([10.98.132.20]) by
	NDA-HCLT-CSHT02.HCLT.CORP.HCL.IN ([10.98.132.27]) with mapi id
	14.03.0123.003; Thu, 7 Aug 2014 11:34:52 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Libva-wayland build in yocto
Thread-Index: Ac+xmHNgP9LtpNobRe+bLRwx0OcgpA==
Date: Thu, 7 Aug 2014 06:04:51 +0000
Message-ID: <E4938C0D959B3445943720B88F0721341564FC7F@NDA-HCLT-MBS05.hclt.corp.hcl.in>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.134.12]
MIME-Version: 1.0
Subject: Libva-wayland build in yocto
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
X-List-Received-Date: Thu, 07 Aug 2014 06:05:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E4938C0D959B3445943720B88F0721341564FC7FNDAHCLTMBS05hcl_"

--_000_E4938C0D959B3445943720B88F0721341564FC7FNDAHCLTMBS05hcl_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi.

I builded yocto Dora branch with lastest version of wayland and Weston.
 after this I am trying to build libva-intel-driver_1.2.2 enabling wayland =
 but  after executing  libva-intel-driver configur or autogen.sh it not sho=
wing wayland in configured list
"libva-intel-driver" && ./autogen.sh
"libva-intel-driver configured list"
"windowing system =3D=3D=3D drm,x11,egl,glx"

But not showing wayland.

I tried modifying libva_1.2.2 also but before this libva-intel-driver shoul=
d give supports

Can you please suggest me how to enable libva-wayland in libva-intel-driver.


Thanks in Advance.

Regards
Meena


::DISCLAIMER::
---------------------------------------------------------------------------=
-------------------------------------------------------------------------

The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only.
E-mail transmission is not guaranteed to be secure or error-free as informa=
tion could be intercepted, corrupted,
lost, destroyed, arrive late or incomplete, or may contain viruses in trans=
mission. The e mail and its contents
(with or without referred errors) shall therefore not attach any liability =
on the originator or HCL or its affiliates.
Views or opinions, if any, presented in this email are solely those of the =
author and may not necessarily reflect the
views or opinions of HCL or its affiliates. Any form of reproduction, disse=
mination, copying, disclosure, modification,
distribution and / or publication of this message without the prior written=
 consent of authorized representative of
HCL is strictly prohibited. If you have received this email in error please=
 delete it and notify the sender immediately.
Before opening any email and/or attachments, please check them for viruses =
and other defects.

---------------------------------------------------------------------------=
-------------------------------------------------------------------------

--_000_E4938C0D959B3445943720B88F0721341564FC7FNDAHCLTMBS05hcl_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
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
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"Section1">
<p class=3D"MsoNormal">Hi.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I builded yocto Dora branch with lastest version of =
wayland and Weston.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;after this I am trying to build libva-intel-dr=
iver_1.2.2 enabling wayland &nbsp;but &nbsp;after executing &nbsp;libva-int=
el-driver configur or autogen.sh it not showing wayland in configured list<=
o:p></o:p></p>
<p class=3D"MsoNormal">&#8220;libva-intel-driver&#8221; &amp;&amp; ./autoge=
n.sh<o:p></o:p></p>
<p class=3D"MsoNormal">&#8220;libva-intel-driver configured list&#8221;<o:p=
></o:p></p>
<p class=3D"MsoNormal">&#8220;windowing system =3D=3D=3D drm,x11,egl,glx&#8=
221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But not showing wayland.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tried modifying libva_1.2.2 also but before this l=
ibva-intel-driver should give supports<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can you please suggest me how to enable libva-waylan=
d in libva-intel-driver.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in Advance.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Meena<o:p></o:p></p>
</div>
<span style=3D"FONT-FAMILY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 7=
.5pt; mso-fareast-font-family: 'Times New Roman'">
<P style=3D"MARGIN: 0in 0in 0pt" class=3DMsoNormal><br><br><font style=3D"F=
ONT-FAMILY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 9px">::DISCLAIMER=
::<br>---------------------------------------------------------------------=
---------------------------------------------------------------------------=
----</font></P>
<P style=3D"MARGIN: 0in 0in 0pt" class=3DMsoNormal><font style=3D"FONT-FAMI=
LY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 11px">The contents of thi=
s e-mail and any attachment(s) are confidential and intended for the named =
recipient(s) only.<br>E-mail transmission is not guaranteed to be secure or=
 error-free as information could be intercepted, corrupted, <br>lost, destr=
oyed, arrive late or incomplete, or may contain viruses in transmission. Th=
e e mail and its contents <br>(with or without referred errors) shall there=
fore not attach any liability on the originator or HCL or its affiliates. <=
br>Views or opinions, if any, presented in this email are solely those of t=
he author and may not necessarily reflect the <br>views or opinions of HCL =
or its affiliates. Any form of reproduction, dissemination, copying, disclo=
sure, modification, <br>distribution and / or publication of this message w=
ithout the prior written consent of authorized representative of <br>HCL is=
 strictly prohibited. If you have received this email in error please delet=
e it and notify the sender immediately. <br>Before opening any email and/or=
 attachments, please check them for viruses and other defects.</font></P>
<P style=3D"MARGIN: 0in 0in 0pt" class=3DMsoNormal><font style=3D"FONT-FAMI=
LY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 11px">-------------------=
---------------------------------------------------------------------------=
------------------------------------------------------</font></span></P></b=
ody>
</html>

--_000_E4938C0D959B3445943720B88F0721341564FC7FNDAHCLTMBS05hcl_--
