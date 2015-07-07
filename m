Return-Path: <lstarret@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE141E00957; Tue,  7 Jul 2015 10:35:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [216.31.210.63 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-gw2-out.broadcom.com (mail-gw2-out.broadcom.com
	[216.31.210.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 810FCE006B7
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 10:35:32 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.15,425,1432623600"; d="scan'208,217";a="69239518"
Received: from irvexchcas06.broadcom.com (HELO
	IRVEXCHCAS06.corp.ad.broadcom.com) ([10.9.208.53])
	by mail-gw2-out.broadcom.com with ESMTP; 07 Jul 2015 10:52:05 -0700
Received: from IRVEXCHMB14.corp.ad.broadcom.com ([fe80::6184:5cb6:5350:4823])
	by IRVEXCHCAS06.corp.ad.broadcom.com ([::1]) with mapi id
	14.03.0235.001; Tue, 7 Jul 2015 10:35:27 -0700
From: "Luke (Lucas) Starrett" <lstarret@broadcom.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] External toolchains
Thread-Index: AdC42ygXhZoFTOgoS3KZArMPzS3OYQ==
Date: Tue, 7 Jul 2015 17:35:27 +0000
Message-ID: <DB59870584238C45879465F0A2E5C3F17B44E5@IRVEXCHMB14.corp.ad.broadcom.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.208.64]
MIME-Version: 1.0
Subject: External toolchains
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
X-List-Received-Date: Tue, 07 Jul 2015 17:35:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB59870584238C45879465F0A2E5C3F17B44E5IRVEXCHMB14corpad_"

--_000_DB59870584238C45879465F0A2E5C3F17B44E5IRVEXCHMB14corpad_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

For various reasons, we have a need to work with pre-compiled external tool=
chains, in this case, the 2014-09 Linaro aarch64 release.  A key difference=
 between this specific toolchain vs. the Fido/1.8 out of the box toolchain =
(4.9.2 + patches?), is that the Linaro version is built with --enable-multi=
arch.  We end up with applications built with search paths such as /lib/aar=
ch64, /usr/lib/aarch64, etc,  but libraries installed in the normal /lib, /=
usr/lib paths.  Obviously if we use the built-in toolchain recipes in 1.8, =
life is good, search paths match install paths.

I wanted to understand a couple points.


1)      What are the long term goals/roadmap are in this area specific to Y=
octo/OE?

2)      Where is the "right" place to deal with this?

a.       Configure (based on detected toolchain capability)

b.      Install (override library destination?)

c.       Other?

3)      Any other examples that can be used as a reference?

I've seen a few emails in the archives that seem to touch on this, but none=
 that really seemed to come to any conclusion.

Thanks,

Luke Starrett

--_000_DB59870584238C45879465F0A2E5C3F17B44E5IRVEXCHMB14corpad_
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1679961874;
	mso-list-type:hybrid;
	mso-list-template-ids:-492944242 67698705 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For various reasons, we have a need to work with pre=
-compiled external toolchains, in this case, the 2014-09 Linaro aarch64 rel=
ease.&nbsp; A key difference between this specific toolchain vs. the Fido/1=
.8 out of the box toolchain (4.9.2 &#43; patches?),
 is that the Linaro version is built with --enable-multiarch.&nbsp; We end =
up with applications built with search paths such as /lib/aarch64, /usr/lib=
/aarch64, etc, &nbsp;but libraries installed in the normal /lib, /usr/lib p=
aths.&nbsp; Obviously if we use the built-in toolchain
 recipes in 1.8, life is good, search paths match install paths.<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I wanted to understand a couple points.<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">1)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>What are the long term goals/roadmap are in this ar=
ea specific to Yocto/OE?<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">2)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Where is the &#8220;right&#8221; place to deal with=
 this?<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">a.<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Configure (based on detected toolchain capability)<=
o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">b.<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Install (override library destination?)<o:p></o:p><=
/p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">c.<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Other?<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">3)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Any other examples that can be used as a reference?=
<o:p></o:p></p>
<p class=3D"MsoNormal"><br>
I&#8217;ve seen a few emails in the archives that seem to touch on this, bu=
t none that really seemed to come to any conclusion.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Luke Starrett<o:p></o:p></p>
</div>
</body>
</html>

--_000_DB59870584238C45879465F0A2E5C3F17B44E5IRVEXCHMB14corpad_--
