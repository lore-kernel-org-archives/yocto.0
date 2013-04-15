Return-Path: <Krishna.Dwivedi@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [180.151.2.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98F6CE006CB
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2013 23:20:16 -0700 (PDT)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id B173936B50;
	Mon, 15 Apr 2013 11:49:56 +0530 (IST)
Received: from GUREXHT01.ASIAN.AD.ARICENT.COM (gurexht01.asian.ad.aricent.com
	[10.203.171.136])
	by jaguar.aricent.com (Postfix) with ESMTP id 990CB36B51;
	Mon, 15 Apr 2013 11:49:56 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.130]) by
	GUREXHT01.ASIAN.AD.ARICENT.COM ([10.203.171.136]) with mapi;
	Mon, 15 Apr 2013 11:49:56 +0530
From: Krishna Dwivedi <Krishna.Dwivedi@aricent.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Mon, 15 Apr 2013 11:49:55 +0530
Thread-Topic: [yocto] Arguement list too big error in bitbake meta-toolchain
	for MIPS architechture-Gentle Reminder
Thread-Index: Ac45oK3j7rqmR5oUSgOFZsm+UDj+PwAADmvw
Message-ID: <B60DC3E72D20B040854608D81E44050F64F451A978@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <B60DC3E72D20B040854608D81E44050F64F451A93E@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<C0A8E72C-810B-4558-BC59-232DE17E0804@gmail.com>
In-Reply-To: <C0A8E72C-810B-4558-BC59-232DE17E0804@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 15 Apr 2013 06:20:19 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B60DC3E72D20B040854608D81E44050F64F451A978GUREXMB01ASIA_"

--_000_B60DC3E72D20B040854608D81E44050F64F451A978GUREXMB01ASIA_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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

--_000_B60DC3E72D20B040854608D81E44050F64F451A978GUREXMB01ASIA_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<base href=3D"x-msg://1526/"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle20
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I am using bash shell and=
 fedora 18 operating system.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Krishna<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Khem Raj=
 [mailto:raj.khem@gmail.com]
<br>
<b>Sent:</b> Monday, April 15, 2013 11:45 AM<br>
<b>To:</b> Krishna Dwivedi<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Arguement list too big error in bitbake meta-to=
olchain for MIPS architechture-Gentle Reminder<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Apr 14, 2013, at 10:38 PM, Krishna Dwivedi &lt;<a=
 href=3D"mailto:Krishna.Dwivedi@aricent.com">Krishna.Dwivedi@aricent.com</a=
>&gt; wrote:<o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi All,</span><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;</span><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks in advance.</span>=
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Can anyone please let me =
know what could be issue here.</span><span style=3D"font-size:11.0pt;font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;</span><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,</span><span styl=
e=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot=
;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Krishna</span><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;</span><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;</span><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
"><o:p></o:p></span></p>
</div>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span class=3D"apple-=
converted-space"><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&q=
uot;,&quot;sans-serif&quot;">&nbsp;</span></span><span style=3D"font-size:1=
0.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">Krishna
 Dwivedi<span class=3D"apple-converted-space">&nbsp;</span><br>
<b>Sent:</b><span class=3D"apple-converted-space">&nbsp;</span>Thursday, Ap=
ril 11, 2013 7:50 PM<br>
<b>To:</b><span class=3D"apple-converted-space">&nbsp;</span>'<a href=3D"ma=
ilto:yocto@yoctoproject.org"><span style=3D"color:purple">yocto@yoctoprojec=
t.org</span></a>'<br>
<b>Subject:</b><span class=3D"apple-converted-space">&nbsp;</span>Arguement=
 list too big error in bitbake meta-toolchain for MIPS architechture</span>=
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;"><o:p></o:p></span></p>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Hi All,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">I am trying to build recipe meta-toolch=
ain for MIPS architecture but running into errors. Can anyone please let me=
 know, if I am missing anything here or what could be root
 cause of this and how can I fix it. I have followed these steps:<o:p></o:p=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">1)In&nbsp; WORKDIR/build/conf/local.con=
f-I selected MACHINE ?=3D &quot;qemumips&quot; for mips architechture.<o:p>=
</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">2)source oe-init-build-env.<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">3)bitbake meta-toolchain.<o:p></o:p></s=
pan></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">In third step,I am running into thes=
e errors:</span></b><span style=3D"font-size:11.0pt;font-family:&quot;Calib=
ri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">NOTE: recipe nativesdk-gettext-0.18.2-r=
0: task do_configure: Started<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">ERROR: Error executing a python functio=
n in /home/netlogic/yocto/poky/meta/recipes-core/eglibc/eglibc-locale_2.17.=
bb:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">CalledProcessError: Command 'cp -al /ho=
me/netlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc-locale/2.17-=
r0/packages-split/* /home/netlogic/yocto/poky/build/tmp/work/mips32-poky-li=
nux/eglibc-locale/2.17-r0/sstate-build-package//packages-split'
 returned non-zero exit status 126 with output /bin/sh: /bin/cp:<span class=
=3D"apple-converted-space">&nbsp;</span><b>Argument list too long</b><o:p><=
/o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">what shell are you using on build host and what OS d=
oes it run ?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
<br>
<font face=3D"Arial" color=3D"Gray" size=3D"2"><br>
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
</font>
</body>
</html>

--_000_B60DC3E72D20B040854608D81E44050F64F451A978GUREXMB01ASIA_--
