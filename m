Return-Path: <andreas.enbacka@gasera.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FFAEE009E7; Wed,  3 Jun 2015 06:59:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.211.207.200 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1661 seconds by postgrey-1.32 at yocto-www;
	Wed, 03 Jun 2015 06:59:19 PDT
Received: from smtp1.eteinen.fi (smtp1.eteinen.fi [194.211.207.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8710BE009E5
	for <yocto@yoctoproject.org>; Wed,  3 Jun 2015 06:59:19 -0700 (PDT)
Received: from [194.100.86.92] (helo=LenovoPC)
	by smtp1.eteinen.fi with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.71) (envelope-from <andreas.enbacka@gasera.fi>)
	id 1Z08lY-0004Km-3V
	for yocto@yoctoproject.org; Wed, 03 Jun 2015 16:31:32 +0300
From: "Andreas Enbacka" <andreas.enbacka@gasera.fi>
To: <yocto@yoctoproject.org>
Date: Wed, 3 Jun 2015 16:31:32 +0300
Message-ID: <000a01d09e01$9b031210$d1093630$@gasera.fi>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdCeAZq+25HO3YQiT+2JzonYAJ8Z2g==
Subject: Issue with 8250/16550 UART1 access in raspberrypi (meta-raspberrypi)
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
X-List-Received-Date: Wed, 03 Jun 2015 13:59:23 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_000B_01D09E1A.C0510D60"
Content-Language: fi

------=_NextPart_000_000B_01D09E1A.C0510D60
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

After a long break, I have returned to the Yocto project, and generally very
pleased. A lot of progress has been done since I last used the project (two
years ago), and now in my opinion everything works very smoothly.

 

I have used yocto to build a custom image for the RaspberryPi Compute
Module. Generally everything works ok, however I am experiencing problem
with accessing the UART1 port on the raspberryPi. I am using a library
called wiringPi to put the appropriate GPIO pins in the correct mode (alt5)
for RXD1/TXD1 (pins 32/33). Also I have used menuconfig to enable the
8250/16550 serial port support in the kernel (3.18.5+). After booting the
image I examined the dmesg output, and it shows following information
related to 8250/16550:

..

[   1.010958] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled

[   1.013920] serial8250.0: ttyS0 at MMIO 0x20215040 (irq = 29, base_baud =
7812500) is a 8250

.

 

Then I put the pins 32/33 into alternative mode alt5, and try to connect to
the port /dev/ttyS0 using minicom (baud 115200). Trying to enter something
into the Mincom terminal does not give any indications on our connected
oscilloscope (connected to the relevant pins), however change of the alt
mode earlier was observed correctly. The serial port should not be using any
flow control, but when trying to disable the flow control using Minicom (it
was on by default) freezes the complete RaspberryPi system (requiring to
disconnect and reconnect power).

 

Does anyone have any thoughts what could be the cause of these issues (e.g.,
problems with driver etc)? Any information would be greatly appreciated. In
the project we are working on we would need to use both uart ports (0/1)
provided by the compute module (the uart0 is a pl011 and by disabling
console use of /dev/ttyAMA0 we were able to successfully connect to that
port).

 

Thanks for the great work with the Yocto platform.

 

Sincerely,

Andreas Enbacka

SW designer

Gasera Ltd

 


------=_NextPart_000_000B_01D09E1A.C0510D60
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
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
	font-family:"Calibri",sans-serif;
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
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
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
</o:shapelayout></xml><![endif]--></head><body lang=3DFI =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hello,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>After a long break, I have returned to the Yocto project, =
and generally very pleased. A lot of progress has been done since I last =
used the project (two years ago), and now in my opinion everything works =
very smoothly.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I have used yocto to build a custom image for the =
RaspberryPi Compute Module. Generally everything works ok, however I am =
experiencing problem with accessing the UART1 port on the raspberryPi. I =
am using a library called wiringPi to put the appropriate GPIO pins in =
the correct mode (alt5) for RXD1/TXD1 (pins 32/33). Also I have used =
menuconfig to enable the 8250/16550 serial port support in the kernel =
(3.18.5+). After booting the image I examined the dmesg output, and it =
shows following information related to =
8250/16550:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>..<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp; 1.010958] Serial: 8250/16550 driver, 4 ports, =
IRQ sharing disabled<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp; 1.013920] serial8250.0: ttyS0 at MMIO =
0x20215040 (irq =3D 29, base_baud =3D 7812500) is a =
8250<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>&#8230;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Then I put the pins 32/33 into alternative mode alt5, and =
try to connect to the port /dev/ttyS0 using minicom (baud 115200). =
Trying to enter something into the Mincom terminal does not give any =
indications on our connected oscilloscope (connected to the relevant =
pins), however change of the alt mode earlier was observed correctly. =
The serial port should not be using any flow control, but when trying to =
disable the flow control using Minicom (it was on by default) freezes =
the complete RaspberryPi system (requiring to disconnect and reconnect =
power).<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Does anyone have any thoughts what could be the cause of =
these issues (e.g., problems with driver etc)? Any information would be =
greatly appreciated. In the project we are working on we would need to =
use both uart ports (0/1) provided by the compute module (the uart0 is a =
pl011 and by disabling console use of /dev/ttyAMA0 we were able to =
successfully connect to that port).<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Thanks for the great work with the =
Yocto platform.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Sincerely,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Andreas Enbacka<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>SW designer<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Gasera Ltd<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_000B_01D09E1A.C0510D60--
