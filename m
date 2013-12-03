Return-Path: <yang.y.wang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A134E006BC
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2013 01:12:23 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 03 Dec 2013 01:12:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,816,1378882800"; 
	d="scan'208,217";a="437626849"
Received: from fmsmsx103.amr.corp.intel.com ([10.19.9.34])
	by fmsmga001.fm.intel.com with ESMTP; 03 Dec 2013 01:12:12 -0800
Received: from shsmsx103.ccr.corp.intel.com (10.239.4.69) by
	FMSMSX103.amr.corp.intel.com (10.19.9.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 3 Dec 2013 01:12:12 -0800
Received: from shsmsx104.ccr.corp.intel.com ([169.254.5.186]) by
	SHSMSX103.ccr.corp.intel.com ([169.254.4.86]) with mapi id
	14.03.0123.003; Tue, 3 Dec 2013 17:12:10 +0800
From: "Wang, Yang Y" <yang.y.wang@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Missing math.h in qemux86 sysroot
Thread-Index: Ac7wBzkkRbGfePGkSIy54Q0xOKvyow==
Date: Tue, 3 Dec 2013 09:12:09 +0000
Message-ID: <B00C8E670A91FC4CABB6EF6FE24FF0C80A6C7046@SHSMSX104.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Missing math.h in qemux86 sysroot
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
X-List-Received-Date: Tue, 03 Dec 2013 09:12:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B00C8E670A91FC4CABB6EF6FE24FF0C80A6C7046SHSMSX104ccrcor_"

--_000_B00C8E670A91FC4CABB6EF6FE24FF0C80A6C7046SHSMSX104ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm just starting my working for Yocto project 1.5.
I'm following the getting start document and build the core-image-sato succ=
essfully.
Now when I try to build my own application, it report "math.h" not found du=
ring do_compile stage.
I checked the file in qemux86 sysroot folder: poky-dora-10.0.0/build/tmp/sy=
sroots/qemux86/usr/include/
There is no "math.h" file. I would expect this file should be built by defa=
ult but apparently it is not.
Could you please let me know how to enable the math header files in qemux86=
 sysroot?

Thank you.
-Yang


--_000_B00C8E670A91FC4CABB6EF6FE24FF0C80A6C7046SHSMSX104ccrcor_
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
	{font-family:\5B8B\4F53;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:\5B8B\4F53;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\5B8B\4F53";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
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
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple" style=3D"text-justify-t=
rim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m just starting my work=
ing for Yocto project 1.5.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m following the getting=
 start document and build the core-image-sato successfully.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Now when I try to build my own =
application, it report &#8220;math.h&#8221; not found during do_compile sta=
ge.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I checked the file in qemux86 s=
ysroot folder:
</span><span lang=3D"EN-US" style=3D"color:#1F497D">poky-dora-10.0.0/build/=
tmp/sysroots/qemux86/usr/include/<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">There is no &#8220;math.h&#8221=
; file. I would expect this file should be built by default but apparently =
it is not.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Could you please let me know ho=
w to enable the math header files in qemux86 sysroot?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you.<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">-Yang<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_B00C8E670A91FC4CABB6EF6FE24FF0C80A6C7046SHSMSX104ccrcor_--
