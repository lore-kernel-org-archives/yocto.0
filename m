Return-Path: <agikling@lasx.com>
Received: from mx.cbeyond.com (mx.cbeyond.com [66.180.96.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EA81E01363
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 21:43:21 -0700 (PDT)
X-SBRS: 4.5
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: imx04dal.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AgAEAI65g09CtGAbkWdsb2JhbABDgkazeIM3AQEBARQSFCeCECcGXgGBACYBBBsMh3qZAaFPj35jBKkl
X-IronPort-AV: E=Sophos;i="4.75,396,1330923600"; 
	d="scan'208,217";a="431792635"
Received: from exchange.cbeyondonline.net (HELO hub401dal.mmeprod.cbeyond)
	([66.180.96.27])
	by mx.cbeyond.com with ESMTP; 10 Apr 2012 00:43:20 -0400
Received: from EXMBX05.mmeprod.cbeyond ([192.168.13.77]) by
	hub401dal.mmeprod.cbeyond ([192.168.13.99]) with mapi; Tue, 10 Apr 2012
	00:43:20 -0400
From: Andy Gikling <agikling@lasx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 10 Apr 2012 00:43:16 -0400
Thread-Topic: ADT Manual v1.1.1 Issues - 2 of 3
Thread-Index: Ac0Wz1koplbsHi2cToWclAaRl+9bng==
Message-ID: <23FC35CD1508674EBB20455EB700B1B4BCE870ACEE@EXMBX05.mmeprod.cbeyond>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: ADT Manual v1.1.1 Issues - 2 of 3
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
X-List-Received-Date: Tue, 10 Apr 2012 04:43:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_23FC35CD1508674EBB20455EB700B1B4BCE870ACEEEXMBX05mmepro_"

--_000_23FC35CD1508674EBB20455EB700B1B4BCE870ACEEEXMBX05mmepro_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I've had very mixed results during the three or four times I've run through=
 the ADT manual from scratch.  There seems to be a real problem I keep enco=
untering that I'd like to describe to the community with the hope that some=
one understands why I keep getting stuck.  I'm running a 32bit Ubuntu 11.10=
 VM and trying to build for a x86_64 sugarbay target machine.

The issue is that no matter which "route" I take to setup my toolchain (be =
it via the installer script or a premade toolchain I've downloaded) I alway=
s get "configure: error: C compiler cannot create executables" when I try t=
o use Project->Reconfigure Project after starting a new HelloWorld example =
in Eclipse.  The ADT manual explicitly steps the user through to this point=
 but using the Reconfigure Project feature (that puts together your Makefil=
e for you) never completes.  When looking closer at the config.log I always=
 find something that looks like this:

configure:3285: $? =3D 0
configure:3274: x86_64-poky-linux-gcc -v >&5
Using built-in specs.
COLLECT_GCC=3Dx86_64-poky-linux-gcc
COLLECT_LTO_WRAPPER=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/libex=
ec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.6.3/lto-wrapper
Target: x86_64-poky-linux
Configured with: /srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-=
x86-64/build/build/tmp/work-shared/gcc-4.6.2+svnr181430-r17/gcc-4_6-branch/=
configure --build=3Dx86_64-linux --host=3Di686-pokysdk-linux --target=3Dx86=
_64-poky-linux --prefix=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr -=
-exec_prefix=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr --bindir=3D/=
opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/bin/x86_64-poky-linux --sbin=
dir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/bin/x86_64-poky-linux=
 --libexecdir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/libexec/x86=
_64-poky-linux --datadir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/=
share --sysconfdir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/etc --shar=
edstatedir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/com --localstatedi=
r=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/var --libdir=3D/opt/poky/1.=
1.1/sysroots/i686-pokysdk-linux/usr/lib/x86_64-poky-linux --includedir=3D/o=
pt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/include --oldincludedir=3D/op=
t/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/include --infodir=3D/opt/poky/=
1.1.1/sysroots/i686-pokysdk-linux/usr/share/info --mandir=3D/opt/poky/1.1.1=
/sysroots/i686-pokysdk-linux/usr/share/man --disable-silent-rules --with-li=
btool-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-x=
86-64/build/build/tmp/sysroots/i686-pokysdk-linux-nativesdk --with-gnu-ld -=
-enable-shared --enable-languages=3Dc,c++ --enable-threads=3Dposix --disabl=
e-multilib --enable-c99 --enable-long-long --enable-symvers=3Dgnu --enable-=
libstdcxx-pch --program-prefix=3Dx86_64-poky-linux- --enable-target-optspac=
e --enable-lto --enable-libssp --disable-bootstrap --disable-libgomp --disa=
ble-libmudflap --enable-cheaders=3Dc_global --with-local-prefix=3D/opt/poky=
/1.1.1/sysroots/x86_64-poky-linux/usr --with-gxx-include-dir=3D/usr/include=
/c++ --with-build-time-tools=3D/srv/home/pokybuild/yocto-autobuilder/yocto-=
slave/nightly-x86-64/build/build/tmp/sysroots/x86_64-linux/usr/x86_64-poky-=
linux/bin --with-sysroot=3D/opt/poky/1.1.1/sysroots/x86_64-poky-linux --wit=
h-build-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly=
-x86-64/build/build/tmp/sysroots/qemux86-64 --disable-libunwind-exceptions =
--disable-libssp --disable-libgomp --disable-libmudflap --with-mpfr=3D/srv/=
home/pokybuild/yocto-autobuilder/yocto-slave/nightly-x86-64/build/build/tmp=
/sysroots/i686-pokysdk-linux-nativesdk --with-mpc=3D/srv/home/pokybuild/yoc=
to-autobuilder/yocto-slave/nightly-x86-64/build/build/tmp/sysroots/i686-pok=
ysdk-linux-nativesdk --enable-nls --enable-__cxa_atexit
Thread model: posix
gcc version 4.6.3 20111117 (prerelease) (GCC)
configure:3285: $? =3D 0
configure:3274: x86_64-poky-linux-gcc -V >&5
x86_64-poky-linux-gcc: error: unrecognized option '-V'
x86_64-poky-linux-gcc: fatal error: no input files
compilation terminated.
configure:3285: $? =3D 1
configure:3274: x86_64-poky-linux-gcc -qversion >&5
x86_64-poky-linux-gcc: error: unrecognized option '-qversion'
x86_64-poky-linux-gcc: fatal error: no input files
compilation terminated.

I've tried to figure out what this error means but haven't had any luck.  P=
eople have made some suggestions that I've tried and they haven't worked ei=
ther.  So, I've been told to file a bug about this but I wasn't sure which =
category it goes under and I've never filed a bug in the Yocto project befo=
re.  I'll try to get to it this week.

In the meantime, if anyone has tried to get through the ADT manual and is c=
ross compiling I'd love to hear about how it went for you.

Thanks,

~Andy Gikling
LasX Industries Inc.

--_000_23FC35CD1508674EBB20455EB700B1B4BCE870ACEEEXMBX05mmepro_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Monospace;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>All,<o:p></o:p><=
/p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I&#8217;v=
e had very mixed results during the three or four times I&#8217;ve run thro=
ugh the ADT manual from scratch.&nbsp; There seems to be a real problem I k=
eep encountering that I&#8217;d like to describe to the community with the =
hope that someone understands why I keep getting stuck.&nbsp; I&#8217;m run=
ning a 32bit Ubuntu 11.10 VM and trying to build for a x86_64 sugarbay targ=
et machine.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p clas=
s=3DMsoNormal>The issue is that no matter which &#8220;route&#8221; I take =
to setup my toolchain (be it via the installer script or a premade toolchai=
n I&#8217;ve downloaded) I always get &#8220;configure: error: C compiler c=
annot create executables&#8221; when I try to use Project-&gt;Reconfigure P=
roject after starting a new HelloWorld example in Eclipse.&nbsp; The ADT ma=
nual explicitly steps the user through to this point but using the Reconfig=
ure Project feature (that puts together your Makefile for you) never comple=
tes.&nbsp; When looking closer at the config.log I always find something th=
at looks like this:&nbsp; <o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</=
o:p></p><p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'f=
ont-size:10.0pt;font-family:Monospace'>configure:3285: $? =3D 0<o:p></o:p><=
/span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D=
'font-size:10.0pt;font-family:Monospace'>configure:3274: x86_64-poky-linux-=
gcc -v &gt;&amp;5<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-a=
utospace:none'><span style=3D'font-size:10.0pt;font-family:Monospace'>Using=
 built-in specs.<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-au=
tospace:none'><span style=3D'font-size:10.0pt;font-family:Monospace'>COLLEC=
T_GCC=3Dx86_64-poky-linux-gcc<o:p></o:p></span></p><p class=3DMsoNormal sty=
le=3D'text-autospace:none'><span style=3D'font-size:10.0pt;font-family:Mono=
space'>COLLECT_LTO_WRAPPER=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/us=
r/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.6.3/lto-wrapper<o:p></o=
:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span styl=
e=3D'font-size:10.0pt;font-family:Monospace'>Target: x86_64-poky-linux<o:p>=
</o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span s=
tyle=3D'font-size:10.0pt;font-family:Monospace'>Configured with: /srv/home/=
pokybuild/yocto-autobuilder/yocto-slave/nightly-x86-64/build/build/tmp/work=
-shared/gcc-4.6.2+svnr181430-r17/gcc-4_6-branch/configure --build=3Dx86_64-=
linux --host=3Di686-pokysdk-linux --target=3Dx86_64-poky-linux --prefix=3D/=
opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr --exec_prefix=3D/opt/poky/1.=
1.1/sysroots/i686-pokysdk-linux/usr --bindir=3D/opt/poky/1.1.1/sysroots/i68=
6-pokysdk-linux/usr/bin/x86_64-poky-linux --sbindir=3D/opt/poky/1.1.1/sysro=
ots/i686-pokysdk-linux/usr/bin/x86_64-poky-linux --libexecdir=3D/opt/poky/1=
.1.1/sysroots/i686-pokysdk-linux/usr/libexec/x86_64-poky-linux --datadir=3D=
/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/share --sysconfdir=3D/opt/p=
oky/1.1.1/sysroots/i686-pokysdk-linux/etc --sharedstatedir=3D/opt/poky/1.1.=
1/sysroots/i686-pokysdk-linux/com --localstatedir=3D/opt/poky/1.1.1/sysroot=
s/i686-pokysdk-linux/var --libdir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-l=
inux/usr/lib/x86_64-poky-linux --includedir=3D/opt/poky/1.1.1/sysroots/i686=
-pokysdk-linux/usr/include --oldincludedir=3D/opt/poky/1.1.1/sysroots/i686-=
pokysdk-linux/usr/include --infodir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk=
-linux/usr/share/info --mandir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linu=
x/usr/share/man --disable-silent-rules --with-libtool-sysroot=3D/srv/home/p=
okybuild/yocto-autobuilder/yocto-slave/nightly-x86-64/build/build/tmp/sysro=
ots/i686-pokysdk-linux-nativesdk --with-gnu-ld --enable-shared --enable-lan=
guages=3Dc,c++ --enable-threads=3Dposix --disable-multilib --enable-c99 --e=
nable-long-long --enable-symvers=3Dgnu --enable-libstdcxx-pch --program-pre=
fix=3Dx86_64-poky-linux- --enable-target-optspace --enable-lto --enable-lib=
ssp --disable-bootstrap --disable-libgomp --disable-libmudflap --enable-che=
aders=3Dc_global --with-local-prefix=3D/opt/poky/1.1.1/sysroots/x86_64-poky=
-linux/usr --with-gxx-include-dir=3D/usr/include/c++ --with-build-time-tool=
s=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-x86-64/build/=
build/tmp/sysroots/x86_64-linux/usr/x86_64-poky-linux/bin --with-sysroot=3D=
/opt/poky/1.1.1/sysroots/x86_64-poky-linux --with-build-sysroot=3D/srv/home=
/pokybuild/yocto-autobuilder/yocto-slave/nightly-x86-64/build/build/tmp/sys=
roots/qemux86-64 --disable-libunwind-exceptions --disable-libssp --disable-=
libgomp --disable-libmudflap --with-mpfr=3D/srv/home/pokybuild/yocto-autobu=
ilder/yocto-slave/nightly-x86-64/build/build/tmp/sysroots/i686-pokysdk-linu=
x-nativesdk --with-mpc=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/=
nightly-x86-64/build/build/tmp/sysroots/i686-pokysdk-linux-nativesdk --enab=
le-nls --enable-__cxa_atexit<o:p></o:p></span></p><p class=3DMsoNormal styl=
e=3D'text-autospace:none'><span style=3D'font-size:10.0pt;font-family:Monos=
pace'>Thread model: posix<o:p></o:p></span></p><p class=3DMsoNormal style=
=3D'text-autospace:none'><span style=3D'font-size:10.0pt;font-family:Monosp=
ace'>gcc version 4.6.3 20111117 (prerelease) (GCC) <o:p></o:p></span></p><p=
 class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size:1=
0.0pt;font-family:Monospace'>configure:3285: $? =3D 0<o:p></o:p></span></p>=
<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;font-family:Monospace'>configure:3274: x86_64-poky-linux-gcc -V &gt=
;&amp;5<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:n=
one'><span style=3D'font-size:10.0pt;font-family:Monospace'>x86_64-poky-lin=
ux-gcc: error: unrecognized option '-V'<o:p></o:p></span></p><p class=3DMso=
Normal style=3D'text-autospace:none'><span style=3D'font-size:10.0pt;font-f=
amily:Monospace'>x86_64-poky-linux-gcc: fatal error: no input files<o:p></o=
:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span styl=
e=3D'font-size:10.0pt;font-family:Monospace'>compilation terminated.<o:p></=
o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span sty=
le=3D'font-size:10.0pt;font-family:Monospace'>configure:3285: $? =3D 1<o:p>=
</o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span s=
tyle=3D'font-size:10.0pt;font-family:Monospace'>configure:3274: x86_64-poky=
-linux-gcc -qversion &gt;&amp;5<o:p></o:p></span></p><p class=3DMsoNormal s=
tyle=3D'text-autospace:none'><span style=3D'font-size:10.0pt;font-family:Mo=
nospace'>x86_64-poky-linux-gcc: error: unrecognized option '-qversion'<o:p>=
</o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span s=
tyle=3D'font-size:10.0pt;font-family:Monospace'>x86_64-poky-linux-gcc: fata=
l error: no input files<o:p></o:p></span></p><p class=3DMsoNormal><span sty=
le=3D'font-size:10.0pt;font-family:Monospace'>compilation terminated.<o:p><=
/o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-f=
amily:Monospace'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span sty=
le=3D'font-size:10.0pt;font-family:Monospace'>I&#8217;ve tried to figure ou=
t what this error means but haven&#8217;t had any luck. &nbsp;People have m=
ade some suggestions that I&#8217;ve tried and they haven&#8217;t worked ei=
ther. &nbsp;So, I&#8217;ve been told to file a bug about this but I wasn&#8=
217;t sure which category it goes under and I&#8217;ve never filed a bug in=
 the Yocto project before.&nbsp; I&#8217;ll try to get to it this week.<o:p=
></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font=
-family:Monospace'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span s=
tyle=3D'font-size:10.0pt;font-family:Monospace'>In the meantime, if anyone =
has tried to get through the ADT manual and is cross compiling I&#8217;d lo=
ve to hear about how it went for you.<o:p></o:p></span></p><p class=3DMsoNo=
rmal><span style=3D'font-size:10.0pt;font-family:Monospace'><o:p>&nbsp;</o:=
p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-fami=
ly:Monospace'>Thanks,<o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:10.0pt;font-family:Monospace'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:Monospace'>~A=
ndy Gikling<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-s=
ize:10.0pt;font-family:Monospace'>LasX Industries Inc.</span><o:p></o:p></p=
></div></body></html>=

--_000_23FC35CD1508674EBB20455EB700B1B4BCE870ACEEEXMBX05mmepro_--
