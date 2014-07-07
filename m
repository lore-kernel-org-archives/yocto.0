Return-Path: <b-sathishkumar@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E786FE0053E; Mon,  7 Jul 2014 00:45:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from GWS07.hcl.com (gws07.hcl.com [192.8.186.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 927C1E0030B
	for <yocto@yoctoproject.org>; Mon,  7 Jul 2014 00:45:46 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.01,616,1400005800"; d="scan'208,217";a="22661461"
Received: from unknown (HELO CHN-CORP-HT02.CORP.HCL.IN) ([10.249.2.34])
	by GWS07.hcl.com with ESMTP/TLS/AES128-SHA; 07 Jul 2014 13:05:34 +0530
Received: from CHN-HCLT-CSHT03.HCLT.CORP.HCL.IN (10.150.12.28) by
	CHN-CORP-HT02.CORP.HCL.IN (10.249.2.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 7 Jul 2014 13:15:40 +0530
Received: from CHN-HCLT-MBS08.HCLT.CORP.HCL.IN ([10.150.12.23]) by
	CHN-HCLT-CSHT03.HCLT.CORP.HCL.IN ([::1]) with mapi id 14.03.0123.003;
	Mon, 7 Jul 2014 13:15:37 +0530
From: "Sathish Kumar Balasubramaniam -ERS, HCL Tech" <b-sathishkumar@hcl.com>
To: Joshua Collins <joshua.collins@arcontia.se>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Recipe to copy precompiled binaries to root image
Thread-Index: Ac+XWTuZhtM2e9TiSw+uuOovjLCU1QCUoKFQ
Date: Mon, 7 Jul 2014 07:45:37 +0000
Message-ID: <5D833673AB94D9489A7F7F73E9E611C814ADC9E2@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
References: <EA5D4AA0E56AAB499D0E3B654C889FBFBC1D52@ex-mbx1-8.cloud.local>
In-Reply-To: <EA5D4AA0E56AAB499D0E3B654C889FBFBC1D52@ex-mbx1-8.cloud.local>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.150.5.114]
MIME-Version: 1.0
Subject: Re: Recipe to copy precompiled binaries to root image
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
X-List-Received-Date: Mon, 07 Jul 2014 07:45:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5D833673AB94D9489A7F7F73E9E611C814ADC9E2chnhcltmbs08HCL_"

--_000_5D833673AB94D9489A7F7F73E9E611C814ADC9E2chnhcltmbs08HCL_
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi Josh,

Try adding the following to your myrecipe.bb

FILES_${PN} +=3D "${libdir} /etc"
FILES_${PN}-dbg +=3D "${libdir}/.debug /etc/.debug"
FILES_SOLIBSDEV =3D ""

Note:
Try following if any issue
FILES_${PN}-dbg +=3D "${libdir}/.debug"

Regards,
B.Sathish Kumar

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Joshua Collins
Sent: Friday, July 04, 2014 1:08 PM
To: yocto@yoctoproject.org
Subject: [yocto] Recipe to copy precompiled binaries to root image

I have some precompiled libraries that I want to copy to my root image afte=
r it has been built. I am building the fsl-image-gui image.

I have created my own layer and recipe, with a file structure:

meta-mylayer ->
                meta-myrecipe ->
                                myrecipie ->
                                                myrecipe.bb
                                                files ->
                                                                myLib1.so
                                                                myLib2.so
                                                                myScript

I have added my layer to bblayers.conf and added IMAGE_INSTALL_append =3D "=
 myrecipe" to local.conf.

My recipe looks like this:

---------------------------------------------------------------------------=
----
DESCRIPTION =3D "Copies files to the image"
LICENSE =3D "CLOSED"
PN =3D 'arcontia'
PV =3D '0.0.1'

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
SRC_URI +=3D "file://myLib1.so  file://myLib2.so file://myScript <file:///\=
\myLib1.so=A0%20file:\myLib2.so%20file:\myScript%20> "

S =3D "${WORKDIR}"

do_install() {
  install -d ${D}${libdir}
  install -m 755 myLib1.so ${D}${libdir}
  install -m 755 myLib2.so ${D}${libdir}

  install -d ${D}/etc
  install -m 755 myScript ${D}/etc
}
---------------------------------------------------------------------------=
----

This does not copy the files to the image as I would expect. If I look at t=
he bitbake log, I see my recipe is run, but I obviously have not done the r=
ight thing in the recipe.

Can anyone tell me how I could fix this?

Cheers,
Josh


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

--_000_5D833673AB94D9489A7F7F73E9E611C814ADC9E2chnhcltmbs08HCL_
Content-Type: text/html; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi Josh,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Try adding the followi=
ng to your myrecipe.bb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">FILES_${PN} &#43;=3D &=
#8220;${libdir} /etc&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">FILES_${PN}-dbg &#43;=
=3D &#8220;${libdir}/.debug /etc/.debug&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">FILES_SOLIBSDEV =3D &q=
uot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Note:<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Try following if any i=
ssue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">FILES_${PN}-dbg &#43;=
=3D &#8220;${libdir}/.debug&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Regards,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">B.Sathish Kumar<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Joshua Collins<br>
<b>Sent:</b> Friday, July 04, 2014 1:08 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Recipe to copy precompiled binaries to root image<o=
:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">I have some precompiled librari=
es that I want to copy to my root image after it has been built. I am build=
ing the fsl-image-gui image.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">I have created my own layer and=
 recipe, with a file structure:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">meta-mylayer -&gt;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta-myrecipe -=
&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; myrecipie -&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; myrecipe.bb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; files -&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; myLib1.so<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; myLib2.so<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; myScript<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">I have added my layer to bblaye=
rs.conf and added IMAGE_INSTALL_append =3D &#8220; myrecipe&#8221; to local=
.conf.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">My recipe looks like this:<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">-------------------------------=
------------------------------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">DESCRIPTION =3D &quot;Copies fi=
les to the image&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">LICENSE =3D &quot;CLOSED&quot;<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">PN =3D 'arcontia'<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">PV =3D '0.0.1'<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">FILESEXTRAPATHS_prepend :=3D &q=
uot;${THISDIR}/files:&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">SRC_URI &#43;=3D &quot;<a href=
=3D"file:///\\myLib1.so&nbsp;%20file:\myLib2.so%20file:\myScript%20">file:/=
/myLib1.so&nbsp; file://myLib2.so file://myScript
</a>&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">S =3D &quot;${WORKDIR}&quot;<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">do_install() {<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">&nbsp; install -d ${D}${libdir}=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">&nbsp; install -m 755 myLib1.so=
 ${D}${libdir}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">&nbsp; install -m 755 myLib2.so=
 ${D}${libdir}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">&nbsp; install -d ${D}/etc<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">&nbsp; install -m 755 myScript =
${D}/etc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">-------------------------------=
------------------------------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">This does not copy the files to=
 the image as I would expect. If I look at the bitbake log, I see my recipe=
 is run, but I obviously have not done the right thing in the recipe.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">Can anyone tell me how I could =
fix this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">Cheers,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">Josh<o:p></o:p></span></p>
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

--_000_5D833673AB94D9489A7F7F73E9E611C814ADC9E2chnhcltmbs08HCL_--
