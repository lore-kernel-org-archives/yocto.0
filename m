Return-Path: <usha.srinivasan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CFDBE00A7D; Fri, 12 Jul 2019 13:00:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 997A4E009EA
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2019 13:00:51 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Jul 2019 13:00:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; 
	d="scan'208,217";a="174537979"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by FMSMGA003.fm.intel.com with ESMTP; 12 Jul 2019 13:00:42 -0700
Received: from fmsmsx112.amr.corp.intel.com ([169.254.5.121]) by
	FMSMSX106.amr.corp.intel.com ([169.254.5.248]) with mapi id
	14.03.0439.000; Fri, 12 Jul 2019 13:00:42 -0700
From: "Srinivasan, Usha" <usha.srinivasan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Cross compilation sysroot doesn't include libusb
Thread-Index: AdU45yCdE1KAPs5KRvOW/nwtVwhO2A==
Date: Fri, 12 Jul 2019 20:00:41 +0000
Message-ID: <F1CCA50D91351E4D93DCC0B03D7D2F4F8DF372AE@FMSMSX112.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNmEyZDcxZjUtMGJkNi00MWNiLWJhMGItMWNlZTI1MDNiMjYxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNmptaGtHVlpveU1yaDl1aXkyWnM2dUc5SEl2NXNqTGYwR1VzNTR2U21HSWV0b1VIcE5FQndRTmJhSWY0U1RhaiJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Cross compilation sysroot doesn't include libusb
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
X-List-Received-Date: Fri, 12 Jul 2019 20:00:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F1CCA50D91351E4D93DCC0B03D7D2F4F8DF372AEFMSMSX112amrcor_"

--_000_F1CCA50D91351E4D93DCC0B03D7D2F4F8DF372AEFMSMSX112amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I will start with the caveat: this is my first time trying to cross compile=
 for a target running a yocto bitbaked image. So I am surely not doing the =
right thing.

I have generated both a core-image-sato & core-image-sato-dev.  I am develo=
ping an application to run on my target machine.  My application uses libra=
ries that in turn need libusb.so which doesn't exist in under the sysroot s=
etup for cross compilation.  I have these in my local.conf and I do see

EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks tools-testapps tools-sdk dev-pkgs"
CORE_IMAGE_EXTRA_INSTALL +=3D "openssh glib-2.0 glibc glib-networking libus=
b-compat"

I do see that libusb-compat was generated:
./corei7-64-poky-linux/libusb-compat/1_0.1.5-r0/deploy-rpms/corei7_64/libus=
b-0.1-4-0.1.5-r0.corei7_64.rpm
./corei7-64-poky-linux/libusb-compat/1_0.1.5-r0/deploy-rpms/corei7_64/libus=
b-0.1-src-0.1.5-r0.corei7_64.rpm
./corei7-64-poky-linux/libusb-compat/1_0.1.5-r0/deploy-rpms/corei7_64/libus=
b-0.1-dev-0.1.5-r0.corei7_64.rpm
./corei7-64-poky-linux/libusb-compat/1_0.1.5-r0/deploy-rpms/corei7_64/libus=
b-0.1-dbg-0.1.5-r0.corei7_64.rpm

I tried bitbake meta-ide-support and used tmp/environment-setup-corei7-64-p=
oky-linux to setup my build environment, but there is no libusb.so in the s=
ysroot lib directory.

I tried bitbake meta-toolchain and installed the tool chain and used its  /=
opt/poky/2.7/environment-setup-corei7-64-poky-linux, but again the opt/poky=
/2.7 sysroot directory  also does not include libusb.so.

What step am I missing?

Thanks in advance,
Usha

____
Intel Corporation
1110 American Parkway NE
Suite F-100, AMP1 10C-166b
Allentown, PA 18109-9151
484-245-9498


--_000_F1CCA50D91351E4D93DCC0B03D7D2F4F8DF372AEFMSMSX112amrcor_
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
<p class=3D"MsoNormal">I will start with the caveat: this is my first time =
trying to cross compile for a target running a yocto bitbaked image. So I a=
m surely not doing the right thing.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have generated both a core-image-sato &amp; core-i=
mage-sato-dev.&nbsp; I am developing an application to run on my target mac=
hine.&nbsp; My application uses libraries that in turn need libusb.so which=
 doesn&#8217;t exist in under the sysroot setup for cross
 compilation.&nbsp; I have these in my local.conf and I do see <o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks tools-t=
estapps tools-sdk dev-pkgs&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">CORE_IMAGE_EXTRA_INSTALL &#43;=3D &quot;openssh glib=
-2.0 glibc glib-networking libusb-compat&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I do see that libusb-compat was generated:<o:p></o:p=
></p>
<p class=3D"MsoNormal">./corei7-64-poky-linux/libusb-compat/1_0.1.5-r0/depl=
oy-rpms/corei7_64/libusb-0.1-4-0.1.5-r0.corei7_64.rpm<o:p></o:p></p>
<p class=3D"MsoNormal">./corei7-64-poky-linux/libusb-compat/1_0.1.5-r0/depl=
oy-rpms/corei7_64/libusb-0.1-src-0.1.5-r0.corei7_64.rpm<o:p></o:p></p>
<p class=3D"MsoNormal">./corei7-64-poky-linux/libusb-compat/1_0.1.5-r0/depl=
oy-rpms/corei7_64/libusb-0.1-dev-0.1.5-r0.corei7_64.rpm<o:p></o:p></p>
<p class=3D"MsoNormal">./corei7-64-poky-linux/libusb-compat/1_0.1.5-r0/depl=
oy-rpms/corei7_64/libusb-0.1-dbg-0.1.5-r0.corei7_64.rpm<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tried bitbake meta-ide-support and used tmp/enviro=
nment-setup-corei7-64-poky-linux to setup my build environment, but there i=
s no libusb.so in the sysroot lib directory.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tried bitbake meta-toolchain and installed the too=
l chain and used its &nbsp;/opt/poky/2.7/environment-setup-corei7-64-poky-l=
inux, but again the opt/poky/2.7 sysroot directory &nbsp;also does not incl=
ude libusb.so.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What step am I missing?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance,<o:p></o:p></p>
<p class=3D"MsoNormal">Usha<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">____<br>
Intel Corporation<o:p></o:p></p>
<p class=3D"MsoNormal">1110 American Parkway NE<o:p></o:p></p>
<p class=3D"MsoNormal">Suite F-100, AMP1 10C-166b<br>
Allentown, PA 18109-9151<o:p></o:p></p>
<p class=3D"MsoNormal">484-245-9498<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_F1CCA50D91351E4D93DCC0B03D7D2F4F8DF372AEFMSMSX112amrcor_--
