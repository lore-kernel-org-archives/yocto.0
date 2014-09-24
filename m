Return-Path: <meenakumari.s@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AF8CE00786; Tue, 23 Sep 2014 23:45:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_HTML_ONLY autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
X-Greylist: delayed 74 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Sep 2014 23:45:38 PDT
Received: from GWS05.hcl.com (gws05.hcl.com [203.105.185.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55A4EE0034C
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 23:45:38 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,587,1406572200"; d="scan'208,217";a="75033325"
Received: from unknown (HELO NDA-CORP-HT03.CORP.HCL.IN) ([10.248.64.35])
	by GWS05.hcl.com with ESMTP/TLS/AES128-SHA; 24 Sep 2014 12:12:05 +0530
Received: from NDA-HCLT-CSHT03.HCLT.CORP.HCL.IN (10.98.132.28) by
	NDA-CORP-HT03.CORP.HCL.IN (10.248.64.35) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 24 Sep 2014 12:14:18 +0530
Received: from NDA-HCLT-MBS02.HCLT.CORP.HCL.IN ([10.98.132.17]) by
	NDA-HCLT-CSHT03.HCLT.CORP.HCL.IN ([10.98.132.28]) with mapi id
	14.03.0123.003; Wed, 24 Sep 2014 12:14:18 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: "sreerenj.balachandran@intel.com" <sreerenj.balachandran@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Waylandsink creating new video window and not destroying
	previous open window.
Thread-Index: Ac/XwtDIHtCHtwwpQ5m8aeNA/5J1tg==
Date: Wed, 24 Sep 2014 06:44:18 +0000
Message-ID: <E4938C0D959B3445943720B88F07213426778F97@NDA-HCLT-MBS02.hclt.corp.hcl.in>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.96.4.252]
MIME-Version: 1.0
Subject: Waylandsink creating new video window and not destroying previous open window.
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
X-List-Received-Date: Wed, 24 Sep 2014 06:45:42 -0000
Content-Language: en-US
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;"><font size=3D"2">Hi All.<br>
<br>
I am using waylandsink element in my arm based target.<br>
<br>
Gstreamer constructed Video Pipe is working with waylandsink but every time=
 waylandsink is creating new video window also waylandsink is not destroyin=
g the existing video windows.<br>
<br>
Can you please help me to solve this issue.<br>
<br>
Thanks in Advance.<br>
<br>
REgards<br>
Meena<br>
<br>
<br>
<br>
</font>
<div>
<div>&nbsp;</div>
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


