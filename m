Return-Path: <aenbacka@gmail.com>
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AA10E014AD
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 01:42:18 -0700 (PDT)
Received: by mail-pd0-f169.google.com with SMTP id 10so3149580pdc.28
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2013 01:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:mime-version
	:content-type:x-mailer:thread-index:content-language;
	bh=I+qzmTwCy/3WyUD6F/WFu8SYUbeCKCRn9mtRe+5Pyek=;
	b=0AkU3n628Tb40hSHe7QMG3GWDAeqUr946ziqz3gDsTZRTR2iPz4nA58o8aPS6YhiXq
	RE+PbxaRsaX92g/bh1fdMJBYkOPXVMsWeC3f9Pq+ZFxOKuoIm3eNEu8Gt1DJgzm3mybp
	Q3bSmLsVS9WM9Wv+C2a5FJz8JsvidYeexIOSibH3D/1MTx6StgyeZIBHvCXMmWf323C1
	Xqx2abm42mpqI4/nOlYSHX8n2yFFhiejcls9KOe2az4dfDsg1OH2rqiGE7pUxoHFow89
	xMhHu7XxRB/l65Z4fFw+CNqXrGcbrPJKreHhTeGL7eMNf3cmd7u56kEaA0QP4bx/BNNM
	5tog==
X-Received: by 10.66.158.36 with SMTP id wr4mr25785058pab.28.1365410537677;
	Mon, 08 Apr 2013 01:42:17 -0700 (PDT)
Received: from LAPTOP (mail.embedo.fi. [194.100.97.18])
	by mx.google.com with ESMTPS id g8sm35247602pae.7.2013.04.08.01.42.14
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 08 Apr 2013 01:42:16 -0700 (PDT)
From: "Andreas Enbacka" <aenbacka@gmail.com>
To: <yocto@yoctoproject.org>
Date: Mon, 8 Apr 2013 11:42:03 +0300
Message-ID: <003701ce3434$f487d750$dd9785f0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: Ac40NMZ/CIUklENJS5eCv1RllXRXHw==
Subject: Problem with mouse and keyboard detection in yocto (core-image-sato on emenlow)
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
X-List-Received-Date: Mon, 08 Apr 2013 08:42:18 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0038_01CE344E.19D66EE0"
Content-Language: fi

------=_NextPart_000_0038_01CE344E.19D66EE0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

I have experienced some problems with getting the USB mouse and keyboard
detected in the default core-image-sato Yocto image, built for the Intel
Emenlow machine (with emgd graphics). X launches successfully to the Sato
desktop, but I get no response from the mouse or keyboard. When I from
terminal execute grep -i mouse /var/log/Xorg.0.log from terminal, I get the
following output:

 

root@emenlow:~# grep -i mouse /var/log/Xorg.0.log

        Using the default mouse configuration.

[3572708.190] (II) LoadModule: "mouse"

[3572708.191] (II) Loading /usr/lib/xorg/modules/input/mouse_drv.so

[3572708.195] (II) Module mouse: vendor="X.Org Foundation"

[3572708.196] (II) UnloadModule: "mouse"

[3572708.196] (II) Unloading /usr/lib/xorg/modules/input/mouse_drv.so

[3572708.196] (EE) Failed to load module "mouse" (module requirement
mismatch, 0)

[3572711.516] (==) EMGD(0): Silken mouse enabled

[3572713.120] (II) LoadModule: "mouse"

[3572713.121] (II) Loading /usr/lib/xorg/modules/input/mouse_drv.so

[3572713.121] (II) Module mouse: vendor="X.Org Foundation"

[3572713.127] (II) UnloadModule: "mouse"

[3572713.127] (II) Unloading /usr/lib/xorg/modules/input/mouse_drv.so

[3572713.127] (EE) Failed to load module "mouse" (module requirement
mismatch, 0)

[3572713.127] (EE) No input driver matching `mouse'

[3572713.486] (II) config/udev: Adding input device DIALOGUE INC PenMount
USB (/dev/input/mouse0)

root@emenlow:~#

 

The DIALOGUE INC PenMount USB is the USB mouse (touchscreen) that I am
using. Keyboard works correctly in terminal (with US keyboard layout), but
not in X. I have tried set "AutoAddDevices" to False/True in
/etc/X11/xorg.conf, but with no success. Also, cat /dev/input/mouse0 does
produce output in terminal when moving the USB mouse.

 

Any information concerning what could be the source of this problem would be
greatly appreciated, and in case additional information is required I will
happily provide it. 

 

Best regards,

Andreas Enbacka

 


------=_NextPart_000_0038_01CE344E.19D66EE0
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
class=3DMsoNormal><span lang=3DEN-US>I have experienced some problems =
with getting the USB mouse and keyboard detected in the default =
core-image-sato Yocto image, built for the Intel Emenlow machine (with =
emgd graphics). X launches successfully to the Sato desktop, but I get =
no response from the mouse or keyboard. When I from terminal execute =
grep -i mouse /var/log/Xorg.0.log from terminal, I get the following =
output:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DSV-FI>root@emenlow:~# grep -i mouse =
/var/log/Xorg.0.log<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DSV-FI>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span =
lang=3DEN-US>Using the default mouse =
configuration.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[3572708.190] (II) LoadModule: =
&quot;mouse&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[3572708.191] (II) Loading =
/usr/lib/xorg/modules/input/mouse_drv.so<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[3572708.195] (II) Module mouse: =
vendor=3D&quot;X.Org Foundation&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[3572708.196] (II) UnloadModule: =
&quot;mouse&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[3572708.196] (II) Unloading =
/usr/lib/xorg/modules/input/mouse_drv.so<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[3572708.196] (EE) Failed to load =
module &quot;mouse&quot; (module requirement mismatch, =
0)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[3572711.516] (=3D=3D) EMGD(0): Silken mouse =
enabled<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[3572713.120] (II) LoadModule: =
&quot;mouse&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[3572713.121] (II) Loading =
/usr/lib/xorg/modules/input/mouse_drv.so<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[3572713.121] (II) Module mouse: =
vendor=3D&quot;X.Org Foundation&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[3572713.127] (II) UnloadModule: =
&quot;mouse&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[3572713.127] (II) Unloading =
/usr/lib/xorg/modules/input/mouse_drv.so<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[3572713.127] (EE) Failed to load =
module &quot;mouse&quot; (module requirement mismatch, =
0)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[3572713.127] (EE) No input driver matching =
`mouse'<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[3572713.486] (II) config/udev: Adding input device =
DIALOGUE INC PenMount USB (/dev/input/mouse0)<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>root@emenlow:~#<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>The DIALOGUE INC PenMount USB is =
the USB mouse (touchscreen) that I am using. Keyboard works correctly in =
terminal (with US keyboard layout), but not in X. I have tried set =
&#8220;AutoAddDevices&#8221; to False/True in /etc/X11/xorg.conf, but =
with no success. Also, cat /dev/input/mouse0 does produce output in =
terminal when moving the USB mouse.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Any information concerning what =
could be the source of this problem would be greatly appreciated, and in =
case additional information is required I will happily provide it. =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Best regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Andreas =
Enbacka<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_0038_01CE344E.19D66EE0--
