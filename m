Return-Path: <b-sathishkumar@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67966E00558; Thu,  3 Jul 2014 10:11:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from GWS07.hcl.com (gws07.hcl.com [192.8.186.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BD9DE00404
	for <yocto@yoctoproject.org>; Thu,  3 Jul 2014 10:11:46 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.01,596,1400005800"; d="scan'208,217";a="22515283"
Received: from unknown (HELO CHN-CORP-HT01.CORP.HCL.IN) ([10.249.2.33])
	by GWS07.hcl.com with ESMTP/TLS/AES128-SHA; 03 Jul 2014 22:31:53 +0530
Received: from CHN-HCLT-CSHT07.HCLT.CORP.HCL.IN (10.150.12.32) by
	CHN-CORP-HT01.CORP.HCL.IN (10.249.2.33) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 3 Jul 2014 22:41:45 +0530
Received: from CHN-HCLT-MBS08.HCLT.CORP.HCL.IN ([10.150.12.23]) by
	CHN-HCLT-CSHT07.HCLT.CORP.HCL.IN ([::1]) with mapi id 14.03.0123.003;
	Thu, 3 Jul 2014 22:41:38 +0530
From: "Sathish Kumar Balasubramaniam -ERS, HCL Tech" <b-sathishkumar@hcl.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Adding a shared object file to rootfs
Thread-Index: Ac+W1zAzyf0BaDlPSBO4gCtNG27HnQACijig
Date: Thu, 3 Jul 2014 17:11:37 +0000
Message-ID: <5D833673AB94D9489A7F7F73E9E611C814ADC4C8@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.150.5.114]
MIME-Version: 1.0
Subject: Re: Adding a shared object file to rootfs
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
X-List-Received-Date: Thu, 03 Jul 2014 17:11:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5D833673AB94D9489A7F7F73E9E611C814ADC4C8chnhcltmbs08HCL_"

--_000_5D833673AB94D9489A7F7F73E9E611C814ADC4C8chnhcltmbs08HCL_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

I tried to add the abc.so using a linux-yocto_3.4.bbappend like the followi=
ng

SRC_URI +=3D "file://abc.so"

do_install_append() {
                install -d ${D}${base_libdir}
                install -m 0644 ${WORKDIR}/abc.so ${D}${base_libdir}/
}

FILES_${PN} +=3D "${base_libdir}/*.so"
FILES_SOLIBSDEV =3D ""


However still I am getting the following error

ERROR: QA Issue: linux-yocto: Files/directories were installed but not ship=
ped
  /lib/abc.so
  /lib/.debug
  /lib/.debug/abc.so
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa


Thanks,
Sathish

From: Sathish Kumar Balasubramaniam -ERS, HCL Tech
Sent: Thursday, July 03, 2014 9:29 PM
To: yocto@yoctoproject.org
Subject: Adding a shared object file to rootfs
Importance: High

Hi,

I have a file abc.so
How can I add just this abc.so to /lib in rootfs using a recipe ?

Regards,
Sathish


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

--_000_5D833673AB94D9489A7F7F73E9E611C814ADC4C8chnhcltmbs08HCL_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I tried to add the abc=
.so using a linux-yocto_3.4.bbappend like the following<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">SRC_URI &#43;=3D &#822=
0;file://abc.so&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">do_install_append() {<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; instal=
l -d ${D}${base_libdir}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; instal=
l -m 0644 ${WORKDIR}/abc.so ${D}${base_libdir}/<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">FILES_${PN} &#43;=3D &=
quot;${base_libdir}/*.so&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">FILES_SOLIBSDEV =3D &q=
uot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">However still I am get=
ting the following error<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">ERROR: QA Issue: linux=
-yocto: Files/directories were installed but not shipped<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; /lib/abc.so<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; /lib/.debug<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; /lib/.debug/abc=
.so<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">ERROR: QA run found fa=
tal errors. Please consider fixing them.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">ERROR: Function failed=
: do_package_qa<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Sathish<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Sathish =
Kumar Balasubramaniam -ERS, HCL Tech
<br>
<b>Sent:</b> Thursday, July 03, 2014 9:29 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Adding a shared object file to rootfs<br>
<b>Importance:</b> High<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a file abc.so<o:p></o:p></p>
<p class=3D"MsoNormal">How can I add just this abc.so to /lib in rootfs usi=
ng a recipe ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Sathish<o:p></o:p></p>
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

--_000_5D833673AB94D9489A7F7F73E9E611C814ADC4C8chnhcltmbs08HCL_--
