Return-Path: <maciej.szankin@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49C64E00717
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 03:02:40 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Oct 2012 03:02:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,533,1344236400"; 
	d="scan'208,217";a="229820026"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga001.fm.intel.com with ESMTP; 04 Oct 2012 03:02:36 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.154]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.34]) with mapi id
	14.01.0355.002; Thu, 4 Oct 2012 11:02:36 +0100
From: "Szankin, Maciej" <maciej.szankin@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: eglibc fails to build
Thread-Index: Ac2iFb/bupgUDGZRSyqgq4UKsxUblw==
Date: Thu, 4 Oct 2012 10:02:35 +0000
Message-ID: <4D6A41946CB68D4EBC0E4378E53ED77F3AC7D7@IRSMSX104.ger.corp.intel.com>
Accept-Language: pl-PL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: eglibc fails to build
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
X-List-Received-Date: Thu, 04 Oct 2012 10:02:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4D6A41946CB68D4EBC0E4378E53ED77F3AC7D7IRSMSX104gercorpi_"

--_000_4D6A41946CB68D4EBC0E4378E53ED77F3AC7D7IRSMSX104gercorpi_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi,
I'm having a hard time building yocto.
I'm trying to build a tiny-poky / core-image-rt , but it doesn't even matte=
r as in every configuration it just fails on eglibc.
Target architecture is x86.

I will keep it clean so the error log returned by build is here -> http://p=
astebin.com/RNv5u8H8
I think that only the last line are what matters the most. The only issue t=
hat I see is multiple reference (starts @ 241 line).

Before this I had problems with building elfutils but adding libc-ftraverse=
 and libc-posix-clang-wchar to DISTRO_FEATURES_LIBC_DEFAULTS fixed this.

Is there anything that I can do with eglibc?



Regards,
Maciej Szankin
+ 48 58 766 50 47
Intel Technology Poland Sp. z o.o.
ul. Slowackiego 173
80-298 Gdansk

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
z siedziba w Gdansku
ul. Slowackiego 173
80-298 Gdansk

Sad Rejonowy Gdansk Polnoc w Gdansku, =

VII Wydzial Gospodarczy Krajowego Rejestru Sadowego, =

numer KRS 101882

NIP 957-07-52-316
Kapital zakladowy 200.000 zl

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

--_000_4D6A41946CB68D4EBC0E4378E53ED77F3AC7D7IRSMSX104gercorpi_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;m having a hard time building yocto.<o:p></o=
:p></p>
<p class=3D"MsoNormal">I&#8217;m trying to build a tiny-poky / core-image-r=
t , but it doesn&#8217;t even matter as in every configuration it just fail=
s on eglibc.<o:p></o:p></p>
<p class=3D"MsoNormal">Target architecture is x86.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I will keep it clean so the error log returned by bu=
ild is here -&gt;
<a href=3D"http://pastebin.com/RNv5u8H8">http://pastebin.com/RNv5u8H8</a><o=
:p></o:p></p>
<p class=3D"MsoNormal">I think that only the last line are what matters the=
 most. The only issue that I see is multiple reference (starts @ 241 line).=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Before this I had problems with building elfutils bu=
t adding libc-ftraverse and libc-posix-clang-wchar to DISTRO_FEATURES_LIBC_=
DEFAULTS fixed this.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there anything that I can do with eglibc?<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"PL" style=3D"color:#1F497D">Regards,<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL" style=3D"color:#1F497D">Maciej Sza=
nkin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL" style=3D"color:#1F497D">&#43; 48 5=
8&nbsp;766 50 47<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL" style=3D"color:#1F497D">Intel Tech=
nology Poland Sp. z o.o.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL" style=3D"color:#1F497D">ul. Slowac=
kiego 173<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">80-298 Gdansk<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p>---------------------------------------------------------------------<br>
Intel Technology Poland sp. z o.o.<br>
z siedziba w Gdansku<br>
ul. Slowackiego 173<br>
80-298 Gdansk</p>

<p>Sad Rejonowy Gdansk Polnoc w Gdansku, <br>
VII Wydzial Gospodarczy Krajowego Rejestru Sadowego, <br>
numer KRS 101882</p>

<p>NIP 957-07-52-316<br>
Kapital zakladowy 200.000 zl</p>

<p>This e-mail and any attachments may contain confidential material for<br>
the sole use of the intended recipient(s). Any review or distribution<br>
by others is strictly prohibited. If you are not the intended<br>
recipient, please contact the sender and delete all copies.</p></body>
</html>

--_000_4D6A41946CB68D4EBC0E4378E53ED77F3AC7D7IRSMSX104gercorpi_--
