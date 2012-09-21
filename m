Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 968F5E0027E
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 10:28:40 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Sep 2012 10:28:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,463,1344236400"; 
	d="scan'208,217";a="209793365"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga002.jf.intel.com with ESMTP; 21 Sep 2012 10:28:39 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.60]) with mapi id
	14.01.0355.002; Fri, 21 Sep 2012 10:28:39 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "daniel_norris@selinc.com" <daniel_norris@selinc.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto ADT Build Errors
Thread-Index: AQHNmBwWozKEuoVR00WkirzQDcP1zZeVC8xQ
Date: Fri, 21 Sep 2012 17:28:37 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46AF4F3A@ORSMSX101.amr.corp.intel.com>
References: <OF8C5911CD.67B0A092-ON88257A80.005CAF7D-88257A80.005E5805@selinc.com>
In-Reply-To: <OF8C5911CD.67B0A092-ON88257A80.005CAF7D-88257A80.005E5805@selinc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: Yocto ADT Build Errors
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
X-List-Received-Date: Fri, 21 Sep 2012 17:28:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C46AF4F3AORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C46AF4F3AORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,



Seems you're using eclipse plug-in for 1.2 release , so what is the poky tr=
ee that you're using? 1.2 or 1.2.1 release.  I need to reproduce on my loca=
l system.



So to be precise, what bitbake command you've been running besides "bitbake=
 meta-ide-support" ?



Thanks,

Jessica



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of daniel_norris@selinc.com
Sent: Friday, September 21, 2012 10:10 AM
To: yocto@yoctoproject.org
Subject: [yocto] Yocto ADT Build Errors



Hi,

I've been following the ADT User's Guide and I'm having trouble getting Ecl=
ipse to build the Hello World ANSI C Autotools project. I am using a build-=
system derived toolchain targeting PowerPC.

I am able to invoke QEMU using NFS, but configuring the project gives me th=
is output on the console:

Invoking autogen.sh in build directory: /home/daninorr/workspace/Hello

Command-line environment variables:
         CFLAGS=3D" -g -O0  --sysroot=3D/data/add_ntp/sdk" CXXFLAGS=3D" -g =
-O0  --sysroot=3D/data/add_ntp/sdk" LDFLAGS=3D" --sysroot=3D/data/add_ntp/s=
dk" CPPFLAGS=3D" --sysroot=3D/data/add_ntp/sdk"

sh /home/daninorr/workspace/Hello/autogen.sh --with-libtool-sysroot=3D/data=
/add_ntp/sdk --target=3Dpowerpc-poky-linux --host=3Dpowerpc-poky-linux --bu=
ild=3Dx86_64-linux --with-libtool-sysroot=3D/data/add_ntp/sdk
configure.ac:21: installing './compile'
configure.ac:20: installing './config.guess'
configure.ac:20: installing './config.sub'
configure.ac:16: installing './install-sh'
configure.ac:16: installing './missing'
src/Makefile.am: installing './depcomp'
configure: loading site script /home/daninorr/Projects/poky/meta/site/endia=
n-big
configure: loading site script /home/daninorr/Projects/poky/meta/site/power=
pc-common
configure: loading site script /home/daninorr/Projects/poky/meta/site/commo=
n-linux
configure: loading site script /home/daninorr/Projects/poky/meta/site/commo=
n-glibc
configure: loading site script /home/daninorr/Projects/poky/meta/site/power=
pc32-linux
configure: loading site script /home/daninorr/Projects/poky/meta/site/power=
pc-linux
configure: loading site script /home/daninorr/Projects/poky/meta/site/commo=
n
configure: loading site script /data/add_ntp/tmp/sysroots/qemuppc/usr/share=
/powerpc-poky-linux_config_site.d/ncurses_config
configure: loading site script /data/add_ntp/tmp/sysroots/qemuppc/usr/share=
/powerpc-poky-linux_config_site.d/eglibc_config
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for powerpc-poky-linux-strip... powerpc-poky-linux-strip
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking build system type... x86_64-pc-linux-gnu
checking host system type... powerpc-poky-linux-gnu
checking how to print strings... printf
checking for style of include used by make... GNU
checking for powerpc-poky-linux-gcc... powerpc-poky-linux-gcc  -m32 -mhard-=
float  -mcpu=3D603e --sysroot=3D/data/add_ntp/tmp/sysroots/qemuppc
checking whether the C compiler works... no
configure: error: in `/home/daninorr/workspace/Hello':
configure: error: in `/home/daninorr/workspace/Hello':
configure: error: C compiler cannot create executables
configure: error: C compiler cannot create executables
See `config.log' for more details

Configuration failed with error

The /data/add_ntp/sdk folder is the extracted sysroot .

However, I can build the project from the terminal if I source the generate=
d environment-setup-ppc603e-poky-linux file, cd into the workspace and run =
sh autogen.sh $CONFIGURATION_FLAGS; make.

config.log has the following errors:
root=3D/data/add_ntp/tmp/sysroots/qemuppc -V >&5
powerpc-poky-linux-gcc: error: unrecognized command line option '-V'
powerpc-poky-linux-gcc: fatal error: no input files
configure:3166: powerpc-poky-linux-gcc  -m32 -mhard-float  -mcpu=3D603e --s=
ys     root=3D/data/add_ntp/tmp/sysroots/qemuppc -qversion >&5
powerpc-poky-linux-gcc: error: unrecognized command line option '-qversion'
powerpc-poky-linux-gcc: fatal error: no input files
compilation terminated.

Some information about my system:
OS: Ubuntu 12.04 64-bit
Eclipse: 3.7.2
Yocto ADT Plugin: 1.2.0.201206291757
Autotools Plugin:  3.0.1.201202152032

I followed the ADT User's Guide instructions almost verbatim, so I'm not su=
re if I did something wrong or not.

Thanks!
-------------------------------------------------------
Daniel Norris


--_000_C6510F6D410BB64A8C15398EDC6B847C46AF4F3AORSMSX101amrcor_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Daniel,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Seems you&#8217;re using =
eclipse plug-in for 1.2 release , so what is the poky tree that you&#8217;r=
e using? 1.2 or 1.2.1 release.&nbsp; I need to reproduce on my local system=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">So to be precise, what bi=
tbake command you&#8217;ve been running besides &#8220;bitbake meta-ide-sup=
port&#8221; ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>daniel_norris@selinc.com<br>
<b>Sent:</b> Friday, September 21, 2012 10:10 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Yocto ADT Build Errors<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Hi,</span>
<br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">I've been following the ADT User's Guide and I'm having trouble =
getting Eclipse to build the Hello World ANSI C Autotools project. I am usi=
ng a build-system derived toolchain targeting PowerPC.
 &nbsp;</span> <br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">I am able to invoke QEMU using NFS, but configuring the project =
gives me this output on the console:</span>
<br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">Invoking autogen.sh in build directory: /home/daninorr/workspace=
/Hello</span>
<br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">Command-line environment variables:</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CFLAGS=3D&quot; -g -O0 &nbsp;-=
-sysroot=3D/data/add_ntp/sdk&quot; CXXFLAGS=3D&quot; -g -O0 &nbsp;--sysroot=
=3D/data/add_ntp/sdk&quot; LDFLAGS=3D&quot; --sysroot=3D/data/add_ntp/sdk&q=
uot; CPPFLAGS=3D&quot; --sysroot=3D/data/add_ntp/sdk&quot;</span>
<br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">sh /home/daninorr/workspace/Hello/autogen.sh --with-libtool-sysr=
oot=3D/data/add_ntp/sdk --target=3Dpowerpc-poky-linux --host=3Dpowerpc-poky=
-linux --build=3Dx86_64-linux --with-libtool-sysroot=3D/data/add_ntp/sdk
</span><br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure.ac:21: installing './compile'</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure.ac:20: installing './config.guess'</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure.ac:20: installing './config.sub'</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure.ac:16: installing './install-sh'</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure.ac:16: installing './missing'</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">src/Makefile.am: installing './depcomp'</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure: loading site script /home/daninorr/Projects/poky/meta=
/site/endian-big</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure: loading site script /home/daninorr/Projects/poky/meta=
/site/powerpc-common</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure: loading site script /home/daninorr/Projects/poky/meta=
/site/common-linux</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure: loading site script /home/daninorr/Projects/poky/meta=
/site/common-glibc</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure: loading site script /home/daninorr/Projects/poky/meta=
/site/powerpc32-linux</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure: loading site script /home/daninorr/Projects/poky/meta=
/site/powerpc-linux</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure: loading site script /home/daninorr/Projects/poky/meta=
/site/common</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure: loading site script /data/add_ntp/tmp/sysroots/qemupp=
c/usr/share/powerpc-poky-linux_config_site.d/ncurses_config</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure: loading site script /data/add_ntp/tmp/sysroots/qemupp=
c/usr/share/powerpc-poky-linux_config_site.d/eglibc_config</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">checking for a BSD-compatible install... /usr/bin/install -c</sp=
an>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">checking whether build environment is sane... yes</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">checking for powerpc-poky-linux-strip... powerpc-poky-linux-stri=
p</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">checking for a thread-safe mkdir -p... /bin/mkdir -p</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">checking for gawk... gawk</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">checking whether make sets $(MAKE)... yes</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">checking build system type... x86_64-pc-linux-gnu</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">checking host system type... powerpc-poky-linux-gnu</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">checking how to print strings... printf</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">checking for style of include used by make... GNU</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">checking for powerpc-poky-linux-gcc... powerpc-poky-linux-gcc &n=
bsp;-m32 -mhard-float &nbsp;-mcpu=3D603e --sysroot=3D/data/add_ntp/tmp/sysr=
oots/qemuppc</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">checking whether the C compiler works... no</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure: error: in `/home/daninorr/workspace/Hello':</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure: error: in `/home/daninorr/workspace/Hello':</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure: error: C compiler cannot create executables</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure: error: C compiler cannot create executables</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">See `config.log' for more details</span>
<br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">Configuration failed with error</span>
<br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">The /data/add_ntp/sdk folder is the extracted sysroot .</span>
<br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">However, I can build the project from the terminal if I source t=
he generated environment-setup-ppc603e-poky-linux file, cd into the workspa=
ce and run sh autogen.sh $CONFIGURATION_FLAGS; make.</span>
<br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">config.log has the following errors:</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">root=3D/data/add_ntp/tmp/sysroots/qemuppc -V &gt;&amp;5</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">powerpc-poky-linux-gcc: error: unrecognized command line option =
'-V'</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">powerpc-poky-linux-gcc: fatal error: no input files</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">configure:3166: powerpc-poky-linux-gcc &nbsp;-m32 -mhard-float &=
nbsp;-mcpu=3D603e --sys &nbsp; &nbsp; root=3D/data/add_ntp/tmp/sysroots/qem=
uppc -qversion &gt;&amp;5</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">powerpc-poky-linux-gcc: error: unrecognized command line option =
'-qversion'</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">powerpc-poky-linux-gcc: fatal error: no input files</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">compilation terminated.</span>
<br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">Some information about my system:</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">OS: Ubuntu 12.04 64-bit</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">Eclipse: 3.7.2</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">Yocto ADT Plugin: 1.2.0.201206291757</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">Autotools Plugin: &nbsp;3.0.1.201202152032</span>
<br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">I followed the ADT User's Guide instructions almost verbatim, so=
 I'm not sure if I did something wrong or not.</span>
<br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">Thanks!</span> <br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">-------------------------------------------------------</span>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">Daniel Norris</span>
<o:p></o:p></p>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C46AF4F3AORSMSX101amrcor_--
