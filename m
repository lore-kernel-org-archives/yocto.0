Return-Path: <mohamad.noor.alim.hussin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC7C9E00C62; Tue,  4 Dec 2018 08:58:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75420E00C4E
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2018 08:58:43 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Dec 2018 08:58:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,314,1539673200"; 
	d="scan'208,217";a="115987886"
Received: from pgsmsx104.gar.corp.intel.com ([10.221.44.91])
	by FMSMGA003.fm.intel.com with ESMTP; 04 Dec 2018 08:58:37 -0800
Received: from pgsmsx107.gar.corp.intel.com ([169.254.7.2]) by
	PGSMSX104.gar.corp.intel.com ([169.254.3.27]) with mapi id
	14.03.0415.000; Wed, 5 Dec 2018 00:58:36 +0800
From: "Hussin, Mohamad Noor Alim" <mohamad.noor.alim.hussin@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>
Thread-Topic: Automate hardware test using oeqa runtime library
Thread-Index: AdSL8gqDZDBZzSgvRv2CABXhk7xOiA==
Date: Tue, 4 Dec 2018 16:58:35 +0000
Message-ID: <A05DCA0C0293664FB237A9C4B0E55E46015EC04B@PGSMSX107.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTE5ZGExZWMtMWI3Yi00NWQwLThmNTQtZTI5OWIwNGU5OWQzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiblQ1a2RVbUMxdmlPaGNuOVwvU0NpbUUyRGZRbzR6NVdKM1JGUmprc2lEWVNwTzJlREVoVUw0WE94cmlBTnIzZ2IifQ==
x-ctpclassification: CTP_NT
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Automate hardware test using oeqa runtime library
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
X-List-Received-Date: Tue, 04 Dec 2018 16:58:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A05DCA0C0293664FB237A9C4B0E55E46015EC04BPGSMSX107garcor_"

--_000_A05DCA0C0293664FB237A9C4B0E55E46015EC04BPGSMSX107garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

I wrote some scripts to test USB mount/unmount, read & write on real hardwa=
re. I use OEQA runtime library to wrote the test cases. However, these test=
s only work on hardware and not for qemu.
Since these tests run on hardware, I need to add a flag to avoid the tests =
execute on qemu. I am not sure if these tests case should pass on qemu too.

Links below refer to patches of BSP test cases to test USB. There are 2 pat=
ches files called "bsp-test-helper" and usb.py. bsp-test-helper is a wrappe=
r script to execute USB test cases on usb.py file.

USB test cases, usb.py
https://lists.yoctoproject.org/pipermail/yocto/2018-August/042261.html
wrapper script, bsp-test-helper
https://lists.yoctoproject.org/pipermail/yocto/2018-August/042262.html


Regards,
Alim Hussin

--_000_A05DCA0C0293664FB237A9C4B0E55E46015EC04BPGSMSX107garcor_
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
<p class=3D"MsoNormal">Hi Richard,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I wrote some scripts to test USB mount/unmount, read=
 &amp; write on real hardware. I use OEQA runtime library to wrote the test=
 cases. However, these tests only work on hardware and not for qemu.<o:p></=
o:p></p>
<p class=3D"MsoNormal">Since these tests run on hardware, I need to add a f=
lag to avoid the tests execute on qemu. I am not sure if these tests case s=
hould pass on qemu too.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Links below refer to patches of BSP test cases to te=
st USB. There are 2 patches files called &#8220;bsp-test-helper&#8221; and =
usb.py. bsp-test-helper is a wrapper script to execute USB test cases on us=
b.py file.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">USB test cases, usb.py<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://lists.yoctoproject.org/pipermail/=
yocto/2018-August/042261.html">https://lists.yoctoproject.org/pipermail/yoc=
to/2018-August/042261.html</a><o:p></o:p></p>
<p class=3D"MsoNormal">wrapper script, bsp-test-helper<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://lists.yoctoproject.org/pipermail/=
yocto/2018-August/042262.html">https://lists.yoctoproject.org/pipermail/yoc=
to/2018-August/042262.html</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Alim Hussin<o:p></o:p></p>
</div>
</body>
</html>

--_000_A05DCA0C0293664FB237A9C4B0E55E46015EC04BPGSMSX107garcor_--
