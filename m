Return-Path: <joel.zhou@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8188CE009D2; Wed, 27 May 2015 12:19:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [216.31.210.62 listed in list.dnswl.org]
Received: from mail-gw1-out.broadcom.com (mail-gw1-out.broadcom.com
	[216.31.210.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAD2DE00956
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 12:19:13 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.13,507,1427785200"; d="scan'208,217";a="66120006"
Received: from irvexchcas06.broadcom.com (HELO
	IRVEXCHCAS06.corp.ad.broadcom.com) ([10.9.208.53])
	by mail-gw1-out.broadcom.com with ESMTP; 27 May 2015 13:01:59 -0700
Received: from SJEXCHCAS07.corp.ad.broadcom.com (10.16.203.16) by
	IRVEXCHCAS06.corp.ad.broadcom.com (10.9.208.53) with Microsoft SMTP
	Server (TLS) id 14.3.235.1; Wed, 27 May 2015 12:19:09 -0700
Received: from SJEXCHMB12.corp.ad.broadcom.com ([fe80::bc15:c1e1:c29a:36f7])
	by SJEXCHCAS07.corp.ad.broadcom.com ([::1]) with mapi id 14.03.0235.001;
	Wed, 27 May 2015 12:19:09 -0700
From: "Joel (Xi Zhou) Zhou" <joel.zhou@broadcom.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: armv7 firmware recipe in armv8 distro
Thread-Index: AdCYru38JSV+jiS5TsKwtqr9ugy1oA==
Date: Wed, 27 May 2015 19:19:08 +0000
Message-ID: <9F136EE5FB53D64397ED1089A0E760E0162D1190@SJEXCHMB12.corp.ad.broadcom.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.203.100]
MIME-Version: 1.0
Subject: armv7 firmware recipe in armv8 distro
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
X-List-Received-Date: Wed, 27 May 2015 19:19:15 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9F136EE5FB53D64397ED1089A0E760E0162D1190SJEXCHMB12corpa_"

--_000_9F136EE5FB53D64397ED1089A0E760E0162D1190SJEXCHMB12corpa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

We have a Yocto BSP based on arm64/aarch64 machine.
On top of this, I need to create a firmware recipe, which need armv7 cross-=
compiler.
So question is, how to support multiple toolchain in Yocto?

Thanks,
Joel

--_000_9F136EE5FB53D64397ED1089A0E760E0162D1190SJEXCHMB12corpa_
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
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have a Yocto BSP based on arm64/aarch64 machine. =
<o:p></o:p></p>
<p class=3D"MsoNormal">On top of this, I need to create a firmware recipe, =
which need armv7 cross-compiler.<o:p></o:p></p>
<p class=3D"MsoNormal">So question is, how to support multiple toolchain in=
 Yocto?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Joel<o:p></o:p></p>
</div>
</body>
</html>

--_000_9F136EE5FB53D64397ED1089A0E760E0162D1190SJEXCHMB12corpa_--
