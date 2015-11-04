Return-Path: <truthset@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A9D3E00A28; Wed,  4 Nov 2015 10:08:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (truthset[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C20AE009B8
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2015 10:08:21 -0800 (PST)
Received: by qgbb65 with SMTP id b65so46963162qgb.2
	for <yocto@yoctoproject.org>; Wed, 04 Nov 2015 10:08:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:message-id:date:to:mime-version;
	bh=nqUeUZ4WUzy1icxI9pg2o04bGgWUwr05J9Qa3VgYCEg=;
	b=cbHjeUmRINu0EZUllKytUH+rsuOQc5yZudN/+qmtRD8A9IkLZNlM4V8Hv1hEYOyx0n
	vNfRRewOmxr4dImNYKLpfQf47YXD65d4yqqV4dXtP0fD92RH1lSfzWYPVTyA+hj3CP5W
	GEa1AItQcovm8Jrg/DYpnMOHW+7rZ0aeOxo2VpCT6Tz/bfLRVma7OuG2xDf8JdL4Kv3m
	RN0K3Q07YH2S0Ml27UpMxZqlimn6t+4hZgGYFwPrXPfUQghL9EvE5kbnVMKySEv6Hvn9
	9SCAgwLWREoSSm79sAf/G1CjOiXuf8JcIU6/VRY4RPN+iNsFlmCB7v8F8roqLH31bLu9
	U4Ag==
X-Received: by 10.140.88.232 with SMTP id t95mr2953228qgd.21.1446660501040;
	Wed, 04 Nov 2015 10:08:21 -0800 (PST)
Received: from [192.168.211.18] (cpe-65-190-63-66.nc.res.rr.com.
	[65.190.63.66])
	by smtp.gmail.com with ESMTPSA id e7sm613247qkb.40.2015.11.04.10.08.20
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 04 Nov 2015 10:08:20 -0800 (PST)
From: Jeff Waller <truthset@gmail.com>
Message-Id: <A3D3D7B9-251A-43B6-9D08-00CD6C0FA241@gmail.com>
Date: Wed, 4 Nov 2015 13:08:18 -0500
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: Trying to build tools for Cortex A9 Dora failure on Ubuntu 15 using gcc 5.2
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
X-List-Received-Date: Wed, 04 Nov 2015 18:08:29 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7E13813A-D562-4B18-BD8B-A8608B508FAE"

--Apple-Mail=_7E13813A-D562-4B18-BD8B-A8608B508FAE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

There are probably a number of things wrong including some configuration =
errors I=E2=80=99ve made being that
I=E2=80=99m just getting started.  My ultimate goal is to cross-compile =
tools to augment the OS running on a
3DR Solo drone, here=E2=80=99s the doc on linux binary builds as you can =
see it=E2=80=99s minimal, but I=E2=80=99ve read elsewhere
that the processor is Cortex-A9 based at least, and it looks like it=E2=80=
=99s poky 1.5 which I think is
Dora

http://dev.3dr.com/advanced-linux.html =
<http://dev.3dr.com/advanced-linux.html>

Like I said, I=E2=80=99m just getting started and totally new at this, =
so I=E2=80=99m pretty much following the Yocto
Linux guide

http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html =
<http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html>

But am getting build errors, Now I do recognize this as a possible =
problem, and maybe need to use ubuntu
14 instead. =20

jeffw@chill:~/src/poky/build$ bitbake core-image-sato
WARNING: Host distribution "Ubuntu-15.10" has not been validated with =
this version of the build system; you may possibly experience unexpected =
failures. It is recommended that you use a tested distribution.


Summary: 5 tasks failed:
  =
virtual:native:/home/jeffw/src/poky/meta/recipes-devtools/pseudo/pseudo_1.=
5.1.bb, do_compile
  =
virtual:native:/home/jeffw/src/poky/meta/recipes-support/libgpg-error/libg=
pg-error_1.12.bb, do_compile
  =
virtual:native:/home/jeffw/src/poky/meta/recipes-core/ncurses/ncurses_5.9.=
bb, do_compile
  =
/home/jeffw/src/poky/meta/recipes-core/eglibc/cross-localedef-native_2.18.=
bb, do_compile
  =
virtual:native:/home/jeffw/src/poky/meta/recipes-devtools/binutils/binutil=
s_2.23.2.bb, do_compile


But I think rather that ubuntu being the problemI think many (perhaps =
all?) of these errors are due to gcc 5.2

specifically:


jeffw@chill:~/src/poky/build$ gcc -v
Using built-in specs.
COLLECT_GCC=3Dgcc
COLLECT_LTO_WRAPPER=3D/usr/lib/gcc/x86_64-linux-gnu/5/lto-wrapper
Target: x86_64-linux-gnu
Configured with: ../src/configure -v --with-pkgversion=3D'Ubuntu =
5.2.1-22ubuntu2' --with-bugurl=3Dfile:///usr/share/doc/gcc-5/README.Bugs =
--enable-languages=3Dc,ada,c++,java,go,d,fortran,objc,obj-c++ =
--prefix=3D/usr --program-suffix=3D-5 --enable-shared =
--enable-linker-build-id --libexecdir=3D/usr/lib =
--without-included-gettext --enable-threads=3Dposix --libdir=3D/usr/lib =
--enable-nls --with-sysroot=3D/ --enable-clocale=3Dgnu =
--enable-libstdcxx-debug --enable-libstdcxx-time=3Dyes =
--with-default-libstdcxx-abi=3Dnew --enable-gnu-unique-object =
--disable-vtable-verify --enable-libmpx --enable-plugin =
--with-system-zlib --disable-browser-plugin --enable-java-awt=3Dgtk =
--enable-gtk-cairo =
--with-java-home=3D/usr/lib/jvm/java-1.5.0-gcj-5-amd64/jre =
--enable-java-home =
--with-jvm-root-dir=3D/usr/lib/jvm/java-1.5.0-gcj-5-amd64 =
--with-jvm-jar-dir=3D/usr/lib/jvm-exports/java-1.5.0-gcj-5-amd64 =
--with-arch-directory=3Damd64 =
--with-ecj-jar=3D/usr/share/java/eclipse-ecj.jar --enable-objc-gc =
--enable-multiarch --disable-werror --with-arch-32=3Di686 --with-abi=3Dm64=
 --with-multilib-list=3Dm32,m64,mx32 --enable-multilib =
--with-tune=3Dgeneric --enable-checking=3Drelease =
--build=3Dx86_64-linux-gnu --host=3Dx86_64-linux-gnu =
--target=3Dx86_64-linux-gnu
Thread model: posix
gcc version 5.2.1 20151010 (Ubuntu 5.2.1-22ubuntu2)=20


The pseudo failure:

 pseudo_util.c:101:29: error: initializer element is not constant
|   static size_t unload_len =3D strlen(unload);
|                              ^
| Makefile:121: recipe for target 'pseudo_util.o' failed


For libgpg this looks like a syntax error or maybe there=E2=80=99s a =
define that does not exist?:

| ./mkerrcodes.h:134:5: error: expected expression before ',' token
|    { , "GPG_ERR_EXFULL" },
|      ^
| Makefile:1043: recipe for target 'mkerrcodes' failed
| make[2]: *** [mkerrcodes] Error 1

ncurses fail:

 In file included from =
/home/jeffw/src/poky/build/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/=
ncurses-5.9/ncurses/curses.priv.h:283:0,
|                  from ../ncurses/lib_gen.c:19:
| _19066.c:835:15: error: expected ')' before 'int'
| ../include/curses.h:1594:56: note: in definition of macro =
'mouse_trafo'
|  #define mouse_trafo(y,x,to_screen) wmouse_trafo(stdscr,y,x,to_screen)


Localdef:

 argp-help.c:(.text+0x1e00): multiple definition of =
`argp_fmtstream_write'
| argp-fmtstream.o:argp-fmtstream.c:(.text+0x7a0): first defined here
| argp-help.o: In function `argp_fmtstream_puts':
| argp-help.c:(.text+0x1e50): multiple definition of =
`argp_fmtstream_puts'
| argp-fmtstream.o:argp-fmtstream.c:(.text+0x860): first defined here
etc=E2=80=A6


And finally binutils:

| =
/home/jeffw/src/poky/build/tmp/work/x86_64-linux/binutils-native/2.23.2-r4=
/binutils-2.23.2/bfd/elf64-alpha.c:3588:11: error: switch condition has =
boolean value [-Werror=3Dswitch-bool]
|    switch (!dynamic && !info->link_info->shared)
|            ^









--Apple-Mail=_7E13813A-D562-4B18-BD8B-A8608B508FAE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">There are probably a number of things wrong including some =
configuration errors I=E2=80=99ve made being that<div class=3D"">I=E2=80=99=
m just getting started. &nbsp;My ultimate goal is to cross-compile tools =
to augment the OS running on a</div><div class=3D"">3DR Solo drone, =
here=E2=80=99s the doc on linux binary builds as you can see it=E2=80=99s =
minimal, but I=E2=80=99ve read elsewhere</div><div class=3D"">that the =
processor is Cortex-A9 based at least, and it looks like it=E2=80=99s =
poky 1.5 which I think is</div><div class=3D"">Dora</div><div =
class=3D""><br class=3D""></div><div class=3D""><a =
href=3D"http://dev.3dr.com/advanced-linux.html" =
class=3D"">http://dev.3dr.com/advanced-linux.html</a></div><div =
class=3D""><br class=3D""></div><div class=3D"">Like I said, I=E2=80=99m =
just getting started and totally new at this, so I=E2=80=99m pretty much =
following the Yocto</div><div class=3D"">Linux guide</div><div =
class=3D""><br class=3D""></div><div class=3D""><a =
href=3D"http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html"=
 =
class=3D"">http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.ht=
ml</a></div><div class=3D""><br class=3D""></div><div class=3D"">But am =
getting build errors, Now I do recognize this as a possible problem, and =
maybe need to use ubuntu</div><div class=3D"">14 instead. =
&nbsp;</div><div class=3D""><br class=3D""></div><div class=3D""><div =
style=3D"margin: 0px; font-size: 11px; font-family: Menlo;" =
class=3D"">jeffw@chill:~/src/poky/build$ bitbake =
core-image-sato</div><div style=3D"margin: 0px; font-size: 11px; =
font-family: Menlo; color: rgb(175, 173, 36);" class=3D""><b =
class=3D"">WARNING</b><span style=3D"font-variant-ligatures: =
no-common-ligatures; color: #000000" class=3D"">: </span>Host =
distribution "Ubuntu-15.10" has not been validated with this version of =
the build system; you may possibly experience unexpected failures. It is =
recommended that you use a tested distribution.</div></div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D""><div style=3D"margin: 0px; font-size: 11px; font-family: =
Menlo;" class=3D"">Summary: 5 tasks failed:</div><div style=3D"margin: =
0px; font-size: 11px; font-family: Menlo;" class=3D"">&nbsp; =
virtual:native:/home/jeffw/src/poky/meta/recipes-devtools/pseudo/pseudo_1.=
5.1.bb, do_compile</div><div style=3D"margin: 0px; font-size: 11px; =
font-family: Menlo;" class=3D"">&nbsp; =
virtual:native:/home/jeffw/src/poky/meta/recipes-support/libgpg-error/libg=
pg-error_1.12.bb, do_compile</div><div style=3D"margin: 0px; font-size: =
11px; font-family: Menlo;" class=3D"">&nbsp; =
virtual:native:/home/jeffw/src/poky/meta/recipes-core/ncurses/ncurses_5.9.=
bb, do_compile</div><div style=3D"margin: 0px; font-size: 11px; =
font-family: Menlo;" class=3D"">&nbsp; =
/home/jeffw/src/poky/meta/recipes-core/eglibc/cross-localedef-native_2.18.=
bb, do_compile</div><div style=3D"margin: 0px; font-size: 11px; =
font-family: Menlo;" class=3D"">&nbsp; =
virtual:native:/home/jeffw/src/poky/meta/recipes-devtools/binutils/binutil=
s_2.23.2.bb, do_compile</div></div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""></div><div class=3D"">But =
I think rather that ubuntu being the problemI think many (perhaps all?) =
of these errors are due to gcc 5.2</div><div class=3D""><br =
class=3D""></div><div class=3D"">specifically:</div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""></div><div class=3D""><div=
 style=3D"margin: 0px; font-size: 11px; font-family: Menlo;" =
class=3D""><div style=3D"margin: 0px;" =
class=3D"">jeffw@chill:~/src/poky/build$ gcc -v</div><div style=3D"margin:=
 0px;" class=3D"">Using built-in specs.</div><div style=3D"margin: 0px;" =
class=3D"">COLLECT_GCC=3Dgcc</div><div style=3D"margin: 0px;" =
class=3D"">COLLECT_LTO_WRAPPER=3D/usr/lib/gcc/x86_64-linux-gnu/5/lto-wrapp=
er</div><div style=3D"margin: 0px;" class=3D"">Target: =
x86_64-linux-gnu</div><div style=3D"margin: 0px;" class=3D"">Configured =
with: ../src/configure -v --with-pkgversion=3D'Ubuntu 5.2.1-22ubuntu2' =
--with-bugurl=3D<a href=3D"file:///usr/share/doc/gcc-5/README.Bugs" =
class=3D"">file:///usr/share/doc/gcc-5/README.Bugs</a> =
--enable-languages=3Dc,ada,c++,java,go,d,fortran,objc,obj-c++ =
--prefix=3D/usr --program-suffix=3D-5 --enable-shared =
--enable-linker-build-id --libexecdir=3D/usr/lib =
--without-included-gettext --enable-threads=3Dposix --libdir=3D/usr/lib =
--enable-nls --with-sysroot=3D/ --enable-clocale=3Dgnu =
--enable-libstdcxx-debug --enable-libstdcxx-time=3Dyes =
--with-default-libstdcxx-abi=3Dnew --enable-gnu-unique-object =
--disable-vtable-verify --enable-libmpx --enable-plugin =
--with-system-zlib --disable-browser-plugin --enable-java-awt=3Dgtk =
--enable-gtk-cairo =
--with-java-home=3D/usr/lib/jvm/java-1.5.0-gcj-5-amd64/jre =
--enable-java-home =
--with-jvm-root-dir=3D/usr/lib/jvm/java-1.5.0-gcj-5-amd64 =
--with-jvm-jar-dir=3D/usr/lib/jvm-exports/java-1.5.0-gcj-5-amd64 =
--with-arch-directory=3Damd64 =
--with-ecj-jar=3D/usr/share/java/eclipse-ecj.jar --enable-objc-gc =
--enable-multiarch --disable-werror --with-arch-32=3Di686 --with-abi=3Dm64=
 --with-multilib-list=3Dm32,m64,mx32 --enable-multilib =
--with-tune=3Dgeneric --enable-checking=3Drelease =
--build=3Dx86_64-linux-gnu --host=3Dx86_64-linux-gnu =
--target=3Dx86_64-linux-gnu</div><div style=3D"margin: 0px;" =
class=3D"">Thread model: posix</div><div style=3D"margin: 0px;" =
class=3D"">gcc version 5.2.1 20151010 (Ubuntu =
5.2.1-22ubuntu2)&nbsp;</div><div class=3D""><br =
class=3D""></div></div></div><div class=3D""><br class=3D""></div><div =
class=3D"">The pseudo failure:</div><div class=3D""><br =
class=3D""></div><div class=3D""><div style=3D"margin: 0px; font-size: =
11px; font-family: Menlo;" class=3D"">&nbsp;pseudo_util.c:101:29: error: =
initializer element is not constant</div><div style=3D"margin: 0px; =
font-size: 11px; font-family: Menlo;" class=3D"">| &nbsp; static size_t =
unload_len =3D strlen(unload);</div><div style=3D"margin: 0px; =
font-size: 11px; font-family: Menlo;" class=3D"">|&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; ^</div><div style=3D"margin: 0px; font-size: 11px; =
font-family: Menlo;" class=3D"">| Makefile:121: recipe for target =
'pseudo_util.o' failed</div></div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""></div><div class=3D"">For =
libgpg this looks like a syntax error or maybe there=E2=80=99s a define =
that does not exist?:</div><div class=3D""><br class=3D""></div><div =
class=3D""><div style=3D"margin: 0px; font-size: 11px; font-family: =
Menlo;" class=3D"">| ./mkerrcodes.h:134:5: error: expected expression =
before ',' token</div><div style=3D"margin: 0px; font-size: 11px; =
font-family: Menlo;" class=3D"">|&nbsp; &nbsp; { , "GPG_ERR_EXFULL" =
},</div><div style=3D"margin: 0px; font-size: 11px; font-family: Menlo;" =
class=3D"">|&nbsp; &nbsp; &nbsp; ^</div><div style=3D"margin: 0px; =
font-size: 11px; font-family: Menlo;" class=3D"">| Makefile:1043: recipe =
for target 'mkerrcodes' failed</div><div style=3D"margin: 0px; =
font-size: 11px; font-family: Menlo;" class=3D"">| make[2]: *** =
[mkerrcodes] Error 1</div></div><div style=3D"margin: 0px; font-size: =
11px; font-family: Menlo;" class=3D""><br class=3D""></div><div =
style=3D"margin: 0px; font-size: 11px; font-family: Menlo;" =
class=3D"">ncurses fail:</div><div style=3D"margin: 0px; font-size: =
11px; font-family: Menlo;" class=3D""><br class=3D""></div><div =
style=3D"margin: 0px; font-size: 11px; font-family: Menlo;" =
class=3D""><div style=3D"margin: 0px;" class=3D"">&nbsp;In file included =
from =
/home/jeffw/src/poky/build/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/=
ncurses-5.9/ncurses/curses.priv.h:283:0,</div><div style=3D"margin: =
0px;" class=3D"">|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; from ../ncurses/lib_gen.c:19:</div><div style=3D"margin: =
0px;" class=3D"">| _19066.c:835:15: error: expected ')' before =
'int'</div><div style=3D"margin: 0px;" class=3D"">| =
../include/curses.h:1594:56: note: in definition of macro =
'mouse_trafo'</div><div style=3D"margin: 0px;" class=3D"">|&nbsp; =
#define mouse_trafo(y,x,to_screen) =
wmouse_trafo(stdscr,y,x,to_screen)</div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D"">Localdef:</div><div class=3D""><br class=3D""></div><div =
class=3D""><div style=3D"margin: 0px;" =
class=3D"">&nbsp;argp-help.c:(.text+0x1e00): multiple definition of =
`argp_fmtstream_write'</div><div style=3D"margin: 0px;" class=3D"">| =
argp-fmtstream.o:argp-fmtstream.c:(.text+0x7a0): first defined =
here</div><div style=3D"margin: 0px;" class=3D"">| argp-help.o: In =
function `argp_fmtstream_puts':</div><div style=3D"margin: 0px;" =
class=3D"">| argp-help.c:(.text+0x1e50): multiple definition of =
`argp_fmtstream_puts'</div><div style=3D"margin: 0px;" class=3D"">| =
argp-fmtstream.o:argp-fmtstream.c:(.text+0x860): first defined =
here</div></div><div class=3D"">etc=E2=80=A6</div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""></div><div class=3D"">And =
finally binutils:</div><div class=3D""><br class=3D""></div><div =
class=3D""><div style=3D"margin: 0px;" class=3D"">| =
/home/jeffw/src/poky/build/tmp/work/x86_64-linux/binutils-native/2.23.2-r4=
/binutils-2.23.2/bfd/elf64-alpha.c:3588:11: error: switch condition has =
boolean value [-Werror=3Dswitch-bool]</div><div style=3D"margin: 0px;" =
class=3D"">|&nbsp; &nbsp; switch (!dynamic &amp;&amp; =
!info-&gt;link_info-&gt;shared)</div><div style=3D"margin: 0px;" =
class=3D"">|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^</div></div><div =
class=3D""><br class=3D""></div></div><div style=3D"margin: 0px; =
font-size: 11px; font-family: Menlo;" class=3D""><br class=3D""></div><div=
 style=3D"margin: 0px; font-size: 11px; font-family: Menlo;" =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D""><br =
class=3D""></div></body></html>=

--Apple-Mail=_7E13813A-D562-4B18-BD8B-A8608B508FAE--
