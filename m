Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f51.google.com (mail-pb0-f51.google.com
	[209.85.160.51]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 474E4E01480
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 08:45:39 -0800 (PST)
Received: by mail-pb0-f51.google.com with SMTP id un15so1329954pbc.10
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 08:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=XFmCovFt4qAusL6NTRbItzBK2PtrZdP+JCM9siJANvc=;
	b=joacmbrKRrDdlOMvVjqNLDiDlAALxPxWdBXirzLKv+pH5vkrw76OYKzlN/RhOQkslC
	SIuDbRHJ/kCry4gAe17xn3Xf/Szd5BnpXiKLGXrhkir9gddxb7TQbgVCrWnJMmOcQTi/
	AFDNuj6XIdJLhmDTrnyACJ1SkuXDflzonbxadQYn5FknZp3DNJcWw40tJsMQHd3XAPjg
	mPhQxG/ln1S5hNBagHm5ERln2DRI4CaHP8H8rQWDuXDL3G9/+EQ+0BekCmIZt8NedGGU
	+7aeDuKsbWSW56WPlay+rcuIZ+BMJ5A6+BfpeN7MQGZqGZaA+Nk5oyBNERaaCiNYcsfI
	BkFQ==
X-Received: by 10.68.213.104 with SMTP id nr8mr4285775pbc.200.1362761138857;
	Fri, 08 Mar 2013 08:45:38 -0800 (PST)
Received: from [192.168.1.100] ([94.205.106.4])
	by mx.google.com with ESMTPS id kt5sm6113687pbc.30.2013.03.08.08.45.35
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 08 Mar 2013 08:45:37 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <A651E935-B11A-43E6-A1D6-FF5F49A5B52C@gmail.com>
Date: Fri, 8 Mar 2013 20:45:31 +0400
Message-Id: <8B2E6F56-E27C-4F41-A837-865ED62E2DB1@gmail.com>
References: <B4F9B2A0-7231-4DC8-90D1-D7F291818791@gmail.com>
	<CAMKF1sr+xH7Nb0-cG-Wky-A6842wwSPT8wWm2CDh583_BgdjOg@mail.gmail.com>
	<D06F52BA-6DC2-4C8D-8F1D-EB71A8EB83EB@gmail.com>
	<CAMKF1sqmNf9hfjC4BWF3eF=4iENxVkaFEFtqaroM6cGQDFOtbw@mail.gmail.com>
	<61562AF7-3671-408C-AD77-E638C8535263@gmail.com>
	<CAMKF1spG1x5Ne_RiSoHV-Fp46YRo+o_2NovctR9RrVH9UfeA6w@mail.gmail.com>
	<A27ACA22-65D4-4788-990C-995A78481038@gmail.com>
	<A651E935-B11A-43E6-A1D6-FF5F49A5B52C@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Patching gcc-4.7.2 to add support for Xilinx MicroBlaze
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
X-List-Received-Date: Fri, 08 Mar 2013 16:45:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,

On Mar 8, 2013, at 6:47 PM, Khem Raj <raj.khem@gmail.com> wrote:

>> | configure: error: cannot compute suffix of object files: cannot =
compile
>> | See `config.log' for more details.
>> | make: *** [configure-target-libgcc] Error 1
>=20
> seems some missing header or libs but doesn't say much. where is =
config.log ?

Here is the build report against the gcc-4.7.2 build:

| checking for microblaze-poky-linux-gcc...  =
/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cross-initial/4.=
7.2-r19/gcc-4.7.2/build.x86_64-linux.microblaze-poky-linux/./gcc/xgcc =
-B/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cross-initial/=
4.7.2-r19/gcc-4.7.2/build.x86_64-linux.microblaze-poky-linux/./gcc/ -m32 =
   -mhard-float  =
-isystem/tool/yocto/poky/build/tmp/sysroots/spartan-6-sp601-microblaze/usr=
/include =
-B/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-lin=
ux/bin/ =
-B/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-lin=
ux/lib/ -isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-linux=
/include -isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-linux=
/sys-include =
--sysroot=3D/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cros=
s-initial/4.7.2-r19/gcc-4.7.2/build.x86_64-linux.microblaze-poky-linux/tmp=
sysroot
| checking for suffix of object files... configure: error: in =
`/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cross-initial/4=
.7.2-r19/gcc-4.7.2/build.x86_64-linux.microblaze-poky-linux/microblaze-pok=
y-linux/libgcc':
| configure: error: cannot compute suffix of object files: cannot =
compile
| See `config.log' for more details.
| make: *** [configure-target-libgcc] Error 1
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cross-initial/4.=
7.2-r19/temp/log.do_compile.31442 for further information)

Some of the errors in the libgcc/config.log file are as follows:

xgcc: error: unrecognized command line option '-m32'
configure:3355: $? =3D 0
configure:3344:  =
/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cross-initial/4.=
7.2-r19/gcc-4.7.2/build.x86_64-linux.microblaze-poky-linux/./gcc/xgcc =
-B/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cross-initial/=
4.7.2-r19/gcc-4.7.2/build.x86_64-linux.microblaze-poky-linux/./gcc/ -m32 =
   -mhard-float  =
-isystem/tool/yocto/poky/build/tmp/sysroots/spartan-6-sp601-microblaze/usr=
/include =
-B/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-lin=
ux/bin/ =
-B/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-lin=
ux/lib/ -isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-linux=
/include -isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-linux=
/sys-include =
--sysroot=3D/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cros=
s-initial/4.7.2-r19/gcc-4.7.2/build.x86_64-linux.microblaze-poky-linux/tmp=
sysroot   -v >&5
xgcc: error: unrecognized command line option '-m32'
Reading specs from =
/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cross-initial/4.=
7.2-r19/gcc-4.7.2/build.x86_64-linux.microblaze-poky-linux/./gcc/specs
=
COLLECT_GCC=3D/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cr=
oss-initial/4.7.2-r19/gcc-4.7.2/build.x86_64-linux.microblaze-poky-linux/.=
/gcc/xgcc
=
COLLECT_LTO_WRAPPER=3D/tool/yocto/poky/build/tmp/work/microblaze-poky-linu=
x/gcc-cross-initial/4.7.2-r19/gcc-4.7.2/build.x86_64-linux.microblaze-poky=
-linux/./gcc/lto-wrapper
Target: microblaze-poky-linux
Configured with: =
/tool/yocto/poky/build/tmp/work-shared/gcc-4.7.2-r19/gcc-4.7.2/configure =
--build=3Dx86_64-linux --host=3Dx86_64-linux =
--target=3Dmicroblaze-poky-linux =
--prefix=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr =
--exec_prefix=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr =
--bindir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/microb=
laze-poky-linux.gcc-cross-initial =
--sbindir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/micro=
blaze-poky-linux.gcc-cross-initial =
--libexecdir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/libexe=
c/microblaze-poky-linux.gcc-cross-initial =
--datadir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/share =
--sysconfdir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc =
--sharedstatedir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/com =
--localstatedir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/var =
--libdir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/microb=
laze-poky-linux.gcc-cross-initial =
--includedir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/includ=
e =
--oldincludedir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/inc=
lude =
--infodir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/share/inf=
o =
--mandir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/share/man =
--disable-silent-rules --disable-dependency-tracking =
--with-libtool-sysroot=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux =
--with-newlib --without-headers --disable-shared --disable-threads =
--disable-multilib --disable-__cxa_atexit --enable-languages=3Dc =
--enable-target-optspace --program-prefix=3Dmicroblaze-poky-linux- =
--with-sysroot=3D/tool/yocto/poky/build/tmp/sysroots/spartan-6-sp601-micro=
blaze =
--with-build-sysroot=3D/tool/yocto/poky/build/tmp/work/microblaze-poky-lin=
ux/gcc-cross-initial/4.7.2-r19/gcc-4.7.2/build.x86_64-linux.microblaze-pok=
y-linux/tmpsysroot --disable-libmudflap --disable-libgomp =
--disable-libssp --disable-libquadmath --with-system-zlib --disable-lto =
--disable-plugin --enable-decimal-float=3Dno --disable-nls =
--enable-__cxa_atexit
Thread model: single
gcc version 4.7.2 (GCC)=20
configure:3355: $? =3D 0
configure:3344:  =
/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cross-initial/4.=
7.2-r19/gcc-4.7.2/build.x86_64-linux.microblaze-poky-linux/./gcc/xgcc =
-B/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cross-initial/=
4.7.2-r19/gcc-4.7.2/build.x86_64-linux.microblaze-poky-linux/./gcc/ -m32 =
   -mhard-float  =
-isystem/tool/yocto/poky/build/tmp/sysroots/spartan-6-sp601-microblaze/usr=
/include =
-B/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-lin=
ux/bin/ =
-B/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-lin=
ux/lib/ -isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-linux=
/include -isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-linux=
/sys-include =
--sysroot=3D/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cros=
s-initial/4.7.2-r19/gcc-4.7.2/build.x86_64-linux.microblaze-poky-linux/tmp=
sysroot   -V >&5
xgcc: error: unrecognized command line option '-m32'
xgcc: error: unrecognized command line option '-V'
xgcc: fatal error: no input files
compilation terminated.


The arch-microblaze.inc file snippent is as follows:=20

DEFAULTTUNE ?=3D "microblaze"

TUNEVALID[m32] =3D "Microblaze ELF32 standard ABI"
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "m32", "-m32", =
"", d)}"
TUNE_ARCH .=3D "${@bb.utils.contains("TUNE_FEATURES", "m32", =
"microblaze", "", d)}"


Best regards,

Elvis Dowson=

