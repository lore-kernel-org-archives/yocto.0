Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0BAAE006CC
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 21:24:59 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 30 Jan 2013 21:24:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,574,1355126400"; 
	d="scan'208,217";a="196935359"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by AZSMGA002.ch.intel.com with ESMTP; 30 Jan 2013 21:24:46 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 30 Jan 2013 21:24:46 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.4]) with mapi id
	14.01.0355.002; Wed, 30 Jan 2013 21:24:46 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Lai Eddy <eddy.lai.tw@gmail.com>
Thread-Topic: [yocto] install and use "bitbake -c populate_sdk"
Thread-Index: AQHN+jpGKsH8FfJyJU+L65diAkGXVJhid/sggADm/oD//5AMAA==
Date: Thu, 31 Jan 2013 05:24:46 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DDC88F@ORSMSX101.amr.corp.intel.com>
References: <CAHUNapRAcCu=82B3JX0WQweEhz0-m+5sYhdR8gtX+U3UyiKnkg@mail.gmail.com>
	<CAJTo0LZGXAgvCMDD4B+12JTSb_tjNS3xn0mrabFb5DSob8AJnw@mail.gmail.com>
	<510092A1.6050009@windriver.com>	<51013BCB.8080208@gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C57DDAE59@ORSMSX101.amr.corp.intel.com>
	<CACrgoddAs2DAbqcv3veGQo55LdBPcg=7ffFWf_b0o5ocRxoymg@mail.gmail.com>
In-Reply-To: <CACrgoddAs2DAbqcv3veGQo55LdBPcg=7ffFWf_b0o5ocRxoymg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: install and use "bitbake -c populate_sdk"
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
X-List-Received-Date: Thu, 31 Jan 2013 05:25:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C57DDC88FORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C57DDC88FORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Eddy,



I don't think build core-image-sato-sdk is the right approach.  Have you lo=
oked into following the example of hello-mod under meta-skeleton, to use bi=
tbake to build your kernel module?



-          Jessica

From: Lai Eddy [mailto:eddy.lai.tw@gmail.com]
Sent: Wednesday, January 30, 2013 7:54 PM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] install and use "bitbake -c populate_sdk"



Thanks Jessica,



why I tried to use "-c populate-sdk" is because that I can find "core-image=
-sato-sdk"  but no "core-image-basic-sdk" available, and my hardware is a s=
amll jasperforest x86_64 target with 2 serial port and 1 ethernet port only=
, no display interface.

I'm trying to find if any of following configuration suitable for my kernel=
 module driver develop/debug:

1. with the x86_64 toolchain sdk installed on my x86_64 host , build my ker=
nel module driver, then scp ".ko" binary to target for insmod/debugging, bu=
t the problem I have now is the "make" always pointing to /usr/src/3.2.x ke=
rnel source path (my host OS's kernel version), but not the linux-yocto tar=
get kernel (3.4.x) source/header path (and I don't know where's the proper =
3.4.x target kernel header/source files, is it inside tmp/work/...? )

2.build and run the "core-image-basic" on my target, and install the sdk cr=
eated with "bitbake core-image-basic -c populate-sdk", but there's no "/usr=
/src/.." , "/lib/modules/3.4.x-yocto-stand/build" exist



trying to build the "core-image-sato-sdk to see if that help for target dev=
elop now...



Eddy



2013/1/31 Zhang, Jessica <jessica.zhang@intel.com<mailto:jessica.zhang@inte=
l.com>>

Hi Eddy,

The SDK is meant to be used on development host for cross development inste=
ad of target.  Sounds like you need an sdk image which contains the develop=
ment tools and needed development library and kernel sources.  Please refer=
 to  core-image-sato-sdk for how to customize your image to allow your do d=
evelopment work on target.

Thanks,
Jessica


-----Original Message-----
From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of Eddy Lai GMail
Sent: Thursday, January 24, 2013 5:49 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] install and use "bitbake -c populate_sdk"

Hi,

I have build and boot the image from USB flash disk with the .hddimg create=
d by "bitbake -k core-image-basic"
have added ssh server inside and make sure the ethernet works well, then us=
e "bitbake -c populate_sdk core-image-basic" to create the "poky_eglibc_xx.=
sh" under "tmp/deploy/sdk" directory, my plan is to install the sdk into th=
e target system and compile my kernel module there, but now the problem is:
1. even I have 8GB USB flash disk, the .hddimg is 420MB only, "df"
command from target said there's 85MB available only,
     but the sdk .sh installer image is about 300MB, how can I "extend"
the target system to use the rest USB disk space? ( it's FAT file system)
     or how to modify configuration to force build the .hddimg create ~"8GB=
" file system?
2. after that SDK installed into my target system, can I copy (scp) my own =
kernel module driver source code into the target system then
     make/compile and try insmod/debug the .ko there?
     or should I install the sdk on host system, then copy only the compile=
d .ko into target system for test/debugging?

Eddy

_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto




--_000_C6510F6D410BB64A8C15398EDC6B847C57DDC88FORSMSX101amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1728185498;
	mso-list-type:hybrid;
	mso-list-template-ids:2059301166 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1808860981;
	mso-list-type:hybrid;
	mso-list-template-ids:1265421360 97150048 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:SimSun;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Eddy,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I don&#8217;t think build=
 core-image-sato-sdk is the right approach.&nbsp; Have you looked into foll=
owing the example of hello-mod under meta-skeleton, to use bitbake
 to build your kernel module?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l1 leve=
l1 lfo2"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso=
-list:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Lai Eddy=
 [mailto:eddy.lai.tw@gmail.com]
<br>
<b>Sent:</b> Wednesday, January 30, 2013 7:54 PM<br>
<b>To:</b> Zhang, Jessica<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] install and use &quot;bitbake -c populate_sdk&q=
uot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks Jessica,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">why I tried to use &quot;-c populate-sdk&quot; is be=
cause that I can find &quot;core-image-sato-sdk&quot; &nbsp;but no &quot;co=
re-image-basic-sdk&quot; available, and my hardware is a samll jasperforest=
 x86_64 target with 2 serial port and 1 ethernet port only, no display
 interface.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I'm trying to find if any of following configuration=
 suitable for my kernel module driver develop/debug:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">1. with the x86_64 toolchain sdk installed on my x86=
_64 host , build my kernel module driver, then scp &quot;.ko&quot; binary t=
o target for insmod/debugging, but the problem I have now is the &quot;make=
&quot; always pointing to /usr/src/3.2.x kernel source
 path (my host OS's kernel version), but not the linux-yocto target kernel =
(3.4.x) source/header path (and I don't know where's the proper 3.4.x targe=
t kernel header/source files, is it inside tmp/work/...? )<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">2.build and run the &quot;core-image-basic&quot; on =
my target, and install the sdk created with &quot;bitbake core-image-basic =
-c populate-sdk&quot;, but there's no &quot;/usr/src/..&quot; , &quot;/lib/=
modules/3.4.x-yocto-stand/build&quot; exist<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">trying to build the &quot;core-image-sato-sdk to see=
 if that help for target develop now...<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Eddy<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">2013/1/31 Zhang, Jessica &lt;<a href=3D"mailto:jessi=
ca.zhang@intel.com" target=3D"_blank">jessica.zhang@intel.com</a>&gt;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">Hi Eddy,<br>
<br>
The SDK is meant to be used on development host for cross development inste=
ad of target. &nbsp;Sounds like you need an sdk image which contains the de=
velopment tools and needed development library and kernel sources. &nbsp;Pl=
ease refer to &nbsp;core-image-sato-sdk for how
 to customize your image to allow your do development work on target.<br>
<br>
Thanks,<br>
Jessica<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of Eddy Lai GMail<br>
Sent: Thursday, January 24, 2013 5:49 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] install and use &quot;bitbake -c populate_sdk&quot;<br=
>
<br>
Hi,<br>
<br>
I have build and boot the image from USB flash disk with the .hddimg create=
d by &quot;bitbake -k core-image-basic&quot;<br>
have added ssh server inside and make sure the ethernet works well, then us=
e &quot;bitbake -c populate_sdk core-image-basic&quot; to create the &quot;=
poky_eglibc_xx.sh&quot; under &quot;tmp/deploy/sdk&quot; directory, my plan=
 is to install the sdk into the target system and compile my kernel
 module there, but now the problem is:<br>
1. even I have 8GB USB flash disk, the .hddimg is 420MB only, &quot;df&quot=
;<br>
command from target said there's 85MB available only,<br>
&nbsp; &nbsp; &nbsp;but the sdk .sh installer image is about 300MB, how can=
 I &quot;extend&quot;<br>
the target system to use the rest USB disk space? ( it's FAT file system)<b=
r>
&nbsp; &nbsp; &nbsp;or how to modify configuration to force build the .hddi=
mg create ~&quot;8GB&quot; file system?<br>
2. after that SDK installed into my target system, can I copy (scp) my own =
kernel module driver source code into the target system then<br>
&nbsp; &nbsp; &nbsp;make/compile and try insmod/debug the .ko there?<br>
&nbsp; &nbsp; &nbsp;or should I install the sdk on host system, then copy o=
nly the compiled .ko into target system for test/debugging?<br>
<br>
Eddy<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C57DDC88FORSMSX101amrcor_--
