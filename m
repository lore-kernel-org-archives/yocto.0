Return-Path: <lstarret@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A05D9E00BFD; Tue, 26 Jan 2016 11:04:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_05,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [216.31.210.64 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0350]
X-Greylist: delayed 67 seconds by postgrey-1.32 at yocto-www;
	Tue, 26 Jan 2016 11:04:43 PST
Received: from mail-gw3-out.broadcom.com (mail-gw3-out.broadcom.com
	[216.31.210.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B53EE00973
	for <yocto@yoctoproject.org>; Tue, 26 Jan 2016 11:04:43 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.22,351,1449561600"; d="scan'208,217";a="86230543"
Received: from irvexchcas08.broadcom.com (HELO
	IRVEXCHCAS08.corp.ad.broadcom.com) ([10.9.208.57])
	by mail-gw3-out.broadcom.com with ESMTP; 26 Jan 2016 11:43:52 -0800
Received: from IRVEXCHMB15.corp.ad.broadcom.com ([fe80::3c14:d213:d2c9:b75a])
	by IRVEXCHCAS08.corp.ad.broadcom.com ([::1]) with mapi id
	14.03.0235.001; Tue, 26 Jan 2016 11:03:30 -0800
From: "Luke (Lucas) Starrett" <lstarret@broadcom.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] autorev and shared-state issues
Thread-Index: AdFYaJxsYpNemJl5QSCg8S3k04VbpA==
Date: Tue, 26 Jan 2016 19:03:30 +0000
Message-ID: <DB59870584238C45879465F0A2E5C3F12E7006BC@IRVEXCHMB15.corp.ad.broadcom.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.208.64]
MIME-Version: 1.0
Subject: autorev and shared-state issues
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
X-List-Received-Date: Tue, 26 Jan 2016 19:04:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB59870584238C45879465F0A2E5C3F12E7006BCIRVEXCHMB15corp_"

--_000_DB59870584238C45879465F0A2E5C3F12E7006BCIRVEXCHMB15corp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm struggling with a behavior where even though we have a SRC_URI set to $=
{AUTOREV}, changes to the underlying git repository are not being seen on s=
ubsequent builds.  I have reproduced this behavior across both a kernel and=
 u-boot recipe, so it seems like a generic problem.

In general, how does autorev behave when used in conjunction with shared st=
ate?  If the underlying git HEAD moves, shouldn't this be seen and prevent =
re-use of prebuilt content in shared state?

We are currently based on the Fido/1.8.1 tag for this exercise.

Thanks,

Luke


--_000_DB59870584238C45879465F0A2E5C3F12E7006BCIRVEXCHMB15corp_
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
<p class=3D"MsoNormal">I&#8217;m struggling with a behavior where even thou=
gh we have a SRC_URI set to ${AUTOREV}, changes to the underlying git repos=
itory are not being seen on subsequent builds.&nbsp; I have reproduced this=
 behavior across both a kernel and u-boot recipe,
 so it seems like a generic problem.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In general, how does autorev behave when used in con=
junction with shared state?&nbsp; If the underlying git HEAD moves, shouldn=
&#8217;t this be seen and prevent re-use of prebuilt content in shared stat=
e?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are currently based on the Fido/1.8.1 tag for thi=
s exercise.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Luke<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DB59870584238C45879465F0A2E5C3F12E7006BCIRVEXCHMB15corp_--
