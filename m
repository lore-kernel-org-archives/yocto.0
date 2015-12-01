Return-Path: <lstarret@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1213BE00ADF; Tue,  1 Dec 2015 07:24:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [216.31.210.62 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0079]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Dec 2015 07:24:09 PST
Received: from mail-gw1-out.broadcom.com (mail-gw1-out.broadcom.com
	[216.31.210.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5751E00ACF
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 07:24:09 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.20,369,1444719600"; d="scan'208,217";a="82101708"
Received: from irvexchmb05.broadcom.com (HELO
	irvexchmb05.corp.ad.broadcom.com) ([10.9.208.27])
	by mail-gw1-out.broadcom.com with ESMTP; 01 Dec 2015 09:40:07 -0800
Received: from IRVEXCHMB14.corp.ad.broadcom.com ([fe80::6184:5cb6:5350:4823])
	by irvexchmb05.corp.ad.broadcom.com ([::1]) with mapi id
	14.03.0235.001; Tue, 1 Dec 2015 07:23:02 -0800
From: "Luke (Lucas) Starrett" <lstarret@broadcom.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] generating shared-state statistics from build
Thread-Index: AdEsS/ncWloGc0I1RzGt/3cKzR6zrA==
Date: Tue, 1 Dec 2015 15:23:01 +0000
Message-ID: <DB59870584238C45879465F0A2E5C3F1807544@IRVEXCHMB14.corp.ad.broadcom.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.208.64]
MIME-Version: 1.0
Subject: generating shared-state statistics from build
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
X-List-Received-Date: Tue, 01 Dec 2015 15:24:13 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB59870584238C45879465F0A2E5C3F1807544IRVEXCHMB14corpad_"

--_000_DB59870584238C45879465F0A2E5C3F1807544IRVEXCHMB14corpad_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Is there any existing way to track usage of shared state by a build?  In a =
multi-user environment I'm interesting in knowing how often a build is hitt=
ing in the shared state cache vs. rebuilding.  Typically would have a globa=
lly visible shared state cache mirror updated by a nightly/periodic build, =
and a user-level shared state pointed to by one or more local workspaces.  =
We would want to understand if we have excessive cases for which the cache =
is not used.

I'm sure there's some way I can post-process numerous logs for a given imag=
e to get this info, but thought maybe this has been solved already.

Thanks,

Luke


--_000_DB59870584238C45879465F0A2E5C3F1807544IRVEXCHMB14corpad_
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
<p class=3D"MsoNormal">Hi, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there any existing way to track usage of shared s=
tate by a build?&nbsp; In a multi-user environment I&#8217;m interesting in=
 knowing how often a build is hitting in the shared state cache vs. rebuild=
ing.&nbsp; Typically would have a globally visible
 shared state cache mirror updated by a nightly/periodic build, and a user-=
level shared state pointed to by one or more local workspaces.&nbsp; We wou=
ld want to understand if we have excessive cases for which the cache is not=
 used.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m sure there&#8217;s some way I can post-pro=
cess numerous logs for a given image to get this info, but thought maybe th=
is has been solved already.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Luke<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DB59870584238C45879465F0A2E5C3F1807544IRVEXCHMB14corpad_--
