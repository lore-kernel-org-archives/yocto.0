Return-Path: <nelsonx.dsouza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B471E00C54; Fri, 16 Mar 2018 11:25:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 375DBE0073D
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 11:25:01 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Mar 2018 11:25:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,317,1517904000"; d="scan'208,217";a="28602097"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 16 Mar 2018 11:25:01 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Fri, 16 Mar 2018 11:21:35 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.72]) by
	ORSMSX112.amr.corp.intel.com ([169.254.3.31]) with mapi id
	14.03.0319.002; Fri, 16 Mar 2018 11:21:36 -0700
From: "DSouza, NelsonX" <nelsonx.dsouza@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [sda] Attached SCSI removable disk.
Thread-Index: AdO9UjssQAZIKMZgTk2PWoXzXNjHsQ==
Date: Fri, 16 Mar 2018 18:21:34 +0000
Message-ID: <BC9B17E68BB84346BEE0B491BDB7D8AE0B1A311D@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZGUzYTlmOGQtNTRkZC00Zjg4LTgxYzMtYWJkODM2OTA5NGNmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJcL250dkcxekczOEg1WnZMYkJtWWZaYXN4ZkU3S1hDS0k5YldqYXE1dkZUMUJKQnMxbUpBVVNkQ1wvcVJQdkJDRWIifQ==
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: [sda] Attached SCSI removable disk.
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
X-List-Received-Date: Fri, 16 Mar 2018 18:25:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BC9B17E68BB84346BEE0B491BDB7D8AE0B1A311DORSMSX101amrcor_"

--_000_BC9B17E68BB84346BEE0B491BDB7D8AE0B1A311DORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I created a bootable USB image for core-image-sato and upon boot up it gets=
 stuck at -

....
sda : sda1
sd 2:0:0:0:  [sda] Attached SCSI removable disk.

I am using is an Apollo Lake (UTX-3117).

PS: I had to run the diskpart utility prior to copying the yocto image over=
 to reclaim space on this usb drive.

Thanks,
Nelson





--_000_BC9B17E68BB84346BEE0B491BDB7D8AE0B1A311DORSMSX101amrcor_
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
<p class=3D"MsoNormal">I created a bootable USB image for core-image-sato a=
nd upon boot up it gets stuck at -<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&#8230;.<o:p></o:p></p>
<p class=3D"MsoNormal">sda : sda1<o:p></o:p></p>
<p class=3D"MsoNormal">sd 2:0:0:0: &nbsp;[sda] Attached SCSI removable disk=
. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using is an Apollo Lake (UTX-3117). <o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PS: I had to run the diskpart utility prior to copyi=
ng the yocto image over to reclaim space on this usb drive.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Nelson<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BC9B17E68BB84346BEE0B491BDB7D8AE0B1A311DORSMSX101amrcor_--
