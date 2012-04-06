Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1922E0137C
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2012 00:18:50 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Apr 2012 00:18:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="127798285"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by azsmga001.ch.intel.com with ESMTP; 06 Apr 2012 00:18:50 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 6 Apr 2012 00:18:49 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.125]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.91]) with mapi id
	14.01.0355.002; Fri, 6 Apr 2012 15:18:47 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, Andy Gikling
	<agikling@lasx.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Eclipse-ADT-build-error (Lu, Lianhao)
Thread-Index: Ac0TnLmIRn3JasTGTneScP8NO0bZyQAHHVCAAAKzpzA=
Date: Fri, 6 Apr 2012 07:18:46 +0000
Message-ID: <A25F549E4D43CD42B4C02DF47A1913230FCFD612@SHSMSX102.ccr.corp.intel.com>
References: <23FC35CD1508674EBB20455EB700B1B4BCE870A93D@EXMBX05.mmeprod.cbeyond>
	<C6510F6D410BB64A8C15398EDC6B847C451B792D@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C451B792D@ORSMSX101.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
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
X-List-Received-Date: Fri, 06 Apr 2012 07:18:51 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A25F549E4D43CD42B4C02DF47A1913230FCFD612SHSMSX102ccrcor_"

--_000_A25F549E4D43CD42B4C02DF47A1913230FCFD612SHSMSX102ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Andy,
If you're attending the ESDC contest, please try to build and setup ADT env=
ironment by yourself:
http://software.intel.com/en-us/forums/showthread.php?t=3D104267&o=3Da&s=3D=
lr

If you're not, just ignore my mail. :)

Thanks,
-- Dexuan

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Zhang, Jessica
Sent: Friday, April 06, 2012 1:52 PM
To: Andy Gikling; yocto@yoctoproject.org
Subject: Re: [yocto] Eclipse-ADT-build-error (Lu, Lianhao)

Hi Andy,

Please file a bug against 1.1.1, seems something is not quite right and we =
can use the bug to track the issue.

Thanks for reporting the issue.

Jessica

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Andy Gikling
Sent: Thursday, April 05, 2012 8:31 PM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] Eclipse-ADT-build-error (Lu, Lianhao)

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

agikling@lasx.com<mailto:agikling@lasx.com>











--_000_A25F549E4D43CD42B4C02DF47A1913230FCFD612SHSMSX102ccrcor_
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
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Calibri","sans-serif";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Calibri","sans-serif";}
span.EmailStyle25
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt">Hi A=
ndy, <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt">If y=
ou&#8217;re attending the ESDC contest, please try to build and setup ADT e=
nvironment by yourself:<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt"><a h=
ref=3D"http://software.intel.com/en-us/forums/showthread.php?t=3D104267&amp=
;o=3Da&amp;s=3Dlr"><span style=3D"color:windowtext">http://software.intel.c=
om/en-us/forums/showthread.php?t=3D104267&amp;o=3Da&amp;s=3Dlr</span></a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt">If y=
ou&#8217;re not, just ignore my mail.
</span><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Wingdings=
">J</span><span lang=3D"EN" style=3D"font-size:10.5pt;font-family:SimSun;co=
lor:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.5pt;font-fam=
ily:SimSun;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify"><span lang=3D"EN-US" st=
yle=3D"font-size:10.5pt;color:#1F497D">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify"><span lang=3D"EN-US" st=
yle=3D"font-size:10.5pt;color:#1F497D">-- Dexuan<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;color=
:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;"> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@=
yoctoproject.org]
<b>On Behalf Of </b>Zhang, Jessica<br>
<b>Sent:</b> Friday, April 06, 2012 1:52 PM<br>
<b>To:</b> Andy Gikling; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Eclipse-ADT-build-error (Lu, Lianhao)<o:p></o:p=
></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Hi Andy=
,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Please =
file a bug against 1.1.1, seems something is not quite right and we can use=
 the bug to track the issue.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Thanks =
for reporting the issue.</span><span lang=3D"EN-US" style=3D"color:#1F497D"=
>
</span><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Jessica=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoprojec=
t.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-b=
ounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Andy Gikling<br>
<b>Sent:</b> Thursday, April 05, 2012 8:31 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject:</b> Re: [yocto] Eclipse-ADT-build-error (Lu, Lianhao)<o:p></o:p=
></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Lianhao,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;ve looked into this mor=
e deeply and I&#8217;m pretty sure I&#8217;ve followed the directions in th=
e ADT manual correctly as I&#8217;ve gotten this to work before in &nbsp;AD=
T v1.1.&nbsp; I&#8217;m having the same problem Lu seems to be having.&nbsp=
; To answer
 your questions:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">1. Host OS? &#8211; Ubuntu 1=
1.10 &#8211; 32bit VM<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">2. Which version of eclipse?=
&nbsp; 3.7.2<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">3. Which version of Yocto ec=
lipse plugin? 1.2.0.2x &#8211; I just tried to get it as per the manual but=
 the link on the ADT manual for the plugin is broken.&nbsp; I was able to u=
se the update feature from within Ecplise &#8211; this
 brought me from 1.1 to 1.2.0.2x<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">4. Which image do you use as=
 sysroot? core-image-sato or core-image-sato-sdk? - Core-image-minimal<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">5. Which version of metadata=
 do you use to build the image? Sugarbay &#8211; is that what you&#8217;re =
looking for?<o:p></o:p></span></p>
<pre><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calib=
ri&quot;,&quot;sans-serif&quot;">6. How do you install the toolchain? Using=
 adt-installer or extracting meta-toolchain tarball? If using meta-toolchai=
n tarball, which version do you use? &#8211; used the premade tarball from:=
 <a href=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/to=
olchain/i686/">http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1=
/toolchain/i686/</a><span style=3D"color:black"><a href=3D"http://downloads=
.yoctoproject.org/releases/yocto/yocto-1.1.1/toolchain/i686/poky-eglibc-i68=
6-arm-toolchain-gmae-1.1.1.tar.bz2">poky-eglibc-i686-arm-toolchain-gmae-1.1=
.1.tar.bz2</a>&nbsp; - once extracted, in Ecplise, I point at /opt/poky/1.1=
.1 for my Toolchain Root and /opt/poky/1.1.1/sysroots/ for my Sysroot Locat=
ion.<o:p></o:p></span></span></pre>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Following the ADT manual closel=
y, I&#8217;ve sourced the ADT env vars with $source /opt/poky/1.1.1/environ=
ment-setup-x86_64-poky-linux<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Now, I&#8217;ve opened a new=
 C Hello World template project and use Project -&gt; Reconfigure Project.&=
nbsp; Unfortunately this fails.&nbsp; The console reads &#8220;&gt; configu=
re: error: C compiler cannot create executables&#8221; as Lu has seen.&nbsp=
;
 All the other Eclipse requirements from the ADT manual have been installed=
 as well.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">The config.log shows this sn=
ippet as the culprit:
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">&#8230; <o:p></o:p></span></=
p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Thread model: posix<o:p></o:=
p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">gcc version 4.6.1 20110627 (=
prerelease) (GCC)
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">configure:2413: $? =3D 0<o:p=
></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">configure:2402: x86_64-poky-=
linux-g&#43;&#43; -V &gt;&amp;5<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">x86_64-poky-linux-g&#43;&#43=
;: error: unrecognized option '-V'<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">x86_64-poky-linux-g&#43;&#43=
;: fatal error: no input files<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">compilation terminated.<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">configure:2413: $? =3D 1<o:p=
></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">configure:2402: x86_64-poky-=
linux-g&#43;&#43; -qversion &gt;&amp;5<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">x86_64-poky-linux-g&#43;&#43=
;: error: unrecognized option '-qversion'<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">x86_64-poky-linux-g&#43;&#43=
;: fatal error: no input files<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">compilation terminated.<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">configure:2413: $? =3D 1<o:p=
></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">configure:2433: checking whe=
ther the C&#43;&#43; compiler works<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">&#8230;<o:p></o:p></span></p=
>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">So interestingly, I went ahe=
ad and tried to run autogen.sh directly from the terminal with &#8220;sh au=
togen.sh&#8221; and this also gives me the same error: &#8220;configure: er=
ror: C compiler cannot create executables&#8221;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">However, when I run this wit=
h sudo in the terminal it works. &nbsp;I can then call &#8220;sudo ./config=
ure&#8221; from the terminal and that also works.&nbsp; Now I have a Makefi=
le in my src directory as expected.&nbsp; Unfortunately, this project
 still doesn&#8217;t build in Eclipse.&nbsp; I keep getting &#8220;no rule =
for make target &#8216;all&#8217; &#8221;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">I&#8217;ve done all of the a=
bove again, fresh, after calling &#8220;chmod &#8211;R 777 /home/userName/w=
orkspace&#8221; so it might not be a permissions problem.<o:p></o:p></span>=
</p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">I&#8217;ve run through these=
 ADT steps in the 1.1 version of the ADT manual without any problems.&nbsp;=
 What changed?&nbsp; Do I submit a bug? &nbsp;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Regards,<o:p></o:p></span></=
p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">~Andy Gikling<o:p></o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">LasX Industries Inc.<o:p></o=
:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><a href=3D"mailto:agikling@l=
asx.com">agikling@lasx.com</a><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
</body>
</html>

--_000_A25F549E4D43CD42B4C02DF47A1913230FCFD612SHSMSX102ccrcor_--
