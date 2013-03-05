Return-Path: <thaddeus.c.letnes@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5572CE0144A
	for <yocto@yoctoproject.org>; Mon,  4 Mar 2013 16:17:43 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Mar 2013 16:16:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,783,1355126400"; 
	d="scan'208,217";a="270966316"
Received: from fmsmsx103.amr.corp.intel.com ([10.19.9.34])
	by orsmga001.jf.intel.com with ESMTP; 04 Mar 2013 16:17:41 -0800
Received: from fmsmsx104.amr.corp.intel.com ([169.254.4.237]) by
	FMSMSX103.amr.corp.intel.com ([169.254.3.55]) with mapi id
	14.01.0355.002; Mon, 4 Mar 2013 16:17:38 -0800
From: "Letnes, Thaddeus C" <thaddeus.c.letnes@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Warnings using Yocto1.4(M3) when building kernel modules for
	Atom arch
Thread-Index: Ac4ZNtcVoxrw9EHlR+e3lw1p80jOrQ==
Date: Tue, 5 Mar 2013 00:17:37 +0000
Message-ID: <3C3140F5AAB9F9448A770DC19A0047B6238A3D0A@FMSMSX104.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Warnings using Yocto1.4(M3) when building kernel modules for Atom arch
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
X-List-Received-Date: Tue, 05 Mar 2013 00:17:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3C3140F5AAB9F9448A770DC19A0047B6238A3D0AFMSMSX104amrcor_"

--_000_3C3140F5AAB9F9448A770DC19A0047B6238A3D0AFMSMSX104amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have several recipes for kernel modules that are raising the following er=
ror:

error: SSE instruction set disabled, using 387 arithmetics [-Werror]

in these recipes ${CC} is being reported as: "i586-poky-linux-gcc  -m32    =
-march=3Dcore2 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse --sysroot=3D/proj/bui=
ld/tmp/sysroots/proj "

My question is, am I encountering a new bug in Yocto 1.4, or are my recipes=
 incorrect?



Obviously the error is arising because there was a warning that SSE should =
not be used, but is specified in ${CC}. I have traced this back and find th=
at:

(this part is the same in 1.3 and 1.4)
conf/machine/include/tune-atom.inc includes:
conf/machine/include/tune-core2.inc which sets:
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "core2", "-march=3D=
core2 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse", "", d)}"

(this part has changed)
meta/conf/bitbake.conf sets:
TUNE_CCARGS[vardepvalue] =3D "${TUNE_CCARGS}"
This was changed in the following commit:
Revision: 7cbc3cf64bf68138fbbbb8bcae76ecd22d583c98
Author: Martin Jansa <Martin.Jansa@gmail.com<mailto:Martin.Jansa@gmail.com>=
>
Date: 9/22/2012 5:08:13 AM
Message:
bitbake.conf: add TUNE_CCARGS[vardepvalue]

* we don't care about expression but value
* e.g. tune-xscale and tune-arm926ejs have different expression
  in TUNE_CCARGS but with the same DEFAULTTUNE the result is the same
  http://lists.linuxtogo.org/pipermail/openembedded-core/2012-September/030=
032.html

(From OE-Core rev: 03f1e34ea3ce80931e9c3cd2ab22824f28a7233b)

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com<mailto:Martin.Jansa@gma=
il.com>>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org<mailto:ri=
chard.purdie@linuxfoundation.org>>
----
Modified: meta/conf/bitbake.conf


(this part is the same in 1.3 and 1.4)
meta/conf/bitbake.conf sets:
TARGET_CC_ARCH =3D "${TUNE_CCARGS}"

meta/classes/toolchain-scripts.bbclass writes scripts that set:
CC=3D"${TARGET_PREFIX}gcc ${TARGET_CC_ARCH} --sysroot=3D<script dependent p=
ath>"

The result is (in my case) that we are building kernel modules with invalid=
 options.

It is not clear to me why TUNE_CCARGS[vardepvalue] would be used to replace=
 ${TUNE_CCARGS}, but it seems to be what is happening.


--_000_3C3140F5AAB9F9448A770DC19A0047B6238A3D0AFMSMSX104amrcor_
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
<p class=3D"MsoNormal">I have several recipes for kernel modules that are r=
aising the following error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">error: SSE instruction se=
t disabled, using 387 arithmetics [-Werror]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">in these recipes ${CC} is being reported as: &#8220;=
i586-poky-linux-gcc&nbsp; -m32&nbsp;&nbsp;&nbsp; -march=3Dcore2 -msse3 -mtu=
ne=3Dgeneric -mfpmath=3Dsse --sysroot=3D/proj/build/tmp/sysroots/proj &#822=
0;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My question is, am I encountering a new bug in Yocto=
 1.4, or are my recipes incorrect?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Obviously the error is arising because there was a w=
arning that SSE should not be used, but is specified in ${CC}. I have trace=
d this back and find that:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">(this part is the same in 1.3 and 1.4)<o:p></o:p></p=
>
<p class=3D"MsoNormal"><b>conf/machine/include/tune-atom.inc </b>includes:<=
o:p></o:p></p>
<p class=3D"MsoNormal"><b>conf/machine/include/tune-core2.inc </b>which set=
s:<o:p></o:p></p>
<p class=3D"MsoNormal"><b>TUNE_CCARGS &#43;=3D &quot;${@bb.utils.contains(&=
quot;TUNE_FEATURES&quot;, &quot;core2&quot;, &quot;-march=3Dcore2 -msse3 -m=
tune=3Dgeneric -mfpmath=3Dsse&quot;, &quot;&quot;, d)}&quot;<o:p></o:p></b>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">(this part has changed)<o:p></o:p></p>
<p class=3D"MsoNormal"><b>meta/conf/bitbake.conf </b>sets:<o:p></o:p></p>
<p class=3D"MsoNormal"><b>TUNE_CCARGS[vardepvalue] =3D &quot;${TUNE_CCARGS}=
&quot;<o:p></o:p></b></p>
<p class=3D"MsoNormal">This was changed in the following commit:<o:p></o:p>=
</p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Revision: 7cbc3cf64bf6813=
8fbbbb8bcae76ecd22d583c98<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Author: Martin Jansa &lt;=
<a href=3D"mailto:Martin.Jansa@gmail.com">Martin.Jansa@gmail.com</a>&gt;<o:=
p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Date: 9/22/2012 5:08:13 A=
M<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Message:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">bitbake.conf: add TUNE_CC=
ARGS[vardepvalue]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">* we don't care about exp=
ression but value<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">* e.g. tune-xscale and tu=
ne-arm926ejs have different expression<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp; in TUNE_CCARGS but=
 with the same DEFAULTTUNE the result is the same<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp; <a href=3D"http://=
lists.linuxtogo.org/pipermail/openembedded-core/2012-September/030032.html"=
>
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-September/03003=
2.html</a><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">(From OE-Core rev: 03f1e3=
4ea3ce80931e9c3cd2ab22824f28a7233b)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Signed-off-by: Martin Jan=
sa &lt;<a href=3D"mailto:Martin.Jansa@gmail.com">Martin.Jansa@gmail.com</a>=
&gt;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Signed-off-by: Richard Pu=
rdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purd=
ie@linuxfoundation.org</a>&gt;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">----<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Modified: meta/conf/bitba=
ke.conf<o:p></o:p></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">(this part is the same in 1.3 and 1.4)<o:p></o:p></p=
>
<p class=3D"MsoNormal"><b>meta/conf/bitbake.conf </b>sets:<o:p></o:p></p>
<p class=3D"MsoNormal"><b>TARGET_CC_ARCH =3D &quot;${TUNE_CCARGS}&quot;<o:p=
></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>meta/classes/toolchain-scripts.bbclass </b>writes=
 scripts that set:<o:p></o:p></p>
<p class=3D"MsoNormal"><b>CC=3D&quot;${TARGET_PREFIX}gcc ${TARGET_CC_ARCH} =
--sysroot=3D&lt;script dependent path&gt;&#8221;<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The result is (in my case) that we are building kern=
el modules with invalid options.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It is not clear to me why <b>TUNE_CCARGS[vardepvalue=
]</b> would be used to replace
<b>${TUNE_CCARGS}</b>, but it seems to be what is happening.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_3C3140F5AAB9F9448A770DC19A0047B6238A3D0AFMSMSX104amrcor_--
