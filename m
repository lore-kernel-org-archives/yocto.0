Return-Path: <agikling@lasx.com>
Received: from mx.cbeyond.com (mx.cbeyond.com [66.180.96.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD70BE0137C
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 20:31:31 -0700 (PDT)
X-SBRS: 5.3
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: imx07dal.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AnYBAPtifk9CtGAbmWdsb2JhbABFgkalHIgjAYkjAQEBAQEICwsHFCeCECcGXgEIeCYBBBMIiAYLmRihDo9oYwSWfJIm
X-IronPort-AV: E=Sophos;i="4.75,380,1330923600"; 
	d="scan'208,217";a="178139345"
Received: from exchange.cbeyondonline.net (HELO hub404dal.mmeprod.cbeyond)
	([66.180.96.27])
	by mx.cbeyond.com with ESMTP; 05 Apr 2012 23:31:30 -0400
Received: from EXMBX05.mmeprod.cbeyond ([192.168.13.77]) by
	hub404dal.mmeprod.cbeyond ([192.168.13.102]) with mapi; Thu, 5 Apr 2012
	23:31:30 -0400
From: Andy Gikling <agikling@lasx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 5 Apr 2012 23:31:29 -0400
Thread-Topic: Re: Eclipse-ADT-build-error (Lu, Lianhao)
Thread-Index: Ac0TnLmIRn3JasTGTneScP8NO0bZyQ==
Message-ID: <23FC35CD1508674EBB20455EB700B1B4BCE870A93D@EXMBX05.mmeprod.cbeyond>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Eclipse-ADT-build-error (Lu, Lianhao)
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
X-List-Received-Date: Fri, 06 Apr 2012 03:31:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_23FC35CD1508674EBB20455EB700B1B4BCE870A93DEXMBX05mmepro_"

--_000_23FC35CD1508674EBB20455EB700B1B4BCE870A93DEXMBX05mmepro_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Lianhao,

I've looked into this more deeply and I'm pretty sure I've followed the dir=
ections in the ADT manual correctly as I've gotten this to work before in  =
ADT v1.1.  I'm having the same problem Lu seems to be having.  To answer yo=
ur questions:


1. Host OS? - Ubuntu 11.10 - 32bit VM

2. Which version of eclipse?  3.7.2

3. Which version of Yocto eclipse plugin? 1.2.0.2x - I just tried to get it=
 as per the manual but the link on the ADT manual for the plugin is broken.=
  I was able to use the update feature from within Ecplise - this brought m=
e from 1.1 to 1.2.0.2x

4. Which image do you use as sysroot? core-image-sato or core-image-sato-sd=
k? - Core-image-minimal

5. Which version of metadata do you use to build the image? Sugarbay - is t=
hat what you're looking for?

6. How do you install the toolchain? Using adt-installer or extracting meta=
-toolchain tarball? If using meta-toolchain tarball, which version do you u=
se? - used the premade tarball from: http://downloads.yoctoproject.org/rele=
ases/yocto/yocto-1.1.1/toolchain/i686/poky-eglibc-i686-arm-toolchain-gmae-1=
.1.1.tar.bz2<http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/t=
oolchain/i686/poky-eglibc-i686-arm-toolchain-gmae-1.1.1.tar.bz2>  - once ex=
tracted, in Ecplise, I point at /opt/poky/1.1.1 for my Toolchain Root and /=
opt/poky/1.1.1/sysroots/ for my Sysroot Location.

Following the ADT manual closely, I've sourced the ADT env vars with $sourc=
e /opt/poky/1.1.1/environment-setup-x86_64-poky-linux



Now, I've opened a new C Hello World template project and use Project -> Re=
configure Project.  Unfortunately this fails.  The console reads "> configu=
re: error: C compiler cannot create executables" as Lu has seen.  All the o=
ther Eclipse requirements from the ADT manual have been installed as well.



The config.log shows this snippet as the culprit:

...

Thread model: posix

gcc version 4.6.1 20110627 (prerelease) (GCC)

configure:2413: $? =3D 0

configure:2402: x86_64-poky-linux-g++ -V >&5

x86_64-poky-linux-g++: error: unrecognized option '-V'

x86_64-poky-linux-g++: fatal error: no input files

compilation terminated.

configure:2413: $? =3D 1

configure:2402: x86_64-poky-linux-g++ -qversion >&5

x86_64-poky-linux-g++: error: unrecognized option '-qversion'

x86_64-poky-linux-g++: fatal error: no input files

compilation terminated.

configure:2413: $? =3D 1

configure:2433: checking whether the C++ compiler works

...



So interestingly, I went ahead and tried to run autogen.sh directly from th=
e terminal with "sh autogen.sh" and this also gives me the same error: "con=
figure: error: C compiler cannot create executables"



However, when I run this with sudo in the terminal it works.  I can then ca=
ll "sudo ./configure" from the terminal and that also works.  Now I have a =
Makefile in my src directory as expected.  Unfortunately, this project stil=
l doesn't build in Eclipse.  I keep getting "no rule for make target 'all' =
"



I've done all of the above again, fresh, after calling "chmod -R 777 /home/=
userName/workspace" so it might not be a permissions problem.



I've run through these ADT steps in the 1.1 version of the ADT manual witho=
ut any problems.  What changed?  Do I submit a bug?



Regards,



~Andy Gikling

LasX Industries Inc.

agikling@lasx.com











--_000_23FC35CD1508674EBB20455EB700B1B4BCE870A93DEXMBX05mmepro_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><style><!--
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>Lianhao,<o:p></o=
:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I&#82=
17;ve looked into this more deeply and I&#8217;m pretty sure I&#8217;ve fol=
lowed the directions in the ADT manual correctly as I&#8217;ve gotten this =
to work before in &nbsp;ADT v1.1.&nbsp; I&#8217;m having the same problem L=
u seems to be having.&nbsp; To answer your questions:<o:p></o:p></p><p clas=
s=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>1. Host OS? &#82=
11; Ubuntu 11.10 &#8211; 32bit VM<o:p></o:p></p><p class=3DMsoPlainText>2. =
Which version of eclipse?&nbsp; 3.7.2<o:p></o:p></p><p class=3DMsoPlainText=
>3. Which version of Yocto eclipse plugin? 1.2.0.2x &#8211; I just tried to=
 get it as per the manual but the link on the ADT manual for the plugin is =
broken.&nbsp; I was able to use the update feature from within Ecplise &#82=
11; this brought me from 1.1 to 1.2.0.2x<o:p></o:p></p><p class=3DMsoPlainT=
ext>4. Which image do you use as sysroot? core-image-sato or core-image-sat=
o-sdk? - Core-image-minimal<o:p></o:p></p><p class=3DMsoPlainText>5. Which =
version of metadata do you use to build the image? Sugarbay &#8211; is that=
 what you&#8217;re looking for?<o:p></o:p></p><pre><span style=3D'font-size=
:11.0pt;font-family:"Calibri","sans-serif"'>6. How do you install the toolc=
hain? Using adt-installer or extracting meta-toolchain tarball? If using me=
ta-toolchain tarball, which version do you use? &#8211; used the premade ta=
rball from: <a href=3D"http://downloads.yoctoproject.org/releases/yocto/yoc=
to-1.1.1/toolchain/i686/">http://downloads.yoctoproject.org/releases/yocto/=
yocto-1.1.1/toolchain/i686/</a><span style=3D'color:black'><a href=3D"http:=
//downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/toolchain/i686/poky=
-eglibc-i686-arm-toolchain-gmae-1.1.1.tar.bz2">poky-eglibc-i686-arm-toolcha=
in-gmae-1.1.1.tar.bz2</a>&nbsp; - once extracted, in Ecplise, I point at /o=
pt/poky/1.1.1 for my Toolchain Root and /opt/poky/1.1.1/sysroots/ for my Sy=
sroot Location.<o:p></o:p></span></span></pre><p class=3DMsoNormal><o:p>&nb=
sp;</o:p></p><p class=3DMsoNormal>Following the ADT manual closely, I&#8217=
;ve sourced the ADT env vars with $source /opt/poky/1.1.1/environment-setup=
-x86_64-poky-linux<o:p></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p><=
/p><p class=3DMsoPlainText>Now, I&#8217;ve opened a new C Hello World templ=
ate project and use Project -&gt; Reconfigure Project.&nbsp; Unfortunately =
this fails.&nbsp; The console reads &#8220;&gt; configure: error: C compile=
r cannot create executables&#8221; as Lu has seen.&nbsp; All the other Ecli=
pse requirements from the ADT manual have been installed as well.<o:p></o:p=
></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>T=
he config.log shows this snippet as the culprit: <o:p></o:p></p><p class=3D=
MsoPlainText>&#8230; <o:p></o:p></p><p class=3DMsoPlainText>Thread model: p=
osix<o:p></o:p></p><p class=3DMsoPlainText>gcc version 4.6.1 20110627 (prer=
elease) (GCC) <o:p></o:p></p><p class=3DMsoPlainText>configure:2413: $? =3D=
 0<o:p></o:p></p><p class=3DMsoPlainText>configure:2402: x86_64-poky-linux-=
g++ -V &gt;&amp;5<o:p></o:p></p><p class=3DMsoPlainText>x86_64-poky-linux-g=
++: error: unrecognized option '-V'<o:p></o:p></p><p class=3DMsoPlainText>x=
86_64-poky-linux-g++: fatal error: no input files<o:p></o:p></p><p class=3D=
MsoPlainText>compilation terminated.<o:p></o:p></p><p class=3DMsoPlainText>=
configure:2413: $? =3D 1<o:p></o:p></p><p class=3DMsoPlainText>configure:24=
02: x86_64-poky-linux-g++ -qversion &gt;&amp;5<o:p></o:p></p><p class=3DMso=
PlainText>x86_64-poky-linux-g++: error: unrecognized option '-qversion'<o:p=
></o:p></p><p class=3DMsoPlainText>x86_64-poky-linux-g++: fatal error: no i=
nput files<o:p></o:p></p><p class=3DMsoPlainText>compilation terminated.<o:=
p></o:p></p><p class=3DMsoPlainText>configure:2413: $? =3D 1<o:p></o:p></p>=
<p class=3DMsoPlainText>configure:2433: checking whether the C++ compiler w=
orks<o:p></o:p></p><p class=3DMsoPlainText>&#8230;<o:p></o:p></p><p class=
=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>So interesting=
ly, I went ahead and tried to run autogen.sh directly from the terminal wit=
h &#8220;sh autogen.sh&#8221; and this also gives me the same error: &#8220=
;configure: error: C compiler cannot create executables&#8221;<o:p></o:p></=
p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>Howe=
ver, when I run this with sudo in the terminal it works. &nbsp;I can then c=
all &#8220;sudo ./configure&#8221; from the terminal and that also works.&n=
bsp; Now I have a Makefile in my src directory as expected.&nbsp; Unfortuna=
tely, this project still doesn&#8217;t build in Eclipse.&nbsp; I keep getti=
ng &#8220;no rule for make target &#8216;all&#8217; &#8221;<o:p></o:p></p><=
p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>I&#8217=
;ve done all of the above again, fresh, after calling &#8220;chmod &#8211;R=
 777 /home/userName/workspace&#8221; so it might not be a permissions probl=
em.<o:p></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DM=
soPlainText>I&#8217;ve run through these ADT steps in the 1.1 version of th=
e ADT manual without any problems.&nbsp; What changed?&nbsp; Do I submit a =
bug? &nbsp;<o:p></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p c=
lass=3DMsoPlainText>Regards,<o:p></o:p></p><p class=3DMsoPlainText><o:p>&nb=
sp;</o:p></p><p class=3DMsoPlainText>~Andy Gikling<o:p></o:p></p><p class=
=3DMsoPlainText>LasX Industries Inc.<o:p></o:p></p><p class=3DMsoPlainText>=
agikling@lasx.com<o:p></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></=
p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText><o:p=
>&nbsp;</o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMs=
oPlainText><o:p>&nbsp;</o:p></p></div></body></html>=

--_000_23FC35CD1508674EBB20455EB700B1B4BCE870A93DEXMBX05mmepro_--
