Return-Path: <Shalini.KP@lnttechservices.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC875E0092C; Mon,  8 Dec 2014 00:58:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 71 seconds by postgrey-1.32 at yocto-www;
	Mon, 08 Dec 2014 00:58:29 PST
Received: from mailout1.ltindia.com (mailout1.ltindia.com [203.199.60.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51809E00916
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 00:58:29 -0800 (PST)
Received: from unknown (HELO POCITMSEXHUB03.LntUniverse.com) ([10.2.1.60])
	by mailout1.ltindia.com with ESMTP; 08 Dec 2014 14:27:15 +0530
Received: from POCITMSEXMB05.LntUniverse.com ([fe80::518c:4525:d15f:548a]) by
	POCITMSEXHUB03.LntUniverse.com ([10.2.1.60]) with mapi id
	14.03.0169.001; Mon, 8 Dec 2014 14:27:13 +0530
From: Shalini K P <Shalini.KP@LntTechservices.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: regarding yocto installation
Thread-Index: AdASxKpbzDThm34NSDWW6OAXebD82A==
Date: Mon, 8 Dec 2014 08:57:12 +0000
Message-ID: <E5FF0F26CCED3843A9B0899B389686BA41C983@POCITMSEXMB05.LntUniverse.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.1.199]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 08 Dec 2014 07:42:32 -0800
Subject: regarding yocto installation
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
X-List-Received-Date: Mon, 08 Dec 2014 08:58:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E5FF0F26CCED3843A9B0899B389686BA41C983POCITMSEXMB05LntU_"

--_000_E5FF0F26CCED3843A9B0899B389686BA41C983POCITMSEXMB05LntU_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hi,

   M trying to install yocto on host Ubuntu 12.04. I m following these step=
s.
mkdir ~/bin
$ curl https://dl-ssl.google.com/dl/googlesource/git-repo/repo > ~/bin/repo
$ chmod a+x ~/bin/repo
$ PATH=3D${PATH}:~/bin
* Download the BSP metadata (recipes + configuration files + classes)
$ mkdir fsl-community-bsp
$ cd fsl-community-bsp
fsl-community-bsp $ repo init \
-u https://github.com/Freescale/fsl-community-bsp-platform \
-b dylan
fsl-community-bsp $ repo sync
Fetching project meta-fsl-arm-extra
Fetching project poky
Fetching project meta-fsl-arm
Fetching project meta-openembedded
Fetching projects:  16% (1/6)  Fetching project fsl-community-bsp-base

After this it does not proceed further. Can anyone please help me how to pr=
oceed further.


Regards
Shalini

L&T Technology Services Ltd

www.LntTechservices.com<http://www.lnttechservices.com/>

This Email may contain confidential or privileged information for the inten=
ded recipient (s). If you are not the intended recipient, please do not use=
 or disseminate the information, notify the sender and delete it from your =
system.

--_000_E5FF0F26CCED3843A9B0899B389686BA41C983POCITMSEXMB05LntU_
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
	{font-family:CMTT10;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:CMSY10;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:CMR10;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-IN" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; M trying to install yocto on host Ubunt=
u 12.04. I m following these steps.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:#007121">mkdir
</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:black">~/bi=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">$ curl https://dl-ssl.google.com/=
dl/googlesource/git-repo/repo
</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:#007121">&g=
t; </span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:black">~=
/bin/repo<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">$
</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:#007121">ch=
mod </span>
<span style=3D"font-size:10.0pt;font-family:CMTT10;color:black">a&#43;x ~/b=
in/repo<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">$
</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:#007121">PA=
TH=3D$</span><span style=3D"font-size:10.0pt;font-family:CMSY10;color:#0071=
21">{</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:#00712=
1">PATH</span><span style=3D"font-size:10.0pt;font-family:CMSY10;color:#007=
121">}</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:black=
">:~/bin<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMSY10;color:black">&#8226;
</span><span style=3D"font-size:10.0pt;font-family:CMR10;color:black">Downl=
oad the BSP metadata (recipes &#43; configuration files &#43; classes)<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">$
</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:#007121">mk=
dir </span>
<span style=3D"font-size:10.0pt;font-family:CMTT10;color:black">fsl-communi=
ty-bsp<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">$
</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:#007121">cd=
 </span>
<span style=3D"font-size:10.0pt;font-family:CMTT10;color:black">fsl-communi=
ty-bsp<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">fsl-community-bsp $ repo init
</span><span style=3D"font-size:10.0pt;font-family:CMSY10;color:#007121">\<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">-u https://github.com/Freescale/f=
sl-community-bsp-platform
</span><span style=3D"font-size:10.0pt;font-family:CMSY10;color:#007121">\<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:CMTT10;color:black">-b dylan<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:CMTT10;c=
olor:black">fsl-community-bsp $ repo
</span><span style=3D"font-size:10.0pt;font-family:CMTT10;color:#007121">sy=
nc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b>Fetching project meta-fsl-arm-extra<o:p></o:p></b=
></p>
<p class=3D"MsoNormal"><b>Fetching project poky<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>Fetching project meta-fsl-arm<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>Fetching project meta-openembedded<o:p></o:p></b>=
</p>
<p class=3D"MsoNormal"><b>Fetching projects:&nbsp; 16% (1/6)&nbsp; Fetching=
 project fsl-community-bsp-base<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After this it does not proceed further. Can anyone p=
lease help me how to proceed further.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Shalini<o:p></o:p></p>
</div>
<p><strong>L&amp;T Technology Services Ltd</strong></p>
<p><a href=3D"http://www.lnttechservices.com/" target=3D"_blank">www.LntTec=
hservices.com</a></p>
<p>This Email may contain confidential or privileged information for the in=
tended recipient (s). If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.</p>
</body>
</html>

--_000_E5FF0F26CCED3843A9B0899B389686BA41C983POCITMSEXMB05LntU_--
