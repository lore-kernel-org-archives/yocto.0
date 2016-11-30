Return-Path: <rebecca.swee.fun.chang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66067E00A0A; Tue, 29 Nov 2016 22:35:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFA95E009CD;
	Tue, 29 Nov 2016 22:35:36 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga105.fm.intel.com with ESMTP; 29 Nov 2016 22:35:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,720,1473145200"; 
	d="scan'208,217";a="1092438442"
Received: from pgsmsx101.gar.corp.intel.com ([10.221.44.78])
	by fmsmga002.fm.intel.com with ESMTP; 29 Nov 2016 22:35:34 -0800
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.199]) by
	PGSMSX101.gar.corp.intel.com ([169.254.1.64]) with mapi id
	14.03.0248.002; Wed, 30 Nov 2016 14:35:33 +0800
From: "Chang, Rebecca Swee Fun" <rebecca.swee.fun.chang@intel.com>
To: "meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>,
	"yocto-announce@yoctoproject.org" <yocto-announce@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [ANNOUNCEMENT] meta-intel 6.0 for Skylake Halo DDR4 RVP11
	(Kabylake) support on Yocto Project "morty" 2.2 is now available
Thread-Index: AdJK09sZh6whGGWsQB2d5Kriod1lGQ==
Date: Wed, 30 Nov 2016 06:35:32 +0000
Message-ID: <50B33AC5ED75F74F991980326F1C438D193C35C4@PGSMSX103.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "Ng, Mei Yeen" <mei.yeen.ng@intel.com>, "Khor,
	Chin Kooi" <chin.kooi.khor@intel.com>, "Yong,
	Jonathan" <jonathan.yong@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: [ANNOUNCEMENT] meta-intel 6.0 for Skylake Halo DDR4 RVP11 (Kabylake) support on Yocto Project "morty" 2.2 is now available
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
X-List-Received-Date: Wed, 30 Nov 2016 06:35:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_50B33AC5ED75F74F991980326F1C438D193C35C4PGSMSX103garcor_"

--_000_50B33AC5ED75F74F991980326F1C438D193C35C4PGSMSX103garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

We are pleased to announce the following meta-intel BSP layers for Skylake =
Halo DDR4 RVP 11 is now available for download.

Intel Skylake Halo DDR4 RVP11 (Kabylake) Yocto Project Version 2.2 - Morty.
It is supported by Intel Common Core BSP.

Features supported in this release:
- Linux kernel version 4.8.0
- Support integrated graphics (i915)
- Support I/O devices - SATA, USB Host v2.0&3.0, HD Audio, EC UART
- Support Saddle Brook platform in-chip Ethernet driver: e1000e
- Support single displays (HDMI or DP)
- Support resolution for DP & HDMI (3840x2160@30Hz/4096x2160@24Hz)
- Support 2 Independent Displays (HDMI, DP)
- Support 2D HW acceleration (Cairo)
- Support 3D HW acceleration (GL4.3 and GLES2.0/3.1)
- Support HW Media acceleration (H.264, HEVC, MPEG-2, VC-1, WMV, VP8, VP9)
- Support HW Media encoding (H.264, HEVC, MPEG-2, VP8)
- Support Media Players (Gstreamer-VAAPI)

Download Link: https://www.yoctoproject.org/downloads/bsps/morty22/skylake-=
halo-ddr4-rvp11-kabylake

Thank you.

Regards,
Rebecca Chang

--_000_50B33AC5ED75F74F991980326F1C438D193C35C4PGSMSX103garcor_
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
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are pleased to announce the following meta-intel =
BSP layers for Skylake Halo DDR4 RVP 11 is now available for download.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Intel Skylake Halo DDR4 RVP11 (Kabylake) Yocto Proje=
ct Version 2.2 - Morty.<o:p></o:p></p>
<p class=3D"MsoNormal">It is supported by Intel Common Core BSP.<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Features supported in this release:<o:p></o:p></p>
<p class=3D"MsoNormal">- Linux kernel version 4.8.0<o:p></o:p></p>
<p class=3D"MsoNormal">- Support integrated graphics (i915)<o:p></o:p></p>
<p class=3D"MsoNormal">- Support I/O devices - SATA, USB Host v2.0&amp;3.0,=
 HD Audio, EC UART<o:p></o:p></p>
<p class=3D"MsoNormal">- Support Saddle Brook platform in-chip Ethernet dri=
ver: e1000e<o:p></o:p></p>
<p class=3D"MsoNormal">- Support single displays (HDMI or DP)<o:p></o:p></p=
>
<p class=3D"MsoNormal">- Support resolution for DP &amp; HDMI (3840x2160@30=
Hz/4096x2160@24Hz)<o:p></o:p></p>
<p class=3D"MsoNormal">- Support 2 Independent Displays (HDMI, DP)<o:p></o:=
p></p>
<p class=3D"MsoNormal">- Support 2D HW acceleration (Cairo)<o:p></o:p></p>
<p class=3D"MsoNormal">- Support 3D HW acceleration (GL4.3 and GLES2.0/3.1)=
<o:p></o:p></p>
<p class=3D"MsoNormal">- Support HW Media acceleration (H.264, HEVC, MPEG-2=
, VC-1, WMV, VP8, VP9)<o:p></o:p></p>
<p class=3D"MsoNormal">- Support HW Media encoding (H.264, HEVC, MPEG-2, VP=
8)<o:p></o:p></p>
<p class=3D"MsoNormal">- Support Media Players (Gstreamer-VAAPI)<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Download Link: <a href=3D"https://www.yoctoproject.o=
rg/downloads/bsps/morty22/skylake-halo-ddr4-rvp11-kabylake">
https://www.yoctoproject.org/downloads/bsps/morty22/skylake-halo-ddr4-rvp11=
-kabylake</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Rebecca Chang<o:p></o:p></p>
</div>
</body>
</html>

--_000_50B33AC5ED75F74F991980326F1C438D193C35C4PGSMSX103garcor_--
