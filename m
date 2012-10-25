Return-Path: <kartikn@renuelectronics.com>
Received: from mout.perfora.net (mout.perfora.net [74.208.4.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CADA3E0045D
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 22:27:18 -0700 (PDT)
Received: from kartik (abs-static-82.32.68.58.aircel.co.in [58.68.32.82])
	by mrelay.perfora.net (node=mrus2) with ESMTP (Nemesis)
	id 0M3zCs-1TA0Gj1Nh4-00riLl; Thu, 25 Oct 2012 01:27:17 -0400
From: "Kartik N" <kartikn@renuelectronics.com>
To: "'Kartik N'" <kartikn@renuelectronics.com>,
	<yocto@yoctoproject.org>
Date: Thu, 25 Oct 2012 10:57:50 +0530
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook, Build 11.0.5510
Thread-Index: Ac2ybDM3XGIOiIJUS1K9C7YcUL4vdwABR0Qg
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.6157
In-Reply-To: 
Message-Id: <0M3zCs-1TA0Gj1Nh4-00riLl@mrelay.perfora.net>
X-Provags-ID: V02:K0:Cfu9lx2srAsMtikhEVUjLEvyQYlJq1bU7O40KmF7oNb
	eMVXD+e4defdb+awdzraXQM26J2otg2rdxCjHnwKnzLwD2NVWd
	UHM4smpjyfQL8jdNr8TWgUSJRx/urV7SeBqlufSUbmDrz1hoYt
	1vEEnSu/gu3pqwlM7i5OC8Wf2nmK8mROoT1/X8kU2ejZqR+qPp
	wxH0J9rtjw0UijUKiUG4y4dYZdlsGEIwkkmFgMj8m+zz0VN/m7
	++dj63+41yCz4tNOSHLw0Y6J6wEIT+JZMAb2t6tPD4IhU4Vd5u
	tK9muuZ51LDfmwZ56KCkafkApJI/S3YVhEr22/MTUTyKfarA5o
	bVIKmNL3Z/Le8GlSxYXZOS5rbEedzMOP3wi/r0glL
Subject: Re: Eclipse ADT plugin configuration error
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
X-List-Received-Date: Thu, 25 Oct 2012 05:27:19 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_000E_01CDB29F.98E2FF90"

------=_NextPart_000_000E_01CDB29F.98E2FF90
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Problem solved.

 

The toolchain root path needs to be pointed to the build directory i.e. in
my case it happens to be:  ~/mybuild  

 

Thanks & Regards,

N.Kartik 

Senior developer  |  Renu Electronics Pvt. Ltd.

  _____  

From: Kartik N [mailto:kartikn@renuelectronics.com] 
Sent: Thursday, October 25, 2012 10:20 AM
To: 'yocto@yoctoproject.org'
Subject: Eclipse ADT plugin configuration error

 

Hi,

    I have bit-baked "meta-ide-support" and also created a sysroot and
kernel image for the imx535qsb.

Then I installed Eclipse following the steps in the ADT manual.

Now I try to set the build environment. I point to the toolchain available
under
~/mybuild/tmp/sysroots/i686-linux/usr/bin/armv7a-vfp-neon-poky-linux-gnueabi

Set sysroot at this: ~/mybuild/tmp/sysroot

But get error message: 

"Yocto Preferences Configuration Error!

Specified Build Tree Toolchain Root does not contain any toolchain yet!

Please run "bitbake meta-ide-support" to build the toolchain."

 

 

Then I tried changing sysroot path to the build folders:
~/mybuild/tmp/deploy/images

Error message: Still the same.

 

What do I really need to check now?

 

 

Thanks & Regards,

N.Kartik 

Senior developer  |  Renu Electronics Pvt. Ltd.

 


------=_NextPart_000_000E_01CDB29F.98E2FF90
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Bookman Old Style";
	panose-1:2 5 6 4 5 5 5 2 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Bookman Old Style";
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Bookman Old Style";
	color:blue;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D2 color=3Dblue face=3D"Bookman Old =
Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old =
Style";color:blue'>Problem
solved.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dblue face=3D"Bookman Old =
Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old =
Style";color:blue'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dblue face=3D"Bookman Old =
Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old =
Style";color:blue'>The
toolchain root path needs to be pointed to the build directory i.e. in =
my case
it happens to be: &nbsp;~/mybuild &nbsp;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dblue face=3D"Bookman Old =
Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old =
Style";color:blue'><o:p>&nbsp;</o:p></span></font></p>

<div>

<p class=3DMsoNormal><font size=3D2 color=3Dblue face=3D"Bookman Old =
Style"><span
style=3D'font-size:10.0pt;font-family:"Bookman Old =
Style";color:blue'>Thanks
&amp; Regards,</span></font><font color=3Dblue><span =
style=3D'color:blue'><o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dblue face=3D"Bookman Old =
Style"><span
style=3D'font-size:10.0pt;font-family:"Bookman Old =
Style";color:blue'>N.Kartik </span></font><font
color=3Dblue><span style=3D'color:blue'><o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dblue face=3D"Bookman Old =
Style"><span
style=3D'font-size:10.0pt;font-family:"Bookman Old =
Style";color:blue'>Senior
developer&nbsp; | &nbsp;Renu Electronics Pvt. =
Ltd.</span></font><o:p></o:p></p>

</div>

<div>

<div class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><font =
size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>

<hr size=3D2 width=3D"100%" align=3Dcenter tabindex=3D-1>

</span></font></div>

<p class=3DMsoNormal><b><font size=3D2 face=3DTahoma><span =
style=3D'font-size:10.0pt;
font-family:Tahoma;font-weight:bold'>From:</span></font></b><font =
size=3D2
face=3DTahoma><span style=3D'font-size:10.0pt;font-family:Tahoma'> =
Kartik N
[mailto:kartikn@renuelectronics.com] <br>
<b><span style=3D'font-weight:bold'>Sent:</span></b> Thursday, October =
25, 2012
10:20 AM<br>
<b><span style=3D'font-weight:bold'>To:</span></b> =
'yocto@yoctoproject.org'<br>
<b><span style=3D'font-weight:bold'>Subject:</span></b> Eclipse ADT =
plugin
configuration error</span></font><o:p></o:p></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old =
Style"'>Hi,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old =
Style"'>&nbsp;&nbsp;&nbsp; I
have bit-baked &#8220;meta-ide-support&#8221; and also created a sysroot =
and
kernel image for the imx535qsb.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old Style"'>Then I =
installed
Eclipse following the steps in the ADT =
manual.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old Style"'>Now I try to =
set the
build environment. I point to the toolchain available under
&nbsp;~/mybuild/tmp/sysroots/i686-linux/usr/bin/armv7a-vfp-neon-poky-linu=
x-gnueabi<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old Style"'>Set sysroot =
at this:
~/mybuild/tmp/sysroot<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old Style"'>But get error =
message:
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old Style"'>&#8220;Yocto
Preferences Configuration Error!<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old Style"'>Specified =
Build Tree
Toolchain Root does not contain any toolchain =
yet!<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old Style"'>Please run
&quot;bitbake meta-ide-support&quot; to build the =
toolchain.&#8221;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old =
Style"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old =
Style"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old Style"'>Then I tried =
changing
sysroot path to the build folders: =
~/mybuild/tmp/deploy/images<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old Style"'>Error =
message: Still
the same.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old =
Style"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old Style"'>What do I =
really need
to check now?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old =
Style"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:11.0pt;font-family:"Bookman Old =
Style"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:10.0pt;font-family:"Bookman Old Style"'>Thanks &amp; =
Regards,</span></font><o:p></o:p></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:10.0pt;font-family:"Bookman Old Style"'>N.Kartik =
</span></font><o:p></o:p></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Bookman Old Style"><span
style=3D'font-size:10.0pt;font-family:"Bookman Old Style"'>Senior =
developer&nbsp;
| &nbsp;Renu Electronics Pvt. Ltd.</span></font><o:p></o:p></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------=_NextPart_000_000E_01CDB29F.98E2FF90--
