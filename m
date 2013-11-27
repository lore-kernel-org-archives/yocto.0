Return-Path: <christopher.a.thornburg@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A4FEE00794
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2013 15:02:45 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 27 Nov 2013 15:02:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,785,1378882800"; 
	d="scan'208,217";a="435358191"
Received: from fmsmsx108.amr.corp.intel.com ([10.19.9.228])
	by fmsmga001.fm.intel.com with ESMTP; 27 Nov 2013 15:02:44 -0800
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
	FMSMSX108.amr.corp.intel.com (10.19.9.228) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 27 Nov 2013 15:02:43 -0800
Received: from fmsmsx105.amr.corp.intel.com ([169.254.5.121]) by
	FMSMSX155.amr.corp.intel.com ([169.254.5.40]) with mapi id
	14.03.0123.003; Wed, 27 Nov 2013 15:02:44 -0800
From: "Thornburg, Christopher A" <christopher.a.thornburg@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to use pre-built external Yocto toolchain
Thread-Index: Ac7rxCahqeowCsC6SiWV/+np8kniCQ==
Date: Wed, 27 Nov 2013 23:02:43 +0000
Message-ID: <752F65977A748344A01D69BF22DCDBAE4FDDDA9B@FMSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: How to use pre-built external Yocto toolchain
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
X-List-Received-Date: Wed, 27 Nov 2013 23:02:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_752F65977A748344A01D69BF22DCDBAE4FDDDA9BFMSMSX105amrcor_"

--_000_752F65977A748344A01D69BF22DCDBAE4FDDDA9BFMSMSX105amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I must be missing something obvious. It's easy for me to build and install =
a toolchain package using
bitbake meta-toolchain
The resulting toolchain package shows up at...
./tmp/deploy/sdk/poky-eglibc-i686-meta-toolchain-core2-toolchain-1.5.sh
...which is easy to install.

It seems the proper way to use such an external toolchain would be to set T=
CMODE, but TCMODE only seems to support 'default' (i.e. build an internal t=
oolchain) and 'external-sourcery' (i.e. use an external sourcery toolchain)=
. :S

How do I use an external toolchain built as above?

Thanks!


--_000_752F65977A748344A01D69BF22DCDBAE4FDDDA9BFMSMSX105amrcor_
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
<p class=3D"MsoNormal">I must be missing something obvious. It&#8217;s easy=
 for me to build and install a toolchain package using
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">bitbake meta-toolchain<o:=
p></o:p></p>
<p class=3D"MsoNormal">The resulting toolchain package shows up at&#8230;<o=
:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">./tmp/deploy/sdk/poky-egl=
ibc-i686-meta-toolchain-core2-toolchain-1.5.sh<o:p></o:p></p>
<p class=3D"MsoNormal">&#8230;which is easy to install.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It seems the proper way to use such an external tool=
chain would be to set TCMODE, but TCMODE only seems to support &#8216;defau=
lt&#8217; (i.e. build an internal toolchain) and &#8216;external-sourcery&#=
8217; (i.e. use an external sourcery toolchain). :S<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How do I use an external toolchain built as above?<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_752F65977A748344A01D69BF22DCDBAE4FDDDA9BFMSMSX105amrcor_--
