Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6905E013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 10:40:29 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 14 Jun 2013 10:40:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,867,1363158000"; 
	d="scan'208,217";a="349972423"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2013 10:40:59 -0700
Received: from orsmsx107.amr.corp.intel.com (10.22.240.5) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 14 Jun 2013 10:40:27 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.22]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.206]) with mapi id
	14.03.0123.003; Fri, 14 Jun 2013 10:40:27 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
Thread-Topic: [yocto] No crosscompiler in Toolchain
Thread-Index: AQHOZqOPiJG6l+V0REyK3+Gu8PiLqZkxP9gAgAASrYD//4tR8IABISaAgAG07oCAAdalgP//847g
Date: Fri, 14 Jun 2013 17:40:26 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C3B199@ORSMSX103.amr.corp.intel.com>
References: <CAFMfyz+_j-mWj4C0YJUnOBcCX-oMGc8196pmPcQcD8XbK6r0xA@mail.gmail.com>
	<CA+YB3rYq6_o_Sc50t0TVm5rnEeG2MD2qo=Ya6WKyG=c5vy_vHg@mail.gmail.com>
	<CAFMfyzKzvBDTxPoLN6=fFkP=Rbd_KWVpLk=352F6OxB3e5-iWg@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C39CA0@ORSMSX103.amr.corp.intel.com>
	<CAFMfyz+km6mQctRO5d52+p4+4hKuE9qzv755EjTOW7Zc3KEb0Q@mail.gmail.com>
	<CAFMfyzJiqRGsU+xjjt+htvHrCok1UyZijz2_0Z+40gXiebAQgQ@mail.gmail.com>
	<CAFMfyz+OM4EJwTWda16WNOPtUbX6e2UWuvaHXFEWOf2Wd2qE-A@mail.gmail.com>
In-Reply-To: <CAFMfyz+OM4EJwTWda16WNOPtUbX6e2UWuvaHXFEWOf2Wd2qE-A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: No crosscompiler in Toolchain
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
X-List-Received-Date: Fri, 14 Jun 2013 17:40:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C73C3B199ORSMSX103amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C73C3B199ORSMSX103amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Satya,



If bitbake meta_toolchain didn't generate the correct cross compiler, then =
it's a bug, would you mind open a bug in bugzilla.yoctoproject.org for us w=
ith detailed info e.g. what release, what are the cross toolchain that you =
were trying to build, etc?  As to your image particular toolchain, since we=
're lacking the data how you customize your image, it's really hard for us =
to nail down your issue unfortunately.



Thanks,

Jessica



From: DAMARLA Satya Swaroop [mailto:satyaswaroop.damarla@gmail.com]
Sent: Friday, June 14, 2013 4:21 AM
To: Zhang, Jessica
Cc: Jeff Osier-Mixon; yocto@yoctoproject.org
Subject: Re: [yocto] No crosscompiler in Toolchain



Hi Everyone,



I solved the issue, but I don't know if its right or wrong but for the mome=
nt I am happy... The following didnot work for me



bitbake core-image-skidata -c populate_sdk

              nor

bitbake meta-toolchain



but bitbake meta-toolchain-sdk  worked for me and created a toolchain with =
the crosscompiler... I have no idea why the others didnot create a toolchai=
n with cross compiler for me. I think this has to be discussed in more deta=
il..



For now have a wonderful weekend



Warm regards from Austria,

Satya



On Thu, Jun 13, 2013 at 9:16 AM, DAMARLA Satya Swaroop <satyaswaroop.damarl=
a@gmail.com<mailto:satyaswaroop.damarla@gmail.com>> wrote:

Hi,



Any updates on this issue why there is no cross compiler in the toolchain w=
e build... I think this is pretty important unfortunately I am not able to =
find the cause.. Help is deeply appreciated..



Greets,

Satya



On Wed, Jun 12, 2013 at 7:12 AM, DAMARLA Satya Swaroop <satyaswaroop.damarl=
a@gmail.com<mailto:satyaswaroop.damarla@gmail.com>> wrote:

Hi Jessica,



By the sentence "No crosscompiler for my target installed in my toolchain",=
 I mean I don't find the binaries for crosscompiling which are usually pres=
ent in the directory as shown below



damarla@linuxbuildsrv:~/yocto/myToolchain/sysroots/x86_64-pokysdk-linux/usr=
/bin$ ls

aclocal        autoreconf        flash2raw.terrier       opkg-key    pseudo=
log  qemu-mipsel       qemu-system-mipsel  raw2flash.terrier        runqemu=
-ifup

aclocal-1.12   autoscan          gnu-configize           perl        qemu-a=
rm   qemu-mips.real    qemu-system-ppc     runqemu                  runqemu=
-internal

autoconf       autoupdate        ifnames                 perl5.14.3  qemu-g=
a    qemu-nbd          qemu-system-x86_64  runqemu-addptable2image  tunctl

autoheader     dtc               libtoolize              perl.real   qemu-i=
386  qemu-ppc          qemu-x86_64         runqemu-export-rootfs    update-=
alternatives

autom4te       flash2raw.akita   m4                      pkg-config  qemu-i=
mg   qemu-system-arm   raw2flash.akita     runqemu-extract-sdk      x86_64-=
pokysdk-linux-libtool

automake       flash2raw.borzoi  oe-find-native-sysroot  pseudo      qemu-i=
o    qemu-system-i386  raw2flash.borzoi    runqemu-gen-tapdevs

automake-1.12  flash2raw.spitz   opkg-cl                 pseudodb    qemu-m=
ips  qemu-system-mips  raw2flash.spitz     runqemu-ifdown





I don't have a directory and the list is empty



damarla@linuxbuildsrv:~/yocto/myToolchain/sysroots/x86_64-pokysdk-linux/usr=
/bin$ ls -la| egrep '^d'

drwxr-xr-x 2 damarla damarla    4096 Jun 11 14:27 .

drwxr-xr-x 7 damarla damarla    4096 Jun 11 14:15 ..



I want to know what could be the potential issue that my toolchain has no c=
rosscompiler for my target



Greets,

Satya



On Tue, Jun 11, 2013 at 9:05 PM, Zhang, Jessica <jessica.zhang@intel.com<ma=
ilto:jessica.zhang@intel.com>> wrote:

Hi Satya,



What is your cross compiler that you said it's not installed? For example, =
on my development host e.g. x86, after I install the toolchain, there's an =
environment-setup-*** file, inside it specifies what is your cross compiler=
, e.g. arm-poky-linux-gnueabi-gcc for my case, after I source the environme=
nt file, and do which arm-poky-linux-gnueabi-gcc, I can see it's under path=
_to_toolchain/sysroots/i686_pokysdk_linux/usr/bin/armv5te-poky-linux-gnueab=
i/arm-poky-linux-gnueabi-gcc... so you're seeing things differently?



Jessica



From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of DAMARLA Satya Swaroop
Sent: Tuesday, June 11, 2013 11:55 AM
To: Jeff Osier-Mixon; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] No crosscompiler in Toolchain



First I am sorry about the Gentlemen.... Next time it would be Ladies & Gen=
tlemen... ;-)



Let me explain the situation better ... core-image-skidata (arm) is customi=
zed image which I build and I want to build a toolchain for this image on m=
y x86_64 with should consist of cross compiler (which I assume a toolchain =
should contain). The build for the toolchain went successfull but when I in=
stalled the toolchain on my system, I didnot find the crosscompiler install=
ed...



Hope you understood my problem..



Greets,

Satya



On Tue, Jun 11, 2013 at 7:48 PM, Jeff Osier-Mixon <jefro@jefro.net<mailto:j=
efro@jefro.net>> wrote:

On Tue, Jun 11, 2013 at 5:59 AM, DAMARLA Satya Swaroop
<swaroop.damarla@gmail.com<mailto:swaroop.damarla@gmail.com>> wrote:
> Gentlemen! We have a problem here...

Not all here are gentlemen :)


> I compiled the toolchain using the command bitbake core-image-skidata -c
> populate_sdk and installed the toolchain but I have to tell you that I do=
nt
> see any cross-compiler installed with the toolchain...
>
> Any guesses what could be the reason.. The image is customized x11 image.=
..

I'm not sure I understand. It looks like you are using Host A to build
a toolchain and install it into an image (core-image-skidata) on
Target A. Are you then expecting to use Target A as Host B to compile
for Target B?  Is it possible that the skidata image recipe does not
contain the cross-compiler recipes?

--
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org










--_000_C6510F6D410BB64A8C15398EDC6B847C73C3B199ORSMSX103amrcor_
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Satya,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">If bitbake meta_toolchain=
 didn&#8217;t generate the correct cross compiler, then it&#8217;s a bug, w=
ould you mind open a bug in bugzilla.yoctoproject.org for us with detailed
 info e.g. what release, what are the cross toolchain that you were trying =
to build, etc?&nbsp; As to your image particular toolchain, since we&#8217;=
re lacking the data how you customize your image, it&#8217;s really hard fo=
r us to nail down your issue unfortunately.<o:p></o:p></span></p>
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
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> DAMARLA =
Satya Swaroop [mailto:satyaswaroop.damarla@gmail.com]
<br>
<b>Sent:</b> Friday, June 14, 2013 4:21 AM<br>
<b>To:</b> Zhang, Jessica<br>
<b>Cc:</b> Jeff Osier-Mixon; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] No crosscompiler in Toolchain<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Hi Everyone,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I solved the issue, but I don't know if its right or=
 wrong but for the moment I am happy... The following didnot work for me<o:=
p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>bitbake core-image-skidata -c populate_sdk</i><o:=
p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
</i>nor<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>bitbake meta-toolchain</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">but <i>bitbake meta-toolchain-sdk </i>&nbsp;worked f=
or me and created a toolchain with the crosscompiler... I have no idea why =
the others didnot create a toolchain with cross compiler for me. I think th=
is has to be discussed in more detail..<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">For now have a wonderful weekend<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Warm regards from Austria,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Satya<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Thu, Jun 13, 2013 at 9:16 AM, DAMARLA Satya Swaro=
op &lt;<a href=3D"mailto:satyaswaroop.damarla@gmail.com" target=3D"_blank">=
satyaswaroop.damarla@gmail.com</a>&gt; wrote:<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Any updates on this issue why there is no cross comp=
iler in the toolchain we build... I think this is pretty important unfortun=
ately I am not able to find the cause.. Help is deeply appreciated..<o:p></=
o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Greets,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Satya<o:p></o:p></p>
</div>
</div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Wed, Jun 12, 2013 at 7:12 AM, DAMARLA Satya Swaro=
op &lt;<a href=3D"mailto:satyaswaroop.damarla@gmail.com" target=3D"_blank">=
satyaswaroop.damarla@gmail.com</a>&gt; wrote:<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">Hi Jessica,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">By the sentence &quot;No crosscompiler for my target=
 installed in my toolchain&quot;, I mean I don't find the binaries for cros=
scompiling which are usually present in the directory as shown below<o:p></=
o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><i>damarla@linuxbuildsrv:~/yocto/myToolchain/sysroot=
s/x86_64-pokysdk-linux/usr/bin$ ls</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>aclocal &nbsp; &nbsp; &nbsp; &nbsp;autoreconf &nb=
sp; &nbsp; &nbsp; &nbsp;flash2raw.terrier &nbsp; &nbsp; &nbsp; opkg-key &nb=
sp; &nbsp;pseudolog &nbsp;qemu-mipsel &nbsp; &nbsp; &nbsp; qemu-system-mips=
el &nbsp;raw2flash.terrier &nbsp; &nbsp; &nbsp; &nbsp;runqemu-ifup</i><o:p>=
</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>aclocal-1.12 &nbsp; autoscan &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;gnu-configize &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; perl &nbsp; =
&nbsp; &nbsp; &nbsp;qemu-arm &nbsp; qemu-mips.real &nbsp; &nbsp;qemu-system=
-ppc &nbsp; &nbsp; runqemu &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;runqemu-internal</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>autoconf &nbsp; &nbsp; &nbsp; autoupdate &nbsp; &=
nbsp; &nbsp; &nbsp;ifnames &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; perl5.14.3 &nbsp;qemu-ga &nbsp; &nbsp;qemu-nbd &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;qemu-system-x86_64 &nbsp;runqemu-addptable2image &nbsp;tunctl=
</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>autoheader &nbsp; &nbsp; dtc &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; libtoolize &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;perl.real &nbsp; qemu-i386 &nbsp;qemu-ppc &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;qemu-x86_64 &nbsp; &nbsp; &nbsp; &nbsp; runqemu-export-rootfs=
 &nbsp; &nbsp;update-alternatives</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>autom4te &nbsp; &nbsp; &nbsp; flash2raw.akita &nb=
sp; m4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;pkg-config &nbsp;qemu-img &nbsp; qemu-system-arm &nbsp; raw2flash.a=
kita &nbsp; &nbsp; runqemu-extract-sdk &nbsp; &nbsp; &nbsp;x86_64-pokysdk-l=
inux-libtool</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>automake &nbsp; &nbsp; &nbsp; flash2raw.borzoi &n=
bsp;oe-find-native-sysroot &nbsp;pseudo &nbsp; &nbsp; &nbsp;qemu-io &nbsp; =
&nbsp;qemu-system-i386 &nbsp;raw2flash.borzoi &nbsp; &nbsp;runqemu-gen-tapd=
evs</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>automake-1.12 &nbsp;flash2raw.spitz &nbsp; opkg-c=
l &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; pseudodb &nbsp; &=
nbsp;qemu-mips &nbsp;qemu-system-mips &nbsp;raw2flash.spitz &nbsp; &nbsp; r=
unqemu-ifdown</i><o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I don't have a directory and the list is empty<o:p><=
/o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><i>damarla@linuxbuildsrv:~/yocto/myToolchain/sysroot=
s/x86_64-pokysdk-linux/usr/bin$ ls -la| egrep '^d'</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>drwxr-xr-x 2 damarla damarla &nbsp; &nbsp;4096 Ju=
n 11 14:27 .</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><i>drwxr-xr-x 7 damarla damarla &nbsp; &nbsp;4096 Ju=
n 11 14:15 ..</i><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I want to know what could be the potential issue tha=
t my toolchain has no crosscompiler for my target<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Greets,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Satya<o:p></o:p></p>
</div>
</div>
</div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Tue, Jun 11, 2013 at 9:05 PM, Zhang, Jessica &lt;=
<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@=
intel.com</a>&gt; wrote:<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Hi Satya,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">What is your cross compiler that you sa=
id it&#8217;s not installed? For example, on my development host
 e.g. x86, after I install the toolchain, there&#8217;s an environment-setu=
p-*** file, inside it specifies what is your cross compiler, e.g. arm-poky-=
linux-gnueabi-gcc for my case, after I source the environment file, and do =
which arm-poky-linux-gnueabi-gcc, I can
 see it&#8217;s under path_to_toolchain/sysroots/i686_pokysdk_linux/usr/bin=
/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc&#8230; so you&#8217;=
re seeing things differently?</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Jessica</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,=
&quot;sans-serif&quot;">From:</span></b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>DAMARLA Satya Swaroop<br>
<b>Sent:</b> Tuesday, June 11, 2013 11:55 AM<br>
<b>To:</b> Jeff Osier-Mixon; <a href=3D"mailto:yocto@yoctoproject.org" targ=
et=3D"_blank">
yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] No crosscompiler in Toolchain</span><o:p></o:p>=
</p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">First I am sorry about the Gentlemen.... Next time it would be Lad=
ies &amp; Gentlemen... ;-)<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Let me explain the situation better ...
<i>core-image-skidata</i>&nbsp;(arm) is customized image which I build and =
I want to build a toolchain for this image on my x86_64 with should consist=
 of cross compiler (which I assume a toolchain should contain). The build f=
or the toolchain went successfull but
 when I installed the toolchain on my system, I didnot find the crosscompil=
er installed...<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Hope you understood my problem..<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Greets,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Satya<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t">&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">On Tue, Jun 11, 2013 at 7:48 PM, Jeff Osier-Mixon &lt;<a href=3D"m=
ailto:jefro@jefro.net" target=3D"_blank">jefro@jefro.net</a>&gt; wrote:<o:p=
></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t">On Tue, Jun 11, 2013 at 5:59 AM, DAMARLA Satya Swaroop<br>
&lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_blank">swaroop.=
damarla@gmail.com</a>&gt; wrote:<br>
&gt; Gentlemen! We have a problem here...<o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Not all here are gentlemen :)<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><br>
&gt; I compiled the toolchain using the command bitbake core-image-skidata =
-c<br>
&gt; populate_sdk and installed the toolchain but I have to tell you that I=
 dont<br>
&gt; see any cross-compiler installed with the toolchain...<br>
&gt;<br>
&gt; Any guesses what could be the reason.. The image is customized x11 ima=
ge...<o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I'm not sure I understand. It looks like you are using Host A to b=
uild<br>
a toolchain and install it into an image (core-image-skidata) on<br>
Target A. Are you then expecting to use Target A as Host B to compile<br>
for Target B? &nbsp;Is it possible that the skidata image recipe does not<b=
r>
contain the cross-compiler recipes?<br>
<br>
--<br>
Jeff Osier-Mixon <a href=3D"http://jefro.net/blog" target=3D"_blank">http:/=
/jefro.net/blog</a><br>
Yocto Project Community Manager @Intel <a href=3D"http://yoctoproject.org" =
target=3D"_blank">
http://yoctoproject.org</a><o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C73C3B199ORSMSX103amrcor_--
