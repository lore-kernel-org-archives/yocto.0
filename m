Return-Path: <meenakumari.s@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C686E00B66; Thu,  8 May 2014 22:56:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.4 required=5.0 tests=HTML_MESSAGE,MIME_HTML_ONLY,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.1 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from GWS06.hcl.com (unknown [203.105.185.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09EFBE00B60
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 22:56:10 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.97,1016,1389724200"; 
	d="scan'208,217";a="68894910"
Received: from unknown (HELO NDA-CORP-HT02.CORP.HCL.IN) ([10.248.64.34])
	by GWS06.hcl.com with ESMTP/TLS/AES128-SHA; 09 May 2014 11:19:57 +0530
Received: from NDA-HCLT-CSHT02.HCLT.CORP.HCL.IN (10.98.132.27) by
	NDA-CORP-HT02.CORP.HCL.IN (10.248.64.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 9 May 2014 11:26:07 +0530
Received: from NDA-HCLT-MBS02.HCLT.CORP.HCL.IN ([10.98.132.17]) by
	NDA-HCLT-CSHT02.HCLT.CORP.HCL.IN ([10.98.132.27]) with mapi id
	14.03.0123.003; Fri, 9 May 2014 11:26:07 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Thread-Topic: [yocto] Third Party Components Integration in Yocto
Thread-Index: Ac9pOpAuRv9q6K+2TDy/G0K3Sq4Nk///s3mA//ziTxCABefTAIABnnqI
Date: Fri, 9 May 2014 05:56:06 +0000
Message-ID: <E4938C0D959B3445943720B88F0721341562D6B0@NDA-HCLT-MBS02.hclt.corp.hcl.in>
References: <E4938C0D959B3445943720B88F0721341562A2D7@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<536903ED.1040806@dynamicdevices.co.uk>
	<E4938C0D959B3445943720B88F0721341562D593@NDA-HCLT-MBS02.hclt.corp.hcl.in>,
	<536B5AFC.6090105@dynamicdevices.co.uk>
In-Reply-To: <536B5AFC.6090105@dynamicdevices.co.uk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.134.12]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Third Party Components Integration in Yocto
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
X-List-Received-Date: Fri, 09 May 2014 05:56:18 -0000
Content-Language: en-US
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style id=3D"owaParaStyle" type=3D"text/css"></style>
</head>
<body ocsi=3D"0" fpstyle=3D"1" bgcolor=3D"#FFFFFF">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Thanks for your response Alex.<br>
<br>
I gone with all these steps but not helpful.<br>
<br>
Here I am sharing my recipe and bb-example.bb and do_install log.<br>
<br>
<br>
bb-example.bb:<br>
<br>
LICENSE =3D &quot;GPLv2&#43;&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D751419260aa954499f7abaabaa8=
82bbe&quot;<br>
<br>
PR =3D &quot;r0&quot;<br>
<br>
inherit module<br>
<br>
SRC_URI =3D&nbsp;&nbsp; &quot;file://bb-example.tar.bz2/&quot;<br>
<br>
S =3D &quot;${WORKDIR}/bb-example&quot;<br>
<br>
inherit autotools pkgconfig <br>
<br>
do_compile() {<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; make<br>
}<br>
<br>
do_install() {<br>
&nbsp;&nbsp;&nbsp; &nbsp; install -d ${D}${bindir} /<br>
&nbsp;&nbsp;&nbsp; &nbsp; install -m 0755 bb-example ${D}${bindir}<br>
}<br>
FILES_${PN} &#43;=3D &quot; ${libdir}/bb-example/*.so&quot;<br>
<br>
<br>
do_install log:<br>
<br>
NOTE: Executing RunQueue Tasks<br>
&#43; cd /home/user1/poky/build/tmp/work/baytrail32-poky-linux/bb-example/1=
.0-r0/bb-example<br>
&#43; do_install<br>
&#43; install -d /home/user1/poky/build/tmp/work/baytrail32-poky-linux/bb-e=
xample/1.0-r0/image/usr/bin<br>
<br>
&#43; install -m 0755 bb-example /home/user1/poky/build/tmp/work/baytrail32=
-poky-linux/bb-example/1.0-r0/image/usr/bin/<br>
<br>
install: cannot stat `bb-example': No such file or directory<br>
&#43; bb_exit_handler<br>
&#43; ret=3D1<br>
&#43; echo WARNING: exit code 1 from a shell command.<br>
WARNING: exit code 1 from a shell command.<br>
&#43; exit 1<br>
<br>
Recipe:<br>
cd&nbsp;&nbsp; /home/user1/poky/meta/recipes-sato/bb-App/bb-example/bb-exam=
ple.tar.bz2<br>
cd&nbsp;&nbsp; /home/user1/poky/meta/recipes-sato/bb-App/bb-example.bb<br>
<br>
<br>
tar -xvf&nbsp; bb-example.tar.bz2<br>
<br>
/gdbus, /Release, Makefile, bb-example.c bb-example.h<br>
<br>
<br>
cd&nbsp; /Release,<br>
<br>
/gdbus, makefile, objects.mk, sources.mk, subdir.mk<br>
<br>
After do_compile and make<br>
/home/user1/poky/build/tmp/work/baytrail32-poky-linux/bb-example/1.0-r1/...=
........../image&nbsp; ./license-destdir ./bb-example.........all depended =
folders.<br>
<br>
Inside ./bb-example all my binaries are executing but not loading to ./imag=
e/tree..<br>
<br>
<br>
Hope now it is very clear understanding to my problem.<br>
<br>
<br>
Regards<br>
Meena
<hr tabindex=3D"-1">
<div id=3D"divRplyFwdMsg"><font color=3D"#000000" face=3D"Tahoma" size=3D"2=
"><b><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
From:</b> Alex J Lennon [ajlennon@dynamicdevices.co.uk]<br>
<b>Sent:</b> Thursday, May 08, 2014 3:52 PM<br>
<b>To:</b> Meenakumari Shedole<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Third Party Components Integration in Yocto<br>
</font><br>
</div>
<div></div>
<div>Hi Meena,<br>
<br>
<div class=3D"moz-cite-prefix">On 08/05/2014 11:05, Meenakumari Shedole wro=
te:<br>
</div>
<blockquote type=3D"cite"><style>=0A=
<!--=0A=
@font-face=0A=
	{font-family:Helvetica}=0A=
@font-face=0A=
	{font-family:"Cambria Math"}=0A=
@font-face=0A=
	{font-family:Calibri}=0A=
@font-face=0A=
	{font-family:Tahoma}=0A=
@font-face=0A=
	{font-family:Consolas}=0A=
p.MsoNormal, li.MsoNormal, div.MsoNormal=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:12.0pt;=0A=
	font-family:"Times New Roman","serif";=0A=
	color:black}=0A=
a:link, span.MsoHyperlink=0A=
	{color:blue;=0A=
	text-decoration:underline}=0A=
a:visited, span.MsoHyperlinkFollowed=0A=
	{color:purple;=0A=
	text-decoration:underline}=0A=
p=0A=
	{margin-right:0in;=0A=
	margin-left:0in;=0A=
	font-size:12.0pt;=0A=
	font-family:"Times New Roman","serif";=0A=
	color:black}=0A=
pre=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:10.0pt;=0A=
	font-family:"Courier New";=0A=
	color:black}=0A=
span.HTMLPreformattedChar=0A=
	{font-family:Consolas;=0A=
	color:black}=0A=
p.txt1, li.txt1, div.txt1=0A=
	{margin-right:0in;=0A=
	margin-left:0in;=0A=
	font-size:12.0pt;=0A=
	font-family:"Times New Roman","serif";=0A=
	color:black}=0A=
span.EmailStyle30=0A=
	{font-family:"Calibri","sans-serif";=0A=
	color:#1F497D}=0A=
.MsoChpDefault=0A=
	{font-size:10.0pt}=0A=
@page Section1=0A=
	{margin:1.0in 1.0in 1.0in 1.0in}=0A=
-->=0A=
BODY {direction: ltr;font-family: Tahoma;color: #000000;font-size: 10pt;}P =
{margin-top:0;margin-bottom:0;}</style>
<div class=3D"Section1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Thanks Alex,</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Yes I installed &nbsp;F=
ILES_${PN} all package folders are creating
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Tried devshell&nbsp; bu=
t there is no installed bb-example in image/usr/include/=85empty include fo=
lder. Bb-example is not loading inside image/=85=85</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Analysed &nbsp;log_devs=
hell , log_package, do_install, do_make.</span></p>
</div>
</blockquote>
<br>
OK so that's helpful. I have had similar problems myself with files that do=
n't get installed and thus aren't packaged. In my experience it is usually =
to do with the path to the source file one is trying to install.<br>
<br>
i.e. So for some reason the bb-example file isn't where it should be to be =
copied across to the target folder in the image tree.<br>
<br>
Where does bb-example come from? Can you share the whole recipe? Can you se=
e it where you think it should be in the devshell folder or the folder abov=
e?<br>
<br>
If you included bb-example as a <a class=3D"moz-txt-link-freetext" href=3D"=
file://" target=3D"_blank">
file://</a> entry added to SRC_URI then it will be copied across to the wor=
king directory ${WORKDIR}<br>
<br>
You might want to try something like<br>
<br>
&nbsp; install -m 0755 ${WORKDIR}/bb-example ${D}${bindir}<br>
<br>
Alternatively if bb-example is output from a build process then it will be =
in the source directory ${S}<br>
<br>
In which case try<br>
<br>
&nbsp; install -m 0755 ${S}/bb-example ${D}${bindir}<br>
&nbsp; <br>
Hope this helps!<br>
<br>
Alex<br>
<br>
<blockquote type=3D"cite">
<div class=3D"Section1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Even I compared with ot=
her recipes folder structures &nbsp;it is going right direction but only th=
e binaries are not loading.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">I guess I missed someth=
ing in do_install ? no proper path?
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">After do_compile and ma=
ke, at &nbsp;do_install binaries are not able to load.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Regards</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Meena</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #B5C4DF=0A=
            1.0pt; padding:3.0pt 0in 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt; font-family:&quo=
t;Tahoma&quot;,&quot;sans-serif&quot;; color:windowtext">From:</span></b><s=
pan style=3D"font-size:10.0pt; font-family:&quot;Tahoma&quot;,&quot;sans-se=
rif&quot;; color:windowtext"> Alex J Lennon [<a class=3D"moz-txt-link-freet=
ext" href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">mailto=
:ajlennon@dynamicdevices.co.uk</a>]
<br>
<b>Sent:</b> Tuesday, May 06, 2014 9:17 PM<br>
<b>To:</b> Meenakumari Shedole; <a class=3D"moz-txt-link-abbreviated" href=
=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">
yocto@yoctoproject.org</a>; Beauchesne, Gwenole<br>
<b>Subject:</b> Re: [yocto] Third Party Components Integration in Yocto</sp=
an></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">&nbsp;</p>
<div>
<p class=3D"MsoNormal">On 06/05/2014 15:57, Meenakumari Shedole wrote:</p>
</div>
<blockquote style=3D"margin-top:5.0pt; margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
ahoma&quot;,&quot;sans-serif&quot;">Hi,
</span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
ahoma&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
ahoma&quot;,&quot;sans-serif&quot;">To add 3rd party components in yocto we=
 created bb file and modified local.conf file.</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
ahoma&quot;,&quot;sans-serif&quot;">After a yocto build, 3rd party componen=
t executing the binaries and rpm packages but executed binaries are not loa=
ding inside the rpm packages, rpm package is empty.</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
ahoma&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
ahoma&quot;,&quot;sans-serif&quot;">Used below function in bb file.&nbsp;</=
span></p>
</div>
<div>
<div id=3D"file-bb-example-bb-LC28">
<pre style=3D"line-height:16.2pt; background:ghostwhite"><span class=3D"nf"=
><b><span style=3D"font-size:9.0pt; font-family:Consolas; color:#990000">do=
_install</span></b></span><span style=3D"font-size:9.0pt; font-family:Conso=
las"> <span class=3D"p">()</span> </span><span class=3D"err"><span style=3D=
"font-size:9.0pt; font-family:Consolas; color:#A61717; background:#E3D2D2">=
{</span></span><span style=3D"font-size:9.0pt; font-family:Consolas"></span=
></pre>
</div>
<div id=3D"file-bb-example-bb-LC29">
<pre style=3D"line-height:16.2pt; background:ghostwhite"><span style=3D"fon=
t-size:9.0pt; font-family:Consolas">&nbsp; </span><span class=3D"nv"><span =
style=3D"font-size:9.0pt; font-family:Consolas; color:teal">install</span><=
/span><span style=3D"font-size:9.0pt; font-family:Consolas"> <span class=3D=
"o"><b>-</b></span></span><span class=3D"nv"><span style=3D"font-size:9.0pt=
; font-family:Consolas; color:teal">d</span></span><span style=3D"font-size=
:9.0pt; font-family:Consolas"> </span><span class=3D"kt"><b><span style=3D"=
font-size:9.0pt; font-family:Consolas; color:#445588">$</span></b></span><s=
pan class=3D"err"><span style=3D"font-size:9.0pt; font-family:Consolas; col=
or:#A61717; background:#E3D2D2">{</span></span><span class=3D"nv"><span sty=
le=3D"font-size:9.0pt; font-family:Consolas; color:teal">D</span></span><sp=
an class=3D"err0"><span style=3D"font-size:9.0pt; font-family:Consolas; col=
or:#A61717; background:#E3D2D2">}${</span></span><span class=3D"nv"><span s=
tyle=3D"font-size:9.0pt; font-family:Consolas; color:teal">bindir</span></s=
pan><span class=3D"err"><span style=3D"font-size:9.0pt; font-family:Consola=
s; color:#A61717; background:#E3D2D2">}</span></span><span style=3D"font-si=
ze:9.0pt; font-family:Consolas"></span></pre>
</div>
<div id=3D"file-bb-example-bb-LC30">
<pre style=3D"line-height:16.2pt; background:ghostwhite"><span style=3D"fon=
t-size:9.0pt; font-family:Consolas">&nbsp; </span><span class=3D"nv"><span =
style=3D"font-size:9.0pt; font-family:Consolas; color:teal">install</span><=
/span><span style=3D"font-size:9.0pt; font-family:Consolas"> <span class=3D=
"o"><b>-</b></span></span><span class=3D"nv"><span style=3D"font-size:9.0pt=
; font-family:Consolas; color:teal">m</span></span><span style=3D"font-size=
:9.0pt; font-family:Consolas"> </span><span class=3D"mi"><span style=3D"fon=
t-size:9.0pt; font-family:Consolas; color:#009999">0755</span></span><span =
style=3D"font-size:9.0pt; font-family:Consolas"> </span><span class=3D"nv">=
<span style=3D"font-size:9.0pt; font-family:Consolas; color:teal">bb</span>=
</span><span class=3D"o"><b><span style=3D"font-size:9.0pt; font-family:Con=
solas">-</span></b></span><span class=3D"nv"><span style=3D"font-size:9.0pt=
; font-family:Consolas; color:teal">example</span></span><span style=3D"fon=
t-size:9.0pt; font-family:Consolas"> </span><span class=3D"kt">=0A=
<b><span style=3D"font-size:9.0pt; font-family:Consolas; color:#445588">$</=
span></b></span><span class=3D"err"><span style=3D"font-size:9.0pt; font-fa=
mily:Consolas; color:#A61717; background:#E3D2D2">{</span></span><span clas=
s=3D"nv"><span style=3D"font-size:9.0pt; font-family:Consolas; color:teal">=
D</span></span><span class=3D"err"><span style=3D"font-size:9.0pt; font-fam=
ily:Consolas; color:#A61717; background:#E3D2D2">}${</span></span><span cla=
ss=3D"nv"><span style=3D"font-size:9.0pt; font-family:Consolas">bindir</spa=
n></span><span class=3D"err"><span style=3D"font-size:9.0pt; font-family:Co=
nsolas; color:#A61717; background:#E3D2D2">}</span></span><span style=3D"fo=
nt-size:9.0pt; font-family:Consolas"></span></pre>
</div>
<div id=3D"file-bb-example-bb-LC31">
<pre style=3D"line-height:16.2pt; background:ghostwhite"><span class=3D"err=
"><span style=3D"font-size:9.0pt; font-family:Consolas; color:#A61717; back=
ground:#E3D2D2">}</span></span><span style=3D"font-size:9.0pt; font-family:=
Consolas"></span></pre>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
ahoma&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
</div>
</div>
</div>
</blockquote>
<p class=3D"MsoNormal"><br>
Hi Meena,<br>
<br>
That seems a little odd as files in ${bindir} should be packaged into the d=
efault output package as I understand it<br>
<br>
ref: <a href=3D"http://www.embeddedlinux.org.cn/OEManual/recipes_packages.h=
tml" target=3D"_blank">
http://www.embeddedlinux.org.cn/OEManual/recipes_packages.html</a><br>
<br>
If it were successfully installed but not packaged for any reason (e.g. in =
this case not a part of FILES_${PN}) then you should see a warning about an=
 installed-vs-packaged file issue.<br>
<br>
If you enter a devshell with bitbake -c devshell recipe-foo then do you see=
 the installed bb-example file in within ../image/ tree?<br>
<br>
Have you also tried looking (from the devshell) in ../temp/log.do_install, =
../temp/log.do_xxx to see what is happening?<br>
<br>
Cheers, <br>
<br>
Alex<br>
<br>
<br>
</p>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
ahoma&quot;,&quot;sans-serif&quot;">can anyone please suggest me how to mov=
e further.</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
ahoma&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
ahoma&quot;,&quot;sans-serif&quot;">Regards</span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
ahoma&quot;,&quot;sans-serif&quot;">Meena</span></p>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><br>
<br>
<span style=3D"font-size:7.0pt; font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;; color:gray">::DISCLAIMER::<br>
---------------------------------------------------------------------------=
-------------------------------------------------------------------------</=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt; font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;; color:gray">The contents of this e-mail a=
nd any attachment(s) are confidential and intended for the named recipient(=
s) only.<br>
E-mail transmission is not guaranteed to be secure or error-free as informa=
tion could be intercepted, corrupted,
<br>
lost, destroyed, arrive late or incomplete, or may contain viruses in trans=
mission. The e mail and its contents
<br>
(with or without referred errors) shall therefore not attach any liability =
on the originator or HCL or its affiliates.
<br>
Views or opinions, if any, presented in this email are solely those of the =
author and may not necessarily reflect the
<br>
views or opinions of HCL or its affiliates. Any form of reproduction, disse=
mination, copying, disclosure, modification,
<br>
distribution and / or publication of this message without the prior written=
 consent of authorized representative of
<br>
HCL is strictly prohibited. If you have received this email in error please=
 delete it and notify the sender immediately.
<br>
Before opening any email and/or attachments, please check them for viruses =
and other defects.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt; font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;; color:gray">-----------------------------=
---------------------------------------------------------------------------=
--------------------------------------------</span></p>
</div>
</blockquote>
<br>
</div>
</div>
</body>
</html>

