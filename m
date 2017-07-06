Return-Path: <andrey.babushkin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65062E00AE6; Thu,  6 Jul 2017 03:29:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1211E00718
	for <yocto@yoctoproject.org>; Thu,  6 Jul 2017 03:29:38 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Jul 2017 03:29:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,316,1496127600"; 
	d="scan'208,217";a="1148366302"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by orsmga001.jf.intel.com with ESMTP; 06 Jul 2017 03:29:36 -0700
Received: from cdsmsx151.ccr.corp.intel.com (172.17.4.38) by
	fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 6 Jul 2017 03:29:35 -0700
Received: from cdsmsx102.ccr.corp.intel.com ([169.254.2.40]) by
	CDSMSX151.ccr.corp.intel.com ([169.254.3.232]) with mapi id
	14.03.0319.002; Thu, 6 Jul 2017 18:29:33 +0800
From: "Babushkin, Andrey" <andrey.babushkin@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: 403 error when trying to download toolchain
Thread-Index: AdL2QogGfwm0QxEUQxu3O/CNGoIsLA==
Date: Thu, 6 Jul 2017 10:29:33 +0000
Message-ID: <8E55CBA2716D2147B62DE7FE3353059E22A9B57A@CDSMSX102.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNmQ0NmY4OWUtOWNiNS00OGEzLWFlNDYtNWY2MGU1ZDc2MzBjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6Ing5TGhqaEpVOWpJckQ1TGNBeGY1anVNc2FaeVk0Y3lYTWx5YTJJTTY2d1E9In0=
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
x-originating-ip: [172.17.6.105]
MIME-Version: 1.0
Subject: 403 error when trying to download toolchain
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
X-List-Received-Date: Thu, 06 Jul 2017 10:29:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8E55CBA2716D2147B62DE7FE3353059E22A9B57ACDSMSX102ccrcor_"

--_000_8E55CBA2716D2147B62DE7FE3353059E22A9B57ACDSMSX102ccrcor_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi all!
I am trying to download toolchain for Yocto 2.0.3 here http://downloads.yoc=
toproject.org/releases/yocto/yocto-2.0.3/toolchain/ , but I get 403 Forbidd=
en error. Is there any other places to download toolchain for Yocto 2.0.3?

-------------------
Best regards,
Andrey Babushkin


--------------------------------------------------------------------
Joint Stock Company Intel A/O
Registered legal address: Krylatsky Hills Business Park,
17 Krylatskaya Str., Bldg 4, Moscow 121614,
Russian Federation

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

--_000_8E55CBA2716D2147B62DE7FE3353059E22A9B57ACDSMSX102ccrcor_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:56.7pt 42.5pt 56.7pt 85.05pt;}
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
<p class=3D"MsoNormal">Hi all!<o:p></o:p></p>
<p class=3D"MsoNormal">I am trying to download toolchain for Yocto 2.0.3 he=
re <a href=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-2.0.3/=
toolchain/">
http://downloads.yoctoproject.org/releases/yocto/yocto-2.0.3/toolchain/</a>=
 , but I get 403 Forbidden error. Is there any other places to download too=
lchain for Yocto 2.0.3?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Andrey Babushkin<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p><br>--------------------------------------------------------------------=
<br>Joint Stock Company Intel A/O<br>Registered legal address: Krylatsky Hi=
lls Business Park, <br>17 Krylatskaya Str., Bldg 4, Moscow 121614, <br>Russ=
ian Federation</p><p>This e-mail and any attachments may contain confidenti=
al material for<br>the sole use of the intended recipient(s). Any review or=
 distribution<br>by others is strictly prohibited. If you are not the inten=
ded<br>recipient, please contact the sender and delete all copies.</p>
</body>
</html>

--_000_8E55CBA2716D2147B62DE7FE3353059E22A9B57ACDSMSX102ccrcor_--
