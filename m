Return-Path: <simon.chen@lmco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98B46E009AE; Thu,  4 Jun 2015 14:11:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.31.106.12 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 14586 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 Jun 2015 14:11:18 PDT
Received: from mailfo01.lmco.com (mailfo01.lmco.com [192.31.106.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EED7DE00985
	for <yocto@yoctoproject.org>; Thu,  4 Jun 2015 14:11:18 -0700 (PDT)
Received: from HVXHTPN11.us.lmco.com (hvxhtpn11.ems.lmco.com [158.186.149.29])
	by mailfo01.lmco.com (8.14.5/8.14.5) with ESMTP id t54H7ggv018347
	for <yocto@yoctoproject.org>; Thu, 4 Jun 2015 18:08:07 +0100
Received: from HVXDSP45.us.lmco.com ([fe80::e5e8:eada:5adc:d92a]) by
	HVXHTPN11.us.lmco.com ([fe80::edb4:3b6e:fd89:3dee%15]) with mapi id
	14.03.0174.001; Thu, 4 Jun 2015 13:07:51 -0400
From: "Chen, Simon" <simon.chen@lmco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto's udev not generating dev/dri/card0 file
Thread-Index: AdCe5t1mZSIeiiNaTzixj8yxVHre8w==
Date: Thu, 4 Jun 2015 17:07:50 +0000
Message-ID: <D3EFC6D8DB6B2D48A91E6F02D0DB338FA98849@HVXDSP45.us.lmco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [158.186.156.90]
MIME-Version: 1.0
X-LM-Outbound: External 158.186.149.29 cntry=us
	g=d0d203c470c4a53d128f6be720c4eba7 q=t54H7ggv018347 m=11
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.14.151, 1.0.33,
	0.0.0000
	definitions=2015-06-04_12:2015-06-03, 2015-06-04,
	1970-01-01 signatures=0
Subject: Yocto's udev not generating dev/dri/card0 file
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
X-List-Received-Date: Thu, 04 Jun 2015 21:11:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FA98849HVXDSP45uslmcocom_"

--_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FA98849HVXDSP45uslmcocom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to integrate an external Radeon graphics card (E8860), and the =
FOSS xf86-video-ati driver, with the poky-dizzy-12.0.1 version of Yocto. I =
have the FOSS driver installed successfully with Glamor and udev enabled. H=
owever I am getting errors in my Xorg.0.log file, which says that the dev/d=
ri/card0 device file does not exist. I've looked into the etc/udev/rules.d =
and the lib/udev/rules.d directories and could not find any rules for gener=
ating card0. I checked back in my udev Yocto recipe in meta/recipe-core Yoc=
to build environment, and it seems as though there are already rules for ca=
rd0 in udev.rules-I'm guessing they never made it through to the final Yoct=
o image. I've tried entering my own udev rules in the Yocto file system via=
 /etc/udev/rules.d/local.rules, but nothing has worked so far. Has anyone e=
xperienced similar problems?

-Simon

--_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FA98849HVXDSP45uslmcocom_
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
<p class=3D"MsoNormal">I am trying to integrate an external Radeon graphics=
 card (E8860), and the FOSS xf86-video-ati driver, with the poky-dizzy-12.0=
.1 version of Yocto. I have the FOSS driver installed successfully with Gla=
mor and udev enabled. However I am
 getting errors in my Xorg.0.log file, which says that the dev/dri/card0 de=
vice file does not exist. I&#8217;ve looked into the etc/udev/rules.d and t=
he lib/udev/rules.d directories and could not find any rules for generating=
 card0. I checked back in my udev Yocto
 recipe in meta/recipe-core Yocto build environment, and it seems as though=
 there are already rules for card0 in udev.rules&#8212;I&#8217;m guessing t=
hey never made it through to the final Yocto image. I&#8217;ve tried enteri=
ng my own udev rules in the Yocto file system via
 /etc/udev/rules.d/local.rules, but nothing has worked so far. Has anyone e=
xperienced similar problems?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Simon<o:p></o:p></p>
</div>
</body>
</html>

--_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FA98849HVXDSP45uslmcocom_--
