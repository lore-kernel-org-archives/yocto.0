Return-Path: <aenbacka@gmail.com>
Received: from mail-bk0-f47.google.com (mail-bk0-f47.google.com
	[209.85.214.47]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 514F8E0151A
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 02:40:01 -0800 (PST)
Received: by mail-bk0-f47.google.com with SMTP id jc3so276578bkc.34
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2013 02:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:mime-version
	:content-type:x-mailer:thread-index:content-language;
	bh=1eSGq5ilL6hUQgvJ/o3nIhopyZKLM5uSR4s2V2PHD3E=;
	b=l/DjBE68a8gSOjacfuWpZ3LT7XKbXFQjB3/lSkztnlg6g1FiEJQl6IV7iZjGoF5aI1
	52w2KQdmrsAEgSMAQ1A5mjkjFJefvKtBGaz2UqUwFctr6rcxuBusrkpHaa11g9hH6rr+
	P9LTpYVrGt2cZ7MJCaxHPVibmw8N7b1hewuRziTHZZocdro3S2vkCbxiBNz+INYPQgg/
	gMEwY/8FwOSIlx3dtGuIujzlpLysEdEnD4UDp/bIgYLsEWCX2TdLkgIfx0ttwvAzD7rX
	ydRz/UOIPQHlsd3hMjnA02B1+jXr000sxd5nLJfTcnTCg0MMOAGidKpAMs5U9Uj9Ih7y
	GzsA==
X-Received: by 10.204.151.9 with SMTP id a9mr10934672bkw.90.1362566399132;
	Wed, 06 Mar 2013 02:39:59 -0800 (PST)
Received: from LAPTOP (mail.embedo.fi. [194.100.97.18])
	by mx.google.com with ESMTPS id r17sm8136286bkw.21.2013.03.06.02.39.57
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 06 Mar 2013 02:39:57 -0800 (PST)
From: "Andreas Enbacka" <aenbacka@gmail.com>
To: <yocto@yoctoproject.org>
Date: Wed, 6 Mar 2013 12:39:50 +0200
Message-ID: <00b701ce1a56$ef1dcba0$cd5962e0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: Ac4aVfGyXP3YpWMEQ+Kp/MAo2Z8lOw==
Subject: Problem with core-image-sato-enemlow
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Mar 2013 10:40:01 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00B8_01CE1A67.B2A710D0"
Content-Language: fi

------=_NextPart_000_00B8_01CE1A67.B2A710D0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

I have just got started with the Yocto project and poky-linux, and I am now
trying to build the core-image-sato reference image for target machine
'enemlow' (I have installed the enemlow BSP). The current Intel HW (Pico820)
does boot the included binary image core-image-sato-enemlow without problems
(I do end up at the Sato desktop). However, when I build the same image
myself using Hob, I end up with a completely black screen. I have
whitelisted the emgd-driver-bin-1.16 in build/local.conf, so it should be
included in the built image. Also, no build issues are shown. Any idea what
could be the cause of the problem, any information would be greatly
appreciated?  

 

Best Regards,

Andreas Enbacka

e-mail: aenbacka@gmail.com


------=_NextPart_000_00B8_01CE1A67.B2A710D0
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
class=3DMsoNormal><span lang=3DEN-US>Hello,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I have just got started with the =
Yocto project and poky-linux, and I am now trying to build the =
core-image-sato reference image for target machine &#8216;enemlow&#8217; =
(I have installed the enemlow BSP). The current Intel HW (Pico820) does =
boot the included binary image core-image-sato-enemlow without problems =
(I do end up at the Sato desktop). However, when I build the same image =
myself using Hob, I end up with a completely black screen. I have =
whitelisted the emgd-driver-bin-1.16 in build/local.conf, so it should =
be included in the built image. Also, no build issues are shown. Any =
idea what could be the cause of the problem, any information would be =
greatly appreciated? &nbsp;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Best =
Regards,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Andreas Enbacka<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>e-mail: =
aenbacka@gmail.com<o:p></o:p></span></p></div></body></html>

------=_NextPart_000_00B8_01CE1A67.B2A710D0--
