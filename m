Return-Path: <rebecca.swee.fun.chang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC2FFE00994; Sun, 12 Apr 2015 22:03:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2281E00948
	for <yocto@yoctoproject.org>; Sun, 12 Apr 2015 22:03:03 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Apr 2015 22:03:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,568,1422950400"; 
	d="scan'208,217";a="712694931"
Received: from pgsmsx105.gar.corp.intel.com ([10.221.44.96])
	by orsmga002.jf.intel.com with ESMTP; 12 Apr 2015 22:03:02 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.4]) by
	PGSMSX105.gar.corp.intel.com ([169.254.4.127]) with mapi id
	14.03.0224.002; Mon, 13 Apr 2015 13:03:00 +0800
From: "Chang, Rebecca Swee Fun" <rebecca.swee.fun.chang@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: [Dizzy] Multilib in Poky
Thread-Index: AdB1n+laxuP83XMaQSOcBAwmEUNPqg==
Date: Mon, 13 Apr 2015 05:03:00 +0000
Message-ID: <50B33AC5ED75F74F991980326F1C438D18FD6BE2@PGSMSX103.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "'paul.eggleton@linux.intel.com'" <paul.eggleton@linux.intel.com>
Subject: [Dizzy] Multilib in Poky
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
X-List-Received-Date: Mon, 13 Apr 2015 05:03:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_50B33AC5ED75F74F991980326F1C438D18FD6BE2PGSMSX103garcor_"

--_000_50B33AC5ED75F74F991980326F1C438D18FD6BE2PGSMSX103garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am building a MACHINE =3D "qemux86" image using Poky v1.7.1 with multilib=
 feature. I would like the image generated to use glibc as the main libc an=
d uclibc in lib32 multilib.
Here are my settings in build/local.conf:

# Multilib Configurations
require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "x86"
baselib_virtclass-multilib-lib32 =3D "lib32"
LIBCEXTENSION_virtclass-multilib-lib32 =3D "-uclibc"
LIBCOVERRIDE_virtclass-multilib-lib32 =3D ":libc-uclibc"
PREFERRED_PROVIDER_virtual/lib32-libc ?=3D "uclibc"
PREFERRED_PROVIDER_virtual/lib32-libiconv ?=3D "libiconv"
PREFERRED_PROVIDER_virtual/lib32-libintl ?=3D "gettext"
USE_NLS_virtclass-multilib-lib32 ?=3D "no"
CXXFLAGS_append_virtclass-multilib-lib32 =3D " -fvisibility-inlines-hidden"
IMAGE_LINGUAS_virtclass-multilib-lib32 =3D ""
LIBC_DEPENDENCIES_virtclass-multilib-lib32 =3D "uclibc uclibc-dbg uclibc-de=
v uclibc-thread-db"
PTEST_ENABLED_virtclass-multilib-lib32 =3D ""


When I run BitBake to build a Sato image, Bitbake prompt the following erro=
r.

Parsing of 893 .bb files complete (0 cached, 893 parsed). 2181 targets, 174=
 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'lib32-glibc'
ERROR: lib32-glibc was skipped: incompatible with target linux-uclibc
ERROR: Required build target 'core-image-sato' has no buildable providers.
Missing or unbuildable dependency chain was: ['core-image-sato', 'lib32-gli=
bc']
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

While the same configurations for multilib was run on Poky Daisy branch, ho=
wever we don't hit this problem.
From the Reference Manual, I know that as we migrate to YP version 1.7, egl=
ibc 3.19 has been replaced with glibc 2.20.
Could this be the reason of the broken multilib features?

How should I resolve this? How should I exclude the "lib32-glibc" package f=
rom the build?
Thanks in advance.

Regards,
Rebecca

--_000_50B33AC5ED75F74F991980326F1C438D18FD6BE2PGSMSX103garcor_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am building a MACHINE =3D &#8220;qemux86&#8221; im=
age using Poky v1.7.1 with multilib feature. I would like the image generat=
ed to use glibc as the main libc and uclibc in lib32 multilib.<o:p></o:p></=
p>
<p class=3D"MsoNormal">Here are my settings in build/local.conf:<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># Multilib Configurations<o:p></o:p></p>
<p class=3D"MsoNormal">require conf/multilib.conf<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">MULTILIBS =3D &quot;multilib:lib32&quot;<o:p></o:p><=
/p>
<p class=3D"MsoNormal">DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;x86&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal">baselib_virtclass-multilib-lib32 =3D &quot;lib32&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal">LIBCEXTENSION_virtclass-multilib-lib32 =3D &quot;-uc=
libc&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">LIBCOVERRIDE_virtclass-multilib-lib32 =3D &quot;:lib=
c-uclibc&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">PREFERRED_PROVIDER_virtual/lib32-libc ?=3D &quot;ucl=
ibc&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">PREFERRED_PROVIDER_virtual/lib32-libiconv ?=3D &quot=
;libiconv&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">PREFERRED_PROVIDER_virtual/lib32-libintl ?=3D &quot;=
gettext&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">USE_NLS_virtclass-multilib-lib32 ?=3D &quot;no&quot;=
<o:p></o:p></p>
<p class=3D"MsoNormal">CXXFLAGS_append_virtclass-multilib-lib32 =3D &quot; =
-fvisibility-inlines-hidden&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">IMAGE_LINGUAS_virtclass-multilib-lib32 =3D &quot;&qu=
ot;<o:p></o:p></p>
<p class=3D"MsoNormal">LIBC_DEPENDENCIES_virtclass-multilib-lib32 =3D &quot=
;uclibc uclibc-dbg uclibc-dev uclibc-thread-db&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">PTEST_ENABLED_virtclass-multilib-lib32 =3D &quot;&qu=
ot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I run BitBake to build a Sato image, Bitbake pr=
ompt the following error.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Parsing of 893 .bb files complete (0 cached, 893 par=
sed). 2181 targets, 174 skipped, 0 masked, 0 errors.<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Resolving any missing task queue dependencies<=
o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Nothing PROVIDES 'lib32-glibc'<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: lib32-glibc was skipped: incompatible with ta=
rget linux-uclibc<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Required build target 'core-image-sato' has n=
o buildable providers.<o:p></o:p></p>
<p class=3D"MsoNormal">Missing or unbuildable dependency chain was: ['core-=
image-sato', 'lib32-glibc']<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">Summary: There were 2 ERROR messages shown, returnin=
g a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">While the same configurations for multilib was run o=
n Poky Daisy branch, however we don&#8217;t hit this problem.<o:p></o:p></p=
>
<p class=3D"MsoNormal">From the Reference Manual, I know that as we migrate=
 to YP version 1.7, eglibc 3.19 has been replaced with glibc 2.20.<o:p></o:=
p></p>
<p class=3D"MsoNormal">Could this be the reason of the broken multilib feat=
ures? <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How should I resolve this? How should I exclude the =
&#8220;lib32-glibc&#8221; package from the build?
<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks in advance. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Rebecca<o:p></o:p></p>
</div>
</body>
</html>

--_000_50B33AC5ED75F74F991980326F1C438D18FD6BE2PGSMSX103garcor_--
