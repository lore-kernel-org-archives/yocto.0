Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D13ADE0027E
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 12:20:24 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Sep 2012 12:20:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,496,1344236400"; 
	d="scan'208,217";a="227783812"
Received: from fmsmsx104.amr.corp.intel.com ([10.19.9.35])
	by fmsmga002.fm.intel.com with ESMTP; 27 Sep 2012 12:20:17 -0700
Received: from fmsmsx151.amr.corp.intel.com ([169.254.6.213]) by
	FMSMSX104.amr.corp.intel.com ([169.254.4.231]) with mapi id
	14.01.0355.002; Thu, 27 Sep 2012 12:20:14 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: build failure on current
Thread-Index: Ac2c5R3s2OGUAp3HSSaKhrFIr6SYHQ==
Date: Thu, 27 Sep 2012 19:20:13 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: build failure on current
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
X-List-Received-Date: Thu, 27 Sep 2012 19:20:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9FMSMSX151amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9FMSMSX151amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am running through the build example for the QS and  hit a failure when t=
rying to access git://git.yoctoproject.org/libowl;protocol=3Dgit<http://git=
.yoctoproject.org/libowl;protocol=3Dgit>.  I started with the tarball here:=
  http://autobuilder.yoctoproject.org/nightly/CURRENT

Full transcript.

srifenbark@scottrif-desktop:~$ cd poky-0b09e50810162a07ef0aecee91ee32b4a363=
34a3
srifenbark@scottrif-desktop:~/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3=
$ source oe-init-build-env
You had no conf/local.conf file. This configuration file has therefore been
created for you with some default values. You may wish to edit it to use a
different MACHINE (target hardware) or enable parallel build options to tak=
e
advantage of multiple cores for example. See the file for more information =
as
common configuration options are commented.

The Yocto Project has extensive documentation about OE including a referenc=
e manual
which can be found at:
    http://yoctoproject.org/documentation

For more information about OpenEmbedded see their website:
    http://www.openembedded.org/

You had no conf/bblayers.conf file. The configuration file has been created=
 for
you with some default values. To add additional metadata layers into your
configuration please add entries to this file.

The Yocto Project has extensive documentation about OE including a referenc=
e manual
which can be found at:
    http://yoctoproject.org/documentation

For more information about OpenEmbedded see their website:
    http://www.openembedded.org/



### Shell environment set up for builds. ###

You can now run 'bitbake <target>'

Common targets are:
    core-image-minimal
    core-image-sato
    meta-toolchain
    meta-toolchain-sdk
    adt-installer
    meta-ide-support

You can also run generated qemu images with a command like 'runqemu qemux86=
'

srifenbark@scottrif-desktop:~/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3=
/build$ bitbake -k core-image-sato
Pseudo is not present but is required, building this first before the main =
build
Parsing recipes: 100% |#########################################| Time: 00:=
00:48
Parsing of 825 .bb files complete (0 cached, 825 parsed). 1129 targets, 22 =
skipped, 0 masked, 0 errors.

Build Configuration:
BB_VERSION        =3D "1.15.3"
TARGET_ARCH       =3D "i586"
TARGET_OS         =3D "linux"
MACHINE           =3D "qemux86"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.2+snapshot-20120927"
TUNE_FEATURES     =3D "m32 i586"
TARGET_FPU        =3D ""
meta
meta-yocto
meta-yocto-bsp    =3D "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 63 tasks of which 0 didn't need to be rerun =
and all succeeded.
Loading cache: 100% |###########################################| ETA:  00:=
00:00
Loaded 1130 entries from dependency cache.

Build Configuration:
BB_VERSION        =3D "1.15.3"
TARGET_ARCH       =3D "i586"
TARGET_OS         =3D "linux"
MACHINE           =3D "qemux86"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.2+snapshot-20120927"
TUNE_FEATURES     =3D "m32 i586"
TARGET_FPU        =3D ""
meta
meta-yocto
meta-yocto-bsp    =3D "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: validating kernel configuration

WARNING: The recipe is trying to install files into a shared area when thos=
e files already exist. Those files are:
   /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/build/tmp/s=
ysroots/x86_64-linux/usr/share/sgml/openjade-1.3.2/catalog
WARNING: The recipe is trying to install files into a shared area when thos=
e files already exist. Those files are:
   /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/build/tmp/s=
ysroots/qemux86/usr/include/python2.7/pyconfig.h
   /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/build/tmp/s=
ysroots/qemux86/usr/lib/libpython2.7.so<http://libpython2.7.so>
   /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/build/tmp/s=
ysroots/qemux86/usr/lib/libpython2.7.so.1.0
   /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/build/tmp/s=
ysroots/qemux86/usr/lib/python2.7/config/Makefile
WARNING: Failed to fetch URL git://git.yoctoproject.org/libowl;protocol=3Dg=
it<http://git.yoctoproject.org/libowl;protocol=3Dgit>, attempting MIRRORS i=
f available
ERROR: Fetcher failure: Fetch command failed with exit code 2, output:

gzip: stdin: invalid compressed data--crc error

gzip: stdin: invalid compressed data--length error
tar: Skipping to next header
tar: Child returned status 1
tar: Error is not recoverable: exiting now

ERROR: Function failed: Fetcher failure for URL: 'git://git.yoctoproject.or=
g/libowl;protocol=3Dgit<http://git.yoctoproject.org/libowl;protocol=3Dgit>'=
. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/scottrif/poky-0b09e50810162a07ef=
0aecee91ee32b4a36334a3/build/tmp/work/i586-poky-linux/libowl-0.1+git1+6ebc8=
ac8f8575278dd40a535cadefa26374e44b1-r0/temp/log.do_fetch.1973
ERROR: Task 2306 (/home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a3633=
4a3/meta/recipes-sato/libowl/libowl_git.bb<http://libowl_git.bb>, do_fetch)=
 failed with exit code '1'
NOTE: Tasks Summary: Attempted 5560 tasks of which 339 didn't need to be re=
run and 1 failed.

Summary: 1 task failed:
  /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/meta/recipes=
-sato/libowl/libowl_git.bb<http://libowl_git.bb>, do_fetch
Summary: There were 3 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
srifenbark@scottrif-desktop:~/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3=
/build$


Scott Rifenbark
Intel Corporation
Yocto Project Documentation
503.712.2702
503.341.0418 (cell)


--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9FMSMSX151amrcor_
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
<p class=3D"MsoNormal">I am running through the build example for the QS an=
d&nbsp; hit a failure when trying to access git://<a href=3D"http://git.yoc=
toproject.org/libowl;protocol=3Dgit">git.yoctoproject.org/libowl;protocol=
=3Dgit</a>.&nbsp; I started with the tarball here: &nbsp;<a href=3D"http://=
autobuilder.yoctoproject.org/nightly/CURRENT">http://autobuilder.yoctoproje=
ct.org/nightly/CURRENT</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full transcript.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">srife=
nbark@scottrif-desktop:~$ cd poky-0b09e50810162a07ef0aecee91ee32b4a36334a3<=
/span><br>
srifenbark@scottrif-desktop:~/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3=
$ source oe-init-build-env<br>
You had no conf/local.conf file. This configuration file has therefore been=
<br>
created for you with some default values. You may wish to edit it to use a =
<br>
different MACHINE (target hardware) or enable parallel build options to tak=
e <br>
advantage of multiple cores for example. See the file for more information =
as <br>
common configuration options are commented.<br>
<br>
The Yocto Project has extensive documentation about OE including a referenc=
e manual<br>
which can be found at:<br>
&nbsp;&nbsp;&nbsp; <a href=3D"http://yoctoproject.org/documentation">http:/=
/yoctoproject.org/documentation</a><br>
<br>
For more information about OpenEmbedded see their website:<br>
&nbsp;&nbsp;&nbsp; <a href=3D"http://www.openembedded.org/">http://www.open=
embedded.org/</a><br>
<br>
You had no conf/bblayers.conf file. The configuration file has been created=
 for<br>
you with some default values. To add additional metadata layers into your<b=
r>
configuration please add entries to this file.<br>
<br>
The Yocto Project has extensive documentation about OE including a referenc=
e manual<br>
which can be found at:<br>
&nbsp;&nbsp;&nbsp; <a href=3D"http://yoctoproject.org/documentation">http:/=
/yoctoproject.org/documentation</a><br>
<br>
For more information about OpenEmbedded see their website:<br>
&nbsp;&nbsp;&nbsp; <a href=3D"http://www.openembedded.org/">http://www.open=
embedded.org/</a><br>
<br>
<br>
<br>
### Shell environment set up for builds. ###<br>
<br>
You can now run 'bitbake &lt;target&gt;'<br>
<br>
Common targets are:<br>
&nbsp;&nbsp;&nbsp; core-image-minimal<br>
&nbsp;&nbsp;&nbsp; core-image-sato<br>
&nbsp;&nbsp;&nbsp; meta-toolchain<br>
&nbsp;&nbsp;&nbsp; meta-toolchain-sdk<br>
&nbsp;&nbsp;&nbsp; adt-installer<br>
&nbsp;&nbsp;&nbsp; meta-ide-support<br>
<br>
You can also run generated qemu images with a command like 'runqemu qemux86=
'<br>
<br>
srifenbark@scottrif-desktop:~/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3=
/build$ bitbake -k core-image-sato<br>
Pseudo is not present but is required, building this first before the main =
build<br>
Parsing recipes: 100% |#########################################| Time: 00:=
00:48<br>
Parsing of 825 .bb files complete (0 cached, 825 parsed). 1129 targets, 22 =
skipped, 0 masked, 0 errors.<br>
<br>
Build Configuration:<br>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.15.3&quot;=
<br>
TARGET_ARCH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;i586&quot;<br>
TARGET_OS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;linux&q=
uot;<br>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &qu=
ot;qemux86&quot;<br>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;poky&quot;<br>
DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;1.2&#43;snapshot-20120927&quot;<=
br>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m32 i586&quot;<br>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;&quot;<br>
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; <br>
meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&=
quot;<br>
<br>
NOTE: Resolving any missing task queue dependencies<br>
NOTE: Preparing runqueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
NOTE: Tasks Summary: Attempted 63 tasks of which 0 didn't need to be rerun =
and all succeeded.<br>
Loading cache: 100% |###########################################| ETA:&nbsp=
; 00:00:00<br>
Loaded 1130 entries from dependency cache.<br>
<br>
Build Configuration:<br>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.15.3&quot;=
<br>
TARGET_ARCH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;i586&quot;<br>
TARGET_OS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;linux&q=
uot;<br>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &qu=
ot;qemux86&quot;<br>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;poky&quot;<br>
DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;1.2&#43;snapshot-20120927&quot;<=
br>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m32 i586&quot;<br>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;&quot;<br>
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; <br>
meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&=
quot;<br>
<br>
NOTE: Resolving any missing task queue dependencies<br>
NOTE: Preparing runqueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
NOTE: validating kernel configuration<br>
<br>
WARNING: The recipe is trying to install files into a shared area when thos=
e files already exist. Those files are:<br>
&nbsp;&nbsp; /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/b=
uild/tmp/sysroots/x86_64-linux/usr/share/sgml/openjade-1.3.2/catalog<br>
WARNING: The recipe is trying to install files into a shared area when thos=
e files already exist. Those files are:<br>
&nbsp;&nbsp; /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/b=
uild/tmp/sysroots/qemux86/usr/include/python2.7/pyconfig.h<br>
&nbsp;&nbsp; /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/b=
uild/tmp/sysroots/qemux86/usr/lib/<a href=3D"http://libpython2.7.so">libpyt=
hon2.7.so</a><br>
&nbsp;&nbsp; /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/b=
uild/tmp/sysroots/qemux86/usr/lib/libpython2.7.so.1.0<br>
&nbsp;&nbsp; /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/b=
uild/tmp/sysroots/qemux86/usr/lib/python2.7/config/Makefile<br>
WARNING: Failed to fetch URL git://<a href=3D"http://git.yoctoproject.org/l=
ibowl;protocol=3Dgit">git.yoctoproject.org/libowl;protocol=3Dgit</a>, attem=
pting MIRRORS if available<br>
ERROR: Fetcher failure: Fetch command failed with exit code 2, output:<br>
<br>
gzip: stdin: invalid compressed data--crc error<br>
<br>
gzip: stdin: invalid compressed data--length error<br>
tar: Skipping to next header<br>
tar: Child returned status 1<br>
tar: Error is not recoverable: exiting now<br>
<br>
ERROR: Function failed: Fetcher failure for URL: 'git://<a href=3D"http://g=
it.yoctoproject.org/libowl;protocol=3Dgit">git.yoctoproject.org/libowl;prot=
ocol=3Dgit</a>'. Unable to fetch URL from any source.<br>
ERROR: Logfile of failure stored in: /home/scottrif/poky-0b09e50810162a07ef=
0aecee91ee32b4a36334a3/build/tmp/work/i586-poky-linux/libowl-0.1&#43;git1&#=
43;6ebc8ac8f8575278dd40a535cadefa26374e44b1-r0/temp/log.do_fetch.1973<br>
ERROR: Task 2306 (/home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a3633=
4a3/meta/recipes-sato/libowl/<a href=3D"http://libowl_git.bb">libowl_git.bb=
</a>, do_fetch) failed with exit code '1'<br>
NOTE: Tasks Summary: Attempted 5560 tasks of which 339 didn't need to be re=
run and 1 failed.<br>
<br>
Summary: 1 task failed:<br>
&nbsp; /home/scottrif/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3/meta/re=
cipes-sato/libowl/<a href=3D"http://libowl_git.bb">libowl_git.bb</a>, do_fe=
tch<br>
Summary: There were 3 WARNING messages shown.<br>
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.=
<br>
srifenbark@scottrif-desktop:~/poky-0b09e50810162a07ef0aecee91ee32b4a36334a3=
/build$
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:blue">Scott Rifenbark</span></b><=
b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:blue"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue">Intel Corporation</span><span s=
tyle=3D"font-size:7.5pt;font-family:&quot;Times New Roman&quot;,&quot;serif=
&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue">Yocto Project Documentation<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue">503.712.2702</span><span style=
=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&qu=
ot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue">503.341.0418 (cell)</span><span=
 style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;se=
rif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9FMSMSX151amrcor_--
