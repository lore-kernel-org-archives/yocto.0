Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85FF3E002A8
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 17:16:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jul 2012 17:16:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="194177526"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2012 17:16:55 -0700
Received: from orsmsx101.amr.corp.intel.com (10.22.225.128) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 17 Jul 2012 17:16:54 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.231]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.93]) with mapi id
	14.01.0355.002; Tue, 17 Jul 2012 17:16:54 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ERROR: QA Issue: Architecture did not match (62 to 3)  for
	linux-yocto_3.2.bb 
Thread-Index: Ac1kep/VjxDIyOoJT3apkEmhbjyBtQ==
Date: Wed, 18 Jul 2012 00:16:54 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20AD35FDA@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: ERROR: QA Issue: Architecture did not match (62 to 3) for linux-yocto_3.2.bb
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Jul 2012 00:16:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D956029D25CF204F948EA0FB515E1EE20AD35FDAORSMSX105amrcor_"

--_000_D956029D25CF204F948EA0FB515E1EE20AD35FDAORSMSX105amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using local clone for 3.2 kernel and I get build fail for Linux-yocto_=
3.2.bb.

WARNING: For recipe linux-yocto, the following files/directories were insta=
lled but not shipped in any package:
WARNING:   /etc
ERROR: QA Issue: Architecture did not match (62 to 3) on /work/<....>/linux=
-yocto-3.2.18+git1+20958298c233d15b1d705e7b0eb93282d6ecb5de_1+7d26ac083cb25=
5888536b42b622b97fb438753ad-r1/packages-split/kernel-vmlinux/boot/vmlinux-3=
.2.18-yocto-standard
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa

Any idea why I get this?

Thanks
Kishore.

--_000_D956029D25CF204F948EA0FB515E1EE20AD35FDAORSMSX105amrcor_
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
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">I am using local clone for 3.2 kernel and I g=
et build fail for Linux-yocto_3.2.bb.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">WARNING: For recipe linux-yocto, the followin=
g files/directories were installed but not shipped in any package:<o:p></o:=
p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">WARNING:&nbsp;&nbsp; /etc<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">ERROR: QA Issue: Architecture did not match (=
62 to 3) on /work/&lt;&#8230;.&gt;/linux-yocto-3.2.18&#43;git1&#43;20958298=
c233d15b1d705e7b0eb93282d6ecb5de_1&#43;7d26ac083cb255888536b42b622b97fb4387=
53ad-r1/packages-split/kernel-vmlinux/boot/vmlinux-3.2.18-yocto-standard<o:=
p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">ERROR: QA run found fatal errors. Please cons=
ider fixing them.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">ERROR: Function failed: do_package_qa<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Any idea why I get this?&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Kishore.</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_D956029D25CF204F948EA0FB515E1EE20AD35FDAORSMSX105amrcor_--
