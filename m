Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AA25E01528
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 00:47:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 Jul 2013 00:47:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,733,1367996400"; 
	d="scan'208,217";a="375109821"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga002.fm.intel.com with ESMTP; 24 Jul 2013 00:47:13 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.238]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.19]) with mapi id
	14.03.0123.003; Wed, 24 Jul 2013 00:47:10 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: FW: [OE-core] Doc: external toolchain
Thread-Index: AQHOh/czc9L2DDRng0CpWLMbbaWOyplzV+IggACCNQD//5m7sA==
Date: Wed, 24 Jul 2013 07:47:09 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185@ORSMSX106.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Laszlo Papp <lpapp@kde.org>, "Wold, Saul" <saul.wold@intel.com>
Subject: FW: FW: [OE-core] Doc: external toolchain
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
X-List-Received-Date: Wed, 24 Jul 2013 07:47:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185ORSMSX106amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185ORSMSX106amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Can anyone address the toolchain questions here for Laszlo?

Thanks,
Scott

From: djszapi@archlinux.us [mailto:djszapi@archlinux.us] On Behalf Of Laszl=
o Papp
Sent: Tuesday, July 23, 2013 11:52 PM
To: Rifenbark, Scott M
Cc: Wold, Saul
Subject: Re: FW: [OE-core] Doc: external toolchain

OK, thanks.

I am facing this issue, any clue?

ERROR: Failed to obtain CodeSourcery toolchain version: Execution of '/usr/=
bin/i686-pc-linux-gnu-gcc -v' failed: command not found
ERROR: Failed to obtain CodeSourcery toolchain version: Execution of '/usr/=
bin/i686-pc-linux-gnu-gcc -v' failed: command not found

This is what I have in my build/conf/local.conf:

...
TCMODE =3D "external-sourcery"
EXTERNAL_TOOLCHAIN =3D "/usr"
TARGET_PREFIX =3D "arm-none-linux-gnueabi-"
...

The external toolchain does exist:

/usr/bin/arm-none-linux-gnueabi-gcc -v
Using built-in specs.
COLLECT_GCC=3D/usr/bin/arm-none-linux-gnueabi-gcc
COLLECT_LTO_WRAPPER=3D/usr/bin/../libexec/gcc/arm-none-linux-gnueabi/4.7.3/=
lto-wrapper
Target: arm-none-linux-gnueabi
Configured with: /scratch/jbrown/2013.05-arm-linux-release/src/gcc-4.7-2013=
.05/configure --build=3Di686-pc-linux-gnu --host=3Di686-pc-linux-gnu --targ=
et=3Darm-none-linux-gnueabi --enable-threads --disable-libmudflap --disable=
-libssp --disable-libstdcxx-pch --enable-extra-sgxxlite-multilibs --with-ar=
ch=3Darmv5te --with-gnu-as --with-gnu-ld --with-specs=3D'%{save-temps: -fve=
rbose-asm} %{funwind-tables|fno-unwind-tables|mabi=3D*|ffreestanding|nostdl=
ib:;:-funwind-tables} -D__CS_SOURCERYGXX_MAJ__=3D2013 -D__CS_SOURCERYGXX_MI=
N__=3D5 -D__CS_SOURCERYGXX_REV__=3D24 %{O2:%{!fno-remove-local-statics: -fr=
emove-local-statics}} %{O*:%{O|O0|O1|O2|Os:;:%{!fno-remove-local-statics: -=
fremove-local-statics}}}' --enable-languages=3Dc,c++ --enable-shared --enab=
le-lto --enable-symvers=3Dgnu --enable-__cxa_atexit --with-pkgversion=3D'So=
urcery CodeBench Lite 2013.05-24' --with-bugurl=3Dhttps://sourcery.mentor.c=
om/GNUToolchain/ --disable-nls --prefix=3D/opt/codesourcery --with-sysroot=
=3D/opt/codesourcery/arm-none-linux-gnueabi/libc --with-build-sysroot=3D/sc=
ratch/jbrown/2013.05-arm-linux-release/install/arm-none-linux-gnueabi/libc =
--with-gmp=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-a=
rm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-lib=
s-i686-pc-linux-gnu/usr --with-mpfr=3D/scratch/jbrown/2013.05-arm-linux-rel=
ease/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linu=
x-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr --with-mpc=3D/scratch/jbro=
wn/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-=
2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr --=
with-ppl=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm=
-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-=
i686-pc-linux-gnu/usr --with-host-libstdcxx=3D'-static-libgcc -Wl,-Bstatic,=
-lstdc++,-Bdynamic -lm' --with-cloog=3D/scratch/jbrown/2013.05-arm-linux-re=
lease/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-lin=
ux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr --with-libelf=3D/scratch/=
jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/=
arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/us=
r --disable-libgomp --disable-libitm --enable-poison-system-directories --w=
ith-build-time-tools=3D/scratch/jbrown/2013.05-arm-linux-release/install/ar=
m-none-linux-gnueabi/bin --with-build-time-tools=3D/scratch/jbrown/2013.05-=
arm-linux-release/install/arm-none-linux-gnueabi/bin
Thread model: posix
gcc version 4.7.3 (Sourcery CodeBench Lite 2013.05-24)

On Wed, Jul 24, 2013 at 7:19 AM, Rifenbark, Scott M <scott.m.rifenbark@inte=
l.com<mailto:scott.m.rifenbark@intel.com>> wrote:
Laszlo,

Saul forwarded me this email regarding external toolchains.  The "In Progre=
ss" version of the YP Reference Manual has a new section on toolchains in g=
eneral.  This section, combined with the TCMODE glossary entry and a FAQ en=
try, both in the reference manual, comprise our information on the external=
 toolchain topic.  Let me know what specifically would need additionally ad=
dressed and I can get that on my plate to improve the doc set.

Thanks,
Scott

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#cross-de=
velopment-toolchain-generation
http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-TCMO=
DE
http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#idm62264=
0




>-----Original Message-----
>From: Saul Wold [mailto:sgw@linux.intel.com<mailto:sgw@linux.intel.com>]
>Sent: Tuesday, July 23, 2013 3:52 PM
>To: Rifenbark, Scott M
>Subject: Fwd: [OE-core] Doc: external toolchain
>
>
>
>
>-------- Original Message --------
>Subject:       [OE-core] Doc: external toolchain
>Date:  Tue, 23 Jul 2013 23:45:28 +0100
>From:  Laszlo Papp <lpapp@kde.org<mailto:lpapp@kde.org>>
>To:    openembedded-core@lists.openembedded.org<mailto:openembedded-core@l=
ists.openembedded.org>
>
>
>
>Dear gents and ladies,
>
>it would be nice to get some documentation about this subject. There is
>only one presentation with only a few short slides about the topic:
>http://events.linuxfoundation.org/images/stories/slides/elc2013_denys.pd
>f
>
>I am now having some issues currently, and hard time to figure out what
>is going on. Note, this thread is not about getting help with that
>particular issue, but encouraging you to document this, for me,
>fundamental feature more thoroughly.
>
>Thank you for your understanding.
>
>Many thanks,
>Laszlo
>
>
>


--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185ORSMSX106amrcor_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Can anyone address the to=
olchain questions here for Laszlo?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Scott<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> djszapi@=
archlinux.us [mailto:djszapi@archlinux.us]
<b>On Behalf Of </b>Laszlo Papp<br>
<b>Sent:</b> Tuesday, July 23, 2013 11:52 PM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> Wold, Saul<br>
<b>Subject:</b> Re: FW: [OE-core] Doc: external toolchain<o:p></o:p></span>=
</p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">OK, thanks.<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I am facing this issue, any clue?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">ERROR: Failed to obtain CodeSourcery toolchain versi=
on: Execution of '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not fo=
und<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">ERROR: Failed to obtain CodeSourcery toolchain versi=
on: Execution of '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not fo=
und<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">This is what I have in my build/conf/local.conf:<o:p=
></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">...<o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">TCMODE =3D &quot;external-sourcery&quot;<o:p></o:p><=
/p>
</div>
<div>
<p class=3D"MsoNormal">EXTERNAL_TOOLCHAIN =3D &quot;/usr&quot;<o:p></o:p></=
p>
</div>
<div>
<p class=3D"MsoNormal">TARGET_PREFIX =3D &quot;arm-none-linux-gnueabi-&quot=
;<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">...<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">The external toolchain does exist:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">/usr/bin/arm-none-linux-gnueabi-gcc -v<o:p></o:p></p=
>
</div>
<div>
<p class=3D"MsoNormal">Using built-in specs.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">COLLECT_GCC=3D/usr/bin/arm-none-linux-gnueabi-gcc<o:=
p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">COLLECT_LTO_WRAPPER=3D/usr/bin/../libexec/gcc/arm-no=
ne-linux-gnueabi/4.7.3/lto-wrapper<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Target: arm-none-linux-gnueabi<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Configured with: /scratch/jbrown/2013.05-arm-linux-r=
elease/src/gcc-4.7-2013.05/configure --build=3Di686-pc-linux-gnu --host=3Di=
686-pc-linux-gnu --target=3Darm-none-linux-gnueabi --enable-threads --disab=
le-libmudflap --disable-libssp --disable-libstdcxx-pch
 --enable-extra-sgxxlite-multilibs --with-arch=3Darmv5te --with-gnu-as --wi=
th-gnu-ld --with-specs=3D'%{save-temps: -fverbose-asm} %{funwind-tables|fno=
-unwind-tables|mabi=3D*|ffreestanding|nostdlib:;:-funwind-tables} -D__CS_SO=
URCERYGXX_MAJ__=3D2013 -D__CS_SOURCERYGXX_MIN__=3D5
 -D__CS_SOURCERYGXX_REV__=3D24 %{O2:%{!fno-remove-local-statics: -fremove-l=
ocal-statics}} %{O*:%{O|O0|O1|O2|Os:;:%{!fno-remove-local-statics: -fremove=
-local-statics}}}' --enable-languages=3Dc,c&#43;&#43; --enable-shared --ena=
ble-lto --enable-symvers=3Dgnu --enable-__cxa_atexit
 --with-pkgversion=3D'Sourcery CodeBench Lite 2013.05-24' --with-bugurl=3D<=
a href=3D"https://sourcery.mentor.com/GNUToolchain/">https://sourcery.mento=
r.com/GNUToolchain/</a> --disable-nls --prefix=3D/opt/codesourcery --with-s=
ysroot=3D/opt/codesourcery/arm-none-linux-gnueabi/libc
 --with-build-sysroot=3D/scratch/jbrown/2013.05-arm-linux-release/install/a=
rm-none-linux-gnueabi/libc --with-gmp=3D/scratch/jbrown/2013.05-arm-linux-r=
elease/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-li=
nux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
 --with-mpfr=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24=
-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-l=
ibs-i686-pc-linux-gnu/usr --with-mpc=3D/scratch/jbrown/2013.05-arm-linux-re=
lease/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-lin=
ux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
 --with-ppl=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-=
arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-li=
bs-i686-pc-linux-gnu/usr --with-host-libstdcxx=3D'-static-libgcc -Wl,-Bstat=
ic,-lstdc&#43;&#43;,-Bdynamic -lm' --with-cloog=3D/scratch/jbrown/2013.05-a=
rm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-a=
rm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
 --with-libelf=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-=
24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host=
-libs-i686-pc-linux-gnu/usr --disable-libgomp --disable-libitm --enable-poi=
son-system-directories --with-build-time-tools=3D/scratch/jbrown/2013.05-ar=
m-linux-release/install/arm-none-linux-gnueabi/bin
 --with-build-time-tools=3D/scratch/jbrown/2013.05-arm-linux-release/instal=
l/arm-none-linux-gnueabi/bin<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Thread model: posix<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">gcc version 4.7.3 (Sourcery CodeBench Lite 2013.05-2=
4)&nbsp;<o:p></o:p></p>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Wed, Jul 24, 2013 at 7:19 AM, Rifenbark, Scott M =
&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.=
m.rifenbark@intel.com</a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Laszlo,<br>
<br>
Saul forwarded me this email regarding external toolchains. &nbsp;The &quot=
;In Progress&quot; version of the YP Reference Manual has a new section on =
toolchains in general. &nbsp;This section, combined with the TCMODE glossar=
y entry and a FAQ entry, both in the reference manual,
 comprise our information on the external toolchain topic. &nbsp;Let me kno=
w what specifically would need additionally addressed and I can get that on=
 my plate to improve the doc set.<br>
<br>
Thanks,<br>
Scott<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.ht=
ml#cross-development-toolchain-generation" target=3D"_blank">http://www.yoc=
toproject.org/docs/latest/ref-manual/ref-manual.html#cross-development-tool=
chain-generation</a><br>
<a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.ht=
ml#var-TCMODE" target=3D"_blank">http://www.yoctoproject.org/docs/latest/re=
f-manual/ref-manual.html#var-TCMODE</a><br>
<a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.ht=
ml#idm622640" target=3D"_blank">http://www.yoctoproject.org/docs/latest/ref=
-manual/ref-manual.html#idm622640</a><br>
<br>
<br>
<br>
<br>
&gt;-----Original Message-----<br>
&gt;From: Saul Wold [mailto:<a href=3D"mailto:sgw@linux.intel.com">sgw@linu=
x.intel.com</a>]<br>
&gt;Sent: Tuesday, July 23, 2013 3:52 PM<br>
&gt;To: Rifenbark, Scott M<br>
&gt;Subject: Fwd: [OE-core] Doc: external toolchain<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;-------- Original Message --------<br>
&gt;Subject: &nbsp; &nbsp; &nbsp; [OE-core] Doc: external toolchain<br>
&gt;Date: &nbsp;Tue, 23 Jul 2013 23:45:28 &#43;0100<br>
&gt;From: &nbsp;Laszlo Papp &lt;<a href=3D"mailto:lpapp@kde.org">lpapp@kde.=
org</a>&gt;<br>
&gt;To: &nbsp; &nbsp;<a href=3D"mailto:openembedded-core@lists.openembedded=
.org">openembedded-core@lists.openembedded.org</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;Dear gents and ladies,<br>
&gt;<br>
&gt;it would be nice to get some documentation about this subject. There is=
<br>
&gt;only one presentation with only a few short slides about the topic:<br>
&gt;<a href=3D"http://events.linuxfoundation.org/images/stories/slides/elc2=
013_denys.pd" target=3D"_blank">http://events.linuxfoundation.org/images/st=
ories/slides/elc2013_denys.pd</a><br>
&gt;f<br>
&gt;<br>
&gt;I am now having some issues currently, and hard time to figure out what=
<br>
&gt;is going on. Note, this thread is not about getting help with that<br>
&gt;particular issue, but encouraging you to document this, for me,<br>
&gt;fundamental feature more thoroughly.<br>
&gt;<br>
&gt;Thank you for your understanding.<br>
&gt;<br>
&gt;Many thanks,<br>
&gt;Laszlo<br>
&gt;<br>
&gt;<br>
&gt;<o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185ORSMSX106amrcor_--
