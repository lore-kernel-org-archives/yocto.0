Return-Path: <rahul.saxena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5B6DE0027E
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 11:03:24 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Aug 2012 11:03:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,803,1336374000"; 
	d="scan'208,217";a="189425828"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 21 Aug 2012 11:03:18 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.40) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 21 Aug 2012 11:03:17 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.138]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.94]) with mapi id
	14.01.0355.002; Tue, 21 Aug 2012 11:03:17 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ERROR: QA Issue: No GNU_HASH in the elf binary
Thread-Index: Ac1/xz1OQq0h6peoTwi2emTaPSNZ4w==
Date: Tue, 21 Aug 2012 18:03:17 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49003313905@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: ERROR: QA Issue: No GNU_HASH in the elf binary
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
X-List-Received-Date: Tue, 21 Aug 2012 18:03:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_63ECFF2A2302B44093D7CE9E9962C49003313905ORSMSX103amrcor_"

--_000_63ECFF2A2302B44093D7CE9E9962C49003313905ORSMSX103amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using  poky/1.3_M3 branch and I get a bunch of "ERROR: QA Issue: No GN=
U_HASH in the elf binary:"

My recipe is for installing binary files only.
I have the following statement in my recipe:

INSANE_SKIP_${PN} =3D "ldflags"

But I still get the errors ..any suggestions ?

WARNING: File '/usr/lib/libEGL.so.1' from cdv-pvr-driver was already stripp=
ed, this will prevent future debugging!
WARNING: File '/usr/lib/libGLESv2.so.2' from cdv-pvr-driver was already str=
ipped, this will prevent future debugging!
ERROR: QA Issue: No GNU_HASH in the elf binary: '/home/rsaxena/YoctoWork1/c=
edartrail6/tmp/work/core2-poky-linux/cdv-pvr-driver-1.0.2-r1/packages-split=
/cdv-pvr-driver-dev/usr/lib/libpvrPVR2D_LINUXFBWSEGL.so'
ERROR: QA Issue: No GNU_HASH in the elf binary: '/home/rsaxena/YoctoWork1/c=
edartrail6/tmp/work/core2-poky-linux/cdv-pvr-driver-1.0.2-r1/packages-split=
/cdv-pvr-driver-dev/usr/lib/libpvrPVR2D_DRIWSEGL.so'
ERROR: QA Issue: No GNU_HASH in the elf binary: '/home/rsaxena/YoctoWork1/c=
edartrail6/tmp/work/core2-poky-linux/cdv-pvr-driver-1.0.2-r1/packages-split=
/cdv-pvr-driver-dev/usr/lib/libPVROGL_MESA.so'
ERROR: QA Issue: No GNU_HASH in the elf binary: '/home/rsaxena/YoctoWork1/c=
edartrail6/tmp/work/core2-poky-linux/cdv-pvr-driver-1.0.2-r1/packages-split=
/cdv-pvr-driver-dev/usr/lib/libOpenVGU.so'
ERROR: QA Issue: No GNU_HASH in the elf binary: '/home/rsaxena/YoctoWork1/c=
edartrail6/tmp/work/core2-poky-linux/cdv-pvr-driver-1.0.2-r1/packages-split=
/cdv-pvr-driver-dev/usr/lib/libpvrPVR2D_BLITWSEGL.so'
ERROR: QA Issue: No GNU_HASH in the elf binary: '/home/rsaxena/YoctoWork1/c=
edartrail6/tmp/work/core2-poky-linux/cdv-pvr-driver-1.0.2-r1/packages-split=
/cdv-pvr-driver-dev/usr/lib/libpvrPVR2D_FLIPWSEGL.so'


Thanks
Rahul

--_000_63ECFF2A2302B44093D7CE9E9962C49003313905ORSMSX103amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">I am using &nbsp;poky/1.3_M3=
 branch and I get a bunch of &#8220;ERROR: QA Issue: No GNU_HASH in the elf=
 binary:&#8221;
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">My recipe is for installing =
binary files only.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">I have the following stateme=
nt in my recipe:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">INSANE_SKIP_${PN} =3D &#8220=
;ldflags&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">But I still get the errors .=
.any suggestions ?<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">WARNING: File '/usr/lib/libE=
GL.so.1' from cdv-pvr-driver was already stripped, this will prevent future=
 debugging!<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">WARNING: File '/usr/lib/libG=
LESv2.so.2' from cdv-pvr-driver was already stripped, this will prevent fut=
ure debugging!<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">ERROR: QA Issue: No GNU_HASH=
 in the elf binary: '/home/rsaxena/YoctoWork1/cedartrail6/tmp/work/core2-po=
ky-linux/cdv-pvr-driver-1.0.2-r1/packages-split/cdv-pvr-driver-dev/usr/lib/=
libpvrPVR2D_LINUXFBWSEGL.so'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">ERROR: QA Issue: No GNU_HASH=
 in the elf binary: '/home/rsaxena/YoctoWork1/cedartrail6/tmp/work/core2-po=
ky-linux/cdv-pvr-driver-1.0.2-r1/packages-split/cdv-pvr-driver-dev/usr/lib/=
libpvrPVR2D_DRIWSEGL.so'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">ERROR: QA Issue: No GNU_HASH=
 in the elf binary: '/home/rsaxena/YoctoWork1/cedartrail6/tmp/work/core2-po=
ky-linux/cdv-pvr-driver-1.0.2-r1/packages-split/cdv-pvr-driver-dev/usr/lib/=
libPVROGL_MESA.so'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">ERROR: QA Issue: No GNU_HASH=
 in the elf binary: '/home/rsaxena/YoctoWork1/cedartrail6/tmp/work/core2-po=
ky-linux/cdv-pvr-driver-1.0.2-r1/packages-split/cdv-pvr-driver-dev/usr/lib/=
libOpenVGU.so'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">ERROR: QA Issue: No GNU_HASH=
 in the elf binary: '/home/rsaxena/YoctoWork1/cedartrail6/tmp/work/core2-po=
ky-linux/cdv-pvr-driver-1.0.2-r1/packages-split/cdv-pvr-driver-dev/usr/lib/=
libpvrPVR2D_BLITWSEGL.so'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">ERROR: QA Issue: No GNU_HASH=
 in the elf binary: '/home/rsaxena/YoctoWork1/cedartrail6/tmp/work/core2-po=
ky-linux/cdv-pvr-driver-1.0.2-r1/packages-split/cdv-pvr-driver-dev/usr/lib/=
libpvrPVR2D_FLIPWSEGL.so'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Rahul<o:p></o:p></p>
</div>
</body>
</html>

--_000_63ECFF2A2302B44093D7CE9E9962C49003313905ORSMSX103amrcor_--
