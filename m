Return-Path: <randy.g.duran@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10498E009B9; Fri, 17 Mar 2017 16:19:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A648E009B9;
	Fri, 17 Mar 2017 16:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1489792793; x=1521328793;
	h=from:to:subject:date:message-id:mime-version;
	bh=T9ru7Cye7vZwQh/hfxPmL2WvgozQU5t5GeNi7xeY2Co=;
	b=KEMFChTG5talQwkArqAbpVGps7eNHN+F2dtjS2SM5lRuW/u2290TblpX
	DFeSDh6uYZTl/i5WqlWKNFIGy3khgA==;
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Mar 2017 16:19:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,178,1486454400"; 
	d="scan'208,217";a="237671653"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
	by fmsmga004.fm.intel.com with ESMTP; 17 Mar 2017 16:19:51 -0700
Received: from fmsmsx126.amr.corp.intel.com (10.18.125.43) by
	fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Fri, 17 Mar 2017 16:19:51 -0700
Received: from crsmsx101.amr.corp.intel.com (172.18.63.136) by
	FMSMSX126.amr.corp.intel.com (10.18.125.43) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Fri, 17 Mar 2017 16:19:51 -0700
Received: from crsmsx102.amr.corp.intel.com ([169.254.2.83]) by
	CRSMSX101.amr.corp.intel.com ([169.254.1.204]) with mapi id
	14.03.0248.002; Fri, 17 Mar 2017 17:19:30 -0600
From: "Duran, Randy G" <randy.g.duran@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-intel-bounces@yoctoproject.org"
	<meta-intel-bounces@yoctoproject.org>, 
	"meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>
Thread-Topic: Installing a Yocto image to emmc
Thread-Index: AdKfQZoWwtQIQZutRFKG1UwFXxwOTgAMxdYA
Date: Fri, 17 Mar 2017 23:19:30 +0000
Message-ID: <ECD1212B70630641AD7EB42F3F5E771E36ACE7D3@CRSMSX102.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjQ4Y2M4YjctNDc2Ni00MWFiLTlmNmEtNGIwYTRkMjNiOTdiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6IktldGFKXC9ZTU81N1d2Y0NUc09QckhUUmJIbjB2TndPTzFZZ1N0ZzRDM2lVPSJ9
x-ctpclassification: CTP_IC
x-originating-ip: [172.18.205.10]
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 17 Mar 2017 19:51:10 -0700
Subject: Installing a Yocto image to emmc
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
X-List-Received-Date: Fri, 17 Mar 2017 23:19:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_ECD1212B70630641AD7EB42F3F5E771E36ACE7D3CRSMSX102amrcor_"

--_000_ECD1212B70630641AD7EB42F3F5E771E36ACE7D3CRSMSX102amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello, I am trying to get information on software or procedure to flash a Y=
octo image on to a Joule's emmc not using normal steps such using a bootlab=
le USB nor sdcard. I am attempting to automate flashing an image on to devi=
ce without any human interventions. I am looking for something like Platfor=
m/Phone flash tool software equivalent for android devices. Any information=
 is appreciated.

Thanks,

-Randy


--_000_ECD1212B70630641AD7EB42F3F5E771E36ACE7D3CRSMSX102amrcor_
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
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal">Hello, I am trying to get information on software or=
 procedure to flash a Yocto image on to a Joule&#8217;s emmc not using norm=
al steps such using a bootlable USB nor sdcard. I am attempting to automate=
 flashing an image on to device without
 any human interventions. I am looking for something like Platform/Phone fl=
ash tool software equivalent for android devices. Any information is apprec=
iated.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Randy<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_ECD1212B70630641AD7EB42F3F5E771E36ACE7D3CRSMSX102amrcor_--
