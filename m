Return-Path: <John_Mehaffey@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AAD7E00597
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 07:21:38 -0700 (PDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1URkHp-0006bb-Df from John_Mehaffey@mentor.com ;
	Mon, 15 Apr 2013 07:21:37 -0700
Received: from SVR-ORW-FEM-03.mgc.mentorg.com ([147.34.97.39]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Mon, 15 Apr 2013 07:21:36 -0700
Received: from NA-MBX-03.mgc.mentorg.com ([fe80::9a:1569:df57:45b8]) by
	SVR-ORW-FEM-03.mgc.mentorg.com ([147.34.97.39]) with mapi id
	14.01.0289.001; Mon, 15 Apr 2013 07:21:36 -0700
From: "Mehaffey, John" <John_Mehaffey@mentor.com>
To: Krishna Dwivedi <Krishna.Dwivedi@aricent.com>, Khem Raj
	<raj.khem@gmail.com>
Thread-Topic: [yocto] Arguement list too big error in bitbake meta-toolchain
	for MIPS architechture-Gentle Reminder
Thread-Index: AQHOOaFW0iO893pJZE+uTakMNSOespjXU/Ll
Date: Mon, 15 Apr 2013 14:21:35 +0000
Message-ID: <371E240E6FC1D44DA5E51EE9DCDCB7845E399028@NA-MBX-03.mgc.mentorg.com>
References: <B60DC3E72D20B040854608D81E44050F64F451A93E@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<C0A8E72C-810B-4558-BC59-232DE17E0804@gmail.com>,
	<B60DC3E72D20B040854608D81E44050F64F451A978@GUREXMB01.ASIAN.AD.ARICENT.COM>
In-Reply-To: <B60DC3E72D20B040854608D81E44050F64F451A978@GUREXMB01.ASIAN.AD.ARICENT.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.34.91.1]
MIME-Version: 1.0
X-OriginalArrivalTime: 15 Apr 2013 14:21:36.0496 (UTC)
	FILETIME=[89A54700:01CE39E4]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Arguement list too big error in bitbake meta-toolchain for MIPS architechture-Gentle Reminder
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
X-List-Received-Date: Mon, 15 Apr 2013 14:21:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_371E240E6FC1D44DA5E51EE9DCDCB7845E399028NAMBX03mgcmento_"

--_000_371E240E6FC1D44DA5E51EE9DCDCB7845E399028NAMBX03mgcmento_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Take a look at the glob "/home/netlogic/yocto/poky/build/tmp/work/mips32-po=
ky-linux/eglibc-locale/2.17-r0/packages-split/*"

Most likely there is a recursion in there.

You can also check "getconf ARG_MAX" to see if your shell is configured san=
ely, it should return about 2 megabytes.

Sincerely,
John Mehaffey
Senior System Architect (Automotive)
Mentor Graphics Corporation
________________________________
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of Krishna Dwivedi [Krishna.Dwivedi@aricent.com]
Sent: Sunday, April 14, 2013 11:19 PM
To: Khem Raj
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Arguement list too big error in bitbake meta-toolchain=
 for MIPS architechture-Gentle Reminder

Hi,

I am using bash shell and fedora 18 operating system.

Regards,
Krishna

From: Khem Raj [mailto:raj.khem@gmail.com]
Sent: Monday, April 15, 2013 11:45 AM
To: Krishna Dwivedi
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Arguement list too big error in bitbake meta-toolchain=
 for MIPS architechture-Gentle Reminder


On Apr 14, 2013, at 10:38 PM, Krishna Dwivedi <Krishna.Dwivedi@aricent.com<=
mailto:Krishna.Dwivedi@aricent.com>> wrote:


Hi All,

Thanks in advance.
Can anyone please let me know what could be issue here.

Regards,
Krishna


From: Krishna Dwivedi
Sent: Thursday, April 11, 2013 7:50 PM
To: 'yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>'
Subject: Arguement list too big error in bitbake meta-toolchain for MIPS ar=
chitechture

Hi All,

I am trying to build recipe meta-toolchain for MIPS architecture but runnin=
g into errors. Can anyone please let me know, if I am missing anything here=
 or what could be root cause of this and how can I fix it. I have followed =
these steps:

1)In  WORKDIR/build/conf/local.conf-I selected MACHINE ?=3D "qemumips" for =
mips architechture.

2)source oe-init-build-env.

3)bitbake meta-toolchain.

In third step,I am running into these errors:

NOTE: recipe nativesdk-gettext-0.18.2-r0: task do_configure: Started
ERROR: Error executing a python function in /home/netlogic/yocto/poky/meta/=
recipes-core/eglibc/eglibc-locale_2.17.bb:
CalledProcessError: Command 'cp -al /home/netlogic/yocto/poky/build/tmp/wor=
k/mips32-poky-linux/eglibc-locale/2.17-r0/packages-split/* /home/netlogic/y=
octo/poky/build/tmp/work/mips32-poky-linux/eglibc-locale/2.17-r0/sstate-bui=
ld-package//packages-split' returned non-zero exit status 126 with output /=
bin/sh: /bin/cp: Argument list too long


what shell are you using on build host and what OS does it run ?






=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Please refer to http://www.aricent.com/legal/email_disclaimer.html
for important disclosures regarding this electronic communication.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

--_000_371E240E6FC1D44DA5E51EE9DCDCB7845E399028NAMBX03mgcmento_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style>=0A=
<!--=0A=
@font-face=0A=
	{font-family:"Cambria Math"}=0A=
@font-face=0A=
	{font-family:Calibri}=0A=
@font-face=0A=
	{font-family:Tahoma}=0A=
p.MsoNormal, li.MsoNormal, div.MsoNormal=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:12.0pt;=0A=
	font-family:"Times New Roman","serif"}=0A=
a:link, span.MsoHyperlink=0A=
	{color:blue;=0A=
	text-decoration:underline}=0A=
a:visited, span.MsoHyperlinkFollowed=0A=
	{color:purple;=0A=
	text-decoration:underline}=0A=
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:8.0pt;=0A=
	font-family:"Tahoma","sans-serif"}=0A=
span.BalloonTextChar=0A=
	{font-family:"Tahoma","sans-serif"}=0A=
span.EmailStyle20=0A=
	{font-family:"Calibri","sans-serif";=0A=
	color:#1F497D}=0A=
.MsoChpDefault=0A=
	{font-size:10.0pt}=0A=
@page WordSection1=0A=
	{margin:1.0in 1.0in 1.0in 1.0in}=0A=
-->=0A=
</style><style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin=
-bottom:0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1" lang=3D"EN-US" link=3D"blue" vlink=3D"purple=
">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Take a look at the glob &quot;<span lang=3D"en-US"><font face=3D"Tim=
es New Roman,serif" size=3D"3"><span style=3D"font-size:12pt;"><font face=
=3D"Calibri,sans-serif" size=3D"2"><span style=3D"font-size:11pt;">/home/ne=
tlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc-locale/2.17-r0/pa=
ckages-split/*&quot;<br>
<br>
<font size=3D"2">M<font size=3D"2">ost like<font size=3D"2">ly <font size=
=3D"2">there is a recursion in there.<br>
<br>
<font size=3D"2">You <font size=3D"2">can also check &quot;getconf ARG_MAX&=
quot; to see if your shell is confi<font size=3D"2">gured sanely, it should=
 return about 2 megaby<font size=3D"2">tes<font size=3D"2">.</font></font><=
/font></font></font></font></font></font></font></span></font></span></font=
></span><br>
<div><br>
<div style=3D"font-family:Tahoma; font-size:13px">
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:10pt"=
>
<div class=3D"PlainText">Sincerely,<br>
John Mehaffey<br>
Senior System Architect (Automotive)<br>
Mentor Graphics Corporation</div>
</span></font></div>
</div>
</div>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div style=3D"direction: ltr;" id=3D"divRpF377813"><font color=3D"#000000" =
face=3D"Tahoma" size=3D"2"><b>From:</b> yocto-bounces@yoctoproject.org [yoc=
to-bounces@yoctoproject.org] on behalf of Krishna Dwivedi [Krishna.Dwivedi@=
aricent.com]<br>
<b>Sent:</b> Sunday, April 14, 2013 11:19 PM<br>
<b>To:</b> Khem Raj<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Arguement list too big error in bitbake meta-to=
olchain for MIPS architechture-Gentle Reminder<br>
</font><br>
</div>
<div></div>
<div>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Hi,</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">I am using bash shell a=
nd fedora 18 operating system.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Regards,</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Krishna</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #B5C4DF 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt; font-family:&quo=
t;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-=
size:10.0pt; font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Khem R=
aj [mailto:raj.khem@gmail.com]
<br>
<b>Sent:</b> Monday, April 15, 2013 11:45 AM<br>
<b>To:</b> Krishna Dwivedi<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Arguement list too big error in bitbake meta-to=
olchain for MIPS architechture-Gentle Reminder</span></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">&nbsp;</p>
<div>
<div>
<p class=3D"MsoNormal">On Apr 14, 2013, at 10:38 PM, Krishna Dwivedi &lt;<a=
 href=3D"mailto:Krishna.Dwivedi@aricent.com" target=3D"_blank">Krishna.Dwiv=
edi@aricent.com</a>&gt; wrote:</p>
</div>
<p class=3D"MsoNormal"><br>
<br>
</p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Hi All,</span><span sty=
le=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,&quot;sans-serif&qu=
ot;"></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span><span styl=
e=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,&quot;sans-serif&quo=
t;"></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Thanks in advance.</spa=
n><span style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;"></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Can anyone please let m=
e know what could be issue here.</span><span style=3D"font-size:11.0pt; fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span><span styl=
e=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,&quot;sans-serif&quo=
t;"></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Regards,</span><span st=
yle=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;"></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Krishna</span><span sty=
le=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,&quot;sans-serif&qu=
ot;"></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span><span styl=
e=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,&quot;sans-serif&quo=
t;"></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span><span styl=
e=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,&quot;sans-serif&quo=
t;"></span></p>
</div>
<div>
<div style=3D"border:none; border-top:solid #B5C4DF 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt; font-family:&quo=
t;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span class=3D"apple=
-converted-space"><span style=3D"font-size:10.0pt; font-family:&quot;Tahoma=
&quot;,&quot;sans-serif&quot;">&nbsp;</span></span><span style=3D"font-size=
:10.0pt; font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">Krishna
 Dwivedi<span class=3D"apple-converted-space">&nbsp;</span><br>
<b>Sent:</b><span class=3D"apple-converted-space">&nbsp;</span>Thursday, Ap=
ril 11, 2013 7:50 PM<br>
<b>To:</b><span class=3D"apple-converted-space">&nbsp;</span>'<a href=3D"ma=
ilto:yocto@yoctoproject.org" target=3D"_blank"><span style=3D"color:purple"=
>yocto@yoctoproject.org</span></a>'<br>
<b>Subject:</b><span class=3D"apple-converted-space">&nbsp;</span>Arguement=
 list too big error in bitbake meta-toolchain for MIPS architechture</span>=
<span style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,&quot;sans=
-serif&quot;"></span></p>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">Hi All,</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">I am trying to build recipe meta-toolc=
hain for MIPS architecture but running into errors. Can anyone please let m=
e know, if I am missing anything here or what could be root
 cause of this and how can I fix it. I have followed these steps:</span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">1)In&nbsp; WORKDIR/build/conf/local.co=
nf-I selected MACHINE ?=3D &quot;qemumips&quot; for mips architechture.</sp=
an></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">2)source oe-init-build-env.</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">3)bitbake meta-toolchain.</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt; font-family:&quo=
t;Calibri&quot;,&quot;sans-serif&quot;">In third step,I am running into the=
se errors:</span></b><span style=3D"font-size:11.0pt; font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;"></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">NOTE: recipe nativesdk-gettext-0.18.2-=
r0: task do_configure: Started</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">ERROR: Error executing a python functi=
on in /home/netlogic/yocto/poky/meta/recipes-core/eglibc/eglibc-locale_2.17=
.bb:</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">CalledProcessError: Command 'cp -al /h=
ome/netlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc-locale/2.17=
-r0/packages-split/* /home/netlogic/yocto/poky/build/tmp/work/mips32-poky-l=
inux/eglibc-locale/2.17-r0/sstate-build-package//packages-split'
 returned non-zero exit status 126 with output /bin/sh: /bin/cp:<span class=
=3D"apple-converted-space">&nbsp;</span><b>Argument list too long</b></span=
></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;</p>
</div>
<div>
<p class=3D"MsoNormal">what shell are you using on build host and what OS d=
oes it run ?</p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;</p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;</p>
</div>
</div>
</div>
<br>
<font color=3D"Gray" face=3D"Arial" size=3D"2"><br>
<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
Please refer to http://www.aricent.com/legal/email_disclaimer.html<br>
for important disclosures regarding this electronic communication.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
</font></div>
</div>
</div>
</body>
</html>

--_000_371E240E6FC1D44DA5E51EE9DCDCB7845E399028NAMBX03mgcmento_--
