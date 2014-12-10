Return-Path: <Thomas.Moore2@atk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7FE6E00959; Tue,  9 Dec 2014 21:43:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 70 seconds by postgrey-1.32 at yocto-www;
	Tue, 09 Dec 2014 21:43:43 PST
Received: from mx-mn.atk.com (mx-mn.atk.com [192.107.248.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B96FE00905
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 21:43:43 -0800 (PST)
Received: from unknown (HELO UT40SVEH3.atk.com) ([146.168.70.140])
	by mx-mn.atk.com with ESMTP; 09 Dec 2014 23:38:06 -0600
Received: from UT40SVCWEM001.atk.com ([169.254.4.219]) by UT40SVEH3.atk.com
	([146.168.78.8]) with mapi id 14.03.0174.001;
	Tue, 9 Dec 2014 22:42:31 -0700
From: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: External Linux Kernel Module
Thread-Index: AdAUOrJTlWKUsw/JTaOdHnL2lOraxw==
Date: Wed, 10 Dec 2014 05:42:31 +0000
Message-ID: <7B6FE55CD594D7478CED8A39DF3BFC0A5E6FA1D4@UT40SVCWEM001.atk.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.99.32.35]
MIME-Version: 1.0
Subject: External Linux Kernel Module
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
X-List-Received-Date: Wed, 10 Dec 2014 05:43:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E6FA1D4UT40SVCWEM001at_"

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E6FA1D4UT40SVCWEM001at_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm working on incorporating an external kernel module based on the hello-m=
od skeleton recipe. Everything was going well until I added the following l=
ine to my machine configuration:

MACHINE_EXTRA_RDEPENDS +=3D "kernel-module-hello"

Attempting to run "bitbake core-image-base" then leads to the following err=
or:

no package provides kernel-module-hello

After digging through the .bbclass files in the meta folder, I'm beginning =
to think that the following comment in the hello-mod_0.1.bb file is no long=
er true:

# The inherit of module.bbclass will automatically name module packages wit=
h
# "kernel-module-" prefix as required by the oe-core build environment.

Adding the following lines to the end of hello-mod_0.1.bb allows the image =
to be successfully created:

PROVIDES =3D "kernel-module-hello"
RPROVIDES_${PN} =3D "kernel-module-hello"

Has something been changed in module.bbclass? Is it even required to have t=
o have the "kernel-module-" prefix?

Thanks,

Thomas


--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E6FA1D4UT40SVCWEM001at_
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m working on incorporating an external kerne=
l module based on the hello-mod skeleton recipe. Everything was going well =
until I added the following line to my machine configuration:<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MACHINE_EXTRA_RDEPENDS &#43;=3D &quot;kernel-module-=
hello&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Attempting to run &#8220;bitbake core-image-base&#82=
21; then leads to the following error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">no package provides kernel-module-hello<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After digging through the .bbclass files in the meta=
 folder, I&#8217;m beginning to think that the following comment in the hel=
lo-mod_0.1.bb file is no longer true:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># The inherit of module.bbclass will automatically n=
ame module packages with<o:p></o:p></p>
<p class=3D"MsoNormal"># &quot;kernel-module-&quot; prefix as required by t=
he oe-core build environment.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Adding the following lines to the end of hello-mod_0=
.1.bb allows the image to be successfully created:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PROVIDES =3D &quot;kernel-module-hello&quot;<o:p></o=
:p></p>
<p class=3D"MsoNormal">RPROVIDES_${PN} =3D &quot;kernel-module-hello&quot;<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Has something been changed in module.bbclass? Is it =
even required to have to have the &#8220;kernel-module-&#8220; prefix?<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thomas<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E6FA1D4UT40SVCWEM001at_--
