Return-Path: <Corrin.Meyer@dornerworks.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7579BE00C52; Wed, 14 Nov 2018 07:55:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 901 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Nov 2018 07:55:00 PST
Received: from webmail.dornerworks.com (mail.dornerworks.com [12.207.209.150])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF8BFE00C4E
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 07:55:00 -0800 (PST)
From: Corrin Meyer <Corrin.Meyer@dornerworks.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Inconsistent kernel builds with custom defconfig
Thread-Index: AdR8MFSmWoHzi2RzTG+nwmQFmD5Qvw==
Date: Wed, 14 Nov 2018 15:38:55 +0000
Message-ID: <d034352040c54d5bbf7713836410e622@dornerworks.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.27.14.41]
MIME-Version: 1.0
Subject: Inconsistent kernel builds with custom defconfig
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
X-List-Received-Date: Wed, 14 Nov 2018 15:55:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_d034352040c54d5bbf7713836410e622dornerworkscom_"

--_000_d034352040c54d5bbf7713836410e622dornerworkscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am trying to build a Linux kernel with a custom defconfig and am getting =
inconsistent builds.  On a fresh/new run of "bitbake virtual/kernel" I get =
an incorrect kernel (zImage is ~1.1M in size).  If I then do a "bitbake -c =
cleanall virtual/kernel" and then rerun "bitbake virtual/kernel" I get a go=
od kernel (zImage is ~4.6M).  I am using Yocto Sumo and standard Poky from =
git.yoctoproject.org/poky.git and only my custom kernel recipe and machine =
via a custom meta layer.

My meta layer can be found at https://gitlab.com/cjmeyer/meta-socfpga and t=
he builds I am running target the "arria10" machine.  The defconfig I am us=
ing in the recipe is generated using "ARCH=3Darm make socfpga_defconfig" wi=
th the same Kernel sources being used in the recipe.  I then copy the gener=
ated ".config" file to my "defconfing" in my kernel recipe.

To reproduce the bad zImage after a successful run, I delete all files and =
directories from the Yocto build directory except for the "conf" directory.=
  After doing this, rerunning "bitbake virtual/kernel" results in a bad zIm=
age again (~1.1M in size).  Comparing the ".config" in the kernel build dir=
ectory in my Yocto build directory after a bad zImage is generated shows ma=
ny, many differences to the defconfig from the recipe (I used a diff tool t=
hat understands kernel config files so it diffed the config, next the text)=
.

This leads me to believe that the configuration steps in my builds are not =
running consistently or correctly but I am not sure why.

cmeyer


--_000_d034352040c54d5bbf7713836410e622dornerworkscom_
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
<p class=3D"MsoNormal">I am trying to build a Linux kernel with a custom de=
fconfig and am getting inconsistent builds.&nbsp; On a fresh/new run of &#8=
220;bitbake virtual/kernel&#8221; I get an incorrect kernel (zImage is ~1.1=
M in size).&nbsp; If I then do a &#8220;bitbake &#8211;c cleanall virtual/k=
ernel&#8221;
 and then rerun &#8220;bitbake virtual/kernel&#8221; I get a good kernel (z=
Image is ~4.6M).&nbsp; I am using Yocto Sumo and standard Poky from git.yoc=
toproject.org/poky.git and only my custom kernel recipe and machine via a c=
ustom meta layer.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My meta layer can be found at <a href=3D"https://git=
lab.com/cjmeyer/meta-socfpga">
https://gitlab.com/cjmeyer/meta-socfpga</a> and the builds I am running tar=
get the &#8220;arria10&#8221; machine.&nbsp; The defconfig I am using in th=
e recipe is generated using &#8220;ARCH=3Darm make socfpga_defconfig&#8221;=
 with the same Kernel sources being used in the recipe.&nbsp; I then
 copy the generated &#8220;.config&#8221; file to my &#8220;defconfing&#822=
1; in my kernel recipe.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To reproduce the bad zImage after a successful run, =
I delete all files and directories from the Yocto build directory except fo=
r the &#8220;conf&#8221; directory.&nbsp; After doing this, rerunning &#822=
0;bitbake virtual/kernel&#8221; results in a bad zImage again (~1.1M
 in size).&nbsp; Comparing the &#8220;.config&#8221; in the kernel build di=
rectory in my Yocto build directory after a bad zImage is generated shows m=
any, many differences to the defconfig from the recipe (I used a diff tool =
that understands kernel config files so it diffed
 the config, next the text).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This leads me to believe that the configuration step=
s in my builds are not running consistently or correctly but I am not sure =
why.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">cmeyer<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_d034352040c54d5bbf7713836410e622dornerworkscom_--
