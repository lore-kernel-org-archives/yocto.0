Return-Path: <raymond.tan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84A33E009C9; Sun, 25 Mar 2018 08:23:38 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A83A5E0070F
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2018 08:23:37 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Mar 2018 08:23:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,360,1517904000"; d="scan'208,217";a="45138800"
Received: from pgsmsx111.gar.corp.intel.com ([10.108.55.200])
	by orsmga002.jf.intel.com with ESMTP; 25 Mar 2018 08:23:36 -0700
Received: from pgsmsx104.gar.corp.intel.com ([169.254.3.116]) by
	PGSMSX111.gar.corp.intel.com ([169.254.2.233]) with mapi id
	14.03.0319.002; Sun, 25 Mar 2018 23:23:35 +0800
From: "Tan, Raymond" <raymond.tan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto][wic.qcow2] qemu-system-x86-64 booting qcow2 image stalls 
Thread-Index: AdPETD9ZgLd9a4VeSOWl65VlQCLSTA==
Date: Sun, 25 Mar 2018 15:23:34 +0000
Message-ID: <F0CA9E243F4F424B836EAC30E41BF4CF781DDA28@PGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjVlMThkNGMtYjM0OC00Mzk4LWJlOGEtMzc5MmIyYTU2Y2IzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiIyYTRISmNoXC8wa096WUVrKzc4Tk5yOWJlUWxhcURFeW11WDVlb2JDWHN0Sk5GTzVnYW8yNThJOTVzSWFUWTBCbyJ9
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: [wic.qcow2] qemu-system-x86-64 booting qcow2 image stalls
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
X-List-Received-Date: Sun, 25 Mar 2018 15:23:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F0CA9E243F4F424B836EAC30E41BF4CF781DDA28PGSMSX104garcor_"

--_000_F0CA9E243F4F424B836EAC30E41BF4CF781DDA28PGSMSX104garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear All,

I'm building an image with meta-intel layer, and machine set to intel-corei=
7-64, with additional IMAGE_FSTYPES set to "wic.qcow2".
Upon running the image with the following command, the boot stalls with "Bo=
oting from Hard Disk..."

qemu-system-x86_64 core-image-sato-sdk.wic.qcow2 -m 512

The hddimg has no issue booting with flashing to usb with mkefidisk.sh, but=
 this qcow2 image didn't even boot till EFI,
am I missing something over here? Thanks.

/ray


--_000_F0CA9E243F4F424B836EAC30E41BF4CF781DDA28PGSMSX104garcor_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
<p class=3D"MsoNormal">Dear All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m building an image with meta-intel layer, a=
nd machine set to intel-corei7-64, with additional IMAGE_FSTYPES set to &#8=
220;wic.qcow2&#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal">Upon running the image with the following command, t=
he boot stalls with &#8220;Booting from Hard Disk&#8230;&#8221;<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">qemu-system-x86_64 core-image-sato-sdk.wic.qcow2 &#8=
211;m 512<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The hddimg has no issue booting with flashing to usb=
 with mkefidisk.sh, but this qcow2 image didn&#8217;t even boot till EFI,<o=
:p></o:p></p>
<p class=3D"MsoNormal">am I missing something over here? Thanks.<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">/ray<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_F0CA9E243F4F424B836EAC30E41BF4CF781DDA28PGSMSX104garcor_--
