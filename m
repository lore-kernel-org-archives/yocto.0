Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8669BE00747
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2012 15:28:15 -0700 (PDT)
Received: by eaab16 with SMTP id b16so750852eaa.35
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2012 15:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=YG/FzmftW+/9Ma78v1sLq/fYVbbE670COfLcqossKhk=;
	b=rOxWZc84bA9JUp3j3muiaOJNLm4NICLn4uvjoVRO1YtWmYOtai1teJwdq5Q9rCToVG
	im6ZM4NgUAx9eEJUWBQ1ZQrljjzoXZDgVrUuRihUb2bG3hv11kJ9NKgxcDUIlymAabWe
	5IV2byD3e1O5qDOquVcBwJfB91HC/3lBFOph845G4PkNilYeFn6DWbPrXcBlWPhvcUgv
	fKKwAyNE2Y4TXGB5cNBBhT4xlI2ddekh3MTJdXNJmXBkTwU6HMpBbXTUuy3i+RJdpgnj
	BnLeqPmerJdK9Ntlv8c6H089JlNb3mqKKXXWl7h1Bs7STdxraSTca/w1LjORWbcBfkDs
	MKtQ==
Received: by 10.14.53.76 with SMTP id f52mr2294164eec.79.1338589694199; Fri,
	01 Jun 2012 15:28:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Fri, 1 Jun 2012 15:27:42 -0700 (PDT)
In-Reply-To: <1338581348.20547.41.camel@rchatre.jf.intel.com>
References: <1338581348.20547.41.camel@rchatre.jf.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 1 Jun 2012 15:27:42 -0700
Message-ID: <CAMKF1sqDac3uDkddZE4pHTv+R1iqHMHBjigFc-LuZFYm+bFJnw@mail.gmail.com>
To: "Chatre, Reinette" <reinette.chatre@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building poky-tiny for ARM fails in do_compile of elfutils
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
X-List-Received-Date: Fri, 01 Jun 2012 22:28:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 1, 2012 at 1:09 PM, Chatre, Reinette
<reinette.chatre@intel.com> wrote:
> Hi,
>
> I am trying to create a poky-tiny based image for ARM. This currently
> fails in the "do_compile" task of elfutils. As a first attempt I try to
> have things as simple as possible. Starting with a clean 7.0 Denzil
> in /opt/poky.git on my development system and use a separate build
> directory $HOME/poky_build that is created as:
>
> $ cd $HOME/poky_build
> $ . /opt/poky.git/oe-init-build-env .
>
> I edit the $HOME/poky_build/conf/local.conf as below:
>
> --- org/conf/local.conf 2012-06-01 10:47:49.215088985 -0700
> +++ $HOME/poky_build/conf/local.conf =C2=A0 =C2=A02012-06-01 11:56:24.930=
150746 -0700
> @@ -48,7 +48,7 @@
> =C2=A0#MACHINE ?=3D "routerstationpro"
> =C2=A0#
> =C2=A0# This sets the default machine to be qemux86 if no other machine i=
s selected:
> -MACHINE ??=3D "qemux86"
> +MACHINE ??=3D "qemuarm"
>
> =C2=A0#
> =C2=A0# Where to place downloads
> @@ -99,7 +99,7 @@ MACHINE ??=3D "qemux86"
> =C2=A0# Ultimately when creating custom policy, people will likely end up=
 subclassing
> =C2=A0# these defaults.
> =C2=A0#
> -DISTRO ?=3D "poky"
> +DISTRO ?=3D "poky-tiny"
> =C2=A0# As an example of a subclass there is a "bleeding" edge policy con=
figuration
> =C2=A0# where many versions are set to the absolute latest code from the =
upstream
> =C2=A0# source control systems. This is just mentioned here as an example=
, its not
> @@ -118,7 +118,7 @@ DISTRO ?=3D "poky"
> =C2=A0# =C2=A0- 'package_rpm' for rpm style packages
> =C2=A0# E.g.: PACKAGE_CLASSES ?=3D "package_rpm package_deb package_ipk"
> =C2=A0# We default to rpm:
> -PACKAGE_CLASSES ?=3D "package_rpm"
> +PACKAGE_CLASSES ?=3D "package_ipk"
>
> =C2=A0#
> =C2=A0# SDK/ADT target architecture
> @@ -224,3 +224,6 @@ PATCHRESOLVE =3D "noop"
> =C2=A0# track the version of this file when it was generated. This can sa=
fely be ignored if
> =C2=A0# this doesn't mean anything to you.
> =C2=A0CONF_VERSION =3D "1"
> +
> +#disable usage of ccache
> +CCACHE=3D""
>
> After the above I kick off a build with:
>
> $ bitbake core-image-minimal
>
> As mentioned earlier, the above fails in "do_compile" of elfutils with ou=
tput like:
>
> | arm-poky-linux-gnueabi-ranlib libdw_pic.a
> | arm-poky-linux-gnueabi-gcc =C2=A0-march=3Darmv5te =C2=A0-marm -mthumb-i=
nterwork =C2=A0-mtune=3Darm926ej-s --sysroot=3D/home/rchatre/poky_build/tmp=
/sysroots/qemuarm -std=3Dgnu99 -Wall -Wshadow -Werror -Wunused -Wextra -fgn=
u89-inline -Wformat=3D2 =C2=A0 =C2=A0-O2 -pipe -g -feliminate-unused-debug-=
types =C2=A0-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o libdw.so -sha=
red -o libdw.so -Wl,--soname,libdw.so.1,-z,defs \
> | =C2=BB------Wl,--enable-new-dtags,-rpath,/usr/lib/elfutils \
> | =C2=BB------Wl,--version-script,libdw.map,--no-undefined \
> | =C2=BB------Wl,--whole-archive libdw_pic.a ../libdwfl/libdwfl_pic.a ../=
libebl/libebl.a ../libelf/libelf.so -Wl,--no-whole-archive\
> | =C2=BB------ldl -lbz2 -lz
> | ../libdwfl/libdwfl_pic.a(linux-kernel-modules.os): In function `dwfl_li=
nux_kernel_report_offline':
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:310: undefined refere=
nce to `fts_open'
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:320: undefined refere=
nce to `fts_read'
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:391: undefined refere=
nce to `fts_close'
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:327: undefined refere=
nce to `fts_set'
> | ../libdwfl/libdwfl_pic.a(linux-kernel-modules.os): In function `dwfl_li=
nux_kernel_find_elf':
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:647: undefined refere=
nce to `fts_open'
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:691: undefined refere=
nce to `fts_read'
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:691: undefined refere=
nce to `fts_read'
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:740: undefined refere=
nce to `fts_close'
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:715: undefined refere=
nce to `fts_close'
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfuERROR: Function failed: do_compile (see /home/rchatre/poky_buil=
d/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0.148-r7/temp/log.do_compile=
.25599 for further information)
> | tils-0.148/libdwfl/linux-kernel-modules.c:698: undefined reference to `=
fts_set'
> | ../libdwfl/libdwfl_pic.a(linux-kernel-modules.os): In function `check_m=
odule_notes':
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:532: undefined refere=
nce to `fts_open'
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:541: undefined refere=
nce to `fts_read'
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:570: undefined refere=
nce to `fts_close'
> | ../libebl/libebl.a(eblwstrtab.o): In function `copystrings':
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfutils-0.148/libebl/eblwstrtab.c:329: undefined reference to `wme=
mpcpy'
> | ../libebl/libebl.a(eblwstrtab.o): In function `ebl_wstrtabadd':
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfutils-0.148/libebl/eblwstrtab.c:249: undefined reference to `wcs=
len'
> | ../libebl/libebl.a(eblwstrtab.o): In function `searchstring':
> | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0=
.148-r7/elfutils-0.148/libebl/eblwstrtab.c:228: undefined reference to `wme=
mcmp'
> | collect2: ld returned 1 exit status
> | make[3]: *** [libdw.so] Error 1
> | make[3]: Leaving directory `/home/rchatre/poky_build/tmp/work/armv5te-p=
oky-linux-gnueabi/elfutils-0.148-r7/elfutils-0.148/libdw'
> | make[2]: *** [all] Error 2
> | make[2]: Leaving directory `/home/rchatre/poky_build/tmp/work/armv5te-p=
oky-linux-gnueabi/elfutils-0.148-r7/elfutils-0.148/libdw'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory `/home/rchatre/poky_build/tmp/work/armv5te-p=
oky-linux-gnueabi/elfutils-0.148-r7/elfutils-0.148'
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
>
>
> I would appreciate any hints on how to build a poky-tiny image for ARM.
> I would prefer to build an image that can run in the host's qemu, not
> needing yocto to build qemu. It seems that I will have to create a new
> machine configuration for that but wanted to see if I can get the
> standard items built first, which is giving the problems described
> above.
>

can you do the same exercise on master and see if you can reproduce the
problem on master too. If the problem goes away then I think I have
some idea what
could be wrong.

> Thank you very much
>
> Reinette
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

