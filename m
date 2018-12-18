Return-Path: <n.stanisavljevic@polycaptil.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4854E00C5B; Tue, 18 Dec 2018 07:07:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.95.66.15 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from itinerix.sdv.fr (itinerix.sdv.fr [212.95.66.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFEB5E00A1A
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 07:07:45 -0800 (PST)
Received: from FIXNIKOLA (unknown [65.39.68.243])
	by itinerix.sdv.fr (Postfix) with ESMTPSA id 429F3DBAF
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 16:07:44 +0100 (CET)
From: "Stanisavljevic" <n.stanisavljevic@polycaptil.fr>
To: <yocto@yoctoproject.org>
Date: Tue, 18 Dec 2018 16:07:44 +0100
Message-ID: <004001d496e3$6e49cd20$4add6760$@polycaptil.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdSW3nwJAcVm1fWpT5+jlZrNpMEOlA==
Subject: xrandr / xinput calibrator
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
X-List-Received-Date: Tue, 18 Dec 2018 15:07:47 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0041_01D496EB.D00FE2D0"
Content-Language: fr

------=_NextPart_000_0041_01D496EB.D00FE2D0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hy everybody,

 

I tried to migrate from krogoth to sumo version of yocto project, to compile
a custom OS for a custom board based on TI AM335x EVMSK Starter Kit.

On this custom board there is a touchscreen panel (same like the AM335x
EVMSK starter Kit) whitch worked fine with krogoth version.

When I migrated to sumo version, while the OS boot the touchscreen work
fine, but when the screen display to log the user and when it display the
mouse, the touschreen panel is completely locked.

 

I think that this append during the boot of the OS :

Xrandr is called and try to do something to configure/set the touschscreen
panel.

But xrandr return the following message :

polycaptil-machine-am335x-evmsk login: Size 1024x768 not found in available
mode

(screen resolution is 480x272)

Later xinput_calibrator pring this message :

Error: No calibratable devices found.

 

But when I log to the user session (with putty) and I execute xrandr
-listmonitors

I get :

xrandr: Failed to get size of gamma for output default

Monitors: 1

0: +default 480/127x272/72+0+0  default

 

It means that touschscreen panel is recognized with the right resolution but
somewhere it's not correctly defined in the OS.

 

I exported 0 in DISPLAY environnement variable and tried to use
xininput_calibrator but without success.

 

What can I do to solve this problem ?

I don't know if I need to configure something when I compile the OS with
yocto, or, if the configuration need to be done when the OS is booted and
user is logged in ?

I don't understand, because, I have not this problem (touschscreen panel
locked and unusable) with krogoth version.

 

Thank's to taking your time to read my problem and to trying to help me to
solve it.

 

STANISAVLJEVIC Nikola


------=_NextPart_000_0041_01D496EB.D00FE2D0
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
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DFR =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hy everybody,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>I tried to migrate from krogoth to sumo version of yocto =
project, to compile a custom OS for a custom board based on TI AM335x =
EVMSK Starter Kit.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>On this custom board there is a touchscreen panel (same =
like the AM335x EVMSK starter Kit) whitch worked fine with krogoth =
version.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>When I migrated to sumo version, while the OS boot the =
touchscreen work fine, but when the screen display to log the user and =
when it display the mouse, the touschreen panel is completely =
locked&#8230;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I think that this append during the boot of the OS =
:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Xrandr is =
called and try to do something to configure/set the touschscreen =
panel.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>But =
xrandr return the following message :<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>polycaptil-machine-am335x-evmsk =
login: Size 1024x768 not found in available mode<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>(screen resolution is =
480x272)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Later xinput_calibrator pring this message =
:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Error: No =
calibratable devices found.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>But when I log to the user session =
(with putty) and I execute xrandr =
&#8211;listmonitors<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I get :<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>xrandr: Failed to get size of gamma for output =
default<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Monitors: 1<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US> 0: +default 480/127x272/72+0+0&nbsp; =
default<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>It means that touschscreen panel is recognized with the =
right resolution but somewhere it&#8217;s not correctly defined in the =
OS&#8230;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I exported 0 in DISPLAY environnement variable and tried to =
use xininput_calibrator but without =
success&#8230;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>What can I do to solve this problem =
?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I =
don&#8217;t know if I need to configure something when I compile the OS =
with yocto, or, if the configuration need to be done when the OS is =
booted and user is logged in ?<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I don&#8217;t understand, because, =
I have not this problem (touschscreen panel locked and unusable) with =
krogoth version&#8230;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Thank&#8217;s to taking your time to read my problem and to =
trying to help me to solve it.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:FR'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:FR'>STANISAVLJEVIC =
Nikola<o:p></o:p></span></p></div></body></html>

------=_NextPart_000_0041_01D496EB.D00FE2D0--
