Return-Path: <nishanth.v@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DB91E00AAF; Tue,  8 Dec 2015 01:28:17 -0800 (PST)
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
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DCA6E006F3
	for <yocto@yoctoproject.org>; Tue,  8 Dec 2015 01:28:13 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2015 01:28:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,398,1444719600"; d="scan'208,217";a="9454819"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by fmsmga004.fm.intel.com with ESMTP; 08 Dec 2015 01:28:13 -0800
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Tue, 8 Dec 2015 01:28:12 -0800
Received: from bgsmsx106.gar.corp.intel.com (10.223.43.196) by
	FMSMSX102.amr.corp.intel.com (10.18.124.200) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Tue, 8 Dec 2015 01:28:12 -0800
Received: from bgsmsx101.gar.corp.intel.com ([169.254.1.192]) by
	BGSMSX106.gar.corp.intel.com ([169.254.1.177]) with mapi id
	14.03.0248.002; Tue, 8 Dec 2015 14:58:09 +0530
From: "V, Nishanth" <nishanth.v@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Fetching source from multiple git repositories
Thread-Index: AdExmk0Kqwa+6qs5QVGlAm9NxtjbHg==
Date: Tue, 8 Dec 2015 09:28:08 +0000
Message-ID: <1E2754CBC7626848AAA0C716210D11490A5FCB02@BGSMSX101.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 09 Dec 2015 10:24:50 -0800
Subject: Fetching source from multiple git repositories
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
X-List-Received-Date: Tue, 08 Dec 2015 09:28:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1E2754CBC7626848AAA0C716210D11490A5FCB02BGSMSX101garcor_"

--_000_1E2754CBC7626848AAA0C716210D11490A5FCB02BGSMSX101garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to write a recipe which has to fetch source from 2 different gi=
t URI. Basically, I have to place code from 2 different git projects in fol=
ders side by side and apply patch to add a makefile which will build both o=
f them together. Can I have multiple git:// SRC_URI in a single recipe?

Thanks,
Nishanth

--_000_1E2754CBC7626848AAA0C716210D11490A5FCB02BGSMSX101garcor_
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to write a recipe which has to fetch sou=
rce from 2 different git URI. Basically, I have to place code from 2 differ=
ent git projects in folders side by side and apply patch to add a makefile =
which will build both of them together.
 Can I have multiple git:// SRC_URI in a single recipe?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Nishanth<o:p></o:p></p>
</div>
</body>
</html>

--_000_1E2754CBC7626848AAA0C716210D11490A5FCB02BGSMSX101garcor_--
