Return-Path: <dean.saridakis@baesystems.com>
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
	[149.32.232.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 026FAE01410
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 14:05:44 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.87,458,1363132800"; d="scan'208,217";a="4572240"
X-IronPort-AV: E=Sophos;i="4.87,458,1363132800"; 
	d="scan'208,217";a="305120434"
From: "Saridakis, Dean   (US SSA)" <dean.saridakis@baesystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Config fragment not being picked up
Thread-Index: Ac4283YrptDn0IIISu2Zt+xYxRK9ow==
Date: Thu, 11 Apr 2013 21:05:37 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.37.161.240]
MIME-Version: 1.0
Subject: Config fragment not being picked up
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
X-List-Received-Date: Thu, 11 Apr 2013 21:05:45 -0000
Message-ID: <MADEUP.15D9585CF643C15C.29417@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B98BBFB67D89184E8E876F332BDBC3E0A233D7GLDMS85001goldlnk_"

--_000_B98BBFB67D89184E8E876F332BDBC3E0A233D7GLDMS85001goldlnk_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Think I've followed the example in the manual correctly. My append file is =
pretty simple:

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}"
SRC_URI +=3D "file://can.cfg"

I'm doing this in a layer on top of a yocto-based SDK.  Don't think it shou=
ld matter, but the underlying kernel recipe has:

do_configure_prepend() {
                # copy desired defconfig so we pick it up for the real kern=
el_do_configure
                cp ${KERNEL_DEFCONFIG} ${B}/.config
}

Wasn't able to make much sense of the log: lots of "DEBUG: Removing manifes=
t ..." and then some kcfonig output?
Any advice/suggestions?

Thanks,

Dean


--_000_B98BBFB67D89184E8E876F332BDBC3E0A233D7GLDMS85001goldlnk_
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
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal">Think I&#8217;ve followed the example in the manual =
correctly. My append file is pretty simple:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">FILESEXTRAPATHS_prepend :=
=3D &quot;${THISDIR}/${PN}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">SRC_URI &#43;=3D &quot;fi=
le://can.cfg&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m doing this in a layer on top of a yocto-ba=
sed SDK. &nbsp;Don&#8217;t think it should matter, but the underlying kerne=
l recipe has:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">do_configure_prepend() {<=
o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # copy de=
sired defconfig so we pick it up for the real kernel_do_configure<o:p></o:p=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cp ${KERN=
EL_DEFCONFIG} ${B}/.config<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Wasn&#8217;t able to make much sense of the log: lot=
s of &#8220;DEBUG: Removing manifest &#8230;&#8221; and then some kcfonig o=
utput?
<o:p></o:p></p>
<p class=3D"MsoNormal">Any advice/suggestions?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Dean<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_B98BBFB67D89184E8E876F332BDBC3E0A233D7GLDMS85001goldlnk_--
