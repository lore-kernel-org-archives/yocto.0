Return-Path: <alankar.dhobale@renuelectronics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0882E00CB4; Sun,  2 Dec 2018 20:56:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.208.4.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mout.perfora.net (mout.perfora.net [74.208.4.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D45B9E0095C
	for <yocto@yoctoproject.org>; Sun,  2 Dec 2018 20:55:55 -0800 (PST)
Received: from Alankard ([123.252.137.110]) by mrelay.perfora.net (mreueus001
	[74.208.5.2]) with ESMTPA (Nemesis) id 0M6UVZ-1hRp5y3jkR-00yMM2 for
	<yocto@yoctoproject.org>; Mon, 03 Dec 2018 05:50:55 +0100
From: "Alankar Dhobale" <alankar.dhobale@renuelectronics.com>
To: <yocto@yoctoproject.org>
Date: Mon, 3 Dec 2018 10:21:20 +0530
Message-ID: <005701d48ac3$d6fe68c0$84fb3a40$@renuelectronics.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdSKw9TjDmHaxRj3QzmC1KiLS76+tQ==
X-Provags-ID: V03:K1:VbHQ8WygmvVksCUD5mY+WFCwp7Kg87a0NrVHBvSQvJ33/J1H13d
	ehRsmskCLiyTTQvxpdlj41FaPsFIh3kTDUr58CmLfAC8cZA3ceUDFwyIDZCxm9ioqRczycB
	HD6JzMrKOBPSHBbrTUSB/f/Ss+1Ub0Xnx7Sr9TZDAz8lRPFLawRqSEkfK/LOWa5pps3U3bL
	IbgwRXTE7BxHoOR3oW4Jg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:sC6KDuPeYwI=:44fxNGtK/hI0O5s66STQDV
	2uSl8ABXxsBswEbnIpgzzxa/uuIesKZunZC8uX3hpaSH0NXjS6VahZQ7vxNM0abjqME2Ic4Rv
	1o+FOqIk9r9e8+LZ9kKUAnFYudtYBEW6Wn6HYfHj4b/GZ5I2fIXSFCc/NbaOVPTEmu2UFu/63
	tPioJMSNhoUG8TS0PIrh4o3gwo+wXGtb5vae3+Je8Ag6KatS1Y35P2y2i0iIb5x7B/pzPKEJF
	EpLEFRaReaUA/vKf4MTFn3Twl4hzu3GVwuTh6RAW/4ZdIgl6ychlXPePaxCK63ybu2fVWc9rL
	iR1ur8d0i1mRL3RKkHDapERhhCfsH6mOvHa1xn6+u5wo6P+yDsCimsNzeX9zaaPHgvFc3F6gA
	nNmVxZ7sKzYySx8h2a+zVRhxQOFXHDdsSKkwaa22iqbHs3K0PGB6GCjzGtBxDWZEsPwlz0XMJ
	WSMrLwWUZfnOiEu3xji6NuNweMFOgUW31PuNuOUWSBsCb2Ftf05EF67LcqP3ySUoro2UKvxFQ
	JQXz4d0A05CaZ+N+zBrtF5p8GLEwBZBEkaiLae2qGlbSDG8O55hYkv2NhNpDXmDyAS1OjaM7c
	JGDKaI3fAFDSoT0MQqOy+mF2xjmZWnxdOa4EBZn6nOJ1L+vIZM2/bidO2ORAntGRiTLgI6ozr
	3PQ2IsYvGAyWFMwCWdpa6hDqmsj33LqmIh4G0r2nTvWcZ7EeL0m/byNshUt+Jb29KPJafPRz5
	mDKuPcWnfqFgABRLUN8SeVOisZVtDh9+Rqh5DEYlDTeTnX7tLIlD7qbJNgSBtAO8/mtKaqQL7
	yFn3/RI
Subject: [rocko] : fsl-community-bsp X11 build touch screen calibration issue on iMX6UL
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
X-List-Received-Date: Mon, 03 Dec 2018 04:56:24 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0058_01D48AF1.F0B7B630"
Content-Language: en-us

------=_NextPart_000_0058_01D48AF1.F0B7B630
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

I have been working on Rocko build from fsl-community-bsp, since last few
days and able to complete the builds for our various devices which uses
imx6UL and imx6Solo processors.

 

During testing these builds, I have encountered few issues and also could
able to solve some of them. 

 

I need your help in one of issue where I am still unable to get the
resolution. Please see details as below

 

Machine: imx6ulevek

Image: core-image-x11

 

The issue I have observed on the device is, Xorg is unable to calibrate the
touchscreen, I don't know what has changed but it is unable to calibrate,
below is the log I get on prompt

 

 

Using calibration data stored in /etc/pointercal.xinput

Invalid format 42060

unable to find device EETI eGalax Touch Screen

INFO: width=480, height=272

random: nonblocking pool is initialized

ERROR: XorgPrint Calibrator does not support the supplied --output-type

Error: unable to apply or save configuration valuesUsing calibration data
stored in /etc/pointercal.xinput

Size 1024x768 not found in available modes

Invalid format 42060

unable to find device EETI eGalax Touch Screen

matchbox: Cant find a keycode for keysym 269025056

matchbox: ignoring key shortcut XF86Calendar=!$contacts

 

matchbox: Cant find a keycode for keysym 2809

matchbox: ignoring key shortcut telephone=!$dates

 

matchbox: Cant find a keycode for keysym 269025050

matchbox: ignoring key shortcut XF86Start=!matchbox-remote -desktop

 

INFO: width=480, height=272

ERROR: XorgPrint Calibrator does not support the supplied --output-type

Error: unable to apply or save configuration values

 

Actually I have seen this issue first on our machine conf file and build
recipe, but just to confirm I have built imx6ulevk machine and see the same
issue.

 

I am not using eGalax EETI Touch screen, it should use iMX6UL's internal
touchscreen controller, i am using simple resistive touch screen. Basic
touch screen is working, because when during first power up when X tries to
calibrate the touch screen, it is able to detect every touch but when it
tries to write to /etc/pointercal.xinput it says output type is not
supported, and if i look at xinput_calibrator_once.sh in /usr/bin which is
called at first power up the --output-type is defined as xinput which is
correct. So as it is not able to save the calibration points the touch
screen doesn't work in X or in any of QT apps we are building.

 

I believe this is nothing do to with kernel as i am using 4.1.35 which was
in morty build and where this touch calibrate is working well. i just bumped
the version of all apps/rootfs to rocko so as to get all latest application
versions like QT-5.9.7 etc, so i think there is something changed in X build
and which is broken.

 

Can somebody please help.

 

Thanks

 

 

Kind Regards,

Alankar Dhobale

 


------=_NextPart_000_0058_01D48AF1.F0B7B630
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
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p =
class=3DMsoNormal>Hello,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I have been =
working on Rocko build from fsl-community-bsp, since last few days and =
able to complete the builds for our various devices which uses imx6UL =
and imx6Solo processors.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>During =
testing these builds, I have encountered few issues and also could able =
to solve some of them. <o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I need your =
help in one of issue where I am still unable to get the resolution. =
Please see details as below<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Machine: =
imx6ulevek<o:p></o:p></p><p class=3DMsoNormal>Image: =
core-image-x11<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>The issue I =
have observed on the device is, Xorg is unable to calibrate the =
touchscreen, I don&#8217;t know what has changed but it is unable to =
calibrate, below is the log I get on prompt<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><b><span =
style=3D'color:#0070C0'>Using calibration data stored in =
/etc/pointercal.xinput<o:p></o:p></span></b></p><p =
class=3DMsoNormal><b><span style=3D'color:#0070C0'>Invalid format =
42060<o:p></o:p></span></b></p><p class=3DMsoNormal><span =
style=3D'color:#0070C0'>unable to find device EETI eGalax Touch =
Screen<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#0070C0'>INFO: width=3D480, =
height=3D272<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#0070C0'>random: nonblocking pool is =
initialized<o:p></o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'color:#0070C0'>ERROR: XorgPrint Calibrator does not support the =
supplied --output-type<o:p></o:p></span></b></p><p =
class=3DMsoNormal><b><span style=3D'color:#0070C0'>Error: unable to =
apply or save configuration valuesUsing calibration data stored in =
/etc/pointercal.xinput<o:p></o:p></span></b></p><p =
class=3DMsoNormal><span style=3D'color:#0070C0'>Size 1024x768 not found =
in available modes<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#0070C0'>Invalid format 42060<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#0070C0'>unable to find device =
EETI eGalax Touch Screen<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#0070C0'>matchbox: Cant find a keycode for keysym =
269025056<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#0070C0'>matchbox: ignoring key shortcut =
XF86Calendar=3D!$contacts<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#0070C0'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#0070C0'>matchbox: Cant find a =
keycode for keysym 2809<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#0070C0'>matchbox: ignoring key shortcut =
telephone=3D!$dates<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#0070C0'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#0070C0'>matchbox: Cant find a =
keycode for keysym 269025050<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#0070C0'>matchbox: ignoring key =
shortcut XF86Start=3D!matchbox-remote -desktop<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#0070C0'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#0070C0'>INFO: width=3D480, =
height=3D272<o:p></o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'color:#0070C0'>ERROR: XorgPrint Calibrator does not support the =
supplied --output-type<o:p></o:p></span></b></p><p =
class=3DMsoNormal><b><span style=3D'color:#0070C0'>Error: unable to =
apply or save configuration values<o:p></o:p></span></b></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Actually I =
have seen this issue first on our machine conf file and build recipe, =
but just to confirm I have built imx6ulevk machine and see the same =
issue&#8230;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I am not using eGalax EETI Touch screen, it should use =
iMX6UL's internal touchscreen controller, i am using simple resistive =
touch screen. Basic touch screen is working, because when during first =
power up when X tries to calibrate the touch screen, it is able to =
detect every touch but when it tries to write to /etc/pointercal.xinput =
it says output type is not supported, and if i look at =
xinput_calibrator_once.sh in /usr/bin which is called at first power up =
the --output-type is defined as xinput which is correct. So as it is not =
able to save the calibration points the touch screen doesn't work in X =
or in any of QT apps we are building.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I believe =
this is nothing do to with kernel as i am using 4.1.35 which was in =
morty build and where this touch calibrate is working well. i just =
bumped the version of all apps/rootfs to rocko so as to get all latest =
application versions like QT-5.9.7 etc, so i think there is something =
changed in X build and which is broken.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Can somebody =
please help&#8230;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>Kind =
Regards,<o:p></o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'color:black'>Alankar Dhobale</span></b><span =
style=3D'font-family:"Times New Roman","serif"'><o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0058_01D48AF1.F0B7B630--
