Return-Path: <sean.liming@annabooks.com>
Received: from mail32c40.carrierzone.com (mail32c40.carrierzone.com
	[209.235.156.172])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1996CE01509
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 09:02:40 -0800 (PST)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail32c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	r26H2X3x025920; Wed, 6 Mar 2013 17:02:35 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Andreas Enbacka'" <aenbacka@gmail.com>, <yocto@yoctoproject.org>
References: <00b701ce1a56$ef1dcba0$cd5962e0$@gmail.com>
In-Reply-To: <00b701ce1a56$ef1dcba0$cd5962e0$@gmail.com>
Date: Wed, 6 Mar 2013 09:02:28 -0800
Message-ID: <003301ce1a8c$63b59030$2b20b090$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQFG4CxVPDOjBPEkESAA9MDVLaTKI5mnVCcw
X-CSC: 0
X-CHA: v=2.0 cv=c6Yct2Bl c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=lMr-4wNISkIA:10 a=_DgR7O7FQkkA:10 a=IjdlZ_XXAAAA:8 a=7OdXzn6-CoEA:10
	a=QyXUC8HyAAAA:8 a=iGHA9ds3AAAA:8 a=pGLkceISAAAA:8
	a=QbK_Mon39Clp3_OPeyYA:9
	a=CjuIK1q_8ugA:10 a=FCaQVidmf_IA:10 a=nHK3ipOpxeAA:10 a=WrHFzyYQoAgA:10
	a=aq9oGTPis_MA:10 a=XDKM753qmDAA:10 a=MSl-tDqOz04A:10 a=yMhMjlubAAAA:8
	a=SSmOFEACAAAA:8 a=Wz9DRuEqr89eqRgiadwA:9 a=gKO2Hq4RSVkA:10
	a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10 a=jc1aaWAxtLQA:10
	a=oaGasemzyD9hZLg2:21 a=vrtpD_qjSwHea3sYWLsA:9 a=KQqxNPgzF0kA:10
	a=ucH7BwLj_I8A:10 a=WDYU2s7p4Hx7m9Zq:18 a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020209.513776AC.0037, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Subject: Re: Problem with core-image-sato-enemlow
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
X-List-Received-Date: Wed, 06 Mar 2013 17:02:41 -0000
X-Groupsio-MsgNum: 12371
Content-Type: multipart/related;
	boundary="----=_NextPart_000_0034_01CE1A49.55949A20"
Content-Language: en-us

------=_NextPart_000_0034_01CE1A49.55949A20
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0035_01CE1A49.55949A20"

------=_NextPart_001_0035_01CE1A49.55949A20
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I ran into the same issue with an Intel Atom E6xx platform. Intel Atom
processors have two video outputs - LCD or VGA. The graphics driver can be
configured for dual (cloned) output or individual output.  The video driver
from the BSP is most likely setup for LCD-only output, which is why you are
getting a blank screen on the VGA output.

 

For my E6xx platform, the solution was to use the MEGD tools to create a
driver for dual output -
http://www.intel.com/content/www/us/en/intelligent-systems/intel-embedded-me
dia-and-graphics-driver/emgd-for-intel-atom-systems.html, and then editing
the MEGD recipe that was in the BSP to include the custom driver. I am not
sure what driver is being used in the enemlow BSP for the Z5xx processor.

 

I post the driver and recipe changes used in the book shortly -
http://www.annabooks.com/Book_OSSATOM.html 

 

Regards,

 

Sean Liming

Owner

 <http://www.annabooks.com/> ablogo color - 500

Tel: 714-970-7523 / Cell: 858-774-3176

 

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Andreas Enbacka
Sent: Wednesday, March 06, 2013 2:40 AM
To: yocto@yoctoproject.org
Subject: [yocto] Problem with core-image-sato-enemlow

 

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


------=_NextPart_001_0035_01CE1A49.55949A20
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><!--[if !mso]><style>v\:* =
{behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 56.7pt 70.85pt 56.7pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>I ran into the same =
issue with an Intel Atom E6xx platform. Intel Atom processors have two =
video outputs &#8211; LCD or VGA. The graphics driver can be configured =
for dual (cloned) output or individual output. &nbsp;The video driver =
from the BSP is most likely setup for LCD-only output, which is why you =
are getting a blank screen on the VGA output.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>For my E6xx platform, =
the solution was to use the MEGD tools to create a driver for dual =
output - <a =
href=3D"http://www.intel.com/content/www/us/en/intelligent-systems/intel-=
embedded-media-and-graphics-driver/emgd-for-intel-atom-systems.html">http=
://www.intel.com/content/www/us/en/intelligent-systems/intel-embedded-med=
ia-and-graphics-driver/emgd-for-intel-atom-systems.html</a>, and then =
editing the MEGD recipe that was in the BSP to include the custom =
driver. I am not sure what driver is being used in the enemlow BSP for =
the Z5xx processor.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>I post the driver and =
recipe changes used in the book shortly - <a =
href=3D"http://www.annabooks.com/Book_OSSATOM.html">http://www.annabooks.=
com/Book_OSSATOM.html</a> <o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Sean =
Liming<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Owner<o:p></o:p></span></p><p =
class=3DMsoNormal><a href=3D"http://www.annabooks.com/"><span =
style=3D'color:blue;text-decoration:none'><img border=3D0 width=3D160 =
height=3D34 id=3D"Picture_x0020_1" =
src=3D"cid:image003.jpg@01CE1A49.54130330" alt=3D"ablogo color - =
500"></span></a><span style=3D'color:#1F497D'><o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Tel: 714-970-7523 / =
Cell: 858-774-3176<o:p></o:p></span></p></div><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div =
style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt'><div><div style=3D'border:none;border-top:solid #B5C4DF =
1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On Behalf Of </b>Andreas Enbacka<br><b>Sent:</b> Wednesday, March 06, =
2013 2:40 AM<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</b> =
[yocto] Problem with =
core-image-sato-enemlow<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Hello,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I have just =
got started with the Yocto project and poky-linux, and I am now trying =
to build the core-image-sato reference image for target machine =
&#8216;enemlow&#8217; (I have installed the enemlow BSP). The current =
Intel HW (Pico820) does boot the included binary image =
core-image-sato-enemlow without problems (I do end up at the Sato =
desktop). However, when I build the same image myself using Hob, I end =
up with a completely black screen. I have whitelisted the =
emgd-driver-bin-1.16 in build/local.conf, so it should be included in =
the built image. Also, no build issues are shown. Any idea what could be =
the cause of the problem, any information would be greatly appreciated? =
&nbsp;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Best Regards,<o:p></o:p></p><p =
class=3DMsoNormal>Andreas Enbacka<o:p></o:p></p><p =
class=3DMsoNormal>e-mail: <a =
href=3D"mailto:aenbacka@gmail.com">aenbacka@gmail.com</a><o:p></o:p></p><=
/div></div></body></html>

------=_NextPart_001_0035_01CE1A49.55949A20--

------=_NextPart_000_0034_01CE1A49.55949A20
Content-Type: image/jpeg;
	name="image003.jpg"
Content-Transfer-Encoding: base64
Content-ID: <image003.jpg@01CE1A49.54130330>

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
AKUpQBis0pQgFKUoA//Z

------=_NextPart_000_0034_01CE1A49.55949A20--
