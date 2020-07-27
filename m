Subject: [meta-java] icedtea7-native fails to build with error: cc1plus: all warnings being treated as errors
To: yocto@lists.yoctoproject.org
From: ithijme@gmail.com
X-Originating-Location: Frankfurt am Main, Hesse, DE (185.209.196.166)
X-Originating-Platform: Linux Firefox 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Jul 2020 06:16:25 -0700
Message-ID: <u6iU.1595855785511775765.vBcd@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="j7phaqBtYwNXQgna71wX"

--j7phaqBtYwNXQgna71wX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to build openjdk-8-native, however its icedtea7 dependency fai=
ls to build.
The error is a little hard to parse but it appears to be due to warnings b=
eing treated as errors.
There are a lot of logs like the following:

| In function =E2=80=98int fprintf(FILE*, const char*, ...)=E2=80=99,
|=C2=A0=C2=A0=C2=A0=C2=A0 inlined from =E2=80=98void ADLParser::frame_pars=
e()=E2=80=99 at .../build/tmp/work/x86_64-linux/icedtea7-native/2.1.3-r1.0/=
icedtea-2.1.3/build/openjdk-boot/hotspot/src/share/vm/adlc/adlparse.cpp:111=
8:34:
| /usr/include/x86_64-linux-gnu/bits/stdio2.h:100:24: error: =E2=80=98%s=
=E2=80=99 directive argument is null [-Werror=3Dformat-overflow=3D]
|=C2=A0=C2=A0 100 |=C2=A0=C2=A0 return __fprintf_chk (__stream, __USE_FORT=
IFY_LEVEL - 1, __fmt,
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~
|=C2=A0=C2=A0 101 |=C2=A0=C2=A0=C2=A0 __va_arg_pack ());
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 ~~~~~~~~~~~~~~~~=
~
| cc1plus: all warnings being treated as errors
| make[7]: *** [.../build/tmp/work/x86_64-linux/icedtea7-native/2.1.3-r1.0=
/icedtea-2.1.3/build/openjdk-boot/hotspot/make/linux/makefiles/adlc.make:20=
7: ../generated/adfiles/adlparse.o] Error 1
| make[7]: *** Waiting for unfinished jobs....
| cc1plus: all warnings being treated as errors

I am using the following bblayers:
* poky/meta
* poky/meta-poky
* meta-openembedded/meta-oe
* meta-java

All layers are from the dunfell branch of their respective repositories an=
d are up to date.

Can anybody offer any advice on how to successfully build the openjdk-8-na=
tive recipe ? Anybody have it working themselves ?

Cheers
Jeff

--j7phaqBtYwNXQgna71wX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I am trying to build openjdk-8-native, however its icedtea7 =
dependency fails to build.<br />The error is a little hard to parse but it =
appears to be due to warnings being treated as errors.<br />There are a lot=
 of logs like the following:<br /><br />| In function &lsquo;int fprintf(FI=
LE*, const char*, ...)&rsquo;,<br />|&nbsp;&nbsp;&nbsp;&nbsp; inlined from =
&lsquo;void ADLParser::frame_parse()&rsquo; at .../build/tmp/work/x86_64-li=
nux/icedtea7-native/2.1.3-r1.0/icedtea-2.1.3/build/openjdk-boot/hotspot/src=
/share/vm/adlc/adlparse.cpp:1118:34:<br />| /usr/include/x86_64-linux-gnu/b=
its/stdio2.h:100:24: error: &lsquo;%s&rsquo; directive argument is null [-W=
error=3Dformat-overflow=3D]<br />|&nbsp;&nbsp; 100 |&nbsp;&nbsp; return __f=
printf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,<br />|&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br />|&nbsp;&nb=
sp; 101 |&nbsp;&nbsp;&nbsp; __va_arg_pack ());<br />|&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; ~~~~~~~~~~~~~~~~~<br />| cc1plus: all wa=
rnings being treated as errors<br />| make[7]: *** [.../build/tmp/work/x86_=
64-linux/icedtea7-native/2.1.3-r1.0/icedtea-2.1.3/build/openjdk-boot/hotspo=
t/make/linux/makefiles/adlc.make:207: ../generated/adfiles/adlparse.o] Erro=
r 1<br />| make[7]: *** Waiting for unfinished jobs....<br />| cc1plus: all=
 warnings being treated as errors<br /><br />I am using the following bblay=
ers:<br />* poky/meta<br />* poky/meta-poky<br />* meta-openembedded/meta-o=
e<br />* meta-java<br /><br />All layers are from the dunfell branch of the=
ir respective repositories and are up to date.<br /><br />Can anybody offer=
 any advice on how to successfully build the openjdk-8-native recipe ? Anyb=
ody have it working themselves ?<br /><br />Cheers<br />Jeff

--j7phaqBtYwNXQgna71wX--
