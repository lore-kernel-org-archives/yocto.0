Return-Path: <prvs=870725b86=Michael.Dick@hella-gutmann.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5CD0E00C12; Wed,  5 Dec 2018 07:03:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [82.210.249.14 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 72 seconds by postgrey-1.32 at yocto-www;
	Wed, 05 Dec 2018 07:03:07 PST
Received: from mail1.hella.com (mail1.hella.com [82.210.249.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01829E008C6
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2018 07:03:07 -0800 (PST)
Received: from unknown (HELO descolfrsmtp2v.dc.hella.com) ([10.13.0.189])
	by dc1mail1.hella.com with ESMTP; 05 Dec 2018 16:01:53 +0100
Received: from HGMAIL01.GMMDB.local ([192.168.110.29]) by
	descolfrsmtp2v.dc.hella.com over TLS secured channel with
	Microsoft SMTPSVC(8.5.9600.16384); Wed, 5 Dec 2018 16:01:53 +0100
Received: from HGMAIL02.GMMDB.local ([192.168.222.88]) by HGMAIL01.GMMDB.local
	([192.168.222.87]) with mapi id 14.03.0361.001;
	Wed, 5 Dec 2018 16:01:50 +0100
From: Michael Dick <Michael.Dick@hella-gutmann.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Trying to use an external toolchain
Thread-Index: AdSMqAJ54JCGBOsKSr+zdtxYNuJiYA==
Date: Wed, 5 Dec 2018 15:01:49 +0000
Message-ID: <4386E0AED875AA4A8BA0B78A917B1C34E101642E@HGMAIL02.GMMDB.local>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.110.149]
MIME-Version: 1.0
X-OriginalArrivalTime: 05 Dec 2018 15:01:53.0165 (UTC)
	FILETIME=[750CB3D0:01D48CAB]
Subject: Trying to use an external toolchain
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
X-List-Received-Date: Wed, 05 Dec 2018 15:03:12 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_4386E0AED875AA4A8BA0B78A917B1C34E101642EHGMAIL02GMMDBlo_"

--_000_4386E0AED875AA4A8BA0B78A917B1C34E101642EHGMAIL02GMMDBlo_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to use an external toolchain with yocto. I do not get it workin=
g. Did anyone ever get that running?

My configuration and problems:

Is use the following settings in my local.conf

TCMODE =3D "external-linaro"
EXTERNAL_TOOLCHAIN =3D "/home/XXX/7.2.1-gcc-linaro/gcc-linaro-7.2.1-2017.11=
-x86_64_arm-linux-gnueabihf/ "
ELT_TARGET_SYS ?=3D "arm-linux-gnueabihf"

Add added in bblayyers.conf the layer "meta-linaro-toolchain "

These are my layers

meta                  /home/XXX/development/yocto-test/poky/meta  5
meta-poky             /home/XX/development/yocto-test/poky/meta-poky  5
meta-oe               /home/XXX/development/yocto-test/meta-openembedded/me=
ta-oe  6
meta                  /home/XXX/development/yocto-test/poky/meta  5
meta-python           /home/XXX/development/yocto-test/meta-openembedded/me=
ta-python  7
meta-networking       /home/XXX/development/yocto-test/meta-openembedded/me=
ta-networking  5
meta-multimedia       /home/XXX/development/yocto-test/meta-openembedded/me=
ta-multimedia  6
meta-webserver        /home/XXX/development/yocto-test/meta-openembedded/me=
ta-webserver  6
meta-linaro-toolchain  /home/XXX/development/yocto-test/meta-linaro/meta-li=
naro-toolchain  30
meta-raspberrypi      /home/XXX/development/yocto-test/meta-raspberrypi  9

On master of these repos I get:
oe_multilib_header: Unable to find header bits/pthread types-arch.h

In Branch sumo I get the following:

ERROR: Nothing PROVIDES 'virtual/crypt' (but /home/mdick/development/yocto-=
test/openembedded-core/meta/recipes-devtools/perl/perl_5.24.1.bb, /home/mdi=
ck/development/yocto-test/openembedded-core/meta/recipes-extended/shadow/sh=
adow_4.2.1.bb, /home/mdick/development/yocto-test/openembedded-core/meta/re=
cipes-core/util-linux/util-linux_2.32.1.bb DEPENDS on or otherwise requires=
 it)
glibc PROVIDES virtual/crypt but was skipped: Recipe is blacklisted: Using =
external toolchain
musl PROVIDES virtual/crypt but was skipped: PREFERRED_PROVIDER_virtual/lib=
c set to external-linaro-toolchain, not musl
libxcrypt PROVIDES virtual/crypt but was skipped: Recipe only applies in na=
tivesdk case for now
glibc PROVIDES virtual/crypt but was skipped: Recipe is blacklisted: Using =
external toolchain
musl PROVIDES virtual/crypt but was skipped: PREFERRED_PROVIDER_virtual/lib=
c set to external-linaro-toolchain, not musl
libxcrypt PROVIDES virtual/crypt but was skipped: Recipe only applies in na=
tivesdk case for now
glibc PROVIDES virtual/crypt but was skipped: Recipe is blacklisted: Using =
external toolchain

Best regards
Michael

________________________________

--
Hella Gutmann Solutions GmbH * Unternehmensform: Gesellschaft mit beschraen=
kter Haftung *
Firmensitz: 79241 Ihringen * Eingetragen im Handelsregister: AG Freiburg i.=
Br., HRB 290194 * Geschaeftsfuehrer: Rolf Kunold * USt-IdNr.: DE142208666

--_000_4386E0AED875AA4A8BA0B78A917B1C34E101642EHGMAIL02GMMDBlo_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am trying to use an external =
toolchain with yocto. I do not get it working. Did anyone ever get that run=
ning?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My configuration and problems:<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is use the following settings i=
n my local.conf<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">TCMODE =3D &quot;external-linar=
o&quot; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">EXTERNAL_TOOLCHAIN =3D &#8220;/=
home/XXX/7.2.1-gcc-linaro/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi=
hf/ &quot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ELT_TARGET_SYS ?=3D &quot;arm-l=
inux-gnueabihf&quot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Add added in bblayyers.conf the=
 layer &#8220;meta-linaro-toolchain &#8220;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">These are my layers<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">meta&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 /home/XXX/development/yocto-test/poky/meta&nbsp; 5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">meta-poky&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /home/XX/development/yoc=
to-test/poky/meta-poky&nbsp; 5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">meta-oe&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /home/XXX/deve=
lopment/yocto-test/meta-openembedded/meta-oe&nbsp; 6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">meta&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 /home/XXX/development/yocto-test/poky/meta&nbsp; 5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">meta-python&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /home/XXX/development/yocto-test/m=
eta-openembedded/meta-python&nbsp; 7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">meta-networking&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; /home/XXX/development/yocto-test/meta-openembedded/met=
a-networking&nbsp; 5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">meta-multimedia&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; /home/XXX/development/yocto-test/meta-openembedded/met=
a-multimedia&nbsp; 6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">meta-webserver&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; /home/XXX/development/yocto-test/meta-openembedde=
d/meta-webserver&nbsp; 6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">meta-linaro-toolchain&nbsp; =
/home/XXX/development/yocto-test/meta-linaro/meta-linaro-toolchain&nbsp; 30=
<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">meta-raspberrypi&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /home/XXX/development/yocto-test/meta-raspberrypi&nbsp; 9<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On <b>master</b> of these repos=
 I get:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">oe_multilib_header: Unable to f=
ind header bits/pthread types-arch.h<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In Branch <b>sumo</b> I get the=
 following:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: Nothing PROVIDES 'virtua=
l/crypt' (but /home/mdick/development/yocto-test/openembedded-core/meta/rec=
ipes-devtools/perl/perl_5.24.1.bb, /home/mdick/development/yocto-test/opene=
mbedded-core/meta/recipes-extended/shadow/shadow_4.2.1.bb,
 /home/mdick/development/yocto-test/openembedded-core/meta/recipes-core/uti=
l-linux/util-linux_2.32.1.bb DEPENDS on or otherwise requires it)<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">glibc PROVIDES virtual/crypt bu=
t was skipped: Recipe is blacklisted: Using external toolchain<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">musl PROVIDES virtual/crypt but=
 was skipped: PREFERRED_PROVIDER_virtual/libc set to external-linaro-toolch=
ain, not musl<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">libxcrypt PROVIDES virtual/cryp=
t but was skipped: Recipe only applies in nativesdk case for now<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">glibc PROVIDES virtual/crypt bu=
t was skipped: Recipe is blacklisted: Using external toolchain<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">musl PROVIDES virtual/crypt but=
 was skipped: PREFERRED_PROVIDER_virtual/libc set to external-linaro-toolch=
ain, not musl<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">libxcrypt PROVIDES virtual/cryp=
t but was skipped: Recipe only applies in nativesdk case for now<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">glibc PROVIDES virtual/crypt bu=
t was skipped: Recipe is blacklisted: Using external toolchain<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Michael<o:p></o:p></span></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Black" size=3D"1"><br>
--<br>
Hella Gutmann Solutions GmbH * Unternehmensform: Gesellschaft mit beschraen=
kter Haftung *<br>
Firmensitz: 79241 Ihringen * Eingetragen im Handelsregister: AG Freiburg i.=
Br., HRB 290194 * Geschaeftsfuehrer: Rolf Kunold * USt-IdNr.: DE142208666<b=
r>
</font>
</body>
</html>

--_000_4386E0AED875AA4A8BA0B78A917B1C34E101642EHGMAIL02GMMDBlo_--
