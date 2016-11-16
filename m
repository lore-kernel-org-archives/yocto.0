Return-Path: <elazarl@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44833E00C15; Wed, 16 Nov 2016 02:06:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (elazarl[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02060E0095F
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 02:06:02 -0800 (PST)
Received: by mail-qt0-f178.google.com with SMTP id p16so94339482qta.0
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 02:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=HTEip46SMgGBq03baZclD742UbYhTDha+c3C6vxM9D0=;
	b=OWoFlcVTUDWl3FsSG3E5bqGTMbKlgCFa18d+EnHmprje816RRYZdlDSbGg0FGmxN6z
	PEK9CuDsmw/3IxclfTD6LTpy0nejOx0WenykbJ6IlrjoHZQeHqzL1+FOyj3J7ZLo1z8a
	yEqo9hjH66mcdROqdz6o0bUDVO8fuJTLkaGqQwh5+PF8OAcX+gjWMz95GigjHVKAVZKd
	pcquWIece0gSWuv6anf0zfacv4HZQs7KzhXA3NZ+b8r77q3Qm1zbPs2nOKCZldG77Nrp
	9JE4haKEsH7QFpkkhoOs9h5fnn3Qy8zf7peEGe9WTmCRdBJGqHOwYHpAdOaf23yPrYii
	un8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HTEip46SMgGBq03baZclD742UbYhTDha+c3C6vxM9D0=;
	b=C333eTpjE/LrOtOFInfK1ecnea5tU/VRHcGt2UsxjKST9Ww5a1x6wRcYf/VmJyBomi
	UIjEUJW2meTGU2Up8l2644ATOAn+lKtfdSHhaNXKm7LzptFZdiHrq4e7843XEeI+kPmX
	QmxT/USLbc0ykK1zRUEXEd8tgUNyW2ZPxfM2RGyUq1DL7frItvdWDB0ErbDGz23oEGmE
	OHZDYeDes0cOGajGpHT/m7hDN2791LleLZ8F666+b2bs9zdq682DNret5NTHIYduFpv2
	R7K6KmnRNx5IMRHdZid6AsUIUNTUz59kB27k3yWTYQi6Ol+F1gFPjrfApAnvNKIZ93vH
	Hwrg==
X-Gm-Message-State: ABUngvfyogqf7OFwtmtrxPcqShuIF8K/jeotDpQ1SBkwOD3vg003l0najnQ0zpQ8t8Xj277gWMrLCHkMlfBglQ==
X-Received: by 10.25.66.213 with SMTP id p204mr893170lfa.110.1479290761381;
	Wed, 16 Nov 2016 02:06:01 -0800 (PST)
MIME-Version: 1.0
From: Elazar Leibovich <elazarl@gmail.com>
Date: Wed, 16 Nov 2016 10:05:49 +0000
Message-ID: <CAHNTFm+FxmRv5OOf9geKdQ_hPfzcoi-chviAWDmy1jK_aDTHnQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 17 Nov 2016 07:53:53 -0800
Subject: undefined references to `__dso_handle'
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
X-List-Received-Date: Wed, 16 Nov 2016 10:06:10 -0000
Content-Type: multipart/alternative; boundary=94eb2c1a077a5a0ee20541683865

--94eb2c1a077a5a0ee20541683865
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I followed the quickstart tutorial, branch morty, to create the most basic
image on local QEMU, and I got compilation errors for __dso_handle missing.
I'm using ubuntu 16.
Here is an example output:
++ -nostdlib++  -fPIC -DPIC -D_GLIBCXX_SHARED -shared -nostdlib
/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr/lib=
/crti.o
/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr/lib=
/arm-poky-linux-gnueabi/6.2.0/crtbeginS.o
 .libs/compatibility.o .libs/compatibility-debug_list.o
.libs/compatibility-debug_list-2.o .libs/compatibility-c++0x.o
.libs/compatibility-atomic-c++0x.o .libs/compatibility-thread-c++0x.o
.libs/compatibility-chrono.o .libs/compatibility-condvar.o
 -Wl,--whole-archive ../libsupc++/.libs/libsupc++convenience.a
../src/c++98/.libs/libc++98convenience.a
../src/c++11/.libs/libc++11convenience.a -Wl,--no-whole-archive  -lm
-L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/x86_64-linux/usr/l=
ib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/6.2.0
-L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/lib
-L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr/l=
ib/arm-poky-linux-gnueabi/6.2.0
-L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr/l=
ib
-lc -lgcc_s
/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr/lib=
/arm-poky-linux-gnueabi/6.2.0/crtendS.o
/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr/lib=
/crtn.o
 -march=3Darmv7ve -marm -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcorte=
x-a7
-Wl,-O1 -Wl,-z -Wl,relro -Wl,--gc-sections -Wl,-O1 -Wl,--hash-style=3Dgnu
-Wl,--as-needed -Wl,--version-script=3Dlibstdc++-symbols.ver   -Wl,-soname
-Wl,libstdc++.so.6 -o .libs/libstdc++.so.6.0.22
| .libs/compatibility-c++0x.o: In function
`__static_initialization_and_destruction_0':
|
/usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnueabi.=
arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libstdc++-v3/src/../../../../=
../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/co=
mpatibility-c++0x.cc:215:
undefined reference to `__dso_handle'
| ../src/c++11/.libs/libc++11convenience.a(system_error.o): In function
`__static_initialization_and_destruction_0':
|
/usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnueabi.=
arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libstdc++-v3/src/c++11/../../=
../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src=
/c++11/system_error.cc:71:
undefined reference to `__dso_handle'
| ../src/c++98/.libs/libc++98convenience.a(mt_allocator.o): In function
`get_freelist':
|
/usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnueabi.=
arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libstdc++-v3/src/c++98/../../=
../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src=
/c++98/mt_allocator.cc:64:
undefined reference to `__dso_handle'
| ../src/c++98/.libs/libc++98convenience.a(c++locale.o): In function
`std::get_catalogs()':
|
/usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnueabi.=
arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libstdc++-v3/src/c++98/c++loc=
ale.cc:251:
undefined reference to `__dso_handle'
| ../src/c++11/.libs/libc++11convenience.a(condition_variable.o): In
function `key_init':
|
/usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnueabi.=
arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libstdc++-v3/src/c++11/../../=
../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src=
/c++11/condition_variable.cc:133:
undefined reference to `__dso_handle'
|
../src/c++11/.libs/libc++11convenience.a(future.o):/usr/src/debug/gcc-runti=
me/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/a=
rm-poky-linux-gnueabi/libstdc++-v3/src/c++11/../../../../../../../../../../=
work-shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/future.cc:64:
more undefined references to `__dso_handle' follow
| collect2: error: ld returned 1 exit status

I'll be happy for help, haven't found similar error when searching the web

--94eb2c1a077a5a0ee20541683865
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I followed the quickstart tutorial,=
 branch morty, to create the most basic image on local QEMU, and I got comp=
ilation errors for __dso_handle missing.</div><div>I&#39;m using ubuntu 16.=
</div><div>Here is an example output:</div><div><div><font face=3D"monospac=
e">++ -nostdlib++ =C2=A0-fPIC -DPIC -D_GLIBCXX_SHARED -shared -nostdlib /me=
dia/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr/lib/cr=
ti.o /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/us=
r/lib/arm-poky-linux-gnueabi/6.2.0/crtbeginS.o =C2=A0.libs/compatibility.o =
.libs/compatibility-debug_list.o .libs/compatibility-debug_list-2.o .libs/c=
ompatibility-c++0x.o .libs/compatibility-atomic-c++0x.o .libs/compatibility=
-thread-c++0x.o .libs/compatibility-chrono.o .libs/compatibility-condvar.o =
=C2=A0-Wl,--whole-archive ../libsupc++/.libs/libsupc++convenience.a ../src/=
c++98/.libs/libc++98convenience.a ../src/c++11/.libs/libc++11convenience.a =
-Wl,--no-whole-archive =C2=A0-lm -L/media/elazar/788854CC88548B10/poky/buil=
d/tmp/sysroots/x86_64-linux/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-lin=
ux-gnueabi/6.2.0 -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/r=
aspberrypi3/lib -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/ra=
spberrypi3/usr/lib/arm-poky-linux-gnueabi/6.2.0 -L/media/elazar/788854CC885=
48B10/poky/build/tmp/sysroots/raspberrypi3/usr/lib -lc -lgcc_s /media/elaza=
r/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr/lib/arm-poky-li=
nux-gnueabi/6.2.0/crtendS.o /media/elazar/788854CC88548B10/poky/build/tmp/s=
ysroots/raspberrypi3/usr/lib/crtn.o =C2=A0-march=3Darmv7ve -marm -mfpu=3Dne=
on-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 -Wl,-O1 -Wl,-z -Wl,relro -Wl,=
--gc-sections -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -Wl,--version-=
script=3Dlibstdc++-symbols.ver =C2=A0 -Wl,-soname -Wl,libstdc++.so.6 -o .li=
bs/libstdc++.so.6.0.22</font></div><div><font face=3D"monospace">| .libs/co=
mpatibility-c++0x.o: In function `__static_initialization_and_destruction_0=
&#39;:</font></div><div><font face=3D"monospace">| /usr/src/debug/gcc-runti=
me/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/a=
rm-poky-linux-gnueabi/libstdc++-v3/src/../../../../../../../../../work-shar=
ed/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/compatibility-c++0x.cc:215=
: undefined reference to `__dso_handle&#39;</font></div><div><font face=3D"=
monospace">| ../src/c++11/.libs/libc++11convenience.a(system_error.o): In f=
unction `__static_initialization_and_destruction_0&#39;:</font></div><div><=
font face=3D"monospace">| /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/bui=
ld.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/lib=
stdc++-v3/src/c++11/../../../../../../../../../../work-shared/gcc-6.2.0-r0/=
gcc-6.2.0/libstdc++-v3/src/c++11/system_error.cc:71: undefined reference to=
 `__dso_handle&#39;</font></div><div><font face=3D"monospace">| ../src/c++9=
8/.libs/libc++98convenience.a(mt_allocator.o): In function `get_freelist&#3=
9;:</font></div><div><font face=3D"monospace">| /usr/src/debug/gcc-runtime/=
6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-=
poky-linux-gnueabi/libstdc++-v3/src/c++98/../../../../../../../../../../wor=
k-shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++98/mt_allocator.cc:64: =
undefined reference to `__dso_handle&#39;</font></div><div><font face=3D"mo=
nospace">| ../src/c++98/.libs/libc++98convenience.a(c++locale.o): In functi=
on `std::get_catalogs()&#39;:</font></div><div><font face=3D"monospace">| /=
usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnueabi.a=
rm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libstdc++-v3/src/c++98/c++loca=
le.cc:251: undefined reference to `__dso_handle&#39;</font></div><div><font=
 face=3D"monospace">| ../src/c++11/.libs/libc++11convenience.a(condition_va=
riable.o): In function `key_init&#39;:</font></div><div><font face=3D"monos=
pace">| /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-=
gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libstdc++-v3/src/c++1=
1/../../../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc+=
+-v3/src/c++11/condition_variable.cc:133: undefined reference to `__dso_han=
dle&#39;</font></div><div><font face=3D"monospace">| ../src/c++11/.libs/lib=
c++11convenience.a(future.o):/usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/=
build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/=
libstdc++-v3/src/c++11/../../../../../../../../../../work-shared/gcc-6.2.0-=
r0/gcc-6.2.0/libstdc++-v3/src/c++11/future.cc:64: more undefined references=
 to `__dso_handle&#39; follow</font></div><div><font face=3D"monospace">| c=
ollect2: error: ld returned 1 exit status</font></div></div><div><br></div>=
<div>I&#39;ll be happy for help, haven&#39;t found similar error when searc=
hing the web</div></div>

--94eb2c1a077a5a0ee20541683865--
