Return-Path: <Charles.Greer@bendix.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5C34E00D48; Thu, 14 Dec 2017 14:06:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [12.46.189.101 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
X-Greylist: delayed 901 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Dec 2017 14:06:39 PST
Received: from elymail1.knorr-bremse.com (elymail1.knorr-bremse.com
	[12.46.189.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3A69E00D1C
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 14:06:39 -0800 (PST)
X-AuditID: c0a87165-969ff70000003f77-b3-5a32f2ac65c6
Received: from elys7056.corp.knorr-bremse.com (elys7056.corp.knorr-bremse.com
	[149.244.64.56])
	(using TLS with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by elymail1.knorr-bremse.com (KB-Mail) with SMTP id
	FE.9B.16247.CA2F23A5; Thu, 14 Dec 2017 16:52:44 -0500 (EST)
Received: from ELYS7052.corp.knorr-bremse.com ([169.254.3.202]) by
	elys7056.corp.knorr-bremse.com ([149.244.64.56]) with mapi id
	14.03.0319.002; Thu, 14 Dec 2017 16:51:37 -0500
From: "Greer, Charles (ext)" <Charles.Greer@bendix.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to disable a linux virtual terminal...  
Thread-Index: AdN1I5mnZBsf+Y46QZ+sD0jDvXoaFw==
Date: Thu, 14 Dec 2017 21:51:36 +0000
Message-ID: <F1033569E865F34DB22FEDAEDE3F7246C14A6E@elys7052.corp.knorr-bremse.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [149.244.65.8]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA11Ua0xTZxjmOy3lCHzu0EJ5adSxk+zHVG5FpC5KkLlM1Mw5cCoT2aEcaeX0
	FM9pHRB/sEGd4rzPgcQFLwyYwcwhY/MypiUxDDHAxGUgzmQQHJfITSJzk+2clkL1T/Pkfd7v
	ed7ne78eUqG+GaAjzbyNFXiGo1X+ypNPEg0RteP6tOiin3SG4wO1qkS09rPmw6r3UFohWmli
	mSxWCGd5ozXLzGevopNTNkYYDHErImLocJ6xsKvorRHrk1IFxpgj8XT4HoazS0XRZo6JfZ9b
	bUtmjKZkxmJdvZtjkwTr2ymcYe0Gu820kcky2wvM9hSr/R0DY+IYibQb13KsUdgQb+ToqISV
	DM9/NBxgavq+xC934BuUd67xS6IQ9ZxAJWgeCdQymH407itjNfUDAT/X6EqQv4TrEVz99C5R
	gkhSRcXDdNMmuSeYioO/bj1RyVgj4ZE77Sp3/U3oLT01gyPh6IlGF1ZSr4NjbNTlhakUuHet
	yE/GiNLC05ZaQsYKKhS6+yoI9zwUVF5vU7hxCAz0Tvu6cTh0nZfPklK/FXrLtrklg+CXU33K
	oyio3EupfK6r3KvL3bIUzlwbV7nxEqg6O6Tw4NYbvYR3/Qzyu4DCWC7fwpi5mMgc3ioIEZkC
	axHZSKPVUoekxd+o2c3+iPq7VzoRRSI6EK9r0KepfZk9Yr7FibJJgtbhq+l0mlqTac3KNzGi
	KUO0Z1rMomi28nQIttVJ7fNnOcHOsSIdjMO/k8p4tpxp53IkofwxvbcQz34scqxNeoVOBKRC
	OtbpkI9lMfkFrGB1izlRnLSFYwpdiNEqPVjelhETG71cv8ygj10RHx9Nh+KwoIfb1FQ2Y2Nz
	WDaXFTznRJKkF2Lk4+Oj1gpsNpu308xJXt7zA94njxTkTbsjhOLLoxJDeTOuFAvxXkdU2ouK
	3kEIcp4TGclAOsxtrRZzGYtozva2Dcahsi32UG5LDY6Vby3QU3XZheFj8hyzKnNWLegQIi91
	PfiXIBtdv/2nhgoVaiVv5VndAtwhTxkiHzPZ+Rdj60Lx4Igczot1jaDTYuINiXjFi5CnkORi
	tutflJsbxPP9GEQOQnpCgD8sWyLdqfR5eSm2BkfJsQNnGHdqNa6QAwbMFF2hAZvl+TwSc1b6
	80j6650NgZNfR8BE6RqYaDpAwFRnNQETR34j4I+OYgVUPp30hcPTU77QV/2JCpr7elXQc3S/
	H1w/3+4PlQcf+kPN2EAA3B18FgiVFUUYpu61YOgc6cTQNXxzPuzvbqCgvr+bgme3KzRwed9Z
	DUz8062RjEq1cGDyjhaGqi8CdJwsC4Mpx7dhUPv35wtgYuTCIijv+nPRoLR/Ym7/NubliwjG
	j4qj5P3PUJ79G+SdBXqqM/tfLhdnVebuQleI5iV81e6j3KKo/mLCoS1eX9DW3fZq8Gn1xeD+
	rg716JFfN+2Nmt+fV7Azo+x+VdLvyrSaRN/s1jX9p1Mfnxt/azs9eXDp5uTh5AP/7UrcmlCf
	2jr0+LX7zx0tN1TN6z4gxhaXXrl1rm5LekHVg570qr7NY8qU21d2PL+04d1dtWrnjgYcfYhW
	iiYmZrFCEJn/AbldMDRUBgAA
X-KBTracking: sti13RlAtIachIamoAqleBroESl8HLuthOadiuziuSouG8ahlaBroucHlecrL7cl
Subject: How to disable a linux virtual terminal...
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
X-List-Received-Date: Thu, 14 Dec 2017 22:06:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F1033569E865F34DB22FEDAEDE3F7246C14A6Eelys7052corpknorr_"

--_000_F1033569E865F34DB22FEDAEDE3F7246C14A6Eelys7052corpknorr_
Content-Type: text/plain; charset="us-ascii"
content-transfer-encoding: quoted-printable

Hi all,

Would anyone know how to disable the virtual terminals in linux?  I am using=
 Yocto, Morty version on an i.MX6 processor.  Even though our base distribut=
ion is Yocto, unfortunately we have diverged from building it with recipes,=
 so this is more of a straight linux question than Yocto...

To give some detail as to my problem:  It is for an embedded device that has=
 an HDMI port - when I attach a terminal to the HDMI port it shows the Linux=
 Penguin logo, a getty service and blanks out after 600 seconds.  I just wan=
t to use the hdmi port as an output with nothing displayed on the output and=
 I want it to stay on all the time.

I have found that the hdmi port maps to /dev/tty1 - when I type:  echo "asdf=
asdf" > /dev/tty1 I see the characters output to the monitor.

Here are a few things I have tried to no avail - a lot of these are not need=
ed if I can figure out how to disable it as a virtual terminal...


*         I figured out how to disable the getty service but a cursor still=
 blinks.   I don't even want a cursor to show



*         I have tried to disable the display of the penguins  by disabling=
 the LOGO in the kernel config parameters:
#CONFIG_LOGO=3Dy
#CONFIG_LOGO_LINUX_MONO=3Dy
#CONFIG_LOGO_LINUX_VGA16=3Dy
#CONFIG_LOGO_LINUX_CLUT224=3Dy

To no avail.  The logo still shows ::( .


*         The fact that it blanks after 600 seconds is console blanking - I=
 can see it set to 600 in the file:  /sys/module/kernel/parameters/consolebl=
ank.  When I issue the command:  echo -e '\033[9;0]'>/dev/tty1

It sets the console blanking to 0 and wakes the terminal.  Being able to wak=
e the console up is limited success but I would like to disable the virtual=
 terminal altogether...


*         I tried commenting out these virtual terminal defines in the confi=
g file to no avail:
#CONFIG_VT=3Dy
#CONFIG_VT_CONSOLE=3Dy
#CONFIG_VT_CONSOLE_SLEEP=3Dy
#CONFIG_HW_CONSOLE=3Dy
#CONFIG_VT_HW_CONSOLE_BINDING=3Dy


Everything I have read suggests that /dev/tty1 is a virtual terminal or cons=
ole.  From what I read about the VT option, disabling the CONFIG_VT should d=
o it:

VT - Virtual terminal

Say yes here to get support for terminal devices with display and keyboard d=
evices. These are called "virtual" because you can run several virtual termi=
nals (also called virtual consoles) on one physical terminal.

You need at least one virtual terminal device in order to make use of your k=
eyboard and monitor. Therefore, only people configuring an embedded system w=
ould want to say no here in order to save some memory; the only way to log i=
nto such a system is then via a serial or network connection.

Virtual terminals are useful because, for example, one virtual terminal can=
 display system messages and warnings, another one can be used for a text-mo=
de user session, and a third could run an X session, all in parallel. Switch=
ing between virtual terminals is done with certain key combinations, usually=
 Alt-function key.

If you are unsure, say yes, or else you won't be able to do much with your L=
inux system.
But for some reason it doesn't do anything!


*         I found this thread;  https://askubuntu.com/questions/357039/how-d=
o-i-disable-virtual-consoles-tty1-6.  But it is not much help since my distr=
ibution does not have any of the directories in the solutions offered in thi=
s thread.  For instance I do not have a /etc/events.d nor do I have a /etc/d=
efault/console-setup file nor do I have a /etc/init directory...   I imagine=
 the reason for this is that my distribution uses systemd and the solutions=
 are SysV based init maybe?

Disabling the logo or console blanking would not be necessary if I could jus=
t figure out how to disable that port as a terminal...

So does anyone have pointers or things I could try?  I am relatively new (re=
turning after 10 years - I worked with DNX 10 years ago v2.6 and it seems ev=
erything I knew about init is fairly obsolete lol) to linux so I am sure I a=
m missing a lot...
Thanks,

-          Chuck

This transmission is intended solely for the addressee and contains confiden=
tial information.
If you are not the intended recipient, please immediately inform the sender=
 and delete the message and any attachments from your system. 
Furthermore, please do not copy the message or disclose the contents to anyo=
ne unless agreed otherwise. To the extent permitted by law we shall in no wa=
y be liable for any damages, whatever their nature, arising out of transmiss=
ion failures, viruses, external influence, delays and the like.

--_000_F1033569E865F34DB22FEDAEDE3F7246C14A6Eelys7052corpknorr_
Content-Type: text/html; charset="us-ascii"
content-transfer-encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micro=
soft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" xm=
lns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://w=
ww.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Monospace;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1658652896;
	mso-list-type:hybrid;
	mso-list-template-ids:521150910 67698689 67698691 67698693 67698689 6769869=
1 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1719433977;
	mso-list-type:hybrid;
	mso-list-template-ids:492077988 -450314682 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:21.0pt;
	text-indent:-.25in;
	font-family:"Times New Roman","serif";
	mso-fareast-font-family:Calibri;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:57.0pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:93.0pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:129.0pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:165.0pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:201.0pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:237.0pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:273.0pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:309.0pt;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Would anyone know how to disable the virtual terminal=
s in linux?&nbsp; I am using Yocto, Morty version on an i.MX6 processor. &nb=
sp;Even though our base distribution is Yocto, unfortunately we have diverge=
d from building it with recipes, so this
 is more of a straight linux question than Yocto&#8230; <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To give some detail as to my problem:&nbsp; It is for=
 an embedded device that has an HDMI port - when I attach a terminal to the=
 HDMI port it shows the Linux Penguin logo, a getty service and blanks out a=
fter 600 seconds. &nbsp;I just want to use
 the hdmi port as an output with nothing displayed on the output and I want=
 it to stay on all the time.&nbsp; &nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have found that the hdmi port maps to /dev/tty1 &#8=
211; when I type:&nbsp; echo &#8220;asdfasdf&#8221; &gt; /dev/tty1 I see the=
 characters output to the monitor.&nbsp; &nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here are a few things I have tried to no avail &#8211=
; a lot of these are not needed if I can figure out how to disable it as a v=
irtual terminal&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level1=
 lfo1"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman=
&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>I figured out how to disable the getty servic=
e but a cursor still blinks.&nbsp; &nbsp;I don&#8217;t even want a cursor to=
 show<o:p></o:p></p>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level1=
 lfo1"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman=
&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>I have tried to disable the display of the pe=
nguins&nbsp; by disabling the LOGO in the kernel config parameters:<o:p></o:=
p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#CONFIG_LOGO=3Dy<o:p></o:p=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#CONFIG_LOGO_LINUX_MONO=3D=
y<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#CONFIG_LOGO_LINUX_VGA16=
=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#CONFIG_LOGO_LINUX_CLUT224=
=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">To no avail. &nbsp;The log=
o still shows :<span style=3D"font-family:Wingdings">L</span> .&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level1=
 lfo1"><![if !supportLists]><span style=3D"font-family:Symbol"><span style=
=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman=
&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>The fact that it blanks after 600 seconds is=
 console blanking &#8211; I can see it set to 600 in the file: &nbsp;/sys/mo=
dule/kernel/parameters/consoleblank.&nbsp; When I issue the command:&nbsp; e=
cho -e '\033[9;0]'&gt;/dev/tty1<o:p></o:p></p>
<p class=3D"MsoListParagraph">It sets the console blanking to 0 and wakes th=
e terminal. &nbsp;Being able to wake the console up is limited success but I=
 would like to disable the virtual terminal altogether&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level1=
 lfo1;text-autospace:none">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Symbol"><sp=
an style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times N=
ew Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:M=
onospace">I tried commenting out these virtual terminal defines in the confi=
g file to no avail:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-autospace:none"><span=
 style=3D"font-size:10.0pt;font-family:Monospace">#CONFIG_VT=3Dy<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-autospace:none"><span=
 style=3D"font-size:10.0pt;font-family:Monospace">#CONFIG_VT_CONSOLE=3Dy<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-autospace:none"><span=
 style=3D"font-size:10.0pt;font-family:Monospace">#CONFIG_VT_CONSOLE_SLEEP=
=3Dy<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-autospace:none"><span=
 style=3D"font-size:10.0pt;font-family:Monospace">#CONFIG_HW_CONSOLE=3Dy<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-autospace:none"><span=
 style=3D"font-size:10.0pt;font-family:Monospace">#CONFIG_VT_HW_CONSOLE_BIND=
ING=3Dy<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph">Everything I have read suggests that /dev/tty1=
 is a virtual terminal or console.&nbsp;
<span style=3D"font-size:10.0pt;font-family:Monospace">From what I read abou=
t the VT option, disabling the CONFIG_VT should do it:</span><o:p></o:p></p>
<p style=3D"margin-left:1.0in"><span lang=3D"EN" style=3D"font-size:8.5pt;fo=
nt-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">VT &#821=
2; Virtual terminal<o:p></o:p></span></p>
<p style=3D"margin-left:1.0in"><span lang=3D"EN" style=3D"font-size:8.5pt;fo=
nt-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">Say yes=
 here to get support for terminal devices with display and keyboard devices.=
 These are called &quot;virtual&quot; because you can run several
 virtual terminals (also called virtual consoles) on one physical terminal.<=
o:p></o:p></span></p>
<p style=3D"margin-left:1.0in"><span lang=3D"EN" style=3D"font-size:8.5pt;fo=
nt-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">You need=
 at least one virtual terminal device in order to make use of your keyboard=
 and monitor. Therefore, only people configuring an embedded
 system would want to say no here in order to save some memory; the only way=
 to log into such a system is then via a serial or network connection.<o:p><=
/o:p></span></p>
<p style=3D"margin-left:1.0in"><span lang=3D"EN" style=3D"font-size:8.5pt;fo=
nt-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">Virtual=
 terminals are useful because, for example, one virtual terminal can display=
 system messages and warnings, another one can be used for
 a text-mode user session, and a third could run an X session, all in parall=
el. Switching between virtual terminals is done with certain key combination=
s, usually Alt-function key.<o:p></o:p></span></p>
<p style=3D"margin-left:1.0in"><span lang=3D"EN" style=3D"font-size:8.5pt;fo=
nt-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#222222">If you a=
re unsure, say yes, or else you won't be able to do much with your Linux sys=
tem.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-autospace:none"><span=
 lang=3D"EN" style=3D"font-size:10.0pt;font-family:Monospace">But for some r=
eason it doesn&#8217;t do anything!<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN" style=
=3D"font-size:10.0pt;font-family:Monospace"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level1=
 lfo1"><![if !supportLists]><span style=3D"font-size:12.0pt;font-family:Symb=
ol"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;=
Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN" style=3D"font-size:10.0pt;f=
ont-family:Monospace">I found this thread;&nbsp;
<a href=3D"https://askubuntu.com/questions/357039/how-do-i-disable-virtual-c=
onsoles-tty1-6">
https://askubuntu.com/questions/357039/how-do-i-disable-virtual-consoles-tty=
1-6</a>.&nbsp; But it is not much help since my distribution does not have a=
ny of the directories in the solutions offered in this thread.&nbsp; For ins=
tance I do not have a /etc/events.d nor
 do I have a </span><span style=3D"font-size:12.0pt;font-family:&quot;Times=
 New Roman&quot;,&quot;serif&quot;">/etc/default/console-setup file nor do I=
 have a /etc/init directory&#8230;&nbsp;&nbsp; I imagine the reason for this=
 is that my distribution uses systemd and the solutions are SysV based
 init maybe?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Tim=
es New Roman&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Tim=
es New Roman&quot;,&quot;serif&quot;">Disabling the logo or console blanking=
 would not be necessary if I could just figure out how to disable that port=
 as a terminal&#8230;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Tim=
es New Roman&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Tim=
es New Roman&quot;,&quot;serif&quot;">So does anyone have pointers or things=
 I could try?&nbsp; I am relatively new (returning after 10 years - I worked=
 with DNX 10 years ago v2.6 and it seems everything I knew
 about init is fairly obsolete lol) to linux so I am sure I am missing a lot=
&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Tim=
es New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Tim=
es New Roman&quot;,&quot;serif&quot;">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:21.0pt;text-indent:-.25in=
;mso-list:l1 level1 lfo2">
<![if !supportLists]><span style=3D"font-size:12.0pt;font-family:&quot;Times=
 New Roman&quot;,&quot;serif&quot;"><span style=3D"mso-list:Ignore">-<span s=
tyle=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:12.0pt;font-family:&=
quot;Times New Roman&quot;,&quot;serif&quot;">Chuck<o:p></o:p></span></p>
</div>
<font size=3D"-2" face=3D"Arial" color=3D"#000000"><br>
<br>
This transmission is intended solely for the addressee and contains confiden=
tial information.<br>
If you are not the intended recipient, please immediately inform the sender=
 and delete the message and any attachments from your system.<br>
Furthermore, please do not copy the message or disclose the contents to anyo=
ne unless agreed otherwise. To the extent permitted by law we shall in no wa=
y be liable for any damages, whatever their nature, arising out of transmiss=
ion failures, viruses, external influence, delays and the like.<br></font>
</body>
</html>

--_000_F1033569E865F34DB22FEDAEDE3F7246C14A6Eelys7052corpknorr_--
