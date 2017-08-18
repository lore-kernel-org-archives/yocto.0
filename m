Return-Path: <yang.y.wang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62E0CE00D34; Thu, 17 Aug 2017 23:40:38 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72DA9E00349
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 23:40:35 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Aug 2017 23:40:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,391,1498546800"; 
	d="scan'208,217";a="891313316"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
	by FMSMGA003.fm.intel.com with ESMTP; 17 Aug 2017 23:40:34 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
	FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 17 Aug 2017 23:40:34 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 17 Aug 2017 23:40:34 -0700
Received: from shsmsx103.ccr.corp.intel.com ([169.254.4.236]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.128]) with mapi id
	14.03.0319.002; Fri, 18 Aug 2017 14:40:32 +0800
From: "Wang, Yang Y" <yang.y.wang@intel.com>
To: Yocto <yocto@yoctoproject.org>
Thread-Topic: toolchain from meta-mingw gets error x86_64-poky-linux-gcc:
	error: CreateProcess: No such file or directory
Thread-Index: AdMX64YSSewmeBzCSwOxTAgvXtLuGQ==
Date: Fri, 18 Aug 2017 06:40:31 +0000
Message-ID: <B00C8E670A91FC4CABB6EF6FE24FF0C81A9C660C@SHSMSX103.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: toolchain from meta-mingw gets error x86_64-poky-linux-gcc: error: CreateProcess: No such file or directory
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
X-List-Received-Date: Fri, 18 Aug 2017 06:40:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B00C8E670A91FC4CABB6EF6FE24FF0C81A9C660CSHSMSX103ccrcor_"

--_000_B00C8E670A91FC4CABB6EF6FE24FF0C81A9C660CSHSMSX103ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm using Yocto krogoth and meta-mingw to build the meta-toolchain for wind=
ows system. The build is quite smooth.
I extract the built toolchain poky-glibc-x86_64-meta-toolchain-core2-64-too=
lchain-2.1.tar.xz on windows to c:/yocto2.1
However when I try to run a simple build from windows cmd console after I s=
et up the environment-setup-core2-64-poky-linux.bat, I got the following er=
ror.
By further check, it seems the error is related to the symbolic link in fol=
der sysroots/x86_64-pokysdk-mingw32/usr/bin/x86_64-poky-linux/../../libexec=
/x86_64-poky-linux/gcc/x86_64-poky-linux/5.3.0/ where the as, ar etc binuti=
les are the symbolic link to the file in -> ../../../../../bin/x86_64-poky-=
linux/
However on windows, such "../../" symbolic link can't work. Simply execute =
the symbolic 'as.exe' will get error "Access is denied."

Anyone has the idea on how to solve this issue?

c:\Yocto2.1>%CC% c:/temp/temp/temp/test.c
x86_64-poky-linux-gcc: error: CreateProcess: No such file or directory

c:\Yocto2.1>%CC% c:/temp/temp/temp/test.c --verbose
Using built-in specs.
COLLECT_GCC=3Dx86_64-poky-linux-gcc
COLLECT_LTO_WRAPPER=3Dc:/yocto2.1/sysroots/x86_64-pokysdk-mingw32/usr/bin/x=
86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/5.3.=
0/lto-wrapper.exe
Target: x86_64-poky-linux
....
GNU C11 (GCC) version 5.3.0 (x86_64-poky-linux)
        compiled by GNU C version 5.3.0, GMP version 6.1.0, MPFR version 3.=
1.3, MPC version 1.0.3
GGC heuristics: --param ggc-min-expand=3D100 --param ggc-min-heapsize=3D131=
072
Compiler executable checksum: 4b6c2d45c1da5393637e027504b4f2dd
COLLECT_GCC_OPTIONS=3D'--sysroot=3Dc:\Yocto2.1\\sysroots\core2-64-poky-linu=
x' '-m64' '-march=3Dcore2' '-mtune=3Dcore2' '-msse3' '-mfpmath=3Dsse' '-v'
c:/yocto2.1/sysroots/x86_64-pokysdk-mingw32/usr/bin/x86_64-poky-linux/../..=
/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/5.3.0/as.exe -v --64 -o C:=
\Users\ywang30\AppData\Local\Temp\ccREtk4o.o C:\Users\ywang30\AppData\Local=
\Temp\ccbqVhdf.s
x86_64-poky-linux-gcc: error: CreateProcess: No such file or directory


c:\Yocto2.1> c:/yocto2.1/sysroots/x86_64-pokysdk-mingw32/usr/bin/x86_64-pok=
y-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/5.3.0/as.exe
Access is denied.

c:\Yocto2.1>ls  c:/yocto2.1/sysroots/x86_64-pokysdk-mingw32/usr/bin/x86_64-=
poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/5.3.0/ -l
total 67783
lrwxrwxrwx 1 ywang30 Domain Users       61 Aug 18 12:05 ar.exe -> ../../../=
../../bin/x86_64-poky-linux/x86_64-poky-linux-ar.exe
lrwxrwxrwx 1 ywang30 Domain Users       61 Aug 18 12:05 as.exe -> ../../../=
../../bin/x86_64-poky-linux/x86_64-poky-linux-as.exe
-rwxr-xr-x 1 ywang30 Domain Users 21761467 Aug 18 11:53 cc1.exe
-rwxr-xr-x 1 ywang30 Domain Users 22986939 Aug 18 11:53 cc1plus.exe
-rwxr-xr-x 1 ywang30 Domain Users  1658365 Aug 18 11:53 collect2.exe
lrwxrwxrwx 1 ywang30 Domain Users       62 Aug 18 12:05 cpp.exe -> ../../..=
/../../bin/x86_64-poky-linux/x86_64-poky-linux-cpp.exe
lrwxrwxrwx 1 ywang30 Domain Users       62 Aug 18 12:05 gcc.exe -> ../../..=
/../../bin/x86_64-poky-linux/x86_64-poky-linux-gcc.exe
lrwxrwxrwx 1 ywang30 Domain Users       61 Aug 18 12:05 ld.exe -> ../../../=
../../bin/x86_64-poky-linux/x86_64-poky-linux-ld.exe
-rwxr-xr-x 1 ywang30 Domain Users   129591 Aug 18 11:53 liblto_plugin-0.dll
-rw-r--r-- 1 ywang30 Domain Users    53040 Aug 18 11:53 liblto_plugin.dll.a
-rw-r--r-- 1 ywang30 Domain Users     1381 Aug 18 11:53 liblto_plugin.la
-rwxr-xr-x 1 ywang30 Domain Users  1881552 Aug 18 11:53 lto-wrapper.exe
-rwxr-xr-x 1 ywang30 Domain Users 20913549 Aug 18 11:53 lto1.exe
lrwxrwxrwx 1 ywang30 Domain Users       61 Aug 18 12:05 nm.exe -> ../../../=
../../bin/x86_64-poky-linux/x86_64-poky-linux-nm.exe
lrwxrwxrwx 1 ywang30 Domain Users       66 Aug 18 12:05 objcopy.exe -> ../.=
./../../../bin/x86_64-poky-linux/x86_64-poky-linux-objcopy.exe
lrwxrwxrwx 1 ywang30 Domain Users       66 Aug 18 12:05 objdump.exe -> ../.=
./../../../bin/x86_64-poky-linux/x86_64-poky-linux-objdump.exe
lrwxrwxrwx 1 ywang30 Domain Users       65 Aug 18 12:05 ranlib.exe -> ../..=
/../../../bin/x86_64-poky-linux/x86_64-poky-linux-ranlib.exe
lrwxrwxrwx 1 ywang30 Domain Users       61 Aug 18 12:05 real-ld.exe -> ../.=
./../../../bin/x86_64-poky-linux/x86_64-poky-linux-ld.exe
lrwxrwxrwx 1 ywang30 Domain Users       64 Aug 18 12:05 strip.exe -> ../../=
../../../bin/x86_64-poky-linux/x86_64-poky-linux-strip.exe

--_000_B00C8E670A91FC4CABB6EF6FE24FF0C81A9C660CSHSMSX103ccrcor_
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
<p class=3D"MsoNormal">I&#8217;m using Yocto krogoth and meta-mingw to buil=
d the meta-toolchain for windows system. The build is quite smooth.<o:p></o=
:p></p>
<p class=3D"MsoNormal">I extract the built toolchain poky-glibc-x86_64-meta=
-toolchain-core2-64-toolchain-2.1.tar.xz on windows to c:/yocto2.1<o:p></o:=
p></p>
<p class=3D"MsoNormal">However when I try to run a simple build from window=
s cmd console after I set up the environment-setup-core2-64-poky-linux.bat,=
 I got the following error.<o:p></o:p></p>
<p class=3D"MsoNormal">By further check, it seems the error is related to t=
he symbolic link in folder sysroots/x86_64-pokysdk-mingw32/usr/bin/x86_64-p=
oky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/5.3.0/ wher=
e the as, ar etc binutiles are the
 symbolic link to the file in <span style=3D"background:yellow;mso-highligh=
t:yellow">
-&gt; ../../../../../</span>bin/x86_64-poky-linux/<o:p></o:p></p>
<p class=3D"MsoNormal">However on windows, such &#8220;../../&#8221; symbol=
ic link can&#8217;t work. Simply execute the symbolic &#8216;as.exe&#8217; =
will get error &#8220;Access is denied.&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Anyone has the idea on how to solve this issue? <o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">c:\Yocto2.1&gt;%CC% c:/temp/temp/temp/test.c<o:p></o=
:p></p>
<p class=3D"MsoNormal">x86_64-poky-linux-gcc: error: <span style=3D"backgro=
und:yellow;mso-highlight:yellow">
CreateProcess: No such file or directory</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">c:\Yocto2.1&gt;%CC% c:/temp/temp/temp/test.c --verbo=
se<o:p></o:p></p>
<p class=3D"MsoNormal">Using built-in specs.<o:p></o:p></p>
<p class=3D"MsoNormal">COLLECT_GCC=3Dx86_64-poky-linux-gcc<o:p></o:p></p>
<p class=3D"MsoNormal">COLLECT_LTO_WRAPPER=3Dc:/yocto2.1/sysroots/x86_64-po=
kysdk-mingw32/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc=
/x86_64-poky-linux/5.3.0/lto-wrapper.exe<o:p></o:p></p>
<p class=3D"MsoNormal">Target: x86_64-poky-linux<o:p></o:p></p>
<p class=3D"MsoNormal">&#8230;.<o:p></o:p></p>
<p class=3D"MsoNormal">GNU C11 (GCC) version 5.3.0 (x86_64-poky-linux)<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compiled =
by GNU C version 5.3.0, GMP version 6.1.0, MPFR version 3.1.3, MPC version =
1.0.3<o:p></o:p></p>
<p class=3D"MsoNormal">GGC heuristics: --param ggc-min-expand=3D100 --param=
 ggc-min-heapsize=3D131072<o:p></o:p></p>
<p class=3D"MsoNormal">Compiler executable checksum: 4b6c2d45c1da5393637e02=
7504b4f2dd<o:p></o:p></p>
<p class=3D"MsoNormal">COLLECT_GCC_OPTIONS=3D'--sysroot=3Dc:\Yocto2.1\\sysr=
oots\core2-64-poky-linux' '-m64' '-march=3Dcore2' '-mtune=3Dcore2' '-msse3'=
 '-mfpmath=3Dsse' '-v'<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">c:/yocto2.1/sysroots/x86_64-pokysdk-mingw32/usr/bin/x86_64-poky-linux/..=
/../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/5.3.0/as.exe -v --64 -o=
 C:\Users\ywang30\AppData\Local\Temp\ccREtk4o.o
 C:\Users\ywang30\AppData\Local\Temp\ccbqVhdf.s<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">x86_64-poky-linux-gcc: error: CreateProcess: No such file or directory</=
span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">c:\Yocto2.1&gt; c:/yocto2.1/sysroots/x86_64-pokysdk-=
mingw32/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_6=
4-poky-linux/5.3.0/as.exe<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">Access is denied.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">c:\Yocto2.1&gt;ls&nbsp; c:/yocto2.1/sysroots/x86_64-=
pokysdk-mingw32/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/g=
cc/x86_64-poky-linux/5.3.0/ -l<o:p></o:p></p>
<p class=3D"MsoNormal">total 67783<o:p></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 61 Aug 18 12:05 ar.exe -&gt; ../../../../../bin/x86_64-po=
ky-linux/x86_64-poky-linux-ar.exe<o:p></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 61 Aug 18 12:05 as.exe -&gt;
<span style=3D"background:yellow;mso-highlight:yellow">../../../../../bin/x=
86_64-poky-linux/x86_64-poky-linux-as.exe</span><o:p></o:p></p>
<p class=3D"MsoNormal">-rwxr-xr-x 1 ywang30 Domain Users 21761467 Aug 18 11=
:53 cc1.exe<o:p></o:p></p>
<p class=3D"MsoNormal">-rwxr-xr-x 1 ywang30 Domain Users 22986939 Aug 18 11=
:53 cc1plus.exe<o:p></o:p></p>
<p class=3D"MsoNormal">-rwxr-xr-x 1 ywang30 Domain Users&nbsp; 1658365 Aug =
18 11:53 collect2.exe<o:p></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 62 Aug 18 12:05 cpp.exe -&gt; ../../../../../bin/x86_64-p=
oky-linux/x86_64-poky-linux-cpp.exe<o:p></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 62 Aug 18 12:05 gcc.exe -&gt; ../../../../../bin/x86_64-p=
oky-linux/x86_64-poky-linux-gcc.exe<o:p></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 61 Aug 18 12:05 ld.exe -&gt; ../../../../../bin/x86_64-po=
ky-linux/x86_64-poky-linux-ld.exe<o:p></o:p></p>
<p class=3D"MsoNormal">-rwxr-xr-x 1 ywang30 Domain Users&nbsp;&nbsp; 129591=
 Aug 18 11:53 liblto_plugin-0.dll<o:p></o:p></p>
<p class=3D"MsoNormal">-rw-r--r-- 1 ywang30 Domain Users&nbsp;&nbsp;&nbsp; =
53040 Aug 18 11:53 liblto_plugin.dll.a<o:p></o:p></p>
<p class=3D"MsoNormal">-rw-r--r-- 1 ywang30 Domain Users&nbsp;&nbsp;&nbsp;&=
nbsp; 1381 Aug 18 11:53 liblto_plugin.la<o:p></o:p></p>
<p class=3D"MsoNormal">-rwxr-xr-x 1 ywang30 Domain Users&nbsp; 1881552 Aug =
18 11:53 lto-wrapper.exe<o:p></o:p></p>
<p class=3D"MsoNormal">-rwxr-xr-x 1 ywang30 Domain Users 20913549 Aug 18 11=
:53 lto1.exe<o:p></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 61 Aug 18 12:05 nm.exe -&gt; ../../../../../bin/x86_64-po=
ky-linux/x86_64-poky-linux-nm.exe<o:p></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 66 Aug 18 12:05 objcopy.exe -&gt; ../../../../../bin/x86_=
64-poky-linux/x86_64-poky-linux-objcopy.exe<o:p></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 66 Aug 18 12:05 objdump.exe -&gt; ../../../../../bin/x86_=
64-poky-linux/x86_64-poky-linux-objdump.exe<o:p></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 65 Aug 18 12:05 ranlib.exe -&gt; ../../../../../bin/x86_6=
4-poky-linux/x86_64-poky-linux-ranlib.exe<o:p></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 61 Aug 18 12:05 real-ld.exe -&gt; ../../../../../bin/x86_=
64-poky-linux/x86_64-poky-linux-ld.exe<o:p></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 64 Aug 18 12:05 strip.exe -&gt; ../../../../../bin/x86_64=
-poky-linux/x86_64-poky-linux-strip.exe<o:p></o:p></p>
</div>
</body>
</html>

--_000_B00C8E670A91FC4CABB6EF6FE24FF0C81A9C660CSHSMSX103ccrcor_--
