Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D94EE0142F
	for <yocto@yoctoproject.org>; Mon,  4 Jun 2012 14:56:11 -0700 (PDT)
Received: by eaab16 with SMTP id b16so1423529eaa.35
	for <yocto@yoctoproject.org>; Mon, 04 Jun 2012 14:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=BvJX2z48wHAG7d2b9s55RhGDQOhau4FjstsrYFUa9xk=;
	b=NRaDhQVFwIiP9i+CzAk72C7h7u81iHvSDwWLfQ+tZA40jQAcqgEW4vo4XkkWesaaD4
	h+5ze6kic+cJZAmw3VgTWXuQ2fGLMWWNs/YLsJX/WseAR/4dwnbQyitJAW5zmQ+RIz1m
	8TPwLk3PIJGIgVVzW8pmzsh0z8fd7BUsvJ0D9+V9J1VXuIrsBsmzOvnVwASn7iZJ6e5n
	oZ1CHWs/GMmJ2h6ktx/cR2YxmCXdRuPmpQW4i4grYWhSrz430vk5QmFkYT+1ziDFT7yS
	FMIKOO+SgdZOjzE9HlC3yLtMOKK0YHTyOpnkeQryWcmzbKIUl/78lRTIosKPFE1MgpQX
	dVPw==
Received: by 10.14.99.200 with SMTP id x48mr4530694eef.77.1338846969133; Mon,
	04 Jun 2012 14:56:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Mon, 4 Jun 2012 14:55:38 -0700 (PDT)
In-Reply-To: <1338838311.19030.3.camel@rchatre.jf.intel.com>
References: <1338581348.20547.41.camel@rchatre.jf.intel.com>
	<CAMKF1sqDac3uDkddZE4pHTv+R1iqHMHBjigFc-LuZFYm+bFJnw@mail.gmail.com>
	<1338838311.19030.3.camel@rchatre.jf.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 4 Jun 2012 14:55:38 -0700
Message-ID: <CAMKF1spuePbW4tpP-2q61vFXDQj_7=vQaiYNN=0xMWveanZhhg@mail.gmail.com>
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
X-List-Received-Date: Mon, 04 Jun 2012 21:56:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

>> > | ../libdwfl/libdwfl_pic.a(linux-kernel-modules.os): In function `dwfl=
_linux_kernel_report_offline':
>> > | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutil=
s-0.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:310: undefined ref=
erence to `fts_open'

you need libc-ftraverse added to

>> > | ../libebl/libebl.a(eblwstrtab.o): In function `copystrings':
>> > | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutil=
s-0.148-r7/elfutils-0.148/libebl/eblwstrtab.c:329: undefined reference to `=
wmempcpy'
>> > | ../libebl/libebl.a(eblwstrtab.o): In function `ebl_wstrtabadd':
>> > | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutil=
s-0.148-r7/elfutils-0.148/libebl/eblwstrtab.c:249: undefined reference to `=
wcslen'
>> > | ../libebl/libebl.a(eblwstrtab.o): In function `searchstring':
>> > | /home/rchatre/poky_build/tmp/work/armv5te-poky-linux-gnueabi/elfutil=
s-0.148-r7/elfutils-0.148/libebl/eblwstrtab.c:228: undefined reference to `=
wmemcmp'

I think you need to enable  libc-posix-clang-wchar in DISTRO_FEATURES
if you want this to work.

you can add both  libc-posix-clang-wchar and  libc-ftraverse to
DISTRO_FEATURES_LIBC_DEFAULT

>> >
>> >
>> > I would appreciate any hints on how to build a poky-tiny image for ARM=
.
>> > I would prefer to build an image that can run in the host's qemu, not
>> > needing yocto to build qemu. It seems that I will have to create a new
>> > machine configuration for that but wanted to see if I can get the
>> > standard items built first, which is giving the problems described
>> > above.
>> >
>>
>> can you do the same exercise on master and see if you can reproduce the
>> problem on master too. If the problem goes away then I think I have
>> some idea what
>> could be wrong.
>
> I moved to master with HEAD of de4cdfd6bc1280ac7ac0559b87734d26294ef773.
> Unfortunately the error appears to be the same. I copy it below:
>
> | arm-poky-linux-gnueabi-ranlib libdw_pic.a
> | arm-poky-linux-gnueabi-gcc =C2=A0-march=3Darmv5te =C2=A0-marm -mthumb-i=
nterwork =C2=A0-mtune=3Darm926ej-s --sysroot=3D/home/rchatre/poky_build_mas=
ter/tmp/sysroots/qemuarm -std=3Dgnu99 -Wall -Wshadow -Werror -Wunused -Wext=
ra -fgnu89-inline -Wformat=3D2 =C2=A0 =C2=A0-O2 -pipe -g -feliminate-unused=
-debug-types =C2=A0-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o libdw.=
so -shared -o libdw.so -Wl,--soname,libdw.so.1,-z,defs \
> | =C2=BB------Wl,--enable-new-dtags,-rpath,/usr/lib/elfutils \
> | =C2=BB------Wl,--version-script,libdw.map,--no-undefined \
> | =C2=BB------Wl,--whole-archive libdw_pic.a ../libdwfl/libdwfl_pic.a ../=
libebl/libebl.a ../libelf/libelf.so -Wl,--no-whole-archive\
> | =C2=BB------ldl -lbz2 -lz
> | ../libdwfl/libdwfl_pic.a(linux-kernel-modules.os): In function `dwfl_li=
nux_kernel_report_offline':
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:310: undefined=
 reference to `fts_open'
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:320: undefined=
 reference to `fts_read'
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:391: undefined=
 reference to `fts_close'
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:327: undefined=
 reference to `fts_set'
> | ../libdwfl/libdwfl_pic.a(linux-kernel-modules.os): In function `dwfl_li=
nux_kernel_find_elf':
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:647: undefined=
 reference to `fts_open'
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:691: undefined=
 reference to `fts_read'
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:691: undefined=
 reference to `fts_read'
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0ERROR: Function failed: do_compile (see /home/rchatre/poky_build_mas=
ter/tmp/work/armv5te-poky-linux-gnueabi/elfutils-0.148-r7/temp/log.do_compi=
le.11166 for further information)
> | .148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:740: undefined re=
ference to `fts_close'
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:698: undefined=
 reference to `fts_set'
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:715: undefined=
 reference to `fts_close'
> | ../libdwfl/libdwfl_pic.a(linux-kernel-modules.os): In function `check_m=
odule_notes':
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:532: undefined=
 reference to `fts_open'
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:541: undefined=
 reference to `fts_read'
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0.148-r7/elfutils-0.148/libdwfl/linux-kernel-modules.c:570: undefined=
 reference to `fts_close'
> | ../libebl/libebl.a(eblwstrtab.o): In function `copystrings':
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0.148-r7/elfutils-0.148/libebl/eblwstrtab.c:329: undefined reference =
to `wmempcpy'
> | ../libebl/libebl.a(eblwstrtab.o): In function `ebl_wstrtabadd':
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0.148-r7/elfutils-0.148/libebl/eblwstrtab.c:249: undefined reference =
to `wcslen'
> | ../libebl/libebl.a(eblwstrtab.o): In function `searchstring':
> | /home/rchatre/poky_build_master/tmp/work/armv5te-poky-linux-gnueabi/elf=
utils-0.148-r7/elfutils-0.148/libebl/eblwstrtab.c:228: undefined reference =
to `wmemcmp'
> | collect2: error: ld returned 1 exit status
> | make[3]: *** [libdw.so] Error 1
> | make[3]: Leaving directory `/home/rchatre/poky_build_master/tmp/work/ar=
mv5te-poky-linux-gnueabi/elfutils-0.148-r7/elfutils-0.148/libdw'
> | make[2]: *** [all] Error 2
> | make[2]: Leaving directory `/home/rchatre/poky_build_master/tmp/work/ar=
mv5te-poky-linux-gnueabi/elfutils-0.148-r7/elfutils-0.148/libdw'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory `/home/rchatre/poky_build_master/tmp/work/ar=
mv5te-poky-linux-gnueabi/elfutils-0.148-r7/elfutils-0.148'
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> NOTE: package elfutils-0.148-r7: task do_compile: Failed
> ERROR: Task 604 (/opt/poky.git/meta/recipes-devtools/elfutils/elfutils_0.=
148.bb, do_compile) failed with exit code '1'
>
>
> I'd be happy to try any ideas you have.
>
> Reinette
>

