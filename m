Return-Path: <aenbacka@gmail.com>
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C2FDE00709
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 09:54:54 -0700 (PDT)
Received: by mail-la0-f43.google.com with SMTP id ek20so4180165lab.16
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 09:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:mime-version
	:content-type:x-mailer:thread-index:content-language;
	bh=eVX97OE23e3luKDRLf+tpkfJnDv/4b8h9vUvvE3TrvU=;
	b=ySr0TDmiF0kDvgq8oXzMzh4m6ytlbQAvyGB3HLJYNQXZ8oLgjY4T/uOCJPmRtPGOMh
	9wisP6wp+Q5aHfatdQhrxR65ztUg86Hwe5vp2klBtQLlxmNkk+4yruKyX+Eew0jA3Szc
	pi4q6AtbQgMBGO7hJ6jsWF3O/lXS5g76OHXtMLartOh/nsow4NNISWEUnA+Mrwl9U98C
	7n+X2tVt1zf/U1PO9JlYV5VHrEDdQWPXxg1iNhCWHSvNKnK85KhAQaPO2Uo/3Q8E8JBS
	u3XKKqy7X6UVayxNKDM3oOQRb+dwLH9JPvxXPHiGfhS8b3GdxZU6QqeCYgJSdJdfkzSw
	JxgA==
X-Received: by 10.112.36.2 with SMTP id m2mr4762344lbj.100.1363020893123;
	Mon, 11 Mar 2013 09:54:53 -0700 (PDT)
Received: from LAPTOP (a88-115-129-147.elisa-laajakaista.fi. [88.115.129.147])
	by mx.google.com with ESMTPS id
	fm8sm4690438lbb.17.2013.03.11.09.54.51
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 11 Mar 2013 09:54:52 -0700 (PDT)
From: "Andreas Enbacka" <aenbacka@gmail.com>
To: <yocto@yoctoproject.org>
Date: Mon, 11 Mar 2013 18:54:39 +0200
Message-ID: <000801ce1e79$2024ecd0$606ec670$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: Ac4eeGs4c789Z01pSCmZtB9h/T8O7A==
Subject: qt4e-demo-image and Intel emgd driver
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
X-List-Received-Date: Mon, 11 Mar 2013 16:54:54 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0009_01CE1E89.E3B0A300"
Content-Language: fi

------=_NextPart_000_0009_01CE1E89.E3B0A300
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

I have tried to get the qt4e-demo-image to work with a Pico800 Intel board
with EMGD graphics, and a LCD display (AUO) with native resolution 800x480.
I have only been able to get max. 640x480 with vesafb driver. Is the emgd
driver supported at all in the framebuffer scenario, or can it only be
configured to work with X server (I have been able to get the 800x480
resolution using emgd with the core-image-sato)?

 

Best regards,

Andreas Enbacka


------=_NextPart_000_0009_01CE1E89.E3B0A300
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
class=3DMsoNormal><span lang=3DEN-US>I have tried to get the =
qt4e-demo-image to work with a Pico800 Intel board with EMGD graphics, =
and a LCD display (AUO) with native resolution 800x480. I have only been =
able to get max. 640x480 with vesafb driver. Is the emgd driver =
supported at all in the framebuffer scenario, or can it only be =
configured to work with X server (I have been able to get the 800x480 =
resolution using emgd with the core-image-sato)?<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Best =
regards,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Andreas Enbacka<o:p></o:p></span></p></div></body></html>

------=_NextPart_000_0009_01CE1E89.E3B0A300--
