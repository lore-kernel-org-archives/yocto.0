Return-Path: <david.reyna@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12A2CE00E23; Mon,  5 Mar 2018 21:33:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A7B3E00833
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 21:33:22 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w265XLij005978
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 5 Mar 2018 21:33:21 -0800 (PST)
Received: from ALA-MBC.corp.ad.wrs.com ([169.254.1.89]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0361.001;
	Mon, 5 Mar 2018 21:32:48 -0800
From: "Reyna, David" <david.reyna@windriver.com>
To: Yocto <yocto@yoctoproject.org>, "BURTON, ROSS" <ross.burton@intel.com>
Thread-Topic: Are Windows SDKs (mingw layer) supposed to work?
Thread-Index: AdO1CMCZFATDD4luQxutgHj7mOIsaw==
Date: Tue, 6 Mar 2018 05:32:47 +0000
Message-ID: <5E53D14CE4667A45B9A06760DE5D13D0F11F2DA2@ALA-MBC.corp.ad.wrs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.118.232]
MIME-Version: 1.0
Subject: Are Windows SDKs (mingw layer) supposed to work?
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
X-List-Received-Date: Tue, 06 Mar 2018 05:33:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5E53D14CE4667A45B9A06760DE5D13D0F11F2DA2ALAMBCcorpadwrs_"

--_000_5E53D14CE4667A45B9A06760DE5D13D0F11F2DA2ALAMBCcorpadwrs_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am trying to enable a customer for using YP SDKs on Windows. It apparentl=
y is supposed to work, but I am unable to get past fatal errors.

I have looked for documentation at the YP site and the meta-mingw repo, but=
 to no avail.

1) My project is a simple default "qemux86-64" with YP-2.5 HEAD, with the l=
atest "meta-mingw" layer added and <SDKMACHINE ?=3D "i686-mingw32">.

The SDK builds fine and I get the "*.xz" generated file.

2) However, when I use 7ZIP to extract it on my Windows host (which is reco=
mmended for XY files), I get several fatal issues.

  (a) I get more than a hundred errors "Can not create symbolic link: Acces=
s is denied".

While I do not care about the ones for the bin tools in the sysroot, I do c=
are that most of the cross toolchain EXE files are thusly broken, plus many=
 of the libraries and header files in the sysroot.

Am I missing a step?

If I in fact extract this file on my Linux host, I can directly see that it=
 is full of symlinks! Why are there symlinks in a Windows-specific tarball?

  (b) If I attempt to build a simple C file from the shell in the SDK envir=
onment, I either get a silent failure (for the 32-bit toolchain) or a blata=
nt error as per:

  x86_64-poky-linux-gcc: error: CreateProcess: No such file or directory

I am assuming this error arises from the broken symlinks, specifically all =
those broken files in:

  SDKDIR\sysroots\i686-pokysdk-mingw32\usr\bin\x86_64-poky-linux-gnux32 (al=
l zero length):
03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-addr2line.e=
xe
03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-ar.exe
03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-as.exe
03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-c++.exe
03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-c++filt.exe
03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-cpp.exe
03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-elfedit.exe
03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-g++.exe
03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-gcc-ar.exe
...

  SDKDIR\sysroots\i686-pokysdk-mingw32\usr\libexec\x86_64-poky-linux\gcc\x8=
6_64-poky-linux\7.3.0\*
03/04/2018  08:29 PM                 0 ar.exe
03/04/2018  08:29 PM                 0 as.exe
02/23/2018  03:48 PM        21,962,568 cc1.exe
02/23/2018  03:48 PM        23,256,499 cc1plus.exe
02/23/2018  03:48 PM           812,905 collect2.exe
03/04/2018  08:29 PM                 0 cpp.exe
03/04/2018  08:29 PM                 0 gcc.exe
03/04/2018  08:29 PM                 0 ld.exe
02/23/2018  03:48 PM         1,101,508 lto-wrapper.exe
03/04/2018  08:29 PM                 0 nm.exe
03/04/2018  08:29 PM                 0 objcopy.exe
03/04/2018  08:29 PM                 0 objdump.exe
03/04/2018  08:29 PM                 0 ranlib.exe
03/04/2018  08:29 PM                 0 real-ld.exe
03/04/2018  08:29 PM                 0 strip.exe

3) I have done '-v' and ProcessMonitor tracing, and it all seems to come do=
wn to these broken links.

4) I see that Yang Wang had the same question (below), and I have not seen =
an answer.

Please help,
David Reyna


From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Wang, Yang Y
Sent: Thursday, August 17, 2017 11:41 PM
To: Yocto
Subject: [yocto] toolchain from meta-mingw gets error x86_64-poky-linux-gcc=
: error: CreateProcess: No such file or directory

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

--_000_5E53D14CE4667A45B9A06760DE5D13D0F11F2DA2ALAMBCcorpadwrs_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi all,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I am trying to enable =
a customer for using YP SDKs on Windows. It apparently is supposed to work,=
 but I am unable to get past fatal errors.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I have looked for docu=
mentation at the YP site and the meta-mingw repo, but to no avail.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">1) My project is a sim=
ple default &#8220;qemux86-64&#8221; with YP-2.5 HEAD, with the latest &#82=
20;meta-mingw&#8221; layer added and &lt;SDKMACHINE ?=3D &quot;i686-mingw32=
&quot;&gt;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">The SDK builds fine an=
d I get the &#8220;*.xz&#8221; generated file.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">2) However, when I use=
 7ZIP to extract it on my Windows host (which is recommended for XY files),=
 I get several fatal issues.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; (a) I get more =
than a hundred errors &#8220;Can not create symbolic link: Access is denied=
&#8221;.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">While I do not care ab=
out the ones for the bin tools in the sysroot, I do care that most of the c=
ross toolchain EXE files are thusly broken, plus many of the libraries and =
header files in the sysroot.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Am I missing a step?<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">If I in fact extract t=
his file on my Linux host, I can directly see that it is full of symlinks! =
Why are there symlinks in a Windows-specific tarball?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; (b) If I attemp=
t to build a simple C file from the shell in the SDK environment, I either =
get a silent failure (for the 32-bit toolchain) or a blatant error as per:<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; </span><span st=
yle=3D"font-size:10.0pt;font-family:Consolas;color:#780000;background:silve=
r;mso-highlight:silver">x86_64-poky-linux-gcc: error: CreateProcess: No suc=
h file or directory</span><span style=3D"color:#1F497D"><o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I am assuming this err=
or arises from the broken symlinks, specifically all those broken files in:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; SDKDIR\sysroots=
\i686-pokysdk-mingw32\usr\bin\x86_64-poky-linux-gnux32 (all
</span><span style=3D"color:red">zero </span><span style=3D"color:#1F497D">=
length):<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 x86_64-poky-linux-gnux32-=
addr2line.exe<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 x86_64-poky-linux-gnux32-=
ar.exe<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 x86_64-poky-linux-gnux32-=
as.exe<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 x86_64-poky-linux-gnux32-=
c&#43;&#43;.exe<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 x86_64-poky-linux-gnux32-=
c&#43;&#43;filt.exe<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 x86_64-poky-linux-gnux32-=
cpp.exe<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 x86_64-poky-linux-gnux32-=
elfedit.exe<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 x86_64-poky-linux-gnux32-=
g&#43;&#43;.exe<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;0 x86_64-poky-linux-gnux32-=
gcc-ar.exe<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; SDKDIR\sysroots=
\i686-pokysdk-mingw32\usr\libexec\x86_64-poky-linux\gcc\x86_64-poky-linux\7=
.3.0\*<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 ar.exe<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 as.exe<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#1F4=
97D">02/23/2018&nbsp; 03:48 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 21=
,962,568 cc1.exe<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#1F4=
97D">02/23/2018&nbsp; 03:48 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 23=
,256,499 cc1plus.exe<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#1F4=
97D">02/23/2018&nbsp; 03:48 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; 812,905 collect2.exe<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 cpp.exe<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 gcc.exe<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 ld.exe<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#1F4=
97D">02/23/2018&nbsp; 03:48 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; 1,101,508 lto-wrapper.exe<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 nm.exe<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 objcopy.exe<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 objdump.exe<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 ranlib.exe<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 real-ld.exe<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018&nbsp; 08:29 PM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 strip.exe<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:red"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">3) I have done &#8216;=
&#8211;v&#8217; and ProcessMonitor tracing, and it all seems to come down t=
o these broken links.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">4) I see that Yang Wan=
g had the same question (below), and I have not seen an answer.<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Please help,<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">David Reyna<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Wang, Yang Y<br>
<b>Sent:</b> Thursday, August 17, 2017 11:41 PM<br>
<b>To:</b> Yocto<br>
<b>Subject:</b> [yocto] toolchain from meta-mingw gets error x86_64-poky-li=
nux-gcc: error: CreateProcess: No such file or directory<o:p></o:p></span><=
/p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_5E53D14CE4667A45B9A06760DE5D13D0F11F2DA2ALAMBCcorpadwrs_--
