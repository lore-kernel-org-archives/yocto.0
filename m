Return-Path: <howard.alyne@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F28BE00747
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 07:53:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q34ErdxA000939
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 4 Apr 2012 07:53:39 -0700 (PDT)
Received: from ALA-MBA.corp.ad.wrs.com ([169.254.1.100]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.01.0255.000;
	Wed, 4 Apr 2012 07:53:39 -0700
From: "Alyne, Howard" <howard.alyne@windriver.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Experience survey of using Yocto 1.2
Thread-Index: Ac0ScmWMJikxkCSqT4Cu/jtwZS7llw==
Date: Wed, 4 Apr 2012 14:53:41 +0000
Message-ID: <B4D5A09B3722814F85BD757B8F2501125758810F@ALA-MBA.corp.ad.wrs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.39.140]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 04 Apr 2012 08:00:53 -0700
Subject: Experience survey of using Yocto 1.2
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
X-List-Received-Date: Wed, 04 Apr 2012 14:53:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B4D5A09B3722814F85BD757B8F2501125758810FALAMBAcorpadwrs_"

--_000_B4D5A09B3722814F85BD757B8F2501125758810FALAMBAcorpadwrs_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Experience survey of using Yocto 1.2



Q: Which architecture did you choose to build?

A:  qemu x86 and beagleboard



Q: How easily were you able to build an image and boot an image?

A:  very simple. The format of the local.conf is straight forward





Q: Is there any surprise to you in the process of doing this Beta testing? =
If so, would you please describe it and tell us how you expected it to work=
?

A:  It took long to build than I expected.  Not sure if the parallel build =
on my machine was working properly.





Q: How do you like our HOB interface? Please provide us with your thoughts =
and suggestions on HOB interface and functionality.

A:  I had trouble using hob for the beagleboard.  I only got to play with i=
t for qemu.



I had trouble with package selection. When I tried to build a package list,=
 it often didn't come back with a list.

I also saw a number of errors reported in the background terminal when hob =
was launched.

It just reported building packages list ... for a long time.  Not sure what=
 it was doing.

Since I haven't seen this work to completion, not sure where to file a defe=
ct.





Q: Was it easy to find the support you needed to build and boot an image?

A:   yes





Q: Which Bugzilla reports did you submit?

A:  Bug 2232 - hob fails to configure project for beagleboard





Q: Did you try anything else with Yocto 1.2?

A:  I am still in the process of setting up a gdbserver test with beagleboa=
rd.

I would like to have a easier way to select to create a debug filesystem.

I think you can do this with hob, but I had troubles above.





Q: What would you like to have in Yocto Project for future releases?
A:  In the next beta phase, it would be good to get a kick off meeting to g=
ot over new features for that release.
We could go over suggestion to "divide and conquer" what we should focus on=
.

Also a primer on hob might be a good discussion.



I only got to work with it for a few days, since I was on vacation all last=
 week.
Considering the short amount of time spent, it went fairly well.
Howard Alyne
Sr. Engineering Specialist
WIND RIVER | ph 847-658-7040 | cell 847-302-5610
howard.alyne@windriver.com<blocked::blocked::mailto:k@windriver.com> |www.w=
indriver.com



--_000_B4D5A09B3722814F85BD757B8F2501125758810FALAMBAcorpadwrs_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 11 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:Cambria;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
	{mso-style-type:personal-compose;
	font-family:Arial;
	color:windowtext;}
p.Default, li.Default, div.Default
	{margin:0in;
	margin-bottom:.0001pt;
	text-autospace:none;
	font-size:12.0pt;
	font-family:Cambria;
	color:black;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
-->
</style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"Section1">
<p class=3D"Default"><b><font size=3D"4" color=3D"#4f81bc" face=3D"Cambria"=
><span style=3D"font-size:13.0pt;color:#4F81BC;font-weight:bold">Experience=
 survey of using Yocto 1.2
<o:p></o:p></span></font></b></p>
<p class=3D"Default"><font size=3D"4" color=3D"#4f81bc" face=3D"Cambria"><s=
pan style=3D"font-size:13.0pt;color:#4F81BC"><o:p>&nbsp;</o:p></span></font=
></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">Q: Which architecture did you choose to build?
<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">A:&nbsp; qemu x86 and beagleboard<o:p></o:p></s=
pan></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">&nbsp;<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">Q: How easily were you able to build an image a=
nd boot an image?
<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">A:&nbsp; very simple. The format of the local.c=
onf is straight forward<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">&nbsp;<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">Q: Is there any surprise to you in the process =
of doing this Beta testing? If so, would you please describe it and tell us=
 how you expected it
 to work? <o:p></o:p></span></font></p>
<p class=3D"Default" style=3D"page-break-before:always"><font size=3D"2" co=
lor=3D"black" face=3D"Calibri"><span style=3D"font-size:11.0pt;font-family:=
Calibri">A: &nbsp;It took long to build than I expected. &nbsp;Not sure if =
the parallel build on my machine was working properly.<o:p></o:p></span></f=
ont></p>
<p class=3D"Default" style=3D"page-break-before:always"><font size=3D"2" co=
lor=3D"black" face=3D"Calibri"><span style=3D"font-size:11.0pt;font-family:=
Calibri"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"Default" style=3D"page-break-before:always"><font size=3D"2" co=
lor=3D"black" face=3D"Calibri"><span style=3D"font-size:11.0pt;font-family:=
Calibri"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">Q: How do you like our HOB interface? Please pr=
ovide us with your thoughts and suggestions on HOB interface and functional=
ity.
<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">A: &nbsp;I had trouble using hob for the beagle=
board. &nbsp;I only got to play with it for qemu.<o:p></o:p></span></font><=
/p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">I had trouble with package selection. When I tr=
ied to build a package list, it often didn&#8217;t come back with a list. &=
nbsp;<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">I also saw a number of errors reported in the b=
ackground terminal when hob was launched.<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">It just reported building packages list &#8230;=
 for a long time. &nbsp;Not sure what it was doing.<o:p></o:p></span></font=
></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">Since I haven&#8217;t seen this work to complet=
ion, not sure where to file a defect.<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">Q: Was it easy to find the support you needed t=
o build and boot an image?
<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">A: &nbsp;&nbsp;yes<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">Q: Which Bugzilla reports did you submit?
<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">A: &nbsp;Bug 2232 - hob fails to configure proj=
ect for beagleboard<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">Q: Did you try anything else with Yocto 1.2?
<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">A:&nbsp; I am still in the process of setting u=
p a gdbserver test with beagleboard. &nbsp;<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">I would like to have a easier way to select to =
create a debug filesystem.<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">I think you can do this with hob, but I had tro=
ubles above.<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">&nbsp;<o:p></o:p></span></font></p>
<p class=3D"Default"><font size=3D"2" color=3D"black" face=3D"Calibri"><spa=
n style=3D"font-size:
11.0pt;font-family:Calibri">Q: What would you like to have in Yocto Project=
 for future releases?
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt;
font-family:Calibri">A:&nbsp; In the next beta phase, it would be good to g=
et a kick off meeting to got over new features for that release.<o:p></o:p>=
</span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt;
font-family:Calibri">We could go over suggestion to &#8220;divide and conqu=
er&#8221; what we should focus on.<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt;
font-family:Calibri"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt;
font-family:Calibri">Also a primer on hob might be a good discussion.<o:p><=
/o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt;
font-family:Calibri"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt;
font-family:Calibri"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt;
font-family:Calibri"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt;
font-family:Calibri">I only got to work with it for a few days, since I was=
 on vacation all last week.
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt;
font-family:Calibri">Considering the short amount of time spent, it went fa=
irly well.
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><font size=3D"2" face=3D"Calibri"><span style=3D"font-size:11.0pt;=
font-family:Calibri">Ho</span></font><font size=3D"2" face=3D"Comic Sans MS=
"><span style=3D"font-size:10.0pt;font-family:&quot;Comic Sans MS&quot;">wa=
rd
 Alyne<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;
margin-left:3.75pt">
<font size=3D"2" face=3D"Comic Sans MS"><span style=3D"font-size:
10.0pt;font-family:&quot;Comic Sans MS&quot;">Sr. Engineering Specialist<o:=
p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;
margin-left:3.75pt">
<b><font size=3D"2" color=3D"red" face=3D"Times New Roman"><span style=3D"f=
ont-size:10.0pt;color:red;font-weight:bold">WIND RIVER</span></font></b><fo=
nt size=3D"2"><span style=3D"font-size:10.0pt">
<font color=3D"gray"><span style=3D"color:
gray">|&nbsp;ph 847-658-7040&nbsp;| cell 847-302-5610&nbsp;&nbsp;</span></f=
ont><o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;
margin-left:3.75pt">
<font size=3D"2" color=3D"gray" face=3D"Times New Roman"><span style=3D"fon=
t-size:10.0pt;color:gray">howard.alyne</span></font><font size=3D"2"><span =
style=3D"font-size:10.0pt"><a href=3D"blocked::blocked::mailto:k@windriver.=
com" title=3D"blocked::blocked::mailto:k@windriver.com=0A=
blocked::mailto:k@windriver.com=0A=
mailto:k@windriver.com=0A=
mailto:kevin.curry@windriver.com"><font color=3D"gray" title=3D"blocked::bl=
ocked::mailto:k@windriver.com"><span title=3D"blocked::blocked::mailto:k@wi=
ndriver.com"><span style=3D"color:gray">@windriver.com</span></span></font>=
</a><font color=3D"gray"><span style=3D"color:gray">&nbsp;|www.windriver.co=
m</span></font></span></font><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;
margin-left:3.75pt">
<font size=3D"3" face=3D"Times New Roman"><span style=3D"font-size:
12.0pt">&nbsp;</span></font><font size=3D"2"><span style=3D"font-size:10.0p=
t"><o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:
12.0pt"><o:p>&nbsp;</o:p></span></font></p>
</div>
</body>
</html>

--_000_B4D5A09B3722814F85BD757B8F2501125758810FALAMBAcorpadwrs_--
