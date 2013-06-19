Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94436E00348;
	Wed, 19 Jun 2013 09:25:19 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Jun 2013 09:25:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,898,1363158000"; 
	d="scan'208,217";a="356156463"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga002.fm.intel.com with ESMTP; 19 Jun 2013 09:25:05 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 19 Jun 2013 09:25:05 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.83]) by
	ORSMSX154.amr.corp.intel.com ([169.254.11.240]) with mapi id
	14.03.0123.003; Wed, 19 Jun 2013 09:25:03 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Thanassis Silis <djnass_18@hotmail.com>, "meta-freescale@yoctoproject.org"
	<meta-freescale@yoctoproject.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] cannot bitbake/build.compile tcf-agent for use with
	fsl-image-gui-sdk
Thread-Index: AQHObCu/F3WNlzN88UGl79O6rIxiOpk9Oj4w
Date: Wed, 19 Jun 2013 16:25:03 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C4628B@ORSMSX103.amr.corp.intel.com>
References: <DUB116-W138390BF0B4871C803B01A5988C0@phx.gbl>
In-Reply-To: <DUB116-W138390BF0B4871C803B01A5988C0@phx.gbl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: cannot bitbake/build.compile tcf-agent for use with fsl-image-gui-sdk
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
X-List-Received-Date: Wed, 19 Jun 2013 16:25:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C73C4628BORSMSX103amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C73C4628BORSMSX103amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Thanassis,



I don't know why tcf-agent  is not included in your sdk image.  But you als=
o can use ssh to create a rse remote connection that allows you to do remot=
e interaction.  When you create remote connection, instead of choosing tcf,=
 use ssh.  You'll need openssh in your target image for this to work.



Cheers,

Jessica



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Thanassis Silis
Sent: Tuesday, June 18, 2013 6:56 AM
To: meta-freescale@yoctoproject.org; yocto@yoctoproject.org
Subject: [yocto] cannot bitbake/build.compile tcf-agent for use with fsl-im=
age-gui-sdk



Hello everyone,
it seems tcf-agent is not provided. Not even in the -sdk image I created. A=
nd that is where my problems start:

using this in my local.conf: IMAGE_INSTALL_append =3D " tcf-agent"
I expected to be able to automate the process of generating the tcf-agent a=
nd deploying it in my image with command:

bitbake fsl-image-gui-sdk


this fails with:

| Reading package lists...
| Building dependency tree...
| Reading state information...
| Some packages could not be installed. This may mean that you have
| requested an impossible situation or if you are using the unstable
| distribution that some required packages have not yet been created
| or been moved out of Incoming.
| The following information may help to resolve the situation:
|
| The following packages have unmet dependencies:
|  packagegroup-core-x11-base : Depends: packagegroup-core-x11-utils but it=
 is not going to be installed
| W: Ignoring Provides line with DepCompareOp for package pkgconfig__pkg-co=
nfig__
| W: You may want to run apt-get update to correct these problems
| E: Unable to correct problems, you have held broken packages.
| ERROR: Function failed: do_rootfs (see /home/nass/yocto/build/tmp/work/im=
x6qsabrelite-poky-linux-gnueabi/fsl-image-gui-sdk/1.0-r0/temp/log.do_rootfs=
.26945 for further information)
ERROR: Task 7 (/home/nass/yocto/sources/meta-fsl-demos/recipes-fsl/images/f=
sl-image-gui-sdk.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 7418 tasks of which 7417 didn't need to be r=
erun and 1 failed.
No currently running tasks (7417 of 7419)

Summary: 1 task failed:
  /home/nass/yocto/sources/meta-fsl-demos/recipes-fsl/images/fsl-image-gui-=
sdk.bb, do_rootfs
Summary: There was 1 ERROR message shown, returning a non-zero exit code.



I then went on to try and compile it manually:

bitbake fsl-image-gui-sdk -c compile tcf-agent
bitbake fsl-image-gui-sdk -c deploy


this fails with:

ERROR: Task do_deploy does not exist for target fsl-image-gui-sdk

Then I tried compiling it manually using this info http://www.yoctoproject.=
org/docs/current/adt-manual/adt-manual.html#getting-the-images , by sourcin=
g my toolchain from /opt/poky/1.4.1/env* file, and then
runnning 'make' in org.eclipse.tcf.agent/agent/ . I explicitly assign the $=
MACHINE variable to be 'arm' in the beginning of the Makefile.inc.

this fails with

arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dsoftfp -mfpu=3Dneon --sysroot=3D/opt/poky/1.4.1/sysroots/armv7a-vfp-neon=
-poky-linux-gnueabi  -O2 -pipe -g -feliminate-unused-debug-types -g -D_FILE=
_OFFSET_BITS=3D64 -Wall -Wmissing-prototypes -I./. -I./system/GNU/Linux -I.=
/machine/arm -o obj/GNU/Linux/arm/Debug/tcf/framework/channel_tcp.o -c tcf/=
framework/channel_tcp.c
tcf/framework/channel_tcp.c:38:27: fatal error: openssl/ssl.h: No such file=
 or directory
compilation terminated.


At this point I have run out of ideas about how to prepare tcf-agent to ins=
tall on my sabrelite fsl-image-gui-sdk rootfs....
Any help would be most welcome.

for example in the 1st case how could I run apt-get as is suggested in a ma=
nner that would be appropriate to update yocto sources?

Thank you.


--_000_C6510F6D410BB64A8C15398EDC6B847C73C4628BORSMSX103amrcor_
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Thanassis,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I don&#8217;t know why tc=
f-agent&nbsp; is not included in your sdk image.&nbsp; But you also can use=
 ssh to create a rse remote connection that allows you to do remote interac=
tion.
 &nbsp;When you create remote connection, instead of choosing tcf, use ssh.=
&nbsp; You&#8217;ll need openssh in your target image for this to work.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Cheers,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Thanassis Silis<br>
<b>Sent:</b> Tuesday, June 18, 2013 6:56 AM<br>
<b>To:</b> meta-freescale@yoctoproject.org; yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] cannot bitbake/build.compile tcf-agent for use with=
 fsl-image-gui-sdk<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;">Hello everyone,<br>
it seems tcf-agent is not provided. Not even in the -sdk image I created. A=
nd that is where my problems start:<br>
<br>
using this in my local.conf: IMAGE_INSTALL_append =3D &quot; tcf-agent&quot=
;<br>
I expected to be able to automate the process of generating the tcf-agent a=
nd deploying it in my image with command:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">bitbake fsl-image-gui-sdk</span><span style=3D"font-family=
:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;"><br>
this fails with:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">| Reading package lists...</span><span style=3D"font-famil=
y:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>| Building dependency tree...</span><span style=3D"font-family:&quot;Calib=
ri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>| Reading state information...</span><span style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>| Some packages could not be installed. This may mean that you have</span>=
<span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>| requested an impossible situation or if you are using the unstable</span=
><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br=
>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>| distribution that some required packages have not yet been created</span=
><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br=
>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>| or been moved out of Incoming.</span><span style=3D"font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>| The following information may help to resolve the situation:</span><span=
 style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>| </span><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>| The following packages have unmet dependencies:</span><span style=3D"fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>|&nbsp; packagegroup-core-x11-base : Depends: packagegroup-core-x11-utils =
but it is not going to be installed</span><span style=3D"font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>| W: Ignoring Provides line with DepCompareOp for package pkgconfig__pkg-c=
onfig__</span><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-ser=
if&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>| W: You may want to run apt-get update to correct these problems</span><s=
pan style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>| E: Unable to correct problems, you have held broken packages.</span><spa=
n style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>| ERROR: Function failed: do_rootfs (see /home/nass/yocto/build/tmp/work/i=
mx6qsabrelite-poky-linux-gnueabi/fsl-image-gui-sdk/1.0-r0/temp/log.do_rootf=
s.26945 for further information)</span><span style=3D"font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>ERROR: Task 7 (/home/nass/yocto/sources/meta-fsl-demos/recipes-fsl/images/=
fsl-image-gui-sdk.bb, do_rootfs) failed with exit code '1'</span><span styl=
e=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>NOTE: Tasks Summary: Attempted 7418 tasks of which 7417 didn't need to be =
rerun and 1 failed.</span><span style=3D"font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>No currently running tasks (7417 of 7419)</span><span style=3D"font-family=
:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br>
<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>Summary: 1 task failed:</span><span style=3D"font-family:&quot;Calibri&quo=
t;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>&nbsp; /home/nass/yocto/sources/meta-fsl-demos/recipes-fsl/images/fsl-imag=
e-gui-sdk.bb, do_rootfs</span><span style=3D"font-family:&quot;Calibri&quot=
;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>Summary: There was 1 ERROR message shown, returning a non-zero exit code.<=
/span><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;"><br>
<br>
I then went on to try and compile it manually:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">bitbake fsl-image-gui-sdk -c compile tcf-agent</span><span=
 style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif=
&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>bitbake fsl-image-gui-sdk -c deploy</span><span style=3D"font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;"><br>
this fails with:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Courier New&quot;">ERROR: Task do_deploy does =
not exist for target fsl-image-gui-sdk</span><span style=3D"font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;">Then I tried compiling it manually using this info
<a href=3D"http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.h=
tml#getting-the-images" target=3D"_blank">
http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#getting=
-the-images</a> , by sourcing my toolchain from /opt/poky/1.4.1/env* file, =
and then<br>
runnning 'make' in org.eclipse.tcf.agent/agent/ . I explicitly assign the $=
MACHINE variable to be 'arm' in the beginning of the Makefile.inc.<br>
<br>
this fails with<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Courier New&quot;">arm-poky-linux-gnueabi-gcc&=
nbsp; -march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon =
--sysroot=3D/opt/poky/1.4.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi&nbs=
p;
 -O2 -pipe -g -feliminate-unused-debug-types -g -D_FILE_OFFSET_BITS=3D64 -W=
all -Wmissing-prototypes -I./. -I./system/GNU/Linux -I./machine/arm -o obj/=
GNU/Linux/arm/Debug/tcf/framework/channel_tcp.o -c tcf/framework/channel_tc=
p.c</span><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>tcf/framework/channel_tcp.c:38:27: fatal error: openssl/ssl.h: No such fil=
e or directory</span><span style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;"><br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>compilation terminated.</span><span style=3D"font-family:&quot;Calibri&quo=
t;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;">&nbsp;<br>
At this point I have run out of ideas about how to prepare tcf-agent to ins=
tall on my sabrelite fsl-image-gui-sdk rootfs....<br>
Any help would be most welcome.<br>
<br>
for example in the 1st case how could I run apt-get as is suggested in a ma=
nner that would be appropriate to update yocto sources?<br>
<br>
Thank you.<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C73C4628BORSMSX103amrcor_--
