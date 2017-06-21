Return-Path: <chandrasekhar@evolute.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23736E00BC4; Tue, 20 Jun 2017 21:56:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [202.137.236.177 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 402 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 Jun 2017 21:56:36 PDT
Received: from rediffmail.com (pro236-177.mxout.rediffmailpro.com
	[202.137.236.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AD2AE00BAA
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 21:56:36 -0700 (PDT)
X-REDIFF-Delivered-Remotely-To: yocto@yoctoproject.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rediffmailpro.com;
	s=epro; t=1498020591;
	bh=pojAr/14Sk+g2jmAcJDfQ2NiSDBG0OmUkQoJv2Pc7Kc=;
	h=MIME-Version:From:Date:Message-ID:Subject:To;
	b=mhIPT3+84ohC10a/e+mjFPvRnIEy+yblJjO72edljSOZv6e4g2VqmFjEdPJSnyUqs
	6yVAtp97y3hOB2/yVCCLNQYz7N9/nEH4v+WyzYEzA8RZh6kYA5Qz+w1XUM6y3Os/cK
	3JXvxSuGf5AeJTbQ/nBvzZaeC9orTd9We+D7ORP0=
Received: (qmail 30456 invoked from network); 21 Jun 2017 04:49:51 -0000
x-m-msg: asd54ad564ad7aa6sd5as6d5; a6da7d6asas6dasd77; 5dad65ad5sd;
X-OUT-VDRT-SpamState: 0\LEGIT
X-OUT-VDRT-SpamScore: -100
X-OUT-VDRT-SpamCause: gggruggvucftvghtrhhoucdtuddrfeeljedrkeelgdelvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfhfjgfufffkgggtofhtsegrtdhgpedvtdejnecuhfhrohhmpedfvehhrghnughrrghsvghkhhgrrhcuufdfuceotghhrghnughrrghsvghkhhgrrhesvghvohhluhhtvgdrihhnqeenucffohhmrghinhepudejrdgssgdphihotghtohhprhhojhgvtghtrdhorhhgpdiilhhisgdrnhgvthdpshhouhhrtggvfhhorhhgvgdrnhgvthdpghhithhhuhgsrdgtohhmpdhorhgrtghlvgdrtghomhdpghhnuhdrohhrghdpfhhrvggvshgtrghlvgdrtghomhdpghhnrgdrohhrghdpghhoohhglhgvtghouggvrdgtohhmnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhht
X-Dedup-Identifier: 1498020591_30131_29802_pro-236-177
Received: from unknown (HELO chandruPC)
	(chandrasekhar@evolute.in@122.166.233.11)
	by mailserver with SMTP; 21 Jun 2017 04:49:46 -0000
From: "Chandrasekhar S" <chandrasekhar@evolute.in>
To: "'Charmi Suchak'" <charmi.suchak@volansystech.com>,
	<yocto@yoctoproject.org>
References: <CAAGWnH2PSjSAVwF4EeREG482T-fU136VSdPjeNP5j-g01zZdkQ@mail.gmail.com>
In-Reply-To: <CAAGWnH2PSjSAVwF4EeREG482T-fU136VSdPjeNP5j-g01zZdkQ@mail.gmail.com>
Date: Wed, 21 Jun 2017 10:19:39 +0530
Message-ID: <009701d2ea49$ce176e80$6a464b80$@evolute.in>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
thread-index: AQIrEzqxI+MKQWnZymNcXYTEO2lIeKF+bPtQ
X-Mailman-Approved-At: Mon, 26 Jun 2017 06:38:35 -0700
Subject: Re: Errors while building imx6qsabresd using fsl-community-bsp	repo
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
X-List-Received-Date: Wed, 21 Jun 2017 04:56:42 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0098_01D2EA77.E7D5C500"
Content-Language: en-us

------=_NextPart_000_0098_01D2EA77.E7D5C500
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Check for proper internet connection and speed.=20

=20

From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Charmi Suchak
Sent: Tuesday, June 20, 2017 4:21 PM
To: yocto@yoctoproject.org
Subject: [yocto] Errors while building imx6qsabresd using =
fsl-community-bsp repo

=20

Hi,

I am new to yocto training and I am trying to build a linux for imx =
series target from NXP. I got the bsp layer along with poky using the =
following:

repo init -u https://github.com/Freescale/fsl-community-bsp-platform -b =
daisy
repo sync

Now when I try to build core-image-minimal I get the following errors:

Parsing recipes: 100% =
|########################################################################=
################################| Time: 00:01:23
Parsing of 1398 .bb files complete (0 cached, 1398 parsed). 1826 =
targets, 101 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.22.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-14.04"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "imx6qsabresd"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.6.3"
TUNE_FEATURES     =3D "armv7a vfp neon callconvention-hard cortexa9"
TARGET_FPU        =3D "vfp-neon"
meta             =20
meta-yocto        =3D =
"(nobranch):39ec0738d4bdc566eca2724dc35c557955042242"
meta-oe           =3D =
"(nobranch):d3d14d3fcca7fcde362cf0b31411dc4eea6d20aa"
meta-fsl-arm      =3D =
"(nobranch):0c4de80867c3ab4e9682dd7802d3fd907d1e1a23"
meta-fsl-arm-extra =3D =
"(nobranch):c95f3f8b5b347f1b3e77d2d11063207ddb7dc5ec"
meta-fsl-demos    =3D =
"(nobranch):f141c7d1158b8addbd6f1ed047a1b47c2ed85f8f"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: Checksum failure encountered with download of =
http://downloads.yoctoproject.org/releases/gnu-config/gnu-config-20120814=
.tar.bz2 - will attempt other sources if available
WARNING: Renaming =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/gnu-config-20120814.tar.bz2 to =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/gnu-config-20120814.tar.bz2_bad-checksum_550a1f90200546416f8d12b878edfb=
50
WARNING: Checksum failure encountered with download of =
http://download.savannah.gnu.org/releases/quilt/quilt-0.61.tar.gz - will =
attempt other sources if available
WARNING: Renaming =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/quilt-0.61.tar.gz to =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/quilt-0.61.tar.gz_bad-checksum_edff525cc95ce8932e66c2e2bfeabdbf
WARNING: Checksum failure encountered with download of =
ftp://ftp.gnu.org/gnu/automake/automake-1.14.tar.gz - will attempt other =
sources if available
WARNING: Renaming =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/automake-1.14.tar.gz to =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/automake-1.14.tar.gz_bad-checksum_1ada9887dbde94d6fbda52bd91543738
WARNING: Checksum failure encountered with download of =
ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz - will attempt other =
sources if available
WARNING: Renaming =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/libtool-2.4.2.tar.gz to =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/libtool-2.4.2.tar.gz_bad-checksum_9546fcbc4c15aada3464891bfe3f484b
WARNING: Failed to fetch URL =
http://download.gna.org/cryptodev-linux/cryptodev-linux-1.6.tar.gz, =
attempting MIRRORS if available
WARNING: Failed to fetch URL =
http://gnome-build-stage-1.googlecode.com/files/uuid-1.6.2.tar.gz, =
attempting MIRRORS if available
WARNING: Checksum failure encountered with download of =
http://download.oracle.com/berkeley-db/db-5.3.21.tar.gz - will attempt =
other sources if available
WARNING: Renaming =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/db-5.3.21.tar.gz to =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/db-5.3.21.tar.gz_bad-checksum_49429d4ac8880348db65209c82fd2549
WARNING: Failed to fetch URL http://zlib.net/pigz/pigz-2.3.1.tar.gz, =
attempting MIRRORS if available
WARNING: Failed to fetch URL =
http://downloads.sourceforge.net/libusb/libusb-1.0.9.tar.bz2, attempting =
MIRRORS if available
WARNING: Failed to fetch URL =
git://git.freescale.com/imx/linux-2.6-imx.git;branch=3Dimx_3.10.17_1.0.1_=
ga =
<http://git.freescale.com/imx/linux-2.6-imx.git;branch=3Dimx_3.10.17_1.0.=
1_ga> , attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
fatal: Not a git repository (or any of the parent directories): .git

ERROR: Function failed: Fetcher failure for URL: =
'git://git.freescale.com/imx/linux-2.6-imx.git;branch=3Dimx_3.10.17_1.0.1=
_ga =
<http://git.freescale.com/imx/linux-2.6-imx.git;branch=3Dimx_3.10.17_1.0.=
1_ga> '. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/build/tm=
p/work/imx6qsabresd-poky-linux-gnueabi/linux-imx/3.10.17-r0/temp/log.do_f=
etch.17316
ERROR: Task 70 =
(/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/sources=
/meta-fsl-arm/recipes-kernel/linux/linux-imx_3.10.17.bb =
<http://linux-imx_3.10.17.bb> , do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 624 tasks of which 13 didn't need to be =
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/sources/=
meta-fsl-arm/recipes-kernel/linux/linux-imx_3.10.17.bb =
<http://linux-imx_3.10.17.bb> , do_fetch
Summary: There were 15 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.



=20

Can anyone please help me resolve this?

--=20


Regards

Charmi Suchak

Associate Engineer

  =
<https://mailfoogae.appspot.com/t?sender=3DaYW5raXQuZ3VwdGFAdm9sYW5zeXN0Z=
WNoLmNvbQ%3D%3D&type=3Dzerocontent&guid=3D1118fde9-681a-416b-943d-cf03f76=
14c79> =E1=90=A7

  =
<https://mailfoogae.appspot.com/t?sender=3DaYXNoaXNoLmFncmF2YWxAdm9sYW5ze=
XN0ZWNoLmNvbQ%3D%3D&type=3Dzerocontent&guid=3Daed9b798-700c-4d52-93bc-d92=
be133ec96> =E1=90=A7


------=_NextPart_000_0098_01D2EA77.E7D5C500
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><!--[if =
!mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Gadugi;
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Check for proper internet connection and speed. =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On Behalf Of </b>Charmi Suchak<br><b>Sent:</b> Tuesday, June 20, 2017 =
4:21 PM<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</b> [yocto] =
Errors while building imx6qsabresd using fsl-community-bsp =
repo<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><div><p =
class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>Hi,<o:p></o:p></p></div><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'>I am new to yocto =
training and I am trying to build a linux for imx series target from =
NXP. I got the bsp layer along with poky using the =
following:<br><br>repo init -u <a =
href=3D"https://github.com/Freescale/fsl-community-bsp-platform">https://=
github.com/Freescale/fsl-community-bsp-platform</a> -b daisy<br>repo =
sync<o:p></o:p></p></div><p class=3DMsoNormal>Now when I try to build =
core-image-minimal I get the following errors:<br><br>Parsing recipes: =
100% =
|########################################################################=
################################| Time: 00:01:23<br>Parsing of 1398 .bb =
files complete (0 cached, 1398 parsed). 1826 targets, 101 skipped, 0 =
masked, 0 errors.<br>NOTE: Resolving any missing task queue =
dependencies<br><br>Build =
Configuration:<br>BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D =
&quot;1.22.0&quot;<br>BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING&nbsp;&nbsp; =3D =
&quot;Ubuntu-14.04&quot;<br>TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; =3D =
&quot;arm-poky-linux-gnueabi&quot;<br>MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;imx6qsabresd&quot;<br>DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;poky&quot;<br>DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D =
&quot;1.6.3&quot;<br>TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;armv7a vfp neon callconvention-hard =
cortexa9&quot;<br>TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D =
&quot;vfp-neon&quot;<br>meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
<br>meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;(nobranch):39ec0738d4bdc566eca2724dc35c557955042242&quot;<br>meta-o=
e&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;(nobranch):d3d14d3fcca7fcde362cf0b31411dc4eea6d20aa&quot;<br>meta-f=
sl-arm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;(nobranch):0c4de80867c3ab4e9682dd7802d3fd907d1e1a23&quot;<br>meta-f=
sl-arm-extra =3D =
&quot;(nobranch):c95f3f8b5b347f1b3e77d2d11063207ddb7dc5ec&quot;<br>meta-f=
sl-demos&nbsp;&nbsp;&nbsp; =3D =
&quot;(nobranch):f141c7d1158b8addbd6f1ed047a1b47c2ed85f8f&quot;<br><br>NO=
TE: Preparing runqueue<br>NOTE: Executing SetScene Tasks<br>NOTE: =
Executing RunQueue Tasks<br>WARNING: Checksum failure encountered with =
download of <a =
href=3D"http://downloads.yoctoproject.org/releases/gnu-config/gnu-config-=
20120814.tar.bz2">http://downloads.yoctoproject.org/releases/gnu-config/g=
nu-config-20120814.tar.bz2</a> - will attempt other sources if =
available<br>WARNING: Renaming =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/gnu-config-20120814.tar.bz2 to =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/gnu-config-20120814.tar.bz2_bad-checksum_550a1f90200546416f8d12b878edfb=
50<br>WARNING: Checksum failure encountered with download of <a =
href=3D"http://download.savannah.gnu.org/releases/quilt/quilt-0.61.tar.gz=
">http://download.savannah.gnu.org/releases/quilt/quilt-0.61.tar.gz</a> =
- will attempt other sources if available<br>WARNING: Renaming =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/quilt-0.61.tar.gz to =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/quilt-0.61.tar.gz_bad-checksum_edff525cc95ce8932e66c2e2bfeabdbf<br>WARN=
ING: Checksum failure encountered with download of <a =
href=3D"ftp://ftp.gnu.org/gnu/automake/automake-1.14.tar.gz">ftp://ftp.gn=
u.org/gnu/automake/automake-1.14.tar.gz</a> - will attempt other sources =
if available<br>WARNING: Renaming =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/automake-1.14.tar.gz to =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/automake-1.14.tar.gz_bad-checksum_1ada9887dbde94d6fbda52bd91543738<br>W=
ARNING: Checksum failure encountered with download of <a =
href=3D"ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz">ftp://ftp.gnu=
.org/gnu/libtool/libtool-2.4.2.tar.gz</a> - will attempt other sources =
if available<br>WARNING: Renaming =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/libtool-2.4.2.tar.gz to =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/libtool-2.4.2.tar.gz_bad-checksum_9546fcbc4c15aada3464891bfe3f484b<br>W=
ARNING: Failed to fetch URL <a =
href=3D"http://download.gna.org/cryptodev-linux/cryptodev-linux-1.6.tar.g=
z">http://download.gna.org/cryptodev-linux/cryptodev-linux-1.6.tar.gz</a>=
, attempting MIRRORS if available<br>WARNING: Failed to fetch URL <a =
href=3D"http://gnome-build-stage-1.googlecode.com/files/uuid-1.6.2.tar.gz=
">http://gnome-build-stage-1.googlecode.com/files/uuid-1.6.2.tar.gz</a>, =
attempting MIRRORS if available<br>WARNING: Checksum failure encountered =
with download of <a =
href=3D"http://download.oracle.com/berkeley-db/db-5.3.21.tar.gz">http://d=
ownload.oracle.com/berkeley-db/db-5.3.21.tar.gz</a> - will attempt other =
sources if available<br>WARNING: Renaming =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/db-5.3.21.tar.gz to =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/download=
s/db-5.3.21.tar.gz_bad-checksum_49429d4ac8880348db65209c82fd2549<br>WARNI=
NG: Failed to fetch URL <a =
href=3D"http://zlib.net/pigz/pigz-2.3.1.tar.gz">http://zlib.net/pigz/pigz=
-2.3.1.tar.gz</a>, attempting MIRRORS if available<br>WARNING: Failed to =
fetch URL <a =
href=3D"http://downloads.sourceforge.net/libusb/libusb-1.0.9.tar.bz2">htt=
p://downloads.sourceforge.net/libusb/libusb-1.0.9.tar.bz2</a>, =
attempting MIRRORS if available<br>WARNING: Failed to fetch URL git://<a =
href=3D"http://git.freescale.com/imx/linux-2.6-imx.git;branch=3Dimx_3.10.=
17_1.0.1_ga">git.freescale.com/imx/linux-2.6-imx.git;branch=3Dimx_3.10.17=
_1.0.1_ga</a>, attempting MIRRORS if available<br><b>ERROR: Fetcher =
failure: Fetch command failed with exit code 128, output:<br>fatal: Not =
a git repository (or any of the parent directories): =
.git<br></b><br><b>ERROR: Function failed: Fetcher failure for URL: =
'git://<a =
href=3D"http://git.freescale.com/imx/linux-2.6-imx.git;branch=3Dimx_3.10.=
17_1.0.1_ga">git.freescale.com/imx/linux-2.6-imx.git;branch=3Dimx_3.10.17=
_1.0.1_ga</a>'. Unable to fetch URL from any source.<br>ERROR: Logfile =
of failure stored in: =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/build/tm=
p/work/imx6qsabresd-poky-linux-gnueabi/linux-imx/3.10.17-r0/temp/log.do_f=
etch.17316<br>ERROR: Task 70 =
(/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/sources=
/meta-fsl-arm/recipes-kernel/linux/<a =
href=3D"http://linux-imx_3.10.17.bb">linux-imx_3.10.17.bb</a>, do_fetch) =
failed with exit code '1'</b><br>NOTE: Tasks Summary: Attempted 624 =
tasks of which 13 didn't need to be rerun and 1 failed.<br>Waiting for 0 =
running tasks to finish:<br><br>Summary: 1 task failed:<br>&nbsp; =
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/sources/=
meta-fsl-arm/recipes-kernel/linux/<a =
href=3D"http://linux-imx_3.10.17.bb">linux-imx_3.10.17.bb</a>, =
do_fetch<br>Summary: There were 15 WARNING messages shown.<br>Summary: =
There were 2 ERROR messages shown, returning a non-zero exit =
code.<br><br clear=3Dall><o:p></o:p></p><div><div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Can anyone please help me resolve =
this?<o:p></o:p></p></div><div><p class=3DMsoNormal>-- =
<o:p></o:p></p><div><div><div><div><div><div><div><div><div><div><div><di=
v><p class=3DMsoNormal><span =
style=3D'font-family:"Verdana",sans-serif;color:#0B5394'><br></span><span=
 =
style=3D'font-family:"Verdana",sans-serif;color:#3D85C6'>Regards</span><s=
pan style=3D'color:#888888'><o:p></o:p></span></p></div><div><div><p =
class=3DMsoNormal style=3D'background:#FEFEFE'><b><span =
style=3D'font-size:10.5pt;font-family:"Arial",sans-serif;color:#646464'>C=
harmi Suchak</span></b><span =
style=3D'font-size:10.5pt;color:#646464'><o:p></o:p></span></p></div><div=
><p class=3DMsoNormal style=3D'background:#FEFEFE'><b><span =
style=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:#6FA8DC'>A=
ssociate Engineer</span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span style=3D'color:#888888'><img border=3D0 =
id=3D"_x0000_i1025" =
src=3D"https://mailfoogae.appspot.com/t?sender=3DaYW5raXQuZ3VwdGFAdm9sYW5=
zeXN0ZWNoLmNvbQ%3D%3D&amp;type=3Dzerocontent&amp;guid=3D1118fde9-681a-416=
b-943d-cf03f7614c79"></span><span =
style=3D'font-size:7.5pt;font-family:"Gadugi",sans-serif;color:white'>=E1=
=90=A7</span><span =
style=3D'color:#888888'><o:p></o:p></span></p></div></div><div><p =
class=3DMsoNormal><span style=3D'color:#888888'><img border=3D0 =
id=3D"_x0000_i1026" =
src=3D"https://mailfoogae.appspot.com/t?sender=3DaYXNoaXNoLmFncmF2YWxAdm9=
sYW5zeXN0ZWNoLmNvbQ%3D%3D&amp;type=3Dzerocontent&amp;guid=3Daed9b798-700c=
-4d52-93bc-d92be133ec96"></span><span =
style=3D'font-size:7.5pt;font-family:"Gadugi",sans-serif;color:white'>=E1=
=90=A7</span><span =
style=3D'color:#888888'><o:p></o:p></span></p></div></div></div></div></d=
iv></div></div></div></div></div></div></div></div></div></div></div></di=
v></body></html>

------=_NextPart_000_0098_01D2EA77.E7D5C500--
