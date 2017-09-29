Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43519E00BB7; Fri, 29 Sep 2017 12:01:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.234 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65BE2E00C62
	for <yocto@yoctoproject.org>; Fri, 29 Sep 2017 12:00:53 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx30.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Fri, 29 Sep 2017 19:00:50 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Fri, 29 Sep 2017 11:45:06 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Fri, 29 Sep 2017 11:45:06 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: trying to initialize a new devtool recipe using mercurial SCM
Thread-Index: AdM5UKO0x3+4CpfiQY65PixC7/UxbQ==
Date: Fri, 29 Sep 2017 18:45:05 +0000
Message-ID: <616c777d037840de983eb77f09a0de05@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1506711647-637140-22291-64175-2
X-BESS-VER: 2017.12-r1709122024
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.185535
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: trying to initialize a new devtool recipe using mercurial SCM
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
X-List-Received-Date: Fri, 29 Sep 2017 19:01:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_616c777d037840de983eb77f09a0de05sakurauscom_"

--_000_616c777d037840de983eb77f09a0de05sakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi list,
I'm a new user of Yocto and I'm trying use devtool to set up a recipe that =
has a source URI that points to a mercurial repository.
Here is the output of running devtool:

devtool add canfestival sources/canfestival -d hg://bitbucket.org/Mongo/can=
festival-3-asc;protocol=3Dhttps
DEBUG: Using basepath /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberry=
pi3
DEBUG: Using standard bitbake path /home/gwilson/Qt-5.9/Yocto-build-RPi3/so=
urces/poky/bitbake
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/p=
oky/scripts/lib/devtool...
DEBUG: Loading plugin deploy
DEBUG: Loading plugin upgrade
DEBUG: Loading plugin package
DEBUG: Loading plugin build_sdk
DEBUG: Loading plugin sdk
DEBUG: Loading plugin search
DEBUG: Loading plugin utilcmds
DEBUG: Loading plugin build
DEBUG: Loading plugin runqemu
DEBUG: Loading plugin build_image
DEBUG: Loading plugin standard
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-ras=
pberrypi3/workspace/lib/devtool...
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/p=
oky/meta-poky/lib/devtool...
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-ras=
pberrypi3/lib/devtool...
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/p=
oky/meta/lib/devtool...
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-raspberrypi/lib/devtool...
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-openembedded/meta-oe/lib/devtool...
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-openembedded/meta-python/lib/devtool...
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-openembedded/meta-networking/lib/devtool...
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-openembedded/meta-initramfs/lib/devtool...
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-openembedded/meta-multimedia/lib/devtool...
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-boot2qt/lib/devtool...
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-boot2qt/meta-raspberrypi-extras/lib/devtool...
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-mingw/lib/devtool...
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-qt5/lib/devtool...
DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/m=
eta-sakura/lib/devtool...
DEBUG: Reading workspace in /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-ras=
pberrypi3/workspace
DEBUG: Executing command "recipetool --color=3Dalways create -o /tmp/devtoo=
l_vu_ossg "hg://bitbucket.org/Mongo/canfestival-3-asc"  -x /home/gwilson/Qt=
-5.9/Yocto-build-RPi3/sources/canfestival -N canfestival"
ERROR: Command 'recipetool --color=3Dalways create -o /tmp/devtool_vu_ossg =
"hg://bitbucket.org/Mongo/canfestival-3-asc"  -x /home/gwilson/Qt-5.9/Yocto=
-build-RPi3/sources/canfestival -N canfestival' failed:
NOTE: Fetching hg://bitbucket.org/Mongo/canfestival-3-asc...
ERROR: URL: 'hg://bitbucket.org/Mongo/canfestival-3-asc' is missing the req=
uired parameter 'module'

I found one reference that implied that adding ';module=3D' might help but =
it made no difference.

I can do a "hg clone https://bitbucket.org/Mongo/canfestival-3-asc'.

Any help would be greatly appreciated.

Greg Wilson-Lindberg
Sakura Finetek
310-783-5075

--_000_616c777d037840de983eb77f09a0de05sakurauscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi list,<o:p></o:p></p>
<p class=3D"MsoNormal">I'm a new user of Yocto and I'm trying use devtool t=
o set up a recipe that has a source URI that points to a mercurial reposito=
ry.<o:p></o:p></p>
<p class=3D"MsoNormal">Here is the output of running devtool:<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">devtool add canfestival sources/canfestival -d hg://=
bitbucket.org/Mongo/canfestival-3-asc;protocol=3Dhttps<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Using basepath /home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/build-raspberrypi3<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Using standard bitbake path /home/gwilson/Qt-=
5.9/Yocto-build-RPi3/sources/poky/bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/sources/poky/scripts/lib/devtool...<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugin deploy<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugin upgrade<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugin package<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugin build_sdk<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugin sdk<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugin search<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugin utilcmds<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugin build<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugin runqemu<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugin build_image<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugin standard<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/build-raspberrypi3/workspace/lib/devtool...<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/sources/poky/meta-poky/lib/devtool...<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/build-raspberrypi3/lib/devtool...<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/sources/poky/meta/lib/devtool...<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/sources/meta-raspberrypi/lib/devtool...<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/sources/meta-openembedded/meta-oe/lib/devtool...<o:p></o:p></=
p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/sources/meta-openembedded/meta-python/lib/devtool...<o:p></o:=
p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/sources/meta-openembedded/meta-networking/lib/devtool...<o:p>=
</o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/sources/meta-openembedded/meta-initramfs/lib/devtool...<o:p><=
/o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/sources/meta-openembedded/meta-multimedia/lib/devtool...<o:p>=
</o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/sources/meta-boot2qt/lib/devtool...<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/sources/meta-boot2qt/meta-raspberrypi-extras/lib/devtool...<o=
:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/sources/meta-mingw/lib/devtool...<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/sources/meta-qt5/lib/devtool...<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Loading plugins from /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/sources/meta-sakura/lib/devtool...<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Reading workspace in /home/gwilson/Qt-5.9/Yoc=
to-build-RPi3/build-raspberrypi3/workspace<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Executing command &quot;recipetool --color=3D=
always create -o /tmp/devtool_vu_ossg &quot;hg://bitbucket.org/Mongo/canfes=
tival-3-asc&quot;&nbsp; -x /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/ca=
nfestival -N canfestival&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Command 'recipetool --color=3Dalways create -=
o /tmp/devtool_vu_ossg &quot;hg://bitbucket.org/Mongo/canfestival-3-asc&quo=
t;&nbsp; -x /home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/canfestival -N ca=
nfestival' failed:<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Fetching hg://bitbucket.org/Mongo/canfestival-=
3-asc...<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: URL: 'hg://bitbucket.org/Mongo/canfestival-3-=
asc' is missing the required parameter 'module'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I found one reference that implied that adding ';mod=
ule=3D' might help but it made no difference.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I can do a &quot;hg clone https://bitbucket.org/Mong=
o/canfestival-3-asc'.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help would be greatly appreciated.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Greg Wilson-Lindberg</span><span style=3D"font-size:1=
2.0pt;font-family:&quot;Times New Roman&quot;,serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Sakura Finetek</span><span style=3D"font-size:12.0pt;=
font-family:&quot;Times New Roman&quot;,serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">310-783-5075</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_616c777d037840de983eb77f09a0de05sakurauscom_--
