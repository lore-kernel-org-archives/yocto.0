Return-Path: <meenakumari.s@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47F24E00BD2; Tue,  6 May 2014 07:58:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=HTML_MESSAGE,MIME_HTML_ONLY
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.1 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 May 2014 07:58:44 PDT
Received: from GWS06.hcl.com (gws06.hcl.com [203.105.185.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40B31E006EC
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 07:58:43 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.97,997,1389724200"; d="scan'208,217";a="68543645"
Received: from unknown (HELO NDA-CORP-HT03.CORP.HCL.IN) ([10.248.64.35])
	by GWS06.hcl.com with ESMTP/TLS/AES128-SHA; 06 May 2014 20:21:31 +0530
Received: from NDA-HCLT-CSHT02.HCLT.CORP.HCL.IN (10.98.132.27) by
	NDA-CORP-HT03.CORP.HCL.IN (10.248.64.35) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 6 May 2014 20:27:33 +0530
Received: from NDA-HCLT-MBS02.HCLT.CORP.HCL.IN ([10.98.132.17]) by
	NDA-HCLT-CSHT02.HCLT.CORP.HCL.IN ([10.98.132.27]) with mapi id
	14.03.0123.003; Tue, 6 May 2014 20:27:32 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Beauchesne, Gwenole"
	<gwenole.beauchesne@intel.com>
Thread-Topic: Third Party Components Integration in Yocto
Thread-Index: Ac9pOpAuRv9q6K+2TDy/G0K3Sq4Nkw==
Date: Tue, 6 May 2014 14:57:32 +0000
Message-ID: <E4938C0D959B3445943720B88F0721341562A2D7@NDA-HCLT-MBS02.hclt.corp.hcl.in>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.96.4.252]
MIME-Version: 1.0
Subject: Third Party Components Integration in Yocto
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
X-List-Received-Date: Tue, 06 May 2014 14:58:48 -0000
Content-Language: en-US
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" id=3D"owaParaStyle"></style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hi,
<div><br>
</div>
<div>To add 3rd party components in yocto we created bb file and modified l=
ocal.conf file.</div>
<div>After a yocto build, 3rd party component executing the binaries and rp=
m packages but executed binaries are not loading inside the rpm packages, r=
pm package is empty.</div>
<div><br>
</div>
<div>Used below function in bb file.&nbsp;</div>
<div>
<pre class=3D"line-pre" style=3D"font-family: Consolas, 'Liberation Mono', =
Courier, monospace; font-size: 12px; line-height: 21.600000381469727px; bac=
kground-color: rgb(248, 248, 255); margin-top: 0px !important; margin-botto=
m: 0px !important; border: none !important; padding: 0px !important;"><div =
class=3D"line" id=3D"file-bb-example-bb-LC28"><span class=3D"nf" style=3D"c=
olor: rgb(153, 0, 0); font-weight: bold;">do_install</span> <span class=3D"=
p">()</span> <span class=3D"err" style=3D"color: rgb(166, 23, 23); backgrou=
nd-color: rgb(227, 210, 210);">{</span></div><div class=3D"line" id=3D"file=
-bb-example-bb-LC29">  <span class=3D"nv" style=3D"color: teal;">install</s=
pan> <span class=3D"o" style=3D"font-weight: bold;">-</span><span class=3D"=
nv" style=3D"color: teal;">d</span> <span class=3D"kt" style=3D"color: rgb(=
68, 85, 136); font-weight: bold;">$</span><span class=3D"err" style=3D"colo=
r: rgb(166, 23, 23); background-color: rgb(227, 210, 210);">{</span><span c=
lass=3D"nv" style=3D"color: teal;">D</span><span class=3D"err" style=3D"col=
or: rgb(166, 23, 23); background-color: rgb(227, 210, 210);">}${</span><spa=
n class=3D"nv" style=3D"color: teal;">bindir</span><span class=3D"err" styl=
e=3D"color: rgb(166, 23, 23); background-color: rgb(227, 210, 210);">}</spa=
n></div><div class=3D"line" id=3D"file-bb-example-bb-LC30">  <span class=3D=
"nv" style=3D"color: teal;">install</span> <span class=3D"o" style=3D"font-=
weight: bold;">-</span><span class=3D"nv" style=3D"color: teal;">m</span> <=
span class=3D"mi" style=3D"color: rgb(0, 153, 153);">0755</span> <span clas=
s=3D"nv" style=3D"color: teal;">bb</span><span class=3D"o" style=3D"font-we=
ight: bold;">-</span><span class=3D"nv" style=3D"color: teal;">example</spa=
n> <span class=3D"kt" style=3D"color: rgb(68, 85, 136); font-weight: bold;"=
>$</span><span class=3D"err" style=3D"color: rgb(166, 23, 23); background-c=
olor: rgb(227, 210, 210);">{</span><span class=3D"nv" style=3D"color: teal;=
">D</span><span class=3D"err" style=3D"color: rgb(166, 23, 23); background-=
color: rgb(227, 210, 210);">}${</span><span class=3D"nv" style=3D"color: te=
al;">bindir</span><span class=3D"err" style=3D"color: rgb(166, 23, 23); bac=
kground-color: rgb(227, 210, 210);">}</span></div><div class=3D"line" id=3D=
"file-bb-example-bb-LC31"><span class=3D"err" style=3D"color: rgb(166, 23, =
23); background-color: rgb(227, 210, 210);">}</span></div></pre>
<div><br>
</div>
<div>can anyone please suggest me how to move further.</div>
<div><br>
</div>
<div>Regards<br>
<div><font size=3D"2" face=3D"Tahoma">Meena</font></div>
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


