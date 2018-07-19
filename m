Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17936E01074; Thu, 19 Jul 2018 11:29:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC963E009CF
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 11:29:20 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Jul 2018 11:29:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,375,1526367600"; d="scan'208,217";a="56299741"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by fmsmga008.fm.intel.com with ESMTP; 19 Jul 2018 11:29:19 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
	ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 19 Jul 2018 11:29:19 -0700
Received: from orsmsx102.amr.corp.intel.com ([169.254.3.209]) by
	ORSMSX116.amr.corp.intel.com ([169.254.7.98]) with mapi id
	14.03.0319.002; Thu, 19 Jul 2018 11:29:19 -0700
From: "Brindle, Amanda R" <amanda.r.brindle@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Error Report Tool Purge
Thread-Index: AdQfjDH1WILDIVXnTx6BT484Qx+58g==
Date: Thu, 19 Jul 2018 18:29:18 +0000
Message-ID: <DE98B1892D46BB468E30D103AE07E7BC253E765F@ORSMSX102.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODZjNDlkZjgtZDI4MS00OWIzLTg4NDktMTlhNjRlNWNkYzVjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYm0rTHFVMjBmM1RqMDB3VHhFVjQ1UmVmZG9JVnFLK3Yzb21mVUFkeFF5Zjd3bEh3ak5cL3JCaFN4SVU0MnhaZXAifQ==
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Error Report Tool Purge
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
X-List-Received-Date: Thu, 19 Jul 2018 18:29:22 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DE98B1892D46BB468E30D103AE07E7BC253E765FORSMSX102amrcor_"

--_000_DE98B1892D46BB468E30D103AE07E7BC253E765FORSMSX102amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

The Error Reporting Tool's database (http://errors.yoctoproject.org/Errors/=
Latest/Autobuilder/)  has grown to a huge size, and this is affecting the p=
erformance of the application. We are planning to run a purge to get rid of=
 reports that we don't need. We will keep reports from the last thirty days=
, as well as reports that have been viewed or linked to. If you have a spec=
ific report that you don't want purged, please let me know by the end of th=
e month.

Amanda Brindle, Software Engineer
503-264-3970
amanda.r.brindle@intel.com


--_000_DE98B1892D46BB468E30D103AE07E7BC253E765FORSMSX102amrcor_
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The Error Reporting Tool&#8217;s database (<a href=
=3D"http://errors.yoctoproject.org/Errors/Latest/Autobuilder/">http://error=
s.yoctoproject.org/Errors/Latest/Autobuilder/</a>) &nbsp;has grown to a hug=
e size, and this is affecting the performance of
 the application. We are planning to run a purge to get rid of reports that=
 we don&#8217;t need. We will keep reports from the last thirty days, as we=
ll as reports that have been viewed or linked to. If you have a specific re=
port that you don&#8217;t want purged, please
 let me know by the end of the month.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14.0pt">Amanda Brindle, Sof=
tware Engineer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14.0pt">503-264-3970 <o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14.0pt">amanda.r.brindle@in=
tel.com<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DE98B1892D46BB468E30D103AE07E7BC253E765FORSMSX102amrcor_--
