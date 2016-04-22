Return-Path: <amarnath.valluri@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20139E00D26; Fri, 22 Apr 2016 04:09:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E841E00C65
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 04:09:31 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 22 Apr 2016 04:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,516,1455004800"; 
	d="scan'208,217";a="690437565"
Received: from irsmsx106.ger.corp.intel.com ([163.33.3.31])
	by FMSMGA003.fm.intel.com with ESMTP; 22 Apr 2016 04:09:21 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.10]) by
	IRSMSX106.ger.corp.intel.com ([169.254.8.172]) with mapi id
	14.03.0248.002; Fri, 22 Apr 2016 12:09:20 +0100
From: "Valluri, Amarnath" <amarnath.valluri@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Enable a recipe/package only when other dependent
	recipe/package is part of image.
Thread-Index: AdGch0/rYjJ0wn3QRIiGRFStAS/TSw==
Date: Fri, 22 Apr 2016 11:09:19 +0000
Message-ID: <D3C33C4430ACA6488F343D1125FCCECC380DEE65@irsmsx110.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 25 Apr 2016 06:54:20 -0700
Subject: Enable a recipe/package only when other dependent recipe/package is part of image.
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
X-List-Received-Date: Fri, 22 Apr 2016 11:09:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D3C33C4430ACA6488F343D1125FCCECC380DEE65irsmsx110gercor_"

--_000_D3C33C4430ACA6488F343D1125FCCECC380DEE65irsmsx110gercor_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hello,

I have my own layer, that provides configuration packages for core Linux co=
mponents, for example 'connman-conf' for 'connman' package.

I would like to provide a pakcagegroup-config, that should automatically se=
lect the configuration packages that are part of image configuration. Say i=
f 'connman' is part of image then it should add 'connman-conf' to its RDEPE=
NDS_${PN}.

For this I try to use 'oe.packagedata.pkgmap', to check if the core compone=
nt exists as below:
--------------------------------------------------------------------
def check_if_enabled(comp, trueval, d):
   import oe.packagedata
   pkgmap =3D oe.packagedata.pkgmap(d)

   if pkgmap is not None and pkgmap.get(comp) is not None:
      return trueval

   return ""

RDEPENDS_${PN} =3D " \
   ${@check_if_enabled("connman", "connman-conf", d)} \
"
-----------------------------------------------------------

This works as expected when the packagedata is available, i.e., image is bu=
ild at least once first, then my layer is added to BBLAYERS and then rebuil=
d the image.
But this fails when there is no packagedata cache available.

Can someone help me to resolve this properly.

Thanks,
Amarnath
---------------------------------------------------------------------
Intel Finland Oy
Registered Address: PL 281, 00181 Helsinki =

Business Identity Code: 0357606 - 4 =

Domiciled in Helsinki =


This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

--_000_D3C33C4430ACA6488F343D1125FCCECC380DEE65irsmsx110gercor_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 56.7pt 70.85pt 56.7pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FI" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have my own layer, that provi=
des configuration packages for core Linux components, for example &#8216;co=
nnman-conf&#8217; for &#8216;connman&#8217; package.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I would like to provide a pakca=
gegroup-config, that should automatically select the configuration packages=
 that are part of image configuration. Say if &#8216;connman&#8217; is part=
 of image then it should add &#8216;connman-conf&#8217; to its
 RDEPENDS_${PN}.&nbsp; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">For this I try to use &#8216;oe=
.packagedata.pkgmap&#8217;, to check if the core component exists as below:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">-------------------------------=
-------------------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">def check_if_enabled(comp, true=
val, d):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp; import oe.packaged=
ata<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp; pkgmap =3D oe.pack=
agedata.pkgmap(d)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &nbsp;if pkgmap is not N=
one and pkgmap.get(comp) is not None:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;=
return trueval<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &nbsp;return &#8220;&#82=
21;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">RDEPENDS_${PN} =3D &#8220; \<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp; ${@check_if_enable=
d(&#8220;connman&#8221;, &#8220;connman-conf&#8221;, d)} \<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8220;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">-------------------------------=
----------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">This works as expected when the=
 packagedata is available, i.e., image is build at least once first, then m=
y layer is added to BBLAYERS and then rebuild the image.<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">But this fails when there is no=
 packagedata cache available.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Can someone help me to resolve =
this properly.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Amarnath<o:p></o:p></span></p>
</div>
<p>---------------------------------------------------------------------<br>
Intel Finland Oy<br>
Registered Address: PL 281, 00181 Helsinki <br>
Business Identity Code: 0357606 - 4 <br>
Domiciled in Helsinki </p>

<p>This e-mail and any attachments may contain confidential material for<br>
the sole use of the intended recipient(s). Any review or distribution<br>
by others is strictly prohibited. If you are not the intended<br>
recipient, please contact the sender and delete all copies.</p></body>
</html>

--_000_D3C33C4430ACA6488F343D1125FCCECC380DEE65irsmsx110gercor_--
