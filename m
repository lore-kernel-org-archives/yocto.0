Return-Path: <JSchluechtermann@FORCEAmerica.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42064E009B8; Tue, 21 Jun 2016 12:38:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [64.198.112.134 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Jun 2016 12:38:13 PDT
Received: from webmail.forceamerica.com (webmail.forceamerica.com
	[64.198.112.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87601E009A0
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 12:38:13 -0700 (PDT)
Received: from Corp-EX10.forceamerica.com ([10.100.101.44]) by
	Corp-EX10.forceamerica.com ([10.100.101.44]) with mapi id
	14.03.0123.003; Tue, 21 Jun 2016 14:37:06 -0500
From: John Schluechtermann <JSchluechtermann@FORCEAmerica.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Issues with Jethro qemu-native package build
Thread-Index: AdHL8y3GswHkNwd+RLWcXqE7IDuD+g==
Date: Tue, 21 Jun 2016 19:37:06 +0000
Message-ID: <28FBBE02F609FB4B8B4F047102C7B7360144C767FE@Corp-EX10.forceamerica.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.8.41]
MIME-Version: 1.0
Subject: Issues with Jethro qemu-native package build
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
X-List-Received-Date: Tue, 21 Jun 2016 19:38:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_28FBBE02F609FB4B8B4F047102C7B7360144C767FECorpEX10force_"

--_000_28FBBE02F609FB4B8B4F047102C7B7360144C767FECorpEX10force_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have a custom image that I am trying to make the SDK for using bitbake (c=
ustom image name) -c populate_sdk.  When performing this step the following=
 error is encountered.

| ERROR: User requested feature uuid
|        configure was not able to find it.
|        Install libuuid devel

Can someone point me to what I do not have configured correctly so I can ge=
t past this issue.

The local.conf is as follows:
MACHINE ??=3D "var-som-mx6"
DL_DIR ?=3D "${BSPDIR}/downloads/"
DISTRO ?=3D 'fsl-imx-x11'
PACKAGE_CLASSES ?=3D "package_rpm"
SDKMACHINE ?=3D "x86_64"
EXTRA_IMAGE_FEATURES =3D " debug-tweaks tools-debug eclipse-debug"
USER_CLASSES ?=3D "buildstats image-mklibs"
PATCHRESOLVE =3D "noop"

BB_DISKMON_DIRS =3D "\
    STOPTASKS,${TMPDIR},1G,100K \
    STOPTASKS,${DL_DIR},1G,100K \
    STOPTASKS,${SSTATE_DIR},1G,100K \
    STOPTASKS,/tmp,100M,100K \
    ABORT,${TMPDIR},100M,1K \
    ABORT,${DL_DIR},100M,1K \
    ABORT,${SSTATE_DIR},100M,1K \
    ABORT,/tmp,10M,1K"
PACKAGECONFIG_append_pn-qemu-native =3D " sdl"
PACKAGECONFIG_append_pn-nativesdk-qemu =3D " sdl"
ASSUME_PROVIDED +=3D "libsdl-native"

CONF_VERSION =3D "1"

ACCEPT_FSL_EULA =3D "1"
IMAGE_INSTALL_append =3D " tcf-agent openssh-sftp-server "
BUILD_LDFLAGS_prepend_pn-qemu-native =3D "-Wl,-rpath-link,/lib/x86_64-linux=
-gnu"



Any help is greatly appreciated!

-          John
______________________________________
John Schluechtermann
Senior Software Engineer

FORCE America, Inc.
1601 Airport Road | Waukesha, WI 53188
Office: 262-513-2335 | Fax: 2628963510
E-Mail: jschluechtermann@forceamerica.com
www.forceamerica.com<http://www.forceamerica.com>
100% Employee Owned

The information contained in this message and any attachment may be proprie=
tary, confidential, and privileged or subject to the work product doctrine =
and thus protected from disclosure. If the reader of this message is not th=
e intended recipient, or an employee or agent responsible for delivering th=
is message to the intended recipient, you are hereby notified that any diss=
emination, distribution or copying of this communication is strictly prohib=
ited. If you have received this communication in error, please notify me im=
mediately by replying to this message and deleting it and all copies and ba=
ckups thereof. Thank you.

--_000_28FBBE02F609FB4B8B4F047102C7B7360144C767FECorpEX10force_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style>
<!--
@font-face
	{font-family:Wingdings}
@font-face
	{font-family:Wingdings}
@font-face
	{font-family:Calibri}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif"}
span.EmailStyle17
	{font-family:"Calibri","sans-serif";
	color:windowtext}
.MsoChpDefault
	{font-family:"Calibri","sans-serif"}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.WordSection1
	{}
ol
	{margin-bottom:0in}
ul
	{margin-bottom:0in}
-->
</style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I have a custom image that I am trying to make the S=
DK for using bitbake (custom image name) &#8211;c populate_sdk.&nbsp; When =
performing this step the following error is encountered.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">| ERROR: User requested feature uuid</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; configur=
e was not able to find it.</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Install =
libuuid devel</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Can someone point me to what I do not have configure=
d correctly so I can get past this issue.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">The local.conf is as follows:</p>
<p class=3D"MsoNormal">MACHINE ??=3D &quot;var-som-mx6&quot;</p>
<p class=3D"MsoNormal">DL_DIR ?=3D &quot;${BSPDIR}/downloads/&quot;</p>
<p class=3D"MsoNormal">DISTRO ?=3D 'fsl-imx-x11'</p>
<p class=3D"MsoNormal">PACKAGE_CLASSES ?=3D &quot;package_rpm&quot;</p>
<p class=3D"MsoNormal">SDKMACHINE ?=3D &quot;x86_64&quot;</p>
<p class=3D"MsoNormal">EXTRA_IMAGE_FEATURES =3D &quot; debug-tweaks tools-d=
ebug eclipse-debug&quot;</p>
<p class=3D"MsoNormal">USER_CLASSES ?=3D &quot;buildstats image-mklibs&quot=
;</p>
<p class=3D"MsoNormal">PATCHRESOLVE =3D &quot;noop&quot;</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">BB_DISKMON_DIRS =3D &quot;\</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; STOPTASKS,${TMPDIR},1G,100K \</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; STOPTASKS,${DL_DIR},1G,100K \</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; STOPTASKS,${SSTATE_DIR},1G,100K \=
</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; STOPTASKS,/tmp,100M,100K \</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ABORT,${TMPDIR},100M,1K \</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ABORT,${DL_DIR},100M,1K \</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ABORT,${SSTATE_DIR},100M,1K \</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ABORT,/tmp,10M,1K&quot;</p>
<p class=3D"MsoNormal">PACKAGECONFIG_append_pn-qemu-native =3D &quot; sdl&q=
uot;</p>
<p class=3D"MsoNormal">PACKAGECONFIG_append_pn-nativesdk-qemu =3D &quot; sd=
l&quot;</p>
<p class=3D"MsoNormal">ASSUME_PROVIDED &#43;=3D &quot;libsdl-native&quot;</=
p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">CONF_VERSION =3D &quot;1&quot;</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">ACCEPT_FSL_EULA =3D &quot;1&quot;</p>
<p class=3D"MsoNormal">IMAGE_INSTALL_append =3D &quot; tcf-agent openssh-sf=
tp-server &quot;</p>
<p class=3D"MsoNormal">BUILD_LDFLAGS_prepend_pn-qemu-native =3D &quot;-Wl,-=
rpath-link,/lib/x86_64-linux-gnu&quot;</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt; font-family:&quot;T=
imes New Roman&quot;,&quot;serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt; font-family:&quot;T=
imes New Roman&quot;,&quot;serif&quot;">Any help is greatly appreciated!</s=
pan></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in"><span style=3D"f=
ont-size:12.0pt; font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"=
><span style=3D"">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><span style=3D"font-size:12.0pt; font-family:&quot;Tim=
es New Roman&quot;,&quot;serif&quot;">John</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt; font-family:&quot;T=
imes New Roman&quot;,&quot;serif&quot;">___________________________________=
___
</span></p>
<p class=3D"MsoNormal" style=3D""><b><span style=3D"font-size:10.0pt; font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">John Schluechtermann</span=
></b><span style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;"><br>
Senior Software Engineer<br>
<b><br>
FORCE America, Inc.</b> <br>
1601 Airport Road <b>| </b>Waukesha, WI 53188 <b><br>
Office: </b>262-513-2335<b> | Fax: </b>2628963510<br>
<b>E-Mail: </b>jschluechtermann@forceamerica.com<br>
<a href=3D"http://www.forceamerica.com"><span style=3D"color:blue">www.forc=
eamerica.com</span></a></span></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt; font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">100% Employee Owned</span></i></p>
<p class=3D"MsoNormal">&nbsp;</p>
</div>
<p class=3D"MsoNormal" style=3D"color:#0000FF"><span class=3D"auto-style1">=
<em>The information contained in this message and any attachment may be pro=
prietary, confidential, and privileged or subject to the work product doctr=
ine and thus protected from disclosure.
 If the reader of this message is not the intended recipient, or an employe=
e or agent responsible for delivering this message to the intended recipien=
t, you are hereby notified that any dissemination, distribution or copying =
of this communication is strictly
 prohibited. If you have received this communication in error, please notif=
y me immediately by replying to this message and deleting it and all copies=
 and backups thereof. Thank you.</em></span>
</p>
</body>
</html>

--_000_28FBBE02F609FB4B8B4F047102C7B7360144C767FECorpEX10force_--
