Return-Path: <meenakumari.s@hcl.com>
Received: from GWS05.hcl.com (gws05.avitas.hcl.com [203.105.185.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DE67E00CE3
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 00:59:16 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.97,840,1389724200"; d="scan'208,217";a="59792086"
Received: from unknown (HELO NDA-CORP-HT03.CORP.HCL.IN) ([10.248.64.35])
	by GWS05.hcl.com with ESMTP/TLS/AES128-SHA; 11 Apr 2014 13:26:54 +0530
Received: from NDA-HCLT-CSHT02.HCLT.CORP.HCL.IN (10.98.132.27) by
	NDA-CORP-HT03.CORP.HCL.IN (10.248.64.35) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 11 Apr 2014 13:29:10 +0530
Received: from NDA-HCLT-MBS02.HCLT.CORP.HCL.IN ([10.98.132.17]) by
	NDA-HCLT-CSHT02.HCLT.CORP.HCL.IN ([10.98.132.27]) with mapi id
	14.03.0123.003; Fri, 11 Apr 2014 13:29:09 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: "Beauchesne, Gwenole" <gwenole.beauchesne@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Help-Gstreamer Vaapi Plugin build Issue
Thread-Index: Ac9VV7lBTCnsngVgTK6z1W5/+nFn7wAA5sM6
Date: Fri, 11 Apr 2014 07:59:10 +0000
Message-ID: <E4938C0D959B3445943720B88F07213415617CEF@NDA-HCLT-MBS02.hclt.corp.hcl.in>
References: <97272D6808818244BD88BD72F19D658B03CAC75A@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
In-Reply-To: <97272D6808818244BD88BD72F19D658B03CAC75A@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.134.12]
MIME-Version: 1.0
Cc: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>
Subject: FW: Help-Gstreamer Vaapi Plugin build Issue
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
X-List-Received-Date: Fri, 11 Apr 2014 07:59:20 -0000
Content-Language: en-US
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style>
<!--
@font-face
	{font-family:Calibri}
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif"}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif"}
span.EmailStyle17
	{font-family:"Calibri","sans-serif";
	color:windowtext}
span.PlainTextChar
	{font-family:"Calibri","sans-serif"}
.MsoChpDefault
	{font-family:"Calibri","sans-serif"}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
-->
</style><style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin=
-bottom:0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1" lang=3D"EN-US" link=3D"blue" vlink=3D"purple=
">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;"><br>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<div></div>
<div>
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">Hi All,</p>
<p class=3D"MsoPlainText">&nbsp;</p>
<p class=3D"MsoPlainText">We are building following Gst packages(with same =
sequence) in Ubuntu 13.04</p>
<p class=3D"MsoPlainText">gstreamer-1.2.3</p>
<p class=3D"MsoPlainText">gst-plugins-base-1.2.3</p>
<p class=3D"MsoPlainText">gst-plugins-good-1.2.3</p>
<p class=3D"MsoPlainText">gst-plugins-bad-1.2.3</p>
<p class=3D"MsoPlainText">gst-plugins-ugly-1.2.3</p>
<p class=3D"MsoPlainText">gst-libav-1.2.3</p>
<p class=3D"MsoPlainText">libva-1.3.0</p>
<p class=3D"MsoPlainText">libva-intel-driver-1.3.0</p>
<p class=3D"MsoPlainText">gstreamer-vaapi-0.5.8</p>
<p class=3D"MsoPlainText">&nbsp;</p>
<p class=3D"MsoPlainText">Our objective is to build gst-1.2.3 with latest v=
aapi support. On the way we have installed all other dependencies.</p>
<p class=3D"MsoPlainText">However we are getting &quot;Error: No Renderer S=
elected&quot; while performing ./configure on gstreamer-vaapi-0.5.8</p>
<p class=3D"MsoPlainText"><span style=3D"color:black">&nbsp;</span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">Any suggestion will b=
e helpful.</span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">&nbsp;</span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">Regards,</span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">Meena<br>
</span></p>
</div>
</div>
</div>
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


