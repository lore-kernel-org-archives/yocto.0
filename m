Return-Path: <david.c.stewart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B356CE0027E
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 09:00:20 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Aug 2012 09:00:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,802,1336374000"; 
	d="scan'208,217";a="211733627"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 21 Aug 2012 09:00:15 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 21 Aug 2012 09:00:14 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.178]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.217]) with mapi id
	14.01.0355.002; Tue, 21 Aug 2012 09:00:14 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Liu <treebody@embedstudy.com>, yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] How does bitbake work
Thread-Index: AQHNf7BAZE2uQzEFnkSFYg4kkpx66Jdka8UQ
Date: Tue, 21 Aug 2012 16:00:14 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D151C8FE15A@ORSMSX105.amr.corp.intel.com>
References: <tencent_39B21E10125109005B37A864@qq.com>
In-Reply-To: <tencent_39B21E10125109005B37A864@qq.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: How does bitbake work
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
X-List-Received-Date: Tue, 21 Aug 2012 16:00:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CDED78A957032E45B3239CDDA7642D151C8FE15AORSMSX105amrcor_"

--_000_CDED78A957032E45B3239CDDA7642D151C8FE15AORSMSX105amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I like the chapter Beth Flanagan wrote recently about the architecture of t=
he Yocto Project. Check it out at the following link, and I think you might=
 learn a lot.  I do suspect that what's happening for you is that certain n=
ative tools like quilt need to be built first so that other parts of the bu=
ild will run. (Quilt is used to manage the patches that applied in the buil=
d process).

Dave

http://www.aosabook.org/en/yocto.html

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Liu
Sent: Tuesday, August 21, 2012 1:11 AM
To: yocto
Subject: [yocto] How does bitbake work

Hi all,
    In order to learn to use poky,I am wondering how bitbake works with so =
many recipes. When I bitbake <target>, I want to know how bitbake collect t=
he providers of <target> . Then bitbake will prepare the runqueue tasks to =
build the <target>.So I need to know which tasks to assign to build the <ta=
rget>.And bitbake run these tasks in what order.In other words according to=
 the characteristics of what to decided to implement which task first and t=
hen next.
     I am very eager to know the answers.
     Thanks ,
------ Yu Liu
     Following is the some output of bitbake busybox and in this example I =
want to know why first do the task of (quilt-native_0.51.bb, do_fetch)  :

Parsing recipes...done.
Parsing of 830 .bb files complete (0 cached, 830 parsed). 1106 targets, 34 =
skipped, 0 masked, 0 errors.
OE Build Configuration:
BB_VERSION        =3D "1.15.2"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "qemuarm"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.2.1"
TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
TARGET_FPU        =3D "soft"
meta
meta-yocto        =3D "<unknown>:<unknown>"
NOTE: Resolving any missing task queue dependencies
NOTE: multiple providers are available for virtual/arm-none-linux-gnueabi-g=
++ (external-csl-toolchain, gcc-cross)
NOTE: consider defining a PREFERRED_PROVIDER entry to match virtual/arm-non=
e-linux-gnueabi-g++
NOTE: multiple providers are available for runtime linux-libc-headers-dev (=
linux-libc-headers, linux-libc-headers-yocto, linux-libc-headers-yocto-nati=
vesdk)
NOTE: consider defining a PREFERRED_PROVIDER entry to match linux-libc-head=
ers-dev
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 1 of 706 (ID: 18, /home/ly/yocto/poky-denzil-7.0.1/meta/=
recipes-devtools/quilt/quilt-native_0.51.bb, do_fetch)
NOTE: Running task 2 of 706 (ID: 228, virtual:native:/home/ly/yocto/poky-de=
nzil-7.0.1/meta/recipes-devtools/gnu-config/gnu-config_20111111.bb, do_fetc=
h)
NOTE: Running task 3 of 706 (ID: 189, virtual:native:/home/ly/yocto/poky-de=
nzil-7.0.1/meta/recipes-devtools/autoconf/autoconf_2.68.bb, do_fetch)
NOTE: Running task 4 of 706 (ID: 515, /home/ly/yocto/poky-denzil-7.0.1/meta=
/recipes-devtools/m4/m4-native_1.4.16.bb, do_fetch)
NOTE: package gnu-config-native-20111111-r1: task do_fetch: Started
NOTE: package m4-native-1.4.16-r2: task do_fetch: Started
NOTE: package quilt-native-0.51-r1: task do_fetch: Started
NOTE: package autoconf-native-2.68-r7: task do_fetch: Started
NOTE: package gnu-config-native-20111111-r1: task do_fetch: Succeeded
NOTE: Running task 5 of 706 (ID: 224, virtual:native:/home/ly/yocto/poky-de=
nzil-7.0.1/meta/recipes-devtools/gnu-config/gnu-config_20111111.bb, do_unpa=
ck)
NOTE: package gnu-config-native-20111111-r1: task do_unpack: Started
NOTE: package gnu-config-native-20111111-r1: task do_unpack: Succeeded
NOTE: Running task 6 of 706 (ID: 202, virtual:native:/home/ly/yocto/poky-de=
nzil-7.0.1/meta/recipes-devtools/automake/automake_1.11.2.bb, do_fetch)
NOTE: package automake-native-1.11.2-r3: task do_fetch: Started
NOTE: package m4-native-1.4.16-r2: task do_fetch: Succeeded
NOTE: Running task 7 of 706 (ID: 511, /home/ly/yocto/poky-denzil-7.0.1/meta=
/recipes-devtools/m4/m4-native_1.4.16.bb, do_unpack)
NOTE: package m4-native-1.4.16-r2: task do_unpack: Started
NOTE: package m4-native-1.4.16-r2: task do_unpack: Succeeded
NOTE: Running task 8 of 706 (ID: 215, /home/ly/yocto/poky-denzil-7.0.1/meta=
/recipes-devtools/libtool/libtool-native_2.4.2.bb, do_fetch)
NOTE: package autoconf-native-2.68-r7: task do_fetch: Succeeded
NOTE: Running task 9 of 706 (ID: 185, virtual:native:/home/ly/yocto/poky-de=
nzil-7.0.1/meta/recipes-devtools/autoconf/autoconf_2.68.bb, do_unpack)
NOTE: package libtool-native-2.4.2-r2.0: task do_fetch: Started
NOTE: package autoconf-native-2.68-r7: task do_unpack: Started
NOTE: package autoconf-native-2.68-r7: task do_unpack: Succeeded
NOTE: Running task 10 of 706 (ID: 254, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-core/zlib/zlib_1.2.6.bb, do_fetch)
NOTE: package automake-native-1.11.2-r3: task do_fetch: Succeeded
NOTE: Running task 11 of 706 (ID: 198, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-devtools/automake/automake_1.11.2.bb, do_unpack)
NOTE: package zlib-native-1.2.6-r1: task do_fetch: Started
NOTE: package automake-native-1.11.2-r3: task do_unpack: Started
NOTE: package automake-native-1.11.2-r3: task do_unpack: Succeeded
NOTE: Running task 12 of 706 (ID: 450, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-devtools/pkgconfig/pkgconfig_0.25.bb, do_fetch)
NOTE: package pkgconfig-native-0.25-r3: task do_fetch: Started
WARNING: Failed to fetch URL http://www.zlib.net/zlib-1.2.6.tar.bz2
NOTE: package zlib-native-1.2.6-r1: task do_fetch: Succeeded
NOTE: Running task 13 of 706 (ID: 250, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-core/zlib/zlib_1.2.6.bb, do_unpack)
NOTE: package zlib-native-1.2.6-r1: task do_unpack: Started
NOTE: package pkgconfig-native-0.25-r3: task do_fetch: Succeeded
NOTE: Running task 14 of 706 (ID: 446, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-devtools/pkgconfig/pkgconfig_0.25.bb, do_unpack)
NOTE: package zlib-native-1.2.6-r1: task do_unpack: Succeeded
NOTE: Running task 15 of 706 (ID: 241, /home/ly/yocto/poky-denzil-7.0.1/met=
a/recipes-core/gettext/gettext-minimal-native_0.18.1.1.bb, do_fetch)
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_fetch: Started
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_fetch: Succeeded
NOTE: Running task 16 of 706 (ID: 237, /home/ly/yocto/poky-denzil-7.0.1/met=
a/recipes-core/gettext/gettext-minimal-native_0.18.1.1.bb, do_unpack)
NOTE: package pkgconfig-native-0.25-r3: task do_unpack: Started
NOTE: package pkgconfig-native-0.25-r3: task do_unpack: Succeeded
NOTE: Running task 17 of 706 (ID: 463, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-core/ncurses/ncurses_5.9.bb, do_fetch)
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_unpack: Started
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_unpack: Succeeded
NOTE: Running task 18 of 706 (ID: 528, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-connectivity/openssl/ocf-linux_20100325.bb, do_fet=
ch)
NOTE: package ncurses-native-5.9-r9.1: task do_fetch: Started
NOTE: package ocf-linux-native-20100325-r3.0: task do_fetch: Started
NOTE: package libtool-native-2.4.2-r2.0: task do_fetch: Succeeded
NOTE: Running task 19 of 706 (ID: 211, /home/ly/yocto/poky-denzil-7.0.1/met=
a/recipes-devtools/libtool/libtool-native_2.4.2.bb, do_unpack)
NOTE: package libtool-native-2.4.2-r2.0: task do_unpack: Started
NOTE: package libtool-native-2.4.2-r2.0: task do_unpack: Succeeded
NOTE: Running task 20 of 706 (ID: 280, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-connectivity/openssl/openssl_1.0.0i.bb, do_fetch)
NOTE: package openssl-native-1.0.0i-r0.2: task do_fetch: Started
NOTE: package ncurses-native-5.9-r9.1: task do_fetch: Succeeded
NOTE: Running task 21 of 706 (ID: 459, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-core/ncurses/ncurses_5.9.bb, do_unpack)
NOTE: package ncurses-native-5.9-r9.1: task do_unpack: Started
NOTE: package ncurses-native-5.9-r9.1: task do_unpack: Succeeded
NOTE: Running task 22 of 706 (ID: 176, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-support/sqlite/sqlite3_3.7.10.bb, do_fetch)
NOTE: package sqlite3-native-3.7.10-r2: task do_fetch: Started
WARNING: Failed to fetch URL http://download.savannah.gnu.org/releases/quil=
t/quilt-0.51.tar.gz
NOTE: package openssl-native-1.0.0i-r0.2: task do_fetch: Succeeded
NOTE: Running task 23 of 706 (ID: 276, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-connectivity/openssl/openssl_1.0.0i.bb, do_unpack)
NOTE: package openssl-native-1.0.0i-r0.2: task do_unpack: Started
NOTE: package quilt-native-0.51-r1: task do_fetch: Succeeded
NOTE: Running task 24 of 706 (ID: 14, /home/ly/yocto/poky-denzil-7.0.1/meta=
/recipes-devtools/quilt/quilt-native_0.51.bb, do_unpack)
NOTE: package openssl-native-1.0.0i-r0.2: task do_unpack: Succeeded
NOTE: Running task 25 of 706 (ID: 541, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-extended/pigz/pigz_2.2.4.bb, do_fetch)
NOTE: package quilt-native-0.51-r1: task do_unpack: Started
NOTE: package quilt-native-0.51-r1: task do_unpack: Succeeded
NOTE: Running task 26 of 706 (ID: 15, /home/ly/yocto/poky-denzil-7.0.1/meta=
/recipes-devtools/quilt/quilt-native_0.51.bb, do_patch)
NOTE: package pigz-native-2.2.4-r2: task do_fetch: Started
NOTE: package quilt-native-0.51-r1: task do_patch: Started
NOTE: package quilt-native-0.51-r1: task do_patch: Succeeded
NOTE: Running task 27 of 706 (ID: 20, /home/ly/yocto/poky-denzil-7.0.1/meta=
/recipes-devtools/quilt/quilt-native_0.51.bb, do_configure)
NOTE: package quilt-native-0.51-r1: task do_configure: Started

--_000_CDED78A957032E45B3239CDDA7642D151C8FE15AORSMSX105amrcor_
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
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I like the chapter Beth F=
lanagan wrote recently about the architecture of the Yocto Project. Check i=
t out at the following link, and I think you might learn
 a lot.&nbsp; I do suspect that what&#8217;s happening for you is that cert=
ain native tools like quilt need to be built first so that other parts of t=
he build will run. (Quilt is used to manage the patches that applied in the=
 build process).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Dave<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><a href=3D"http://www.aosabook.org/en/yocto.html">ht=
tp://www.aosabook.org/en/yocto.html</a><span style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Liu<br>
<b>Sent:</b> Tuesday, August 21, 2012 1:11 AM<br>
<b>To:</b> yocto<br>
<b>Subject:</b> [yocto] How does bitbake work<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp; &nbsp; In order to&nbsp;learn to use&nbsp;pok=
y,I am wondering how bitbake works with so many recipes. When I bitbake &lt=
;target&gt;, I want to know how bitbake collect the providers of &lt;target=
&gt; . Then bitbake will prepare the runqueue tasks to build the &lt;target=
&gt;.So
 I need to know which tasks to assign to build the &lt;target&gt;.And bitba=
ke run these tasks in what order.In other words according to the characteri=
stics of what to decided to implement which task first and then next.<o:p><=
/o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;&nbsp; &nbsp; I am very eager to know the answ=
ers.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; Thanks ,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">------ Yu Liu <o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;&nbsp; &nbsp; Following is the some output of =
bitbake busybox and in this example I want to know why first do the task of=
 (quilt-native_0.51.bb, do_fetch)&nbsp; :<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Parsing recipes...done.<br>
Parsing of 830 .bb files complete (0 cached, 830 parsed). 1106 targets, 34 =
skipped, 0 masked, 0 errors.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">OE Build Configuration:<br>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; =3D &quot;1.15.2&quot;<br>
TARGET_ARCH&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; =3D &quot;arm&quot;<br>
TARGET_OS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; =3D &quot;linux-gnueab=
i&quot;<br>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; =3D &quot;qe=
muarm&quot;<br>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; =3D &qu=
ot;poky&quot;<br>
DISTRO_VERSION&nbsp; &nbsp; =3D &quot;1.2.1&quot;<br>
TUNE_FEATURES&nbsp;&nbsp; &nbsp; =3D &quot;armv5 dsp thumb arm926ejs&quot;<=
br>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; =3D &quot;soft&quot;<br>
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbs=
p; <br>
meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; =3D &quot;&lt;unknown&gt;:&=
lt;unknown&gt;&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">NOTE: Resolving any m=
issing task queue dependencies<br>
NOTE: multiple providers are available for virtual/arm-none-linux-gnueabi-g=
&#43;&#43; (external-csl-toolchain, gcc-cross)<br>
NOTE: consider defining a PREFERRED_PROVIDER entry to match virtual/arm-non=
e-linux-gnueabi-g&#43;&#43;<br>
NOTE: multiple providers are available for runtime linux-libc-headers-dev (=
linux-libc-headers, linux-libc-headers-yocto, linux-libc-headers-yocto-nati=
vesdk)<br>
NOTE: consider defining a PREFERRED_PROVIDER entry to match linux-libc-head=
ers-dev<br>
NOTE: Preparing runqueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
NOTE: Running task 1 of 706 (ID: 18, /home/ly/yocto/poky-denzil-7.0.1/meta/=
recipes-devtools/quilt/quilt-native_0.51.bb, do_fetch)<br>
NOTE: Running task 2 of 706 (ID: 228, virtual:native:/home/ly/yocto/poky-de=
nzil-7.0.1/meta/recipes-devtools/gnu-config/gnu-config_20111111.bb, do_fetc=
h)<br>
NOTE: Running task 3 of 706 (ID: 189, virtual:native:/home/ly/yocto/poky-de=
nzil-7.0.1/meta/recipes-devtools/autoconf/autoconf_2.68.bb, do_fetch)<br>
NOTE: Running task 4 of 706 (ID: 515, /home/ly/yocto/poky-denzil-7.0.1/meta=
/recipes-devtools/m4/m4-native_1.4.16.bb, do_fetch)<br>
NOTE: package gnu-config-native-20111111-r1: task do_fetch: Started<br>
NOTE: package m4-native-1.4.16-r2: task do_fetch: Started<br>
NOTE: package quilt-native-0.51-r1: task do_fetch: Started<br>
NOTE: package autoconf-native-2.68-r7: task do_fetch: Started<br>
NOTE: package gnu-config-native-20111111-r1: task do_fetch: Succeeded<br>
NOTE: Running task 5 of 706 (ID: 224, virtual:native:/home/ly/yocto/poky-de=
nzil-7.0.1/meta/recipes-devtools/gnu-config/gnu-config_20111111.bb, do_unpa=
ck)<br>
NOTE: package gnu-config-native-20111111-r1: task do_unpack: Started<br>
NOTE: package gnu-config-native-20111111-r1: task do_unpack: Succeeded<br>
NOTE: Running task 6 of 706 (ID: 202, virtual:native:/home/ly/yocto/poky-de=
nzil-7.0.1/meta/recipes-devtools/automake/automake_1.11.2.bb, do_fetch)<br>
NOTE: package automake-native-1.11.2-r3: task do_fetch: Started<br>
NOTE: package m4-native-1.4.16-r2: task do_fetch: Succeeded<br>
NOTE: Running task 7 of 706 (ID: 511, /home/ly/yocto/poky-denzil-7.0.1/meta=
/recipes-devtools/m4/m4-native_1.4.16.bb, do_unpack)<br>
NOTE: package m4-native-1.4.16-r2: task do_unpack: Started<br>
NOTE: package m4-native-1.4.16-r2: task do_unpack: Succeeded<br>
NOTE: Running task 8 of 706 (ID: 215, /home/ly/yocto/poky-denzil-7.0.1/meta=
/recipes-devtools/libtool/libtool-native_2.4.2.bb, do_fetch)<br>
NOTE: package autoconf-native-2.68-r7: task do_fetch: Succeeded<br>
NOTE: Running task 9 of 706 (ID: 185, virtual:native:/home/ly/yocto/poky-de=
nzil-7.0.1/meta/recipes-devtools/autoconf/autoconf_2.68.bb, do_unpack)<br>
NOTE: package libtool-native-2.4.2-r2.0: task do_fetch: Started<br>
NOTE: package autoconf-native-2.68-r7: task do_unpack: Started<br>
NOTE: package autoconf-native-2.68-r7: task do_unpack: Succeeded<br>
NOTE: Running task 10 of 706 (ID: 254, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-core/zlib/zlib_1.2.6.bb, do_fetch)<br>
NOTE: package automake-native-1.11.2-r3: task do_fetch: Succeeded<br>
NOTE: Running task 11 of 706 (ID: 198, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-devtools/automake/automake_1.11.2.bb, do_unpack)<b=
r>
NOTE: package zlib-native-1.2.6-r1: task do_fetch: Started<br>
NOTE: package automake-native-1.11.2-r3: task do_unpack: Started<br>
NOTE: package automake-native-1.11.2-r3: task do_unpack: Succeeded<br>
NOTE: Running task 12 of 706 (ID: 450, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-devtools/pkgconfig/pkgconfig_0.25.bb, do_fetch)<br=
>
NOTE: package pkgconfig-native-0.25-r3: task do_fetch: Started<br>
WARNING: Failed to fetch URL <a href=3D"http://www.zlib.net/zlib-1.2.6.tar.=
bz2">http://www.zlib.net/zlib-1.2.6.tar.bz2</a><br>
NOTE: package zlib-native-1.2.6-r1: task do_fetch: Succeeded<br>
NOTE: Running task 13 of 706 (ID: 250, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-core/zlib/zlib_1.2.6.bb, do_unpack)<br>
NOTE: package zlib-native-1.2.6-r1: task do_unpack: Started<br>
NOTE: package pkgconfig-native-0.25-r3: task do_fetch: Succeeded<br>
NOTE: Running task 14 of 706 (ID: 446, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-devtools/pkgconfig/pkgconfig_0.25.bb, do_unpack)<b=
r>
NOTE: package zlib-native-1.2.6-r1: task do_unpack: Succeeded<br>
NOTE: Running task 15 of 706 (ID: 241, /home/ly/yocto/poky-denzil-7.0.1/met=
a/recipes-core/gettext/gettext-minimal-native_0.18.1.1.bb, do_fetch)<br>
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_fetch: Started<br=
>
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_fetch: Succeeded<=
br>
NOTE: Running task 16 of 706 (ID: 237, /home/ly/yocto/poky-denzil-7.0.1/met=
a/recipes-core/gettext/gettext-minimal-native_0.18.1.1.bb, do_unpack)<br>
NOTE: package pkgconfig-native-0.25-r3: task do_unpack: Started<br>
NOTE: package pkgconfig-native-0.25-r3: task do_unpack: Succeeded<br>
NOTE: Running task 17 of 706 (ID: 463, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-core/ncurses/ncurses_5.9.bb, do_fetch)<br>
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_unpack: Started<b=
r>
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_unpack: Succeeded=
<br>
NOTE: Running task 18 of 706 (ID: 528, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-connectivity/openssl/ocf-linux_20100325.bb, do_fet=
ch)<br>
NOTE: package ncurses-native-5.9-r9.1: task do_fetch: Started<br>
NOTE: package ocf-linux-native-20100325-r3.0: task do_fetch: Started<br>
NOTE: package libtool-native-2.4.2-r2.0: task do_fetch: Succeeded<br>
NOTE: Running task 19 of 706 (ID: 211, /home/ly/yocto/poky-denzil-7.0.1/met=
a/recipes-devtools/libtool/libtool-native_2.4.2.bb, do_unpack)<br>
NOTE: package libtool-native-2.4.2-r2.0: task do_unpack: Started<br>
NOTE: package libtool-native-2.4.2-r2.0: task do_unpack: Succeeded<br>
NOTE: Running task 20 of 706 (ID: 280, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-connectivity/openssl/openssl_1.0.0i.bb, do_fetch)<=
br>
NOTE: package openssl-native-1.0.0i-r0.2: task do_fetch: Started<br>
NOTE: package ncurses-native-5.9-r9.1: task do_fetch: Succeeded<br>
NOTE: Running task 21 of 706 (ID: 459, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-core/ncurses/ncurses_5.9.bb, do_unpack)<br>
NOTE: package ncurses-native-5.9-r9.1: task do_unpack: Started<br>
NOTE: package ncurses-native-5.9-r9.1: task do_unpack: Succeeded<br>
NOTE: Running task 22 of 706 (ID: 176, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-support/sqlite/sqlite3_3.7.10.bb, do_fetch)<br>
NOTE: package sqlite3-native-3.7.10-r2: task do_fetch: Started<br>
WARNING: Failed to fetch URL <a href=3D"http://download.savannah.gnu.org/re=
leases/quilt/quilt-0.51.tar.gz">
http://download.savannah.gnu.org/releases/quilt/quilt-0.51.tar.gz</a><br>
NOTE: package openssl-native-1.0.0i-r0.2: task do_fetch: Succeeded<br>
NOTE: Running task 23 of 706 (ID: 276, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-connectivity/openssl/openssl_1.0.0i.bb, do_unpack)=
<br>
NOTE: package openssl-native-1.0.0i-r0.2: task do_unpack: Started<br>
NOTE: package quilt-native-0.51-r1: task do_fetch: Succeeded<br>
NOTE: Running task 24 of 706 (ID: 14, /home/ly/yocto/poky-denzil-7.0.1/meta=
/recipes-devtools/quilt/quilt-native_0.51.bb, do_unpack)<br>
NOTE: package openssl-native-1.0.0i-r0.2: task do_unpack: Succeeded<br>
NOTE: Running task 25 of 706 (ID: 541, virtual:native:/home/ly/yocto/poky-d=
enzil-7.0.1/meta/recipes-extended/pigz/pigz_2.2.4.bb, do_fetch)<br>
NOTE: package quilt-native-0.51-r1: task do_unpack: Started<br>
NOTE: package quilt-native-0.51-r1: task do_unpack: Succeeded<br>
NOTE: Running task 26 of 706 (ID: 15, /home/ly/yocto/poky-denzil-7.0.1/meta=
/recipes-devtools/quilt/quilt-native_0.51.bb, do_patch)<br>
NOTE: package pigz-native-2.2.4-r2: task do_fetch: Started<br>
NOTE: package quilt-native-0.51-r1: task do_patch: Started<br>
NOTE: package quilt-native-0.51-r1: task do_patch: Succeeded<br>
NOTE: Running task 27 of 706 (ID: 20, /home/ly/yocto/poky-denzil-7.0.1/meta=
/recipes-devtools/quilt/quilt-native_0.51.bb, do_configure)<br>
NOTE: package quilt-native-0.51-r1: task do_configure: Started<o:p></o:p></=
p>
</div>
</div>
</div>
</body>
</html>

--_000_CDED78A957032E45B3239CDDA7642D151C8FE15AORSMSX105amrcor_--
