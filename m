Return-Path: <prvs=0324ce98bd=NAVANI.Srivastava@lnties.com>
Received: from mailout2.ltindia.com (mailout2.ltindia.com [125.18.18.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 983D6E006B0
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 02:56:14 -0800 (PST)
X-AuditID: c0a8466b-b7cb2ae000006238-09-4ee1e5befd46
Received: from POCITMSEXHUB03.LntUniverse.com ( [10.2.1.60])
	by mailout2.ltindia.com (Symantec Mail Security) with SMTP id
	6C.9E.25144.EB5E1EE4; Fri,  9 Dec 2011 16:11:03 +0530 (IST)
Received: from POCITMSEXMB03.LntUniverse.com ([fe80::f495:7e6e:4c34:a3a9]) by
	POCITMSEXHUB03.LntUniverse.com ([::1]) with mapi id 14.01.0218.012;
	Fri, 9 Dec 2011 16:11:02 +0530
From: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Problem related to moc and uic binaries
Thread-Index: Acy2XrbP4xVb9KCnSjWh3W912timhw==
Date: Fri, 9 Dec 2011 10:41:01 +0000
Message-ID: <9BACABF0C6B14A4D8C33B42A795119BE096D651C@POCITMSEXMB03.LntUniverse.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.37.159]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprNKsWRmVeSWpSXmKPExsXCxcRoo+v28qGfwY6bLBaTXq5hc2D0aD/R
	xxbAGMVtk5RYUhacmZ6nb5fAnXH7JmtBu27FlQXn2RoYF6t3MXJySAiYSMz5/okdwhaTuHBv
	PVsXIxeHkMAORokrD5YwQzhbGCW2rbjIDFLFJmAj8fj8OhYQW0TAVOLFsS9sILawgIHElX37
	2WDiuzfcgqrRk3jQuRIsziKgIvHn5nKwOK9AiMTb5mesIDYj0Obvp9YwgdjMAuISt57MZ4K4
	SEBiyZ7zzBC2qMTLx/+A6jmAbCWJxys5QUxmgXyJqZv1ICYKSpyc+YRlAqPQLCSDZiFUzUJS
	BVGiI7Fg9yc2CFtbYtnC18ww9pkDj5mQxRcwsq9iFMlNzMzJLy0x0sspycxLyUzUS87P3cQI
	jIYDK9yydzB+3KNyiFGAg1GJh9dS4KGfEGtiWXFl7iFGSQ4mJVFe/edAIb6k/JTKjMTijPii
	0pzU4kOMEhzMSiK8xy4C5XhTEiurUovyYVLSHCxK4rzn5I/5CQmkJ5akZqemFqQWwWRlODiU
	JHgnvwBqFCxKTU+tSMvMKUFIM3FwgggukA08QBtOgBTyFhck5hZnpkMUnWKUlBLnXQCSEABJ
	ZJTmwQ14xSgO9Icw7wSQLA8wxcF1vQIayAQ08Ev2A5CBJYkIKakGxqZPP0sF87fFzrdunlwt
	2qFe3VemdEq2OoUlNaUi4l1z8mvXFivJm1uNjnx/nKwTvP4sU/SdBDmvJd/mWfHuWnl7lb5c
	pUObbfNHcdeFG5SMFmW0H7XmTvsl7DBBZdWjW2y9Uw8sP3X0J7/fsz98/futMyeefv1kJe/Z
	SWd6J+rmTrvM+n5VgxJLcUaioRZzUXEiANlHBdcuAwAA
X-Mailman-Approved-At: Fri, 09 Dec 2011 09:02:35 -0800
Subject: Problem related to moc and uic binaries
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
X-List-Received-Date: Fri, 09 Dec 2011 10:56:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9BACABF0C6B14A4D8C33B42A795119BE096D651CPOCITMSEXMB03Ln_"

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D651CPOCITMSEXMB03Ln_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am compiling Qt-4.6.3 with yocto for ARM architecture. Can you please tel=
l me which and all utilities I am supposed to compile to get moc and uic bi=
naries. I tried bitbake -b meta-toolchain.bb to get theses binaries but it =
it giving me following error-

Processing task-poky-standalone-sdk-target...
Unable to find package task-poky-standalone-sdk-target!.

To get task-poky-standalone-sdk-target I compiled recipes-gnome/tasks/task-=
poky-standalone-gmae-sdk-target.bb. On successful compilation of task-poky-=
standalone-gmae-sdk-target.bb also I am getting the same error. Please let =
me know where I am doing wrong.

Thanks & Regards,
Navani Kamal Srivastava


Larsen & Toubro Limited

www.larsentoubro.com<http://www.larsentoubro.com/>

This mail is classified as: ( ) L&T Proprietary ( ) L&T Confidential (X) L&=
T Internal Use ( ) L&T General Business
This email may contain confidential or privileged information for the inten=
ded recipient(s). If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.




Larsen & Toubro Limited

www.larsentoubro.com

This Email may contain confidential or privileged information for the inten=
ded recipient (s) If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D651CPOCITMSEXMB03Ln_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style>
<!--
@font-face
	{font-family:Calibri}
@font-face
	{font-family:Tahoma}
@font-face
	{font-family:"Poor Richard"}
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif"}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline}
span.EmailStyle17
	{font-family:"Tahoma","sans-serif";
	color:windowtext}
.MsoChpDefault
	{font-family:"Calibri","sans-serif"}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.WordSection1
	{}
-->
</style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Hi,</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">I am compiling Qt-4.6.3 with yocto for A=
RM architecture. Can you please tell me which and all utilities I am suppos=
ed to compile to get moc and uic binaries. I tried bitbake
 -b meta-toolchain.bb to get theses binaries but it it giving me following =
error-</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Processing task-poky-standalone-sdk-targ=
et...</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Unable to find package task-poky-standal=
one-sdk-target!.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">To get task-poky-standalone-sdk-target I=
 compiled recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb. On s=
uccessful compilation of task-poky-standalone-gmae-sdk-target.bb
 also I am getting the same error. Please let me know where I am doing wron=
g.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal">Thanks &amp; Regards,</p>
<p class=3D"MsoNormal">Navani Kamal Srivastava</p>
<p class=3D"MsoNormal"><br>
<br>
<b>Larsen &amp; Toubro Limited <br>
<br>
<a href=3D"http://www.larsentoubro.com/"><span style=3D"color:blue">www.lar=
sentoubro.com</span></a>
<br>
<br>
</b><span style=3D"font-family:&quot;Poor Richard&quot;,&quot;serif&quot;; =
color:black">This mail is classified as: ( ) L&amp;T Proprietary ( ) L&amp;=
T Confidential (X) L&amp;T Internal Use ( ) L&amp;T General Business</span>=
<span style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;; color:black"><br>
This email may contain confidential or privileged information for the inten=
ded recipient(s). If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.
<br>
<br>
</span></p>
<p class=3D"MsoNormal">&nbsp;</p>
</div>
<br>
<br>
<b>Larsen &amp; Toubro Limited <br>
<br>
www.larsentoubro.com <br>
<br>
</b>This Email may contain confidential or privileged information for the i=
ntended recipient (s) If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.
</body>
</html>

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D651CPOCITMSEXMB03Ln_--
