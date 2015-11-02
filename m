Return-Path: <ramatekd@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E0C4E009C5; Mon,  2 Nov 2015 15:36:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ramatekd[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EFC8E00804
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 15:36:21 -0800 (PST)
Received: by padda3 with SMTP id da3so18445667pad.1
	for <yocto@yoctoproject.org>; Mon, 02 Nov 2015 15:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:mime-version:content-type
	:thread-index:content-language;
	bh=C6v9fFtx7snkXHRRKVFGmiM/USqPr+6VXZ0ZiVt+fs4=;
	b=WZg4HuPhwVxgjfAtFqPdJx7XFUQDDwpzvTVXOBWbf/itaAmtW+WhsabJ5He4oaKE1r
	GmQRMiWzJ6heDrVZK/h/qWVLj/sI95BFLj2KBXb1MYVSCijtLtP2D2alKp5HnNgzFvoo
	6oyZ3uQ+sYICbJIsiUNsr6xxbIlaV0OsLjfhEmlzrNHGL7liuP8WlQZOAfcRvdwglkK0
	KAO9E85pxcpctyat4VVfj0t0KnI+29HV+iw0V5OuewH8RZb6G3oZAJr5PHEGkkP3PiTy
	kp73ZvkwrAVIP3OmbGim+lA2ElSXGRxmIyHtCSY8Ej2jeAYe1/TSsp2E4H7nsaZLtTnG
	Tivg==
X-Received: by 10.69.1.9 with SMTP id bc9mr28613295pbd.128.1446507381640;
	Mon, 02 Nov 2015 15:36:21 -0800 (PST)
Received: from DEVWS2 (203-206-220-195.perm.iinet.net.au. [203.206.220.195])
	by smtp.gmail.com with ESMTPSA id
	qv5sm25984252pbc.71.2015.11.02.15.36.18 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 02 Nov 2015 15:36:20 -0800 (PST)
From: "Roberto" <ramatekd@gmail.com>
To: <yocto@yoctoproject.org>
Date: Tue, 3 Nov 2015 10:36:20 +1100
Message-ID: <048a01d115c7$49d6e3b0$dd84ab10$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdEVxyEXY9A6N9qwRLetCPoag+MHrQ==
Subject: How to install only a subset of the packages listed in a packagegroup?
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
X-List-Received-Date: Mon, 02 Nov 2015 23:36:25 -0000
X-Groupsio-MsgNum: 27144
Content-Type: multipart/related;
	boundary="----=_NextPart_000_048B_01D11623.7D48E250"
Content-Language: en-au

------=_NextPart_000_048B_01D11623.7D48E250
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_048C_01D11623.7D48E250"

------=_NextPart_001_048C_01D11623.7D48E250
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I have written the following packagegroup called packagegroup-amatek.bb for
testing purposes :

 

# Copyright (C) 2012-2013 Freescale Semiconductor

# Released under the MIT license (see COPYING.MIT for the terms)

 

DESCRIPTION = "Example package group"

LICENSE = "MIT"

LIC_FILES_CHKSUM =
"file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \

 
file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

 

PR = "r5"

 

inherit packagegroup

 

PROVIDES = "${PACKAGES}"

PACKAGES += " \

   ${PN}-package1 \

    ${PN}-package2 \

"

 

 

RDEPENDS_${PN}-package1 = " \

   package1-depend1 \

"

 

RDEPENDS_${PN}-package2 = " \

   package2-depend2 \

"

 

 

PACKAGE_ARCH = "${MACHINE_ARCH}"

 

If in my custom image file (amatek-image) I include only
packagegroup-amatek-package1:

 

IMAGE_INSTALL = "packagegroup-amatek-package1"

 

I would expect that package2-depend2 is not installed because it is a
dependency of the package packagegroup-amatek-package2 which is not
installed.

 

However, bitbake amatek-image -g -u depexp shows that package2-depend2 is
installed as well:

 

 <http://i.stack.imgur.com/xRj1E.png> enter image description here

 

Is this the expected behaviour?

Regards,

Roberto


------=_NextPart_001_048C_01D11623.7D48E250
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><!--[if !mso]><style>v\:* =
{behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";
	mso-fareast-language:EN-AU;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-AU link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal =
style=3D'line-height:14.65pt;background:white'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'>Hi,<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'line-height:14.65pt;background:white'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'line-height:14.65pt;background:white'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'>I have written the following =
packagegroup called&nbsp;</span><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>packageg=
roup-amatek.bb</span><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'>&nbsp;for testing purposes =
:<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'line-height:14.65pt;background:white'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'># =
Copyright (C) 2012-2013 Freescale Semiconductor<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'># =
Released under the MIT license (see COPYING.MIT for the =
terms)<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>DESCRIPT=
ION =3D &quot;Example package group&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>LICENSE =
=3D &quot;MIT&quot;<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>LIC_FILE=
S_CHKSUM =3D =
&quot;file://${COREBASE}/LICENSE;md5=3D3f40d7994397109285ec7b81fdeb3b58 =
\<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=3DIT =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>file://$=
{COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420&quot;<=
o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span lang=3DIT =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>PR =3D =
&quot;r5&quot;<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>inherit =
packagegroup<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>PROVIDES=
 =3D &quot;${PACKAGES}&quot;<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>PACKAGES=
 +=3D &quot; \<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'> =
&nbsp;&nbsp;&nbsp;${PN}-package1 \<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>&nbsp;&n=
bsp;&nbsp; ${PN}-package2 \<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>&quot;<o=
:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>RDEPENDS=
_${PN}-package1 =3D &quot; \<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>&nbsp;&n=
bsp; package1-depend1 \<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>&quot;<o=
:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>RDEPENDS=
_${PN}-package2 =3D &quot; \<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>&nbsp;&n=
bsp; package2-depend2 \<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>&quot;<o=
:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal =
style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>PACKAGE_=
ARCH =3D &quot;${MACHINE_ARCH}&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'line-height:14.65pt;background:white'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'line-height:14.65pt;background:white'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'>If in my custom image file (</span><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>amatek-i=
mage</span><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'>) I include only&nbsp;</span><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>packageg=
roup-amatek-package1</span><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'>:<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'line-height:14.65pt;background:white'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>IMAGE_IN=
STALL =3D =
&quot;packagegroup-amatek-package1&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'background:#EEEEEE'><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal =
style=3D'line-height:14.65pt;background:white'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'>I would expect that&nbsp;</span><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>package2=
-depend2</span><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'>&nbsp;is not installed because it is a =
dependency of the package&nbsp;</span><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>packageg=
roup-amatek-package2</span><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'>&nbsp;which is not =
installed.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'line-height:14.65pt;background:white'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'line-height:14.65pt;background:white'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'>However,&nbsp;</span><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>bitbake =
amatek-image -g -u depexp</span><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'>&nbsp;shows that&nbsp;</span><span =
style=3D'font-size:10.0pt;font-family:Consolas;color:#222222;border:none =
windowtext =
1.0pt;padding:0cm;background:#EEEEEE;mso-fareast-language:EN-AU'>package2=
-depend2</span><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'>&nbsp;is installed as =
well:<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'line-height:14.65pt;background:white'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'line-height:14.65pt;background:white'><a =
href=3D"http://i.stack.imgur.com/xRj1E.png"><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#0C6=
5A5;border:none windowtext =
1.0pt;padding:0cm;mso-fareast-language:EN-AU;text-decoration:none'><img =
border=3D0 width=3D264 height=3D117 id=3D"Picture_x0020_1" =
src=3D"cid:image001.png@01D11623.7AA42820" alt=3D"enter image =
description here"></span></a><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'><o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'line-height:14.65pt;background:white'><span =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal =
style=3D'margin-bottom:12.0pt;line-height:14.65pt;background:white'><span=
 =
style=3D'font-size:11.5pt;font-family:"Helvetica","sans-serif";color:#222=
222;mso-fareast-language:EN-AU'>Is this the expected =
behaviour?<o:p></o:p></span></p><p =
class=3DMsoNormal>Regards,<o:p></o:p></p><p =
class=3DMsoNormal>Roberto<o:p></o:p></p></div></body></html>

------=_NextPart_001_048C_01D11623.7D48E250--

------=_NextPart_000_048B_01D11623.7D48E250
Content-Type: image/png;
	name="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <image001.png@01D11623.7AA42820>

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

------=_NextPart_000_048B_01D11623.7D48E250--
