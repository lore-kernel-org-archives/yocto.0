Return-Path: <aenbacka@gmail.com>
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5371BE0140A
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 10:27:42 -0700 (PDT)
Received: by mail-lb0-f175.google.com with SMTP id n3so4752119lbo.6
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 10:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:mime-version
	:content-type:x-mailer:thread-index:content-language;
	bh=nWlt3DLR4p5nGZP78ktWRUARdiK7PZfXOC/3Xx5ME3I=;
	b=BG5qqwMKLmDElzOJeAkbvBIjDTyICwk/yjpXqmnCmMkDKoYzik1Fx8kRariunT4YHd
	qFU2yGzr/zq+S6eLoRXZA6QzADJQcEZEcvsWr9Cyc5/fL9lZsusBFhc1jx6L9E+RY8h9
	K6wbkPf2yOOIDEzKYxhHIk1Ya33heEAR5cm3kEoiDQuIMJCV21XIbSAZ4h7vI0aT7WQc
	ywWAZovAMOUhtmS17YhGh7KmwbaNJkJ7Lvn4+GK94WS3MyBL5CYbwRlNmiOmmtmqBZvQ
	HitUL+qA1eEgFp07mxGArakSc9KYcfV5Udl4PNk3t2fZoAqEjY+yU7t7dDyE1NihxG1w
	Ccwg==
X-Received: by 10.152.146.199 with SMTP id te7mr15365221lab.23.1363627660849; 
	Mon, 18 Mar 2013 10:27:40 -0700 (PDT)
Received: from LAPTOP (a88-115-129-147.elisa-laajakaista.fi. [88.115.129.147])
	by mx.google.com with ESMTPS id fl9sm5694387lbb.9.2013.03.18.10.27.38
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 10:27:39 -0700 (PDT)
From: "Andreas Enbacka" <aenbacka@gmail.com>
To: <yocto@yoctoproject.org>
Date: Mon, 18 Mar 2013 19:27:34 +0200
Message-ID: <000601ce23fd$e1b38620$a51a9260$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: Ac4j/SkRlArDSxSpQCGoTA2CASTF6Q==
Subject: Error when building image in Hob
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
X-List-Received-Date: Mon, 18 Mar 2013 17:27:42 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0007_01CE240E.A5A418A0"
Content-Language: fi

------=_NextPart_000_0007_01CE240E.A5A418A0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

I would like to ask about an image building problem I have when using Hob
within the yocto project. I am trying to build images for the Intel emenlow
taget (e.g., core-image-sato, core-image-x11).  I am able to build the
images ok in case I do not edit them; however when trying to edit an image
(adding some package(s)), the image build always fail with an error message
as follows:

 

Hob found an error:

Required build target 'hob-image-20130318-131837' has no buildable
providers. Missing or unbuildable dependency chain was

['hob-image-20130318-131837','libgstinterfaces-0.10'] (the error always
refers to 'Nothing RPROVIDES libgstinterfaces-0.10' before the mentioned
error).'

 

Any clues what could cause the problem would be greatly appreciated. 

 

Also, why do the packages always need to be re-selected on step 2/2: Edit
packages, once they have been selected on step 1 in Hob?

 

Best regards,

Andreas Enbacka

 

 


------=_NextPart_000_0007_01CE240E.A5A418A0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 70.85pt 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DFI =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span lang=3DSV-FI>Hello,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DSV-FI><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I would like to ask about an image =
building problem I have when using Hob within the yocto project. I am =
trying to build images for the Intel emenlow taget (e.g., =
core-image-sato, core-image-x11).&nbsp; I am able to build the images ok =
in case I do not edit them; however when trying to edit an image (adding =
some package(s)), the image build always fail with an error message as =
follows:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Hob found an error:<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Required build target =
'hob-image-20130318-131837' has no buildable providers. Missing or =
unbuildable dependency chain was<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>['hob-image-20130318-131837','libgstinterfaces-0.10'] (the =
error always refers to &#8216;Nothing RPROVIDES =
libgstinterfaces-0.10&#8217; before the mentioned =
error).&#8217;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Any clues what could cause the problem would be greatly =
appreciated. <o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Also, why do the packages always need to be re-selected on =
step 2/2: Edit packages, once they have been selected on step 1 in =
Hob?<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Best regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Andreas =
Enbacka<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_0007_01CE240E.A5A418A0--
