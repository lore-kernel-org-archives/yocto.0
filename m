Return-Path: <alankar.dhobale@renuelectronics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48D96E0083C; Mon,  6 Feb 2017 23:39:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_40,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.208.4.197 listed in list.dnswl.org]
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.2846]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Mon, 06 Feb 2017 23:39:08 PST
Received: from mout.perfora.net (mout.perfora.net [74.208.4.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B4AFE0082E
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2017 23:39:08 -0800 (PST)
Received: from Alankard ([58.68.32.82]) by mrelay.perfora.net (mreueus002
	[74.208.5.2]) with ESMTPA (Nemesis) id 0MgMca-1cplzJ1zcs-00NmIZ for
	<yocto@yoctoproject.org>; Tue, 07 Feb 2017 08:34:04 +0100
From: "Alankar Dhobale" <alankar.dhobale@renuelectronics.com>
To: <yocto@yoctoproject.org>
Date: Tue, 7 Feb 2017 13:08:12 +0530
Message-ID: <054c01d28115$24df5c80$6e9e1580$@renuelectronics.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdKBFSLwFwFhNE0aSeK9f4ypnhPriQ==
X-Provags-ID: V03:K0:tdJ6Q8OQUNa+cuCwlof6K3SAMBpcjogh6fkusd/fye1uyy27Mwf
	hr3BRM5aRs3JLon+FVs1frC06OCH0Sp8vseWHNQqmnNYG6qxzakAsN33synmRDsHx7Day7z
	UAjaDzXyNBCbnY8rP2HA+m4OetS47y/QXfdXEX5P3Ou9QYig0DnjYRVBhtlRFcayR28ofG8
	lzY0826S6eWJWfmpEKwWw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:ci6rTYikAWE=:IYqTypb3lCb8va7zGvtooa
	WJIn3ajR4eWhPW8/XHJZFFdawzZ1ppF/Md/YhOhmxGjQki1x3UvV4wVdS3NnsQkt+SPzWbgn2
	C4yGtJOsbJ7KoTHYatP2dKcLEYH4jYg4N9MQHtIKmWZimaey01NKgG7gUn5Upg8QS5BZ2s8/e
	vAkUdKd23A9V5sv9g9w30PUlWdfzk7ftbev/jQzXyjvNs9QYlEHW6pEyxFXjYMmPYF8ERIo4a
	KS38SYhgXRo8u50Ibs3ZW21nHnrutyTXyeWwplUGApMAAtIgjmdVt0XJQkaqwBa86xhgVva/i
	b73Z0UZUc3EZRVxUfFCPM/RDbFfTEot4WayQXc6HfgePjWq1jOUOLxFEsk9pdRCxw4QZVao7R
	cXKX/eJICZlVjA3O0jr97RqD83fhWooFJ5pqfdMiCoHCat/uHDQ02MkCO57sdAVIWrWhac5Xl
	uEX9IJAxLETr4gdGCu1fFTFGhk2WAB5IcvkYq6Ni53EWg+oEwiCCExizWtoShzmJooeYeMlaG
	+QS77o2TVVSO9nDuNbpjAhdTeBWVC3uiqGT5q+4RMse+awbWmmbGtmBPySvEkXdrUyNf5KH0q
	9HKOxIyK4B/qZOMtx4WgnPbtidpt6SxBaaVmfuWE+ax1so/TNZCq6ltRZYU/6qu0JSIG9j8KY
	o3uufiatydk7+hHg7IO1k2Cdgc/NwTFas+gifTg6agNf5ezrcJ1NmdtcT+XoQWhHidANQua3n
	+XHcX7T0XL3n/VwOmgB5Ez33XnmMQdlxg1Az1Q==
Subject: Qt/QML support on i.MX6 ultralite
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
X-List-Received-Date: Tue, 07 Feb 2017 07:39:12 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_054D_01D28143.3E9882E0"
Content-Language: en-us

------=_NextPart_000_054D_01D28143.3E9882E0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am working on getting Qt/QML on i.mx6 Ultra lite. As there is no hardware
GPU on i.MX6 ultralite, I am trying to get qt 2D renderer on it so that
Qt/QML can use software libraries.

 

To do this I have done following

 

1.       Got fsl-community-bsp from morty branch, as morty supports QT
5.7.1, and to use Qt 2D renderer we need Qt 5.7 and above

2.       Then i prepared a build fslc-framebuffer with adding Qt components
support in my recipes, also build meta-toolchain-qt5, installed and
configured SDK to my Qt 5.8

3.       Prepared small Qt-quick application and compiled with same SDK and
trying to run it on i.MX6UL evk. I got an error as EGL_EXT_device_base
missing. 

4.       I found that software libraries are missing for 2D renderer. So I
followed following link and built those libraries and also added includes to
SDK and re-compiled the application

a.
http://doc.qt.io/QtQuick2DRenderer/qtquick2drenderer-installation-guide.html

5.       Now when I try to run the application EGL missing error has gone,
but got an error that Qt plug-in xcb is missing. I am not sure about this
error as I built the image with DISTRO as fslc-framebuffer. Also I am
running the application with -platform eglfs

6.       To confirm my build machine and recipes setup I also built image
for mx6 solox frame buffer, which runs fine and does not show error for xcb

 

Can somebody please help me on this? 

 

Also as Yocto morty is released in Nov 2016, when it will be released for
fsl-community-bsp. Any updates are coming for i.mx6ultralite for software
graphics libraries?

 

Do we expect to get Qt quick 2D renderer support for mx6 ultralite in morty
release for fsl-community-bsp?

 

Kind Regards,

Alankar 

 


------=_NextPart_000_054D_01D28143.3E9882E0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
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
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:2133132759;
	mso-list-type:hybrid;
	mso-list-template-ids:1501569034 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>I am =
working on getting Qt/QML on i.mx6 Ultra lite. As there is no hardware =
GPU on i.MX6 ultralite, I am trying to get qt 2D renderer on it so that =
Qt/QML can use software libraries.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>To do this I =
have done following<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoListParagraph =
style=3D'text-indent:-.25in;mso-list:l0 level1 lfo1'><![if =
!supportLists]><span style=3D'mso-list:Ignore'>1.<span =
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]>Got =
fsl-community-bsp from morty branch, as morty supports QT 5.7.1, and to =
use Qt 2D renderer we need Qt 5.7 and above<o:p></o:p></p><p =
class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><span style=3D'mso-list:Ignore'>2.<span =
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span><![endif]>Then i prepared a build fslc-framebuffer with =
adding Qt components support in my recipes, also build =
meta-toolchain-qt5, installed and configured SDK to my Qt =
5.8<o:p></o:p></p><p class=3DMsoListParagraph =
style=3D'text-indent:-.25in;mso-list:l0 level1 lfo1'><![if =
!supportLists]><span style=3D'mso-list:Ignore'>3.<span =
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span><![endif]>Prepared small Qt-quick application and compiled =
with same SDK and trying to run it on i.MX6UL evk. I got an error as =
EGL_EXT_device_base missing. <o:p></o:p></p><p class=3DMsoListParagraph =
style=3D'text-indent:-.25in;mso-list:l0 level1 lfo1'><![if =
!supportLists]><span style=3D'mso-list:Ignore'>4.<span =
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]>I =
found that software libraries are missing for 2D renderer. So I followed =
following link and built those libraries and also added includes to SDK =
and re-compiled the application<o:p></o:p></p><p =
class=3DMsoListParagraph =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l0 level2 =
lfo1'><![if !supportLists]><span style=3D'mso-list:Ignore'>a.<span =
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]><a =
href=3D"http://doc.qt.io/QtQuick2DRenderer/qtquick2drenderer-installation=
-guide.html">http://doc.qt.io/QtQuick2DRenderer/qtquick2drenderer-install=
ation-guide.html</a><o:p></o:p></p><p class=3DMsoListParagraph =
style=3D'text-indent:-.25in;mso-list:l0 level1 lfo1'><![if =
!supportLists]><span style=3D'mso-list:Ignore'>5.<span =
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]>Now =
when I try to run the application EGL missing error has gone, but got an =
error that Qt plug-in xcb is missing. I am not sure about this error as =
I built the image with DISTRO as fslc-framebuffer. Also I am running the =
application with &#8211;platform eglfs<o:p></o:p></p><p =
class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><span style=3D'mso-list:Ignore'>6.<span =
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]>To =
confirm my build machine and recipes setup I also built image for mx6 =
solox frame buffer, which runs fine and does not show error for =
xcb<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Can somebody please help me on this? <o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Also as =
Yocto morty is released in Nov 2016, when it will be released for =
fsl-community-bsp. Any updates are coming for i.mx6ultralite for =
software graphics libraries?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Do we expect =
to get Qt quick 2D renderer support for mx6 ultralite in morty release =
for fsl-community-bsp?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>Kind =
Regards,<o:p></o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'color:black'>Alankar </span></b><span =
style=3D'font-size:10.0pt;font-family:"Times New =
Roman","serif";color:black'><o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_054D_01D28143.3E9882E0--
