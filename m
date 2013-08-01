Return-Path: <B19537@freescale.com>
Received: from db8outboundpool.messaging.microsoft.com
	(mail-db8lp0184.outbound.messaging.microsoft.com [213.199.154.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45341E01584
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 19:15:51 -0700 (PDT)
Received: from mail82-db8-R.bigfish.com (10.174.8.237) by
	DB8EHSOBE027.bigfish.com (10.174.4.90) with Microsoft SMTP Server id
	14.1.225.22; Thu, 1 Aug 2013 02:15:50 +0000
Received: from mail82-db8 (localhost [127.0.0.1])	by mail82-db8-R.bigfish.com
	(Postfix) with ESMTP id 0A54FB40131;
	Thu,  1 Aug 2013 02:15:50 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -5
X-BigFish: VS-5(zz9371Ic85fh14e3Mzz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz1d7338h1de098h17326ah18c673h1c8fb4h1de096h1954cbh8275bh8275dh1de097hz2dh2a8h668h839h8e2h8e3hd25hf0ah1288h12a5h12bdh137ah1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1b2fh1bceh1fb3h1d0ch1d2eh1d3fh1dfeh1dffh1e1dhbe9i1155h)
Received: from mail82-db8 (localhost.localdomain [127.0.0.1]) by mail82-db8
	(MessageSwitch) id 1375323347525884_28354;
	Thu,  1 Aug 2013 02:15:47 +0000 (UTC)
Received: from DB8EHSMHS003.bigfish.com (unknown [10.174.8.236])	by
	mail82-db8.bigfish.com (Postfix) with ESMTP id 716C2D8004D;
	Thu,  1 Aug 2013 02:15:47 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB8EHSMHS003.bigfish.com
	(10.174.4.13) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Thu, 1 Aug 2013 02:15:47 +0000
Received: from 039-SN2MPN1-021.039d.mgd.msft.net ([169.254.1.43]) by
	039-SN1MMR1-005.039d.mgd.msft.net ([::1]) with mapi id 14.03.0136.001;
	Thu, 1 Aug 2013 02:15:45 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: Aman Sharma <amansh.sharma5@gmail.com>
Thread-Topic: [yocto] Integrate java with yocto
Thread-Index: AQHOjdUl/6Jx4uNimUaYMmD9o9T2Vpl+kkwggAAwsoCAANqqsA==
Date: Thu, 1 Aug 2013 02:15:46 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A01657971@039-SN2MPN1-021.039d.mgd.msft.net>
References: <CAPMH7--cJ6ZOM_s3EzbQjBYCrYn90sAMSEvTLaDMuHmx+LapKQ@mail.gmail.com>
	<CA452391058F6D4E9715FB2C29D9312A016522AF@039-SN2MPN1-021.039d.mgd.msft.net>
	<CAPMH7-8ebq6KLtA7dtTBtrB6_vnXgEVY9ZY7hc0cLBz228wsog@mail.gmail.com>
In-Reply-To: <CAPMH7-8ebq6KLtA7dtTBtrB6_vnXgEVY9ZY7hc0cLBz228wsog@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.134]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Integrate java with yocto
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
X-List-Received-Date: Thu, 01 Aug 2013 02:15:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CA452391058F6D4E9715FB2C29D9312A01657971039SN2MPN102103_"

--_000_CA452391058F6D4E9715FB2C29D9312A01657971039SN2MPN102103_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Aman,

"jre-related-pkg-list" is just a description, you need to replace it with a=
ctually package name(e.g. openjdk-7-jre).


Best Regards,

Zhenhua

From: Aman Sharma [mailto:amansh.sharma5@gmail.com]
Sent: Wednesday, July 31, 2013 9:10 PM
To: Luo Zhenhua-B19537
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Integrate java with yocto

Hi Luo,

I am getting this error message.
freescale@freescale-sdk:~/SDK/QorIQ-SDK-V1.4-20130625-yocto/build_t4240qds_=
release$ bitbake fsl-image-core
Loading cache: 100% |######################################################=
###########################################################################=
#| ETA:  00:00:00
Loaded 3302 entries from dependency cache.

Build Configuration:
BB_VERSION        =3D "1.18.0"
BUILD_SYS         =3D "i686-linux"
NATIVELSBSTRING   =3D "Ubuntu-10.04"
TARGET_SYS        =3D "powerpc-fsl_networking-linux"
MACHINE           =3D "t4240qds"
DISTRO            =3D "fsl-networking"
DISTRO_VERSION    =3D "1.4"
TUNE_FEATURES     =3D "m32 fpu-hard e6500 altivec"
TARGET_FPU        =3D "hard"
meta
meta-yocto
meta-yocto-bsp    =3D "sdk-v1.4.x:5a7532143a49f59a5c85b08d3daf574fb1eccd8d"
meta-fsl-ppc      =3D "sdk-v1.4.x:f9fd0a617eb6913f87335c551918315ff4ebe18c"
meta-fsl-ppc-toolchain =3D "sdk-v1.4.x:8ec94cec04527cb971c125b1ddd2c5375034=
d723"
meta-virtualization =3D "sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f878329d6f9=
3"
meta-fsl-networking =3D "(nobranch):00f7a535029ca7ef8c96ba8e9916d4742166bab=
0"
meta-oe
meta-networking   =3D "sdk-v1.4.x:7c8dd8f096b64a709175d37a08a4fb02ca263616"
meta-java         =3D "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'jre-related-pkg-list' (but /home/freescale/SDK/Qo=
rIQ-SDK-V1.4-20130625-yocto/meta-fsl-networking/images/fsl-image-core.bb<ht=
tp://fsl-image-core.bb> RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'jre-related-pkg-list' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['jre-related-pkg-list']
ERROR: Required build target 'fsl-image-core' has no buildable providers.
Missing or unbuildable dependency chain was: ['fsl-image-core', 'jre-relate=
d-pkg-list']

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

I added the following line in local.conf file:
# Java preferences.  Could also be in distro config.
PREFERRED_PROVIDER_virtual/java-native =3D "jamvm-native"
PREFERRED_PROVIDER_virtual/javac-native =3D "ecj-bootstrap-native"
PREFERRED_VERSION_openjdk-7-jre =3D "03b21-2.1.8"
PREFERRED_VERSION_icedtea7-native =3D "2.1.3"
PREFERRED_PROVIDER_openjdk-7-jre =3D "openjdk-7-jre"


#By aman
IMAGE_INSTALL_append =3D "jre-related-pkg-list"

Can you please help me in this.
Thanks for your Response.

--
regards
Aman



--_000_CA452391058F6D4E9715FB2C29D9312A01657971039SN2MPN102103_
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
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Aman,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&#8220;jre-related-pkg-li=
st&#8221; is just a description, you need to replace it with actually packa=
ge name(e.g. openjdk-7-jre).
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Best Regards,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Zhenhua<o:p></o:p></span>=
</p>
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
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Aman Sha=
rma [mailto:amansh.sharma5@gmail.com]
<br>
<b>Sent:</b> Wednesday, July 31, 2013 9:10 PM<br>
<b>To:</b> Luo Zhenhua-B19537<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Integrate java with yocto<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi Luo,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I am getting this err=
or message.<o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">freescale@freescale-s=
dk:~/SDK/QorIQ-SDK-V1.4-20130625-yocto/build_t4240qds_release$ bitbake fsl-=
image-core<br>
Loading cache: 100% |######################################################=
###########################################################################=
#| ETA:&nbsp; 00:00:00<br>
Loaded 3302 entries from dependency cache.<br>
<br>
Build Configuration:<br>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.18.0&quot;=
<br>
BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;i686-li=
nux&quot;<br>
NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;Ubuntu-10.04&quot;<br>
TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;powerpc-fsl_=
networking-linux&quot;<br>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &qu=
ot;t4240qds&quot;<br>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;fsl-networking&quot;<br>
DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;1.4&quot;<br>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m32 fpu-hard e6500 altivec&=
quot;<br>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;hard&quot;<b=
r>
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; &nbsp;<br>
meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D &quot;sdk-v1.4.x:5a7532143a49f59a5c85b=
08d3daf574fb1eccd8d&quot;<br>
meta-fsl-ppc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;sdk-v1.4.x:f9fd0a617eb=
6913f87335c551918315ff4ebe18c&quot;<br>
meta-fsl-ppc-toolchain =3D &quot;sdk-v1.4.x:8ec94cec04527cb971c125b1ddd2c53=
75034d723&quot;<br>
meta-virtualization =3D &quot;sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f87832=
9d6f93&quot;<br>
meta-fsl-networking =3D &quot;(nobranch):00f7a535029ca7ef8c96ba8e9916d47421=
66bab0&quot;<br>
meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-networking&nbsp;&nbsp; =3D &quot;sdk-v1.4.x:7c8dd8f096b64a709175d37a08=
a4fb02ca263616&quot;<br>
meta-java&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;master:=
59696d89fd33df6953dcb2dd54ccd3b362513f28&quot;<br>
<br>
NOTE: Resolving any missing task queue dependencies<br>
ERROR: Nothing RPROVIDES 'jre-related-pkg-list' (but /home/freescale/SDK/Qo=
rIQ-SDK-V1.4-20130625-yocto/meta-fsl-networking/images/<a href=3D"http://fs=
l-image-core.bb">fsl-image-core.bb</a> RDEPENDS on or otherwise requires it=
)<br>
NOTE: Runtime target 'jre-related-pkg-list' is unbuildable, removing...<br>
Missing or unbuildable dependency chain was: ['jre-related-pkg-list']<br>
ERROR: Required build target 'fsl-image-core' has no buildable providers.<b=
r>
Missing or unbuildable dependency chain was: ['fsl-image-core', 'jre-relate=
d-pkg-list']<br>
<br>
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.=
<br>
<br>
I added the following line in local.conf file:<br>
# Java preferences.&nbsp; Could also be in distro config.<br>
PREFERRED_PROVIDER_virtual/java-native =3D &quot;jamvm-native&quot;<br>
PREFERRED_PROVIDER_virtual/javac-native =3D &quot;ecj-bootstrap-native&quot=
;<br>
PREFERRED_VERSION_openjdk-7-jre =3D &quot;03b21-2.1.8&quot;<br>
PREFERRED_VERSION_icedtea7-native =3D &quot;2.1.3&quot;<br>
PREFERRED_PROVIDER_openjdk-7-jre =3D &quot;openjdk-7-jre&quot;<br>
<br>
<br>
#By aman<br>
IMAGE_INSTALL_append =3D &quot;jre-related-pkg-list&quot;<br>
<br>
Can you please help me in this.<br>
Thanks for your Response.<br>
<br>
--<br>
regards<br>
Aman<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 <o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_CA452391058F6D4E9715FB2C29D9312A01657971039SN2MPN102103_--
