Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2788E00E52; Wed, 27 Jul 2016 03:02:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E27CE00E4C
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 03:02:18 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id x72so9566620pfd.2
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 03:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=WB6XOJs1veM6lzJTS1JcH1+ZQDh0X0PS2gILp0OTpfo=;
	b=FWgEeik4cw2fwzWLdA2KxE2snzDF/anKiFuVqJ6HN/p+qoCo8vuhH6nqJOQ8CeZ1iJ
	/zSkkRTQ2thg42lhwwsw1TDvUWJG5yk8gc4Hc6/mOe8qQIwa5mM8VwotUhp1omiAr7Gi
	9fW3IzZKNfHvSG93G/0AtV1Ii6L/O8Z5UOH7sWu90TYBVxoul8+NKqoICC562vJh/GXY
	OB9MyBzDZrSTf3iEOx0vRo8brtiw1OFBh1vnL4lMa3/3+P0xJtbfuHjJdXSfm4cAqjdK
	bE3s+UvEU+s2m3b1UcnnXHBU4RMbNWscau3eyZHUUnmj/ggyq9A/fJJF3qLotwwBLlVQ
	oigQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=WB6XOJs1veM6lzJTS1JcH1+ZQDh0X0PS2gILp0OTpfo=;
	b=MNDSCgS8cYw8WDzBBBABa+C+PFozhQO65bcP5G6rTYMueljfYWppzUMH6ARhf/IzlD
	3n9jX0dYukRJjf1+kv6jH6V39LwxHOw6aidC0jEM3o51Ty205fePpDLj3uKe3CIHWMAq
	g8Lj/iNH/ljeiwDYRrq3YrL9uzJ0G5/TxCjUYw/Tl+U6FD3a//xCxdB6n2sxbplSRCWb
	ehpbuFJJPLwcoopdvPJJC9Kkh5DYDyEulYSibXXNncfe27D+dxYFi10m82cx+ovu4o2O
	LH3TLv8sLLrTJT6SE7jMBzKAavC9vPr++wOzKQOTPBFZdYUtm/zs9xVwViDq8a4mZ9UB
	pJOw==
X-Gm-Message-State: AEkooutMUn2lE1+jOCxVAli2/iG9JIr6gFhdfH26sf6F5CPODYL2IUCEV9oJKD5VFLf3Cw==
X-Received: by 10.98.101.1 with SMTP id z1mr47760036pfb.53.1469613737226;
	Wed, 27 Jul 2016 03:02:17 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:9114:c173:494d:8f0f?
	([2601:646:8882:b8c:9114:c173:494d:8f0f])
	by smtp.gmail.com with ESMTPSA id
	i69sm7811500pfk.30.2016.07.27.03.02.15
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 27 Jul 2016 03:02:16 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CY1PR0101MB159437FBA234CD6D4596E099D70A0@CY1PR0101MB1594.prod.exchangelabs.com>
Date: Wed, 27 Jul 2016 03:02:15 -0700
Message-Id: <1698CDC0-3695-4D8A-A1FD-E02B49928125@gmail.com>
References: <CY1PR0101MB159437FBA234CD6D4596E099D70A0@CY1PR0101MB1594.prod.exchangelabs.com>
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autotool __init_array_end not found
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
X-List-Received-Date: Wed, 27 Jul 2016 10:02:21 -0000
X-Groupsio-MsgNum: 31261
Content-Type: multipart/signed;
	boundary="Apple-Mail=_2B2D6565-BF28-4C47-BDA4-909A1056AEDE";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_2B2D6565-BF28-4C47-BDA4-909A1056AEDE
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D19F15C8-F311-4C92-BC9F-520B8B0275A7"

--Apple-Mail=_D19F15C8-F311-4C92-BC9F-520B8B0275A7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


> On Jul 21, 2016, at 9:01 PM, Takashi Matsuzawa =
<tmatsuzawa@uievolution.com> wrote:
>=20
> Hello Yocto.
>=20
> I am now trying to build autotool based (inherit autotool) recipe on =
Yocto 2.0 based environent.
> Howerver, I am seeng following error.
> I wonder if this is a known problem and you already have workaround?
>=20
> It says __init_array_end/start is not found which is referred in =
libc_nonshared.a(elf-init.oS).
> I googled and learned that this can happen if parameters are not set =
properly to g++ when building shared library, and in fact, if I remove =
'-lc' from the final linker command line, the build error is gone.
>=20
> >-lm -lc -lgcc_s -lgcc =3D> NG
> >-lm -lgcc_s -lgcc =3D> OK
>=20
> The problem is, these liker parameters are set by the configure script =
into libtool script and so far I could not find easy configurable option =
to explicity remove '-lc' from here.
>=20
> I think configure recognizes that '-lc' is not necessary to build =
shared library (through 'build_libtool_need_lc', etc. test), but it =
takes these from somewhere (from its tests or its default template?) and =
embedding to linker command parameters.
>=20
> This error did not happen with Yocto 1.8 based build (where the same =
recipe could built w/o break).
> So, it can be toolchain issue (c library difference, autotool =
difference, etc.) or libc quirk, maybe fixed problem in recent versions, =
or specific to my cross-environment, but I have not yet figured out =
handy workaround.
>=20
> I am trying here with protobuf package, butI am not yet sure if this =
happens with all of the autotool based packages.
>=20
> =3D=3D=3D=3D
> | arm-poky-linux-gnueabi-libtool: link: arm-poky-linux-gnueabi-g++
> -march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a15
> --sysroot=3D/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter  -fPIC
> -DPIC -shared -nostdlib

I think -nostdlib is whats causing this here. I would suggest to remove =
-nostdlib and let compiler driver figure out the needed libraries, it =
knows exactly whats needed in which scenario
e.g. pic or no-pic code e.g. demands different set of libs to be linked =
and there are other combinations.

> /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/Scrt1.o
> /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/crti.o
> =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/arm-poky-linux=
-gnueabi/5.2.0/crtbeginS.o
>  google/protobuf/stubs/.libs/atomicops_internals_x86_gcc.o
> google/protobuf/stubs/.libs/atomicops_internals_x86_msvc.o
> [...]
> google/protobuf/io/.libs/zero_copy_stream_impl.o
> google/protobuf/compiler/.libs/importer.o
> google/protobuf/compiler/.libs/parser.o   -lpthread -lz
> =
-L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/lib/arm-po=
ky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0
> -L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/lib
> =
-L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/arm-poky-lin=
ux-gnueabi/5.2.0
> -L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib
> =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/libstdc++.so
> -lm -lc -lgcc_s -lgcc
> =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/arm-poky-linux=
-gnueabi/5.2.0/crtendS.o
> /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/crtn.o
> -march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a15
> --sysroot=3D/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter =
-pthread
> -O2 -g -fstack-protector-all -Wl,-O1 -Wl,--hash-style=3Dgnu
> -Wl,--as-needed -Wl,-z -Wl,relro -Wl,-z -Wl,now   -pthread -Wl,-soname
> -Wl,libprotobuf.so.10 -o .libs/libprotobuf.so.10.0.0
> | =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/libc_nonshared=
.a(elf-init.oS):
> In function `__libc_csu_init':
> | =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-g=
nueabi/glibc/2.22-r0/git/csu/elf-init.c:89:
> undefined reference to `__init_array_end'
> | =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-g=
nueabi/glibc/2.22-r0/git/csu/elf-init.c:89:
> undefined reference to `__init_array_start'
> | =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm-=
poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:
> .libs/libprotobuf-lite.so.10.0.0: hidden symbol `__init_array_end'
> isn't defined
> | =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm-=
poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:
> final link failed: Bad value
> | collect2: error: ld returned 1 exit status
> | Makefile:1492: recipe for target 'libprotobuf-lite.la' failed
> | make[3]: *** [libprotobuf-lite.la] Error 1
> | make[3]: *** Waiting for unfinished jobs....
> | =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/libc_nonshared=
.a(elf-init.oS):
> In function `__libc_csu_init':
> | =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-g=
nueabi/glibc/2.22-r0/git/csu/elf-init.c:89:
> undefined reference to `__init_array_end'
> | =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-g=
nueabi/glibc/2.22-r0/git/csu/elf-init.c:89:
> undefined reference to `__init_array_start'
> | =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm-=
poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:
> .libs/libprotobuf.so.10.0.0: hidden symbol `__init_array_end' isn't
> defined
> | =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm-=
poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:
> final link failed: Bad value
> | collect2: error: ld returned 1 exit status
> =3D=3D=3D=3D
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_D19F15C8-F311-4C92-BC9F-520B8B0275A7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jul 21, 2016, at 9:01 PM, Takashi Matsuzawa &lt;<a =
href=3D"mailto:tmatsuzawa@uievolution.com" =
class=3D"">tmatsuzawa@uievolution.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
id=3D"divtagdefaultwrapper" style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; font-size: 12pt; background-color: =
rgb(255, 255, 255); font-family: Calibri, Arial, Helvetica, sans-serif;" =
class=3D""><p style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""></p><div class=3D"">Hello Yocto.<br class=3D""><br class=3D"">I=
 am now trying to build autotool based (inherit autotool) recipe on =
Yocto 2.0 based environent.<br class=3D"">Howerver, I am seeng following =
error.<br class=3D"">I wonder if this is a known problem and you already =
have workaround?<br class=3D""><br class=3D"">It says =
__init_array_end/start is not found which is referred in =
libc_nonshared.a(elf-init.oS).<br class=3D"">I googled and learned that =
this can happen if parameters are not set properly to g++ when building =
shared library, and in fact, if I remove '-lc' from the final linker =
command line, the build error is gone.<br class=3D""><br =
class=3D"">&gt;-lm -lc -lgcc_s -lgcc =3D&gt; NG<br class=3D"">&gt;-lm =
-lgcc_s -lgcc =3D&gt; OK<br class=3D""><br class=3D"">The problem is, =
these liker parameters are set by the configure script into libtool =
script and so far I could not find easy configurable option to explicity =
remove '-lc' from here.<br class=3D""><br class=3D"">I think configure =
recognizes that '-lc' is not necessary to build shared library (through =
'build_libtool_need_lc', etc. test), but it takes these from somewhere =
(from its tests or its default template?) and embedding to linker =
command parameters.<br class=3D""><br class=3D"">This error did not =
happen with Yocto 1.8 based build (where the same recipe could built w/o =
break).<br class=3D"">So, it can be toolchain issue (c library =
difference, autotool difference, etc.) or libc quirk, maybe fixed =
problem in recent versions, or specific to my cross-environment, but I =
have not yet figured out handy workaround.<br class=3D""><br class=3D"">I =
am trying here with protobuf package, butI am not yet sure if this =
happens with all of the autotool based packages.<br class=3D""><br =
class=3D"">=3D=3D=3D=3D<br class=3D"">| arm-poky-linux-gnueabi-libtool: =
link: arm-poky-linux-gnueabi-g++<br class=3D"">-march=3Darmv7-a =
-mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a15<br =
class=3D"">--sysroot=3D/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter=
&nbsp; -fPIC<br class=3D"">-DPIC -shared -nostdlib<br =
class=3D""></div></div></div></blockquote><div><br class=3D""></div><div>I=
 think -nostdlib is whats causing this here. I would suggest to remove =
-nostdlib and let compiler driver figure out the needed libraries, it =
knows exactly whats needed in which scenario</div><div>e.g. pic or =
no-pic code e.g. demands different set of libs to be linked and there =
are other combinations.</div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><div id=3D"divtagdefaultwrapper" =
style=3D"font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; font-size: =
12pt; background-color: rgb(255, 255, 255); font-family: Calibri, Arial, =
Helvetica, sans-serif;" class=3D""><div =
class=3D"">/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/Scr=
t1.o<br =
class=3D"">/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/crt=
i.o<br =
class=3D"">/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/arm=
-poky-linux-gnueabi/5.2.0/crtbeginS.o<br =
class=3D"">&nbsp;google/protobuf/stubs/.libs/atomicops_internals_x86_gcc.o=
<br =
class=3D"">google/protobuf/stubs/.libs/atomicops_internals_x86_msvc.o<br =
class=3D"">[...]<br =
class=3D"">google/protobuf/io/.libs/zero_copy_stream_impl.o<br =
class=3D"">google/protobuf/compiler/.libs/importer.o<br =
class=3D"">google/protobuf/compiler/.libs/parser.o&nbsp;&nbsp; -lpthread =
-lz<br =
class=3D"">-L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr=
/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0<br =
class=3D"">-L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/lib<br =
class=3D"">-L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/a=
rm-poky-linux-gnueabi/5.2.0<br =
class=3D"">-L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib<b=
r =
class=3D"">/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/lib=
stdc++.so<br class=3D"">-lm -lc -lgcc_s -lgcc<br =
class=3D"">/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/arm=
-poky-linux-gnueabi/5.2.0/crtendS.o<br =
class=3D"">/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/crt=
n.o<br class=3D"">-march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneon =
-mtune=3Dcortex-a15<br =
class=3D"">--sysroot=3D/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter=
 -pthread<br class=3D"">-O2 -g -fstack-protector-all -Wl,-O1 =
-Wl,--hash-style=3Dgnu<br class=3D"">-Wl,--as-needed -Wl,-z -Wl,relro =
-Wl,-z -Wl,now&nbsp;&nbsp; -pthread -Wl,-soname<br =
class=3D"">-Wl,libprotobuf.so.10 -o .libs/libprotobuf.so.10.0.0<br =
class=3D"">| =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/libc_nonshared=
.a(elf-init.oS):<br class=3D"">In function `__libc_csu_init':<br =
class=3D"">| =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-g=
nueabi/glibc/2.22-r0/git/csu/elf-init.c:89:<br class=3D"">undefined =
reference to `__init_array_end'<br class=3D"">| =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-g=
nueabi/glibc/2.22-r0/git/csu/elf-init.c:89:<br class=3D"">undefined =
reference to `__init_array_start'<br class=3D"">| =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm-=
poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:<br =
class=3D"">.libs/libprotobuf-lite.so.10.0.0: hidden symbol =
`__init_array_end'<br class=3D"">isn't defined<br class=3D"">| =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm-=
poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:<br =
class=3D"">final link failed: Bad value<br class=3D"">| collect2: error: =
ld returned 1 exit status<br class=3D"">| Makefile:1492: recipe for =
target 'libprotobuf-lite.la' failed<br class=3D"">| make[3]: *** =
[libprotobuf-lite.la] Error 1<br class=3D"">| make[3]: *** Waiting for =
unfinished jobs....<br class=3D"">| =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/libc_nonshared=
.a(elf-init.oS):<br class=3D"">In function `__libc_csu_init':<br =
class=3D"">| =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-g=
nueabi/glibc/2.22-r0/git/csu/elf-init.c:89:<br class=3D"">undefined =
reference to `__init_array_end'<br class=3D"">| =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-g=
nueabi/glibc/2.22-r0/git/csu/elf-init.c:89:<br class=3D"">undefined =
reference to `__init_array_start'<br class=3D"">| =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm-=
poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:<br =
class=3D"">.libs/libprotobuf.so.10.0.0: hidden symbol `__init_array_end' =
isn't<br class=3D"">defined<br class=3D"">| =
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm-=
poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:<br =
class=3D"">final link failed: Bad value<br class=3D"">| collect2: error: =
ld returned 1 exit status<br class=3D"">=3D=3D=3D=3D<br =
class=3D""></div><br class=3D""><p style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""></p></div><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_D19F15C8-F311-4C92-BC9F-520B8B0275A7--

--Apple-Mail=_2B2D6565-BF28-4C47-BDA4-909A1056AEDE
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleYhqcACgkQuwUzVZGdMxTUugCbBtJZ+8lKwvAJlyefJmlXtxyo
bDMAn2Ndj2WR/VVLNneBkavvT/jcYs3V
=Ax86
-----END PGP SIGNATURE-----

--Apple-Mail=_2B2D6565-BF28-4C47-BDA4-909A1056AEDE--
