Return-Path: <agikling@minnetronix.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 823B7E00BF5; Fri,  8 Apr 2016 07:31:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Fri, 08 Apr 2016 07:31:16 PDT
Received: from mxex2010.minnetronix.com (vpn.minnetronix.com [207.250.0.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0818CE00BB9
	for <yocto@yoctoproject.org>; Fri,  8 Apr 2016 07:31:16 -0700 (PDT)
Received: from MXEX2010.minnetronix.com ([fe80::385f:83b7:e616:4395]) by
	MXEX2010.minnetronix.com ([fe80::385f:83b7:e616:4395%25]) with mapi id
	14.03.0248.002; Fri, 8 Apr 2016 09:30:10 -0500
From: Andy Gikling <agikling@minnetronix.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Prescribed way to make global variables in recipes?
Thread-Index: AdGRoyaPXt+jelztRB6qyGDou3i0VQ==
Date: Fri, 8 Apr 2016 14:30:09 +0000
Message-ID: <3804BDFE6D2105429FC87BEC5F7ABA16CCD48B@MXEX2010.minnetronix.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.28.10]
MIME-Version: 1.0
Subject: Prescribed way to make global variables in recipes?
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
X-List-Received-Date: Fri, 08 Apr 2016 14:31:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3804BDFE6D2105429FC87BEC5F7ABA16CCD48BMXEX2010minnetron_"

--_000_3804BDFE6D2105429FC87BEC5F7ABA16CCD48BMXEX2010minnetron_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear Yocto,

First of all, I love this project.  Thanks for all your hard work.

Question:  What is the prescribed way to allow image recipes to make global=
 configuration variables that other recipes can use?

After extensive research and educating myself on how bitbake works, it seem=
s that what I'm asking for is technically not possible.  This issue is disc=
ussed previously without a clear conclusion in the mailing list:

https://lists.yoctoproject.org/pipermail/yocto/2012-February/004552.html

Another work around is to setup a BB_ENV_EXTRAWHITE variable as described h=
ere:

http://stackoverflow.com/questions/17366984/is-it-possible-to-pass-in-comma=
nd-line-variables-to-a-bitbake-build

However, this doesn't seem like the right approach either.

If there's no way to make global variables in an image recipe it seems one =
of two things are true:  Either bitbake lacks this powerful feature for som=
e reason or there's some other "prescribed" way to accomplish what I need a=
nd I just don't know what that is.  I suspect the latter is true.

Let me give a simple example of why I need this feature.  We are deploying =
an application with Yocto called "faux-app."  Once this product is live, I =
would like to use our continuous integration build mechanism to build image=
s for faux-app that contain the latest version of the user space applicatio=
n code.

We have a meta-faux-app layer with a hand full of recipes that are graceful=
ly customizing our image.  One of the recipes is an "image recipe" that pul=
ls in core-image and builds the output deploy binaries called faux-app_0.1.=
bb.

Another recipe is essentially a bbappend that is in charge of applying a pa=
tch to u-boot.  This patch configures u-boot to behave in a "debug" fashion=
 vs a "release" fashion (ie, defaulting to network boot for debug and sdcar=
d boot for release).

Ideally, for CI purposes we would like to allow our CI server to simply cal=
l "bitbake faux-app" to make a release build and then "bitbake faux-app-deb=
ug" to make a debug build.  The thought process is I could have a variable =
defined in both "faux-app_0.1.bb" and "faux-app-debug_0.1.bb" called FAUX_R=
ELEASE_MODE.  In faux-app_0.1.bb this variable would be set to "release" an=
d in faux-app-debug_0.1.bb it would be set to "debug."

Then, in the "u-boot_2014.04.bbappend" file found in our layer, we could ap=
pend the correct patch to the SRC_URI variable using inline python logic fo=
r example:

SRC_URI +=3D "${@base_contains('FAUX_RELEASE_MODE', 'release', 'file://u-bo=
ot-mode-release.patch', ' file://u-boot-mode-debug.patch ', d)}"

So in this way I have my image recipe setting a value that tells other reci=
pes how to behave.  This seems like a perfectly reasonable use case so I'm =
at a loss as to why bitbake doesn't support this (I understand the environm=
ent variables is "scrubbed" between recipes - it makes sense).  Is there an=
other mechanism I'm not aware of?  Can someone give me an example of a diff=
erent way to accomplish my use case described above?

Any guidance would be much appreciated!  Thanks,

~Andy Gikling



--_000_3804BDFE6D2105429FC87BEC5F7ABA16CCD48BMXEX2010minnetron_
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
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
<p class=3D"MsoNormal">Dear Yocto,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">First of all, I love this project.&nbsp; Thanks for =
all your hard work.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Question:&nbsp; What is the prescribed way to allow =
image recipes to make global configuration variables that other recipes can=
 use?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After extensive research and educating myself on how=
 bitbake works, it seems that what I&#8217;m asking for is technically not =
possible.&nbsp; This issue is discussed previously without a clear conclusi=
on in the mailing list:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://lists.yoctoproject.org/pipermail/=
yocto/2012-February/004552.html">https://lists.yoctoproject.org/pipermail/y=
octo/2012-February/004552.html</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Another work around is to setup a BB_ENV_EXTRAWHITE =
variable as described here:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://stackoverflow.com/questions/173669=
84/is-it-possible-to-pass-in-command-line-variables-to-a-bitbake-build">htt=
p://stackoverflow.com/questions/17366984/is-it-possible-to-pass-in-command-=
line-variables-to-a-bitbake-build</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However, this doesn&#8217;t seem like the right appr=
oach either.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If there&#8217;s no way to make global variables in =
an image recipe it seems one of two things are true:&nbsp; Either bitbake l=
acks this powerful feature for some reason or there&#8217;s some other &#82=
20;prescribed&#8221; way to accomplish what I need and I just don&#8217;t
 know what that is.&nbsp; I suspect the latter is true.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Let me give a simple example of why I need this feat=
ure.&nbsp; We are deploying an application with Yocto called &#8220;faux-ap=
p.&#8221;&nbsp; Once this product is live, I would like to use our continuo=
us integration build mechanism to build images for faux-app
 that contain the latest version of the user space application code.&nbsp; =
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have a meta-faux-app layer with a hand full of re=
cipes that are gracefully customizing our image. &nbsp;One of the recipes i=
s an &#8220;image recipe&#8221; that pulls in core-image and builds the out=
put deploy binaries called faux-app_0.1.bb.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Another recipe is essentially a bbappend that is in =
charge of applying a patch to u-boot.&nbsp; This patch configures u-boot to=
 behave in a &#8220;debug&#8221; fashion vs a &#8220;release&#8221; fashion=
 (ie, defaulting to network boot for debug and sdcard boot for
 release).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ideally, for CI purposes we would like to allow our =
CI server to simply call &#8220;bitbake faux-app&#8221; to make a release b=
uild and then &#8220;bitbake faux-app-debug&#8221; to make a debug build.&n=
bsp; The thought process is I could have a variable defined in
 both &#8220;faux-app_0.1.bb&#8221; and &#8220;faux-app-debug_0.1.bb&#8221;=
 called FAUX_RELEASE_MODE.&nbsp; In faux-app_0.1.bb this variable would be =
set to &#8220;release&#8221; and in faux-app-debug_0.1.bb it would be set t=
o &#8220;debug.&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Then, in the &#8220;u-boot_2014.04.bbappend&#8221; f=
ile found in our layer, we could append the correct patch to the SRC_URI va=
riable using inline python logic for example:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRC_URI &#43;=3D &quot;${@base_contains(&#8216;FAUX_=
RELEASE_MODE', 'release', 'file://u-boot-mode-release.patch', ' file://u-bo=
ot-mode-debug.patch ', d)}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So in this way I have my image recipe setting a valu=
e that tells other recipes how to behave.&nbsp; This seems like a perfectly=
 reasonable use case so I&#8217;m at a loss as to why bitbake doesn&#8217;t=
 support this (I understand the environment variables
 is &#8220;scrubbed&#8221; between recipes - it makes sense).&nbsp; Is ther=
e another mechanism I&#8217;m not aware of?&nbsp; Can someone give me an ex=
ample of a different way to accomplish my use case described above?<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any guidance would be much appreciated!&nbsp; Thanks=
,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">~Andy Gikling<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_3804BDFE6D2105429FC87BEC5F7ABA16CCD48BMXEX2010minnetron_--
