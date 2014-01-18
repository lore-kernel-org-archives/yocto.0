Return-Path: <bill.pearson@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71340E00820
	for <yocto@yoctoproject.org>; Sat, 18 Jan 2014 00:35:32 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Jan 2014 00:31:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,679,1384329600"; 
	d="scan'208,217";a="440809347"
Received: from fmsmsx108.amr.corp.intel.com ([10.19.9.228])
	by orsmga001.jf.intel.com with ESMTP; 18 Jan 2014 00:35:23 -0800
Received: from fmsmsx102.amr.corp.intel.com (10.19.9.53) by
	FMSMSX108.amr.corp.intel.com (10.19.9.228) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Sat, 18 Jan 2014 00:35:22 -0800
Received: from fmsmsx106.amr.corp.intel.com ([169.254.6.177]) by
	FMSMSX102.amr.corp.intel.com ([169.254.2.40]) with mapi id
	14.03.0123.003; Sat, 18 Jan 2014 00:35:23 -0800
From: "Pearson, Bill" <bill.pearson@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: adt install not working 
Thread-Index: Ac8UJ8P1F6W3AR7BR8GmQ/DHcATndQ==
Date: Sat, 18 Jan 2014 08:35:22 +0000
Message-ID: <CBADD1A46D7C8A49913DD18432FB2CB534FDEC80@FMSMSX106.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
X-Mailman-Approved-At: Sat, 18 Jan 2014 09:20:55 -0800
Subject: adt install not working
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
X-List-Received-Date: Sat, 18 Jan 2014 08:35:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CBADD1A46D7C8A49913DD18432FB2CB534FDEC80FMSMSX106amrcor_"

--_000_CBADD1A46D7C8A49913DD18432FB2CB534FDEC80FMSMSX106amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm trying to follow the adt-manual and install the adt.  I downloaded the =
adt-installer tarball, unpacked it, and ran adt_installer.  What I do that,=
 it starts, but then exits saying

Configure opkg ...
./autogen.sh:  2: ./autogen.sh:  autoreconf: not found

Any idea what I'm doing wrong?

Thanks,
Bill

--_000_CBADD1A46D7C8A49913DD18432FB2CB534FDEC80FMSMSX106amrcor_
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
	font-family:"Calibri","sans-serif";}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I&#8217;m trying to follow the adt-manual and instal=
l the adt.&nbsp; I downloaded the adt-installer tarball, unpacked it, and r=
an adt_installer.&nbsp; What I do that, it starts, but then exits saying<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Configure opkg &#8230;<o:p></o:p></p>
<p class=3D"MsoNormal">./autogen.sh:&nbsp; 2: ./autogen.sh:&nbsp; autorecon=
f: not found<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any idea what I&#8217;m doing wrong?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Bill<o:p></o:p></p>
</div>
</body>
</html>

--_000_CBADD1A46D7C8A49913DD18432FB2CB534FDEC80FMSMSX106amrcor_--
