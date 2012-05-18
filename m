Return-Path: <jsauer@vernier.com>
Received: from na3sys009aog116.obsmtp.com (na3sys009aog116.obsmtp.com
	[74.125.149.240])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id E057DE013B7
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 12:02:05 -0700 (PDT)
Received: from mail-qa0-f42.google.com ([209.85.216.42]) (using TLSv1) by
	na3sys009aob116.postini.com ([74.125.148.12]) with SMTP
	ID DSNKT7acraZMoVWFmVdyDZZZnbYEP4h4cYhT@postini.com;
	Fri, 18 May 2012 12:02:06 PDT
Received: by qafi31 with SMTP id i31so396954qaf.15
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 12:02:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=IIn0YWFp+T1cZn49kcIfb8Wmzvoawopw1/12OeIPhSE=;
	b=ZbkEobLOji1RFq0SG933OYp48VOaBEZ013BAiuQYmVCRN9rpL+FK5mAUR00HFIns4D
	8Y6eWmF3A1EpjwKr6T8y86CpuCDZThRVwPWHJMUmfNL+o4ki5qGYCAZnWe8UMuX8MkAC
	G2IWWmAMo+JL265BFoXVS67e1MpOo+lvf/12VlFfuoaZFhUVhCC15PH50nSroquf3GDs
	SaEvgsve4QrOHtcNe/qXgg5CzMqTdtSdRIeYOEUBJ3lU+A8F/F1OQ2gMdyb01wEWwuzx
	ytANNulYDbBTf3JzBxfnNkWNZ1/pEkuQAvysPLS+6lQOjcCYSBRJpo8VTrK2mb0pjEvU
	UdRQ==
MIME-Version: 1.0
Received: by 10.229.136.68 with SMTP id q4mr6129490qct.85.1337367724493; Fri,
	18 May 2012 12:02:04 -0700 (PDT)
Received: by 10.229.12.130 with HTTP; Fri, 18 May 2012 12:02:04 -0700 (PDT)
Date: Fri, 18 May 2012 12:02:04 -0700
Message-ID: <CAKrB+hkmTQuYOS9XYfLWQcLDwJPF9wQZ0FdAULH87AKpL4ZUGg@mail.gmail.com>
From: Joe Sauer <jsauer@vernier.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlEVmbU265B3VImSUH+v733RNK9WSQMAUDwIZic512ejMCZ3LH5frybtX5m7fdXme7qbv3c
Subject: problems building eglibc-locale and gcc-runtime for LabQuest on edison 6.0.1
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
X-List-Received-Date: Fri, 18 May 2012 19:02:06 -0000
Content-Type: multipart/alternative; boundary=00248c6a6566270c6e04c0543068

--00248c6a6566270c6e04c0543068
Content-Type: text/plain; charset=ISO-8859-1

I am in the process of upgrading from green 3.3.1 to edison 6.0.1 for
LabQuest, an armv7a machine.  I'm making pretty good progress so far but am
dead in the water now.  I'm woefully under-informed for these kinds of
issues, so I'm hoping someone can help me get unstuck.

These are the first errors that occur on a clean build.  Note that both
failures are in standard-issue meta recipes, not my own (meta-labquest).
Here's the sanitized log. I highlighted the actual errors for clarity.

OE Build Configuration:
BB_VERSION        = "1.13.3"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "lq2"
DISTRO            = "poky"
DISTRO_VERSION    = "1.1.1"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "soft"
meta
meta-yocto
meta-labquest     = "<unknown>:<unknown>"

NOTE: Running task  270 of 4917 (ID: 775,
/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/meta/recipes-devtools/gcc/
gcc-runtime_4.6.bb, do_compile)
NOTE: Running task 2207 of 4917 (ID: 477,
/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/meta/recipes-core/eglibc/
eglibc-locale_2.13.bb, do_install)

ERROR: Function 'do_install' failed (see
/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/work/armv7a-poky-linux-gnueabi/eglibc-locale-2.13-r16/temp/log.do_install.8928
for further information)
Log data follows:
*| cp: cannot stat
`/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2/usr/include/eglibc-locale-internal-armv7a-poky-linux-gnueabi//usr/bin/*':
No such file or directory*
NOTE: package eglibc-locale-2.13-r16: task do_install: Failed

ERROR: Function 'do_compile' failed (see
/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/work/armv7a-poky-linux-gnueabi/gcc-runtime-4.6.2+svnr181430-r17/temp/log.do_compile.8858
for further information)
Log data follows:
| Making all in src
| make[2]: Entering directory
`/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/work/armv7a-poky-linux-gnueabi/gcc-runtime-4.6.2+svnr181430-r17/gcc-4_6-branch/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libstdc++-v3/src'
| /bin/sh ../libtool --tag CXX   --mode=link arm-poky-linux-gnueabi-g++
 -march=armv7-a -fno-tree-vectorize -mtune=cortex-a8
--sysroot=/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2
-nostdinc++ -nostdlib++ -Wl,-O1 -Wl,-z,relro -Wl,--gc-sections
 -fno-implicit-templates -Wall -Wextra -Wwrite-strings -Wcast-qual
 -fdiagnostics-show-location=once  -ffunction-sections -fdata-sections
'-Wl,-O1' '-Wl,--hash-style=gnu' '-Wl,--as-needed' -o libstdc++.la
-version-info 6:16:0 -Wl,--version-script=libstdc++-symbols.ver -lm -rpath
/usr/lib atomic.lo bitmap_allocator.lo pool_allocator.lo mt_allocator.lo
codecvt.lo compatibility.lo compatibility-c++0x.lo
compatibility-debug_list.lo compatibility-debug_list-2.lo
compatibility-list.lo compatibility-list-2.lo complex_io.lo ctype.lo
debug.lo functexcept.lo functional.lo globals_io.lo hash_c++0x.lo
hash_tr1.lo hashtable_c++0x.lo hashtable_tr1.lo ios.lo ios_failure.lo
ios_init.lo ios_locale.lo limits.lo list.lo locale.lo locale_init.lo
locale_facets.lo localename.lo math_stubs_float.lo
math_stubs_long_double.lo stdexcept.lo strstream.lo system_error.lo tree.lo
istream.lo placeholders.lo regex.lo shared_ptr.lo streambuf.lo mutex.lo
condition_variable.lo chrono.lo thread.lo future.lo valarray.lo
atomicity.lo codecvt_members.lo collate_members.lo ctype_members.lo
messages_members.lo monetary_members.lo numeric_members.lo time_members.lo
basic_file.lo c++locale.lo allocator-inst.lo concept-inst.lo ext-inst.lo
fstream-inst.lo ios-inst.lo iostream-inst.lo istream-inst.lo locale-inst.lo
misc-inst.lo ostream-inst.lo sstream-inst.lo streambuf-inst.lo
string-inst.lo wlocale-inst.lo wstring-inst.lo    ../libsupc++/libsupc++
convenience.la
| libtool: link: arm-poky-linux-gnueabi-g++  -march=armv7-a
-fno-tree-vectorize -mtune=cortex-a8
--sysroot=/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2
-nostdinc++ -nostdlib++ -shared -nostdlib
/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2/usr/lib/crti.o
/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2/usr/lib/arm-poky-linux-gnueabi/4.6.3/crtbeginS.o
 .libs/atomic.o .libs/bitmap_allocator.o .libs/pool_allocator.o
.libs/mt_allocator.o .libs/codecvt.o .libs/compatibility.o
.libs/compatibility-c++0x.o .libs/compatibility-debug_list.o
.libs/compatibility-debug_list-2.o .libs/compatibility-list.o
.libs/compatibility-list-2.o .libs/complex_io.o .libs/ctype.o .libs/debug.o
.libs/functexcept.o .libs/functional.o .libs/globals_io.o
.libs/hash_c++0x.o .libs/hash_tr1.o .libs/hashtable_c++0x.o
.libs/hashtable_tr1.o .libs/ios.o .libs/ios_failure.o .libs/ios_init.o
.libs/ios_locale.o .libs/limits.o .libs/list.o .libs/locale.o
.libs/locale_init.o .libs/locale_facets.o .libs/localename.o
.libs/math_stubs_float.o .libs/math_stubs_long_double.o .libs/stdexcept.o
.libs/strstream.o .libs/system_error.o .libs/tree.o .libs/istream.o
.libs/placeholders.o .libs/regex.o .libs/shared_ptr.o .libs/streambuf.o
.libs/mutex.o .libs/condition_variable.o .libs/chrono.o .libs/thread.o
.libs/future.o .libs/valarray.o .libs/atomicity.o .libs/codecvt_members.o
.libs/collate_members.o .libs/ctype_members.o .libs/messages_members.o
.libs/monetary_members.o .libs/numeric_members.o .libs/time_members.o
.libs/basic_file.o .libs/c++locale.o .libs/allocator-inst.o
.libs/concept-inst.o .libs/ext-inst.o .libs/fstream-inst.o .libs/ios-inst.o
.libs/iostream-inst.o .libs/istream-inst.o .libs/locale-inst.o
.libs/misc-inst.o .libs/ostream-inst.o .libs/sstream-inst.o
.libs/streambuf-inst.o .libs/string-inst.o .libs/wlocale-inst.o
.libs/wstring-inst.o  -Wl,--whole-archive
../libsupc++/.libs/libsupc++convenience.a -Wl,--no-whole-archive  -lm
-L/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.6.3
-L/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.6.3/../../../../../arm-poky-linux-gnueabi/lib
-L/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2/lib
-L/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2/usr/lib/arm-poky-linux-gnueabi/4.6.3
-L/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2/usr/lib
-lc -lgcc_s
/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2/usr/lib/arm-poky-linux-gnueabi/4.6.3/crtendS.o
/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2/usr/lib/crtn.o
 -march=armv7-a -mtune=cortex-a8 -Wl,-O1 -Wl,-z -Wl,relro -Wl,--gc-sections
-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed
-Wl,--version-script=libstdc++-symbols.ver   -Wl,-soname -Wl,libstdc++.so.6
-o .libs/libstdc++.so.6.0.16
*|
/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.6.3/ld:
cannot find -lm*
| collect2: ld returned 1 exit status
NOTE: package gcc-runtime-4.6.2+svnr181430-r17: task do_compile: Failed

ERROR:
'/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/meta/recipes-devtools/gcc/
gcc-runtime_4.6.bb' failed
ERROR:
'/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/meta/recipes-core/eglibc/
eglibc-locale_2.13.bb' failed

--Joe Sauer
Vernier Software & Technology

--00248c6a6566270c6e04c0543068
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I am in the process of upgrading from green 3.3.1 to edison 6.0.1 for LabQu=
est, an armv7a machine. =A0I&#39;m making pretty good progress so far but a=
m dead in the water now. =A0I&#39;m woefully under-informed for these kinds=
 of issues, so I&#39;m hoping someone can help me get unstuck.<div>
<br></div><div>These are the first errors that occur on a clean build. =A0N=
ote that both failures are in standard-issue meta recipes, not my own (meta=
-labquest).</div><div>Here&#39;s the sanitized log. I highlighted the actua=
l errors for clarity.<br>
<div><br></div><div><div><font face=3D"&#39;courier new&#39;, monospace" si=
ze=3D"1">OE Build Configuration:</font></div><div><font face=3D"&#39;courie=
r new&#39;, monospace" size=3D"1">BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.13.=
3&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">TARGET_ARCH=
 =A0 =A0 =A0 =3D &quot;arm&quot;</font></div><div><font face=3D"&#39;courie=
r new&#39;, monospace" size=3D"1">TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux=
-gnueabi&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">MACHINE =A0=
 =A0 =A0 =A0 =A0 =3D &quot;lq2&quot;</font></div><div><font face=3D"&#39;co=
urier new&#39;, monospace" size=3D"1">DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &qu=
ot;poky&quot;</font></div><div>
<font face=3D"&#39;courier new&#39;, monospace" size=3D"1">DISTRO_VERSION =
=A0 =A0=3D &quot;1.1.1&quot;</font></div><div><font face=3D"&#39;courier ne=
w&#39;, monospace" size=3D"1">TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp ne=
on cortexa8&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">TARGET_FPU =
=A0 =A0 =A0 =A0=3D &quot;soft&quot;</font></div><div><font face=3D"&#39;cou=
rier new&#39;, monospace" size=3D"1">meta =A0 =A0 =A0 =A0 =A0 =A0 =A0</font=
></div><div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">meta=
-yocto =A0 =A0 =A0 =A0</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">meta-labque=
st =A0 =A0 =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</font></div><div=
><font face=3D"&#39;courier new&#39;, monospace" size=3D"1"><br></font></di=
v><div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">NOTE: Run=
ning task =A0270 of 4917 (ID: 775, /home/jsauer/Desktop/Yocto/poky-edison-6=
.0.1/meta/recipes-devtools/gcc/<a href=3D"http://gcc-runtime_4.6.bb">gcc-ru=
ntime_4.6.bb</a>, do_compile)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">NOTE: Runni=
ng task 2207 of 4917 (ID: 477, /home/jsauer/Desktop/Yocto/poky-edison-6.0.1=
/meta/recipes-core/eglibc/<a href=3D"http://eglibc-locale_2.13.bb">eglibc-l=
ocale_2.13.bb</a>, do_install)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1"><br></font>=
</div><div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">ERROR=
: Function &#39;do_install&#39; failed (see /home/jsauer/Desktop/Yocto/poky=
-edison-6.0.1/build/tmp/work/armv7a-poky-linux-gnueabi/eglibc-locale-2.13-r=
16/temp/log.do_install.8928 for further information)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">Log data fo=
llows:</font></div><div><b><font face=3D"&#39;courier new&#39;, monospace" =
size=3D"1" style=3D"background-color:rgb(255,255,0)">| cp: cannot stat `/ho=
me/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2/usr/includ=
e/eglibc-locale-internal-armv7a-poky-linux-gnueabi//usr/bin/*&#39;: No such=
 file or directory</font></b></div>
<div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">NOTE: packa=
ge eglibc-locale-2.13-r16: task do_install: Failed</font></div><div><font f=
ace=3D"&#39;courier new&#39;, monospace" size=3D"1"><br></font></div><div><=
font face=3D"&#39;courier new&#39;, monospace" size=3D"1">ERROR: Function &=
#39;do_compile&#39; failed (see /home/jsauer/Desktop/Yocto/poky-edison-6.0.=
1/build/tmp/work/armv7a-poky-linux-gnueabi/gcc-runtime-4.6.2+svnr181430-r17=
/temp/log.do_compile.8858 for further information)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">Log data fo=
llows:</font></div><div><font face=3D"&#39;courier new&#39;, monospace" siz=
e=3D"1">| Making all in src</font></div><div><font face=3D"&#39;courier new=
&#39;, monospace" size=3D"1">| make[2]: Entering directory `/home/jsauer/De=
sktop/Yocto/poky-edison-6.0.1/build/tmp/work/armv7a-poky-linux-gnueabi/gcc-=
runtime-4.6.2+svnr181430-r17/gcc-4_6-branch/build.arm-poky-linux-gnueabi.ar=
m-poky-linux-gnueabi/libstdc++-v3/src&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">| /bin/sh .=
./libtool --tag CXX =A0 --mode=3Dlink arm-poky-linux-gnueabi-g++ =A0-march=
=3Darmv7-a -fno-tree-vectorize -mtune=3Dcortex-a8 --sysroot=3D/home/jsauer/=
Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2 -nostdinc++ -nostdli=
b++ -Wl,-O1 -Wl,-z,relro -Wl,--gc-sections =A0-fno-implicit-templates -Wall=
 -Wextra -Wwrite-strings -Wcast-qual =A0-fdiagnostics-show-location=3Donce =
=A0-ffunction-sections -fdata-sections =A0 &#39;-Wl,-O1&#39; &#39;-Wl,--has=
h-style=3Dgnu&#39; &#39;-Wl,--as-needed&#39; -o libstdc++.la -version-info =
6:16:0 -Wl,--version-script=3Dlibstdc++-symbols.ver -lm -rpath /usr/lib ato=
mic.lo bitmap_allocator.lo pool_allocator.lo mt_allocator.lo codecvt.lo com=
patibility.lo compatibility-c++0x.lo compatibility-debug_list.lo compatibil=
ity-debug_list-2.lo compatibility-list.lo compatibility-list-2.lo complex_i=
o.lo ctype.lo debug.lo functexcept.lo functional.lo globals_io.lo hash_c++0=
x.lo hash_tr1.lo hashtable_c++0x.lo hashtable_tr1.lo ios.lo ios_failure.lo =
ios_init.lo ios_locale.lo limits.lo list.lo locale.lo locale_init.lo locale=
_facets.lo localename.lo math_stubs_float.lo math_stubs_long_double.lo stde=
xcept.lo strstream.lo system_error.lo tree.lo istream.lo placeholders.lo re=
gex.lo shared_ptr.lo streambuf.lo mutex.lo condition_variable.lo chrono.lo =
thread.lo future.lo valarray.lo atomicity.lo codecvt_members.lo collate_mem=
bers.lo ctype_members.lo messages_members.lo monetary_members.lo numeric_me=
mbers.lo time_members.lo basic_file.lo c++locale.lo allocator-inst.lo conce=
pt-inst.lo ext-inst.lo fstream-inst.lo ios-inst.lo iostream-inst.lo istream=
-inst.lo locale-inst.lo misc-inst.lo ostream-inst.lo sstream-inst.lo stream=
buf-inst.lo string-inst.lo wlocale-inst.lo wstring-inst.lo =A0 =A0../libsup=
c++/libsupc++<a href=3D"http://convenience.la">convenience.la</a></font></d=
iv>
<div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">| libtool: =
link: arm-poky-linux-gnueabi-g++ =A0-march=3Darmv7-a -fno-tree-vectorize -m=
tune=3Dcortex-a8 --sysroot=3D/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/b=
uild/tmp/sysroots/lq2 -nostdinc++ -nostdlib++ -shared -nostdlib /home/jsaue=
r/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2/usr/lib/crti.o /ho=
me/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2/usr/lib/ar=
m-poky-linux-gnueabi/4.6.3/crtbeginS.o =A0.libs/atomic.o .libs/bitmap_alloc=
ator.o .libs/pool_allocator.o .libs/mt_allocator.o .libs/codecvt.o .libs/co=
mpatibility.o .libs/compatibility-c++0x.o .libs/compatibility-debug_list.o =
.libs/compatibility-debug_list-2.o .libs/compatibility-list.o .libs/compati=
bility-list-2.o .libs/complex_io.o .libs/ctype.o .libs/debug.o .libs/functe=
xcept.o .libs/functional.o .libs/globals_io.o .libs/hash_c++0x.o .libs/hash=
_tr1.o .libs/hashtable_c++0x.o .libs/hashtable_tr1.o .libs/ios.o .libs/ios_=
failure.o .libs/ios_init.o .libs/ios_locale.o .libs/limits.o .libs/list.o .=
libs/locale.o .libs/locale_init.o .libs/locale_facets.o .libs/localename.o =
.libs/math_stubs_float.o .libs/math_stubs_long_double.o .libs/stdexcept.o .=
libs/strstream.o .libs/system_error.o .libs/tree.o .libs/istream.o .libs/pl=
aceholders.o .libs/regex.o .libs/shared_ptr.o .libs/streambuf.o .libs/mutex=
.o .libs/condition_variable.o .libs/chrono.o .libs/thread.o .libs/future.o =
.libs/valarray.o .libs/atomicity.o .libs/codecvt_members.o .libs/collate_me=
mbers.o .libs/ctype_members.o .libs/messages_members.o .libs/monetary_membe=
rs.o .libs/numeric_members.o .libs/time_members.o .libs/basic_file.o .libs/=
c++locale.o .libs/allocator-inst.o .libs/concept-inst.o .libs/ext-inst.o .l=
ibs/fstream-inst.o .libs/ios-inst.o .libs/iostream-inst.o .libs/istream-ins=
t.o .libs/locale-inst.o .libs/misc-inst.o .libs/ostream-inst.o .libs/sstrea=
m-inst.o .libs/streambuf-inst.o .libs/string-inst.o .libs/wlocale-inst.o .l=
ibs/wstring-inst.o =A0-Wl,--whole-archive ../libsupc++/.libs/libsupc++conve=
nience.a -Wl,--no-whole-archive =A0-lm -L/home/jsauer/Desktop/Yocto/poky-ed=
ison-6.0.1/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-poky-linux-gnueab=
i/gcc/arm-poky-linux-gnueabi/4.6.3 -L/home/jsauer/Desktop/Yocto/poky-edison=
-6.0.1/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-poky-linux-gnueabi/gc=
c/arm-poky-linux-gnueabi/4.6.3/../../../../../arm-poky-linux-gnueabi/lib -L=
/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2/lib -L/=
home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq2/usr/lib/=
arm-poky-linux-gnueabi/4.6.3 -L/home/jsauer/Desktop/Yocto/poky-edison-6.0.1=
/build/tmp/sysroots/lq2/usr/lib -lc -lgcc_s /home/jsauer/Desktop/Yocto/poky=
-edison-6.0.1/build/tmp/sysroots/lq2/usr/lib/arm-poky-linux-gnueabi/4.6.3/c=
rtendS.o /home/jsauer/Desktop/Yocto/poky-edison-6.0.1/build/tmp/sysroots/lq=
2/usr/lib/crtn.o =A0-march=3Darmv7-a -mtune=3Dcortex-a8 -Wl,-O1 -Wl,-z -Wl,=
relro -Wl,--gc-sections -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -Wl,=
--version-script=3Dlibstdc++-symbols.ver =A0 -Wl,-soname -Wl,libstdc++.so.6=
 -o .libs/libstdc++.so.6.0.16</font></div>
<div><b><font face=3D"&#39;courier new&#39;, monospace" size=3D"1" style=3D=
"background-color:rgb(255,255,0)">| /home/jsauer/Desktop/Yocto/poky-edison-=
6.0.1/build/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-poky-linux-gnueabi=
/gcc/arm-poky-linux-gnueabi/4.6.3/ld: cannot find -lm</font></b></div>
<div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">| collect2:=
 ld returned 1 exit status</font></div><div><font face=3D"&#39;courier new&=
#39;, monospace" size=3D"1">NOTE: package gcc-runtime-4.6.2+svnr181430-r17:=
 task do_compile: Failed</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1"><br></font>=
</div><div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">ERROR=
: &#39;/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/meta/recipes-devtools/g=
cc/<a href=3D"http://gcc-runtime_4.6.bb">gcc-runtime_4.6.bb</a>&#39; failed=
</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" size=3D"1">ERROR: &#39=
;/home/jsauer/Desktop/Yocto/poky-edison-6.0.1/meta/recipes-core/eglibc/<a h=
ref=3D"http://eglibc-locale_2.13.bb">eglibc-locale_2.13.bb</a>&#39; failed<=
/font></div>
</div></div><div><br></div><div>--Joe Sauer</div><div>Vernier Software &amp=
; Technology</div>

--00248c6a6566270c6e04c0543068--
