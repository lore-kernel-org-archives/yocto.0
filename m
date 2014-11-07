Return-Path: <SRS0=AIQ6W_=75=orangesemi.com=ramakant.kapatral@eigbox.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 432F5E00905; Thu,  6 Nov 2014 21:58:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.8 required=5.0 tests=BAYES_50,HTML_MESSAGE,
	MSGID_MULTIPLE_AT,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@'
	characters
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [66.96.189.8 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.5000]
X-Greylist: delayed 1806 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Nov 2014 21:58:05 PST
Received: from bosmailout08.eigbox.net (bosmailout08.eigbox.net [66.96.189.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC2F2E00863
	for <yocto@yoctoproject.org>; Thu,  6 Nov 2014 21:58:05 -0800 (PST)
Received: from bosmailscan05.eigbox.net ([10.20.15.5])
	by bosmailout08.eigbox.net with esmtp (Exim) id 1Xmc5W-000215-Oz
	for yocto@yoctoproject.org; Fri, 07 Nov 2014 00:27:58 -0500
Received: from [10.115.3.33] (helo=bosimpout13)
	by bosmailscan05.eigbox.net with esmtp (Exim) id 1Xmc5W-0005SF-NY
	for yocto@yoctoproject.org; Fri, 07 Nov 2014 00:27:58 -0500
Received: from bosauthsmtp16.yourhostingaccount.com ([10.20.18.16])
	by bosimpout13 with 
	id CVTu1p00b0LoEWa01VTxrf; Fri, 07 Nov 2014 00:27:58 -0500
X-Authority-Analysis: v=2.1 cv=JJa1sq6b c=1 sm=1 tr=0
	a=2OW49aEHms2tn/AeNJ+rfA==:117 a=OtBopKdJkwo/CelHPi/pyg==:17
	a=pq4jwCggAAAA:8
	a=QPcu4mC3AAAA:8 a=fK78etbpfrkA:10 a=Oc7A5JIOAAAA:8
	a=DAwyPP_o2Byb1YXLmDAA:9
	a=Zr7miEi8wWIA:10 a=cKsnjEOsciEA:10 a=osr05IOLujs8gtvUavAA:9
	a=CjuIK1q_8ugA:10 a=c9vNlvGnjH4A:10 a=IxZjzhT7x38A:10 a=yMhMjlubAAAA:8
	a=SSmOFEACAAAA:8 a=SSvCCl7qVbz57n_f174A:9 a=gKO2Hq4RSVkA:10
	a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
Received: from [111.125.252.120] (port=51000 helo=ACERPC)
	by bosauthsmtp16.eigbox.net with esmtpa (Exim) id 1Xmc5R-0008E6-FW
	for yocto@yoctoproject.org; Fri, 07 Nov 2014 00:27:54 -0500
From: "Ramakant Kapatral" <ramakant.kapatral@orangesemi.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Nov 2014 10:57:49 +0530
Message-ID: <001401cffa4b$96aaa250$c3ffe6f0$@kapatral@orangesemi.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: Ac/6S5B8v+mTSgPKSW2s5Up/jb4qrQ==
X-EN-UserInfo: 77a984b8a0905405834e73cec4c70ae2:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: ramakant.kapatral@orangesemi.com
Sender: "Ramakant Kapatral" <ramakant.kapatral@orangesemi.com>
X-EN-OrigIP: 111.125.252.120
X-EN-OrigHost: unknown
Cc: 'Ramakant Kapatral' <ramakant.kapatral@orangesemi.com>
Subject: how to do yocto on cubieboard/pcduino/arduino....any other hw platform
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
X-List-Received-Date: Fri, 07 Nov 2014 05:58:13 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0015_01CFFA79.B062DE50"
Content-Language: en-us

------=_NextPart_000_0015_01CFFA79.B062DE50
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I see the training slides and video clips on creating yocto BSP and image on
Beagebone.

 

If I want to try same on other boards like cubieboard/pcduino/arduino....any
other hw platform, what is that I need form these vendors ?

 

Regards
Ramakant


------=_NextPart_000_0015_01CFFA79.B062DE50
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
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
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal>Hi,<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>I see the training slides and video clips on =
creating yocto BSP
and image on Beagebone.<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>If I want to try same on other boards like =
cubieboard/pcduino/arduino....any
other hw platform, what is that I need form these vendors =
?<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Regards<br>
Ramakant<o:p></o:p></p>

</div>

</body>

</html>

------=_NextPart_000_0015_01CFFA79.B062DE50--
