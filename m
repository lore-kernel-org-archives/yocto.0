Return-Path: <meenakumari.s@hcl.com>
Received: from GWS05.hcl.com (gws05.avitas.hcl.com [203.105.185.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC185E00B93
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 23:59:03 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.97,739,1389724200"; d="scan'208,217";a="58727984"
Received: from unknown (HELO NDA-CORP-HT02.CORP.HCL.IN) ([10.248.64.34])
	by GWS05.hcl.com with ESMTP/TLS/AES128-SHA; 27 Mar 2014 12:27:07 +0530
Received: from NDA-HCLT-CSHT01.HCLT.CORP.HCL.IN (10.98.132.26) by
	NDA-CORP-HT02.CORP.HCL.IN (10.248.64.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 27 Mar 2014 12:28:54 +0530
Received: from NDA-HCLT-MBS02.HCLT.CORP.HCL.IN ([10.98.132.17]) by
	NDA-HCLT-CSHT01.HCLT.CORP.HCL.IN ([10.98.132.26]) with mapi id
	14.03.0123.003; Thu, 27 Mar 2014 12:28:54 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
Thread-Index: AQHPSYlGWF8OgI4BY0eUG8fpk2Rq8Q==
Date: Thu, 27 Mar 2014 06:58:53 +0000
Message-ID: <E4938C0D959B3445943720B88F072134156124E7@NDA-HCLT-MBS02.hclt.corp.hcl.in>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.96.4.252]
MIME-Version: 1.0
Subject: Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
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
X-List-Received-Date: Thu, 27 Mar 2014 06:59:12 -0000
Content-Language: en-US
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">
<!--
p
	{margin-top:0;
	margin-bottom:0}
p
	{margin-top:0;
	margin-bottom:0}
p
	{margin-top:0;
	margin-bottom:0}
p
	{margin-top:0;
	margin-bottom:0}
-->
P {margin-top:0;margin-bottom:0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">Hi All,<br>
<br>
We are having some problem regarding gstreamer Vaapi Plugin would like to d=
iscuss.<br>
<br>
We are using gstreamer0.10.36 for our 1080p mp4 playback and we have used f=
ollowing gstraemer pipeline.<br>
filesrc-&gt; decodebin-&gt;queue-&gt;ffmpegcolorspace-&gt;xvimagesink<br>
<br>
Here we are facing lot of buffer drop and video is displaying like slow mot=
ion so, we think that may be xvimagesink is not using the video acceleratio=
n provided by Intel, hence we moved to vaapivideosink. However we found the=
 following error while using vaapivideosink<br>
<br>
libva: VA-API version 0.32.0<br>
libva: va_getDriverName() returns 0<br>
libva: Trying to open /usr/lib/dri/i965_drv_video.so<br>
libva: va_openDriver() returns -1<br>
vaInitialize failed with error code -1 (unknown libva error),exit<br>
<br>
Even the same error we are getting while doing 'vainfo' also.<br>
<br>
We have gone through some INTERNET search, but did't find useful informatio=
ns.<br>
<br>
Basically we have 2 quires<br>
1. Is it possible to play 1080p mp4 playback with software decoders smoothl=
y ? How we will fix buffer drop issue ?<br>
2. How we will use vaapi sink in other case (solving the va_openDriver() er=
ror)? Do we need to rebuild some other vaapi versions to make it work ?<br>
<br>
<br>
Our platform information:<br>
a. Intel-E3800 Baytrail<br>
b. Yocto Dora build<br>
c. Base Kernel Linux Baytrail32 3.8.0-yocto standard<br>
<br>
Thanks in advance.<br>
<br>
Thanks &amp; Regards,<br>
Meena<br>
<br>
<br>
</div>
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


