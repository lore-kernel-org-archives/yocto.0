Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57C92C433EF
	for <webhook@archiver.kernel.org>; Wed,  2 Feb 2022 19:43:14 +0000 (UTC)
Subject: Build error:undefined reference to `stime' on Yocto Warrior
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Sesslach, Bavaria, DE (217.24.55.250)
X-Originating-Platform: Windows Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 02 Feb 2022 11:43:14 -0800
Message-ID: <PKpV.1643830994022623476.Am2t@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VYUG7pM3zflZQ2iiZRoR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Feb 2022 19:43:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56045

--VYUG7pM3zflZQ2iiZRoR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

When I execute the bitbake for my custom image recipe I hit the below issue=
 related to "qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linux-user/syscall.c:7404:=
 undefined reference to `stime'".

DEBUG: Executing shell function do_compile
NOTE: make -j 8 LD=3Dld=C2=A0 AR=3Dar OBJCOPY=3Dobjcopy LDFLAGS=3D-L/root/b=
uild-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/recipe-sysroot=
-native/usr/lib=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 -L/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.=
1-r0/recipe-sysroot-native/lib=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 -Wl,--enable-new-dtags=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -Wl,-rpath-link,/root/build-rauc=
/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/recipe-sysroot-native/u=
sr/lib=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 -Wl,-rpath-link,/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3=
.1.1.1-r0/recipe-sysroot-native/lib=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -Wl,-rpath,/root/build-rauc/tmp-glibc/work/x=
86_64-linux/qemu-native/3.1.1.1-r0/recipe-sysroot-native/usr/lib=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -Wl,-rpath,/ro=
ot/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/recipe-sys=
root-native/lib=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 -Wl,-O1 -fuse-ld=3Dbfd
LINK=C2=A0=C2=A0=C2=A0 i386-linux-user/qemu-i386
LINK=C2=A0=C2=A0=C2=A0 mipsel-linux-user/qemu-mipsel
LINK=C2=A0=C2=A0=C2=A0 arm-linux-user/qemu-arm
LINK=C2=A0=C2=A0=C2=A0 mips-linux-user/qemu-mips
LINK=C2=A0=C2=A0=C2=A0 ppc-linux-user/qemu-ppc
GEN=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/config-target.h
LINK=C2=A0=C2=A0=C2=A0 sh4-linux-user/qemu-sh4
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/exec.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/tcg/tcg.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/tcg/tcg-op.o
/root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in funct=
ion `do_syscall1':
/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.=
1.1.1/linux-user/syscall.c:7404: undefined reference to `stime'
collect2: error: ld returned 1 exit status
make[1]: *** [Makefile:199: qemu-arm] Error 1
make: *** [Makefile:483: subdir-arm-linux-user] Error 2
make: *** Waiting for unfinished jobs....
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/tcg/tcg-op-vec.o
/root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in funct=
ion `do_syscall1':
/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.=
1.1.1/linux-user/syscall.c:7404: undefined reference to `stime'
collect2: error: ld returned 1 exit status
make[1]: *** [Makefile:199: qemu-i386] Error 1
make: *** [Makefile:483: subdir-i386-linux-user] Error 2
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/tcg/tcg-op-gvec.o
/root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in funct=
ion `do_syscall1':
/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.=
1.1.1/linux-user/syscall.c:7404: undefined reference to `stime'
collect2: error: ld returned 1 exit status
make[1]: *** [Makefile:199: qemu-sh4] Error 1
make: *** [Makefile:483: subdir-sh4-linux-user] Error 2
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/tcg/tcg-common.o
/root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in funct=
ion `do_syscall1':
/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.=
1.1.1/linux-user/syscall.c:7404: undefined reference to `stime'
collect2: error: ld returned 1 exit status
make[1]: *** [Makefile:199: qemu-ppc] Error 1
make: *** [Makefile:483: subdir-ppc-linux-user] Error 2
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/tcg/optimize.o
/root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in funct=
ion `do_syscall1':
/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.=
1.1.1/linux-user/syscall.c:7404: undefined reference to `stime'
collect2: error: ld returned 1 exit status
make[1]: *** [Makefile:199: qemu-mipsel] Error 1
make: *** [Makefile:483: subdir-mipsel-linux-user] Error 2
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/fpu/softfloat.o
/root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in funct=
ion `do_syscall1':
/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.=
1.1.1/linux-user/syscall.c:7404: undefined reference to `stime'
collect2: error: ld returned 1 exit status
make[1]: *** [Makefile:199: qemu-mips] Error 1
make: *** [Makefile:483: subdir-mips-linux-user] Error 2
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/disas.o
GEN=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/gdbstub-xml.c
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/gdbstub.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/thunk.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/accel/stubs/hax-stub.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/accel/stubs/hvf-stub.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/accel/stubs/whpx-stub.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/accel/stubs/kvm-stub.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/accel/tcg/tcg-runtime.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/accel/tcg/tcg-runtime-gv=
ec.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/accel/tcg/cpu-exec.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/accel/tcg/cpu-exec-commo=
n.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/accel/tcg/translate-all.=
o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/accel/tcg/translator.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/accel/tcg/user-exec.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/accel/tcg/user-exec-stub=
.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/linux-user/main.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/linux-user/syscall.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/linux-user/strace.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/linux-user/mmap.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/linux-user/signal.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/linux-user/elfload.o
In file included from /usr/include/string.h:495,
from /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qe=
mu-3.1.1.1/include/qemu/osdep.h:84,
from /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qe=
mu-3.1.1.1/linux-user/elfload.c:2:
In function =E2=80=98strncpy=E2=80=99,
inlined from =E2=80=98fill_psinfo=E2=80=99 at /root/build-rauc/tmp-glibc/wo=
rk/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linux-user/elfload.c:31=
58:12,
inlined from =E2=80=98fill_note_info=E2=80=99 at /root/build-rauc/tmp-glibc=
/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linux-user/elfload.c=
:3340:5,
inlined from =E2=80=98elf_core_dump=E2=80=99 at /root/build-rauc/tmp-glibc/=
work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linux-user/elfload.c:=
3489:9:
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:106:10: warning: =E2=
=80=98__builtin_strncpy=E2=80=99 specified bound 16 equals destination size=
 [-Wstringop-truncation]
106 |=C2=A0=C2=A0 return __builtin___strncpy_chk (__dest, __src, __len, __b=
os (__dest));
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/linux-user/linuxload.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/linux-user/uaccess.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/linux-user/uname.o
CCAS=C2=A0=C2=A0=C2=A0 x86_64-linux-user/linux-user/safe-syscall.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/linux-user/x86_64/signal=
.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/linux-user/x86_64/cpu_lo=
op.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/linux-user/exit.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/linux-user/fd-trans.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/helper.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/cpu.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/gdbstub.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/xsave_helper=
.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/translate.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/bpt_helper.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/cc_helper.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/excp_helper.=
o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/fpu_helper.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/int_helper.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/mem_helper.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/misc_helper.=
o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/mpx_helper.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/seg_helper.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/smm_helper.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/svm_helper.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/target/i386/sev-stub.o
GEN=C2=A0=C2=A0=C2=A0=C2=A0 trace/generated-helpers.c
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/trace/control-target.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/gdbstub-xml.o
CC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x86_64-linux-user/trace/generated-helpers.=
o
LINK=C2=A0=C2=A0=C2=A0 x86_64-linux-user/qemu-x86_64
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_compile (log file is located at /root/build-rauc=
/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/temp/log.do_compile.558=
4)

I am using "Warrior" version due to limitation from other meta-layers. I ha=
ve read that above issue is fixed in newer versions of Yocto. But how can i=
 fix this in Warrior? Is there any workaround?

Can someone please help me resolve it?

Your help will be much appreciated.

Thanks in advance.

--VYUG7pM3zflZQ2iiZRoR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,<br /><br />When I execute the bitbake for my custom image recipe=
 I hit the below issue related to "qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linu=
x-user/syscall.c:7404: undefined reference to `stime'".<br /><br />DEBUG: E=
xecuting shell function do_compile<br />NOTE: make -j 8 LD=3Dld&nbsp; AR=3D=
ar OBJCOPY=3Dobjcopy LDFLAGS=3D-L/root/build-rauc/tmp-glibc/work/x86_64-lin=
ux/qemu-native/3.1.1.1-r0/recipe-sysroot-native/usr/lib&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -L/root/build-rauc/tmp-gl=
ibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/recipe-sysroot-native/lib&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Wl,--enab=
le-new-dtags&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; -Wl,-rpath-link,/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-na=
tive/3.1.1.1-r0/recipe-sysroot-native/usr/lib&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Wl,-rpath-link,/root/build-rauc/tm=
p-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/recipe-sysroot-native/lib&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Wl,-r=
path,/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/re=
cipe-sysroot-native/usr/lib&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; -Wl,-rpath,/root/build-rauc/tmp-glibc/work/x86_64-lin=
ux/qemu-native/3.1.1.1-r0/recipe-sysroot-native/lib&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Wl,-O1 -fuse-ld=3Dbfd<br />&=
nbsp; LINK&nbsp;&nbsp;&nbsp; i386-linux-user/qemu-i386<br />&nbsp; LINK&nbs=
p;&nbsp;&nbsp; mipsel-linux-user/qemu-mipsel<br />&nbsp; LINK&nbsp;&nbsp;&n=
bsp; arm-linux-user/qemu-arm<br />&nbsp; LINK&nbsp;&nbsp;&nbsp; mips-linux-=
user/qemu-mips<br />&nbsp; LINK&nbsp;&nbsp;&nbsp; ppc-linux-user/qemu-ppc<b=
r />&nbsp; GEN&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/config-target.h<br=
 />&nbsp; LINK&nbsp;&nbsp;&nbsp; sh4-linux-user/qemu-sh4<br />&nbsp; CC&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/exec.o<br />&nbsp; CC&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/tcg/tcg.o<br />&nbsp; CC&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; x86_64-linux-user/tcg/tcg-op.o<br />/root/build-rauc/tm=
p-glibc/hosttools/ld.bfd: linux-user/syscall.o: in function `do_syscall1':<=
br />/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qe=
mu-3.1.1.1/linux-user/syscall.c:7404: undefined reference to `stime'<br />c=
ollect2: error: ld returned 1 exit status<br />make[1]: *** [Makefile:199: =
qemu-arm] Error 1<br />make: *** [Makefile:483: subdir-arm-linux-user] Erro=
r 2<br />make: *** Waiting for unfinished jobs....<br />&nbsp; CC&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; x86_64-linux-user/tcg/tcg-op-vec.o<br />/root/build-ra=
uc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in function `do_syscal=
l1':<br />/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-=
r0/qemu-3.1.1.1/linux-user/syscall.c:7404: undefined reference to `stime'<b=
r />collect2: error: ld returned 1 exit status<br />make[1]: *** [Makefile:=
199: qemu-i386] Error 1<br />make: *** [Makefile:483: subdir-i386-linux-use=
r] Error 2<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/t=
cg/tcg-op-gvec.o<br />/root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-us=
er/syscall.o: in function `do_syscall1':<br />/root/build-rauc/tmp-glibc/wo=
rk/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linux-user/syscall.c:74=
04: undefined reference to `stime'<br />collect2: error: ld returned 1 exit=
 status<br />make[1]: *** [Makefile:199: qemu-sh4] Error 1<br />make: *** [=
Makefile:483: subdir-sh4-linux-user] Error 2<br />&nbsp; CC&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; x86_64-linux-user/tcg/tcg-common.o<br />/root/build-rauc/tmp=
-glibc/hosttools/ld.bfd: linux-user/syscall.o: in function `do_syscall1':<b=
r />/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qem=
u-3.1.1.1/linux-user/syscall.c:7404: undefined reference to `stime'<br />co=
llect2: error: ld returned 1 exit status<br />make[1]: *** [Makefile:199: q=
emu-ppc] Error 1<br />make: *** [Makefile:483: subdir-ppc-linux-user] Error=
 2<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/tcg/optim=
ize.o<br />/root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.=
o: in function `do_syscall1':<br />/root/build-rauc/tmp-glibc/work/x86_64-l=
inux/qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linux-user/syscall.c:7404: undefin=
ed reference to `stime'<br />collect2: error: ld returned 1 exit status<br =
/>make[1]: *** [Makefile:199: qemu-mipsel] Error 1<br />make: *** [Makefile=
:483: subdir-mipsel-linux-user] Error 2<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; x86_64-linux-user/fpu/softfloat.o<br />/root/build-rauc/tmp-glibc=
/hosttools/ld.bfd: linux-user/syscall.o: in function `do_syscall1':<br />/r=
oot/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.=
1.1/linux-user/syscall.c:7404: undefined reference to `stime'<br />collect2=
: error: ld returned 1 exit status<br />make[1]: *** [Makefile:199: qemu-mi=
ps] Error 1<br />make: *** [Makefile:483: subdir-mips-linux-user] Error 2<b=
r />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/disas.o<br />=
&nbsp; GEN&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/gdbstub-xml.c<br />&nb=
sp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/gdbstub.o<br />&nbsp=
; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/thunk.o<br />&nbsp; CC=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/accel/stubs/hax-stub.o<br =
/>&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/accel/stubs/hvf=
-stub.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/acce=
l/stubs/whpx-stub.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-lin=
ux-user/accel/stubs/kvm-stub.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 x86_64-linux-user/accel/tcg/tcg-runtime.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; x86_64-linux-user/accel/tcg/tcg-runtime-gvec.o<br />&nbsp; CC&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/accel/tcg/cpu-exec.o<br />&=
nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/accel/tcg/cpu-exec=
-common.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/ac=
cel/tcg/translate-all.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64=
-linux-user/accel/tcg/translator.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; x86_64-linux-user/accel/tcg/user-exec.o<br />&nbsp; CC&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; x86_64-linux-user/accel/tcg/user-exec-stub.o<br />&nbsp; CC&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/linux-user/main.o<br />&nbs=
p; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/linux-user/syscall.o<=
br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/linux-user/s=
trace.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/linu=
x-user/mmap.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-use=
r/linux-user/signal.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-l=
inux-user/linux-user/elfload.o<br />In file included from /usr/include/stri=
ng.h:495,<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /root/build-rauc/tmp-glibc/work/x=
86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1.1/include/qemu/osdep.h:84,<br=
 />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; from /root/build-rauc/tmp-glibc/work/x86_64-linux/=
qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linux-user/elfload.c:2:<br />In functio=
n &lsquo;strncpy&rsquo;,<br />&nbsp;&nbsp;&nbsp; inlined from &lsquo;fill_p=
sinfo&rsquo; at /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.=
1.1.1-r0/qemu-3.1.1.1/linux-user/elfload.c:3158:12,<br />&nbsp;&nbsp;&nbsp;=
 inlined from &lsquo;fill_note_info&rsquo; at /root/build-rauc/tmp-glibc/wo=
rk/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linux-user/elfload.c:33=
40:5,<br />&nbsp;&nbsp;&nbsp; inlined from &lsquo;elf_core_dump&rsquo; at /=
root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1=
.1.1/linux-user/elfload.c:3489:9:<br />/usr/include/x86_64-linux-gnu/bits/s=
tring_fortified.h:106:10: warning: &lsquo;__builtin_strncpy&rsquo; specifie=
d bound 16 equals destination size [-Wstringop-truncation]<br />&nbsp; 106 =
|&nbsp;&nbsp; return __builtin___strncpy_chk (__dest, __src, __len, __bos (=
__dest));<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-us=
er/linux-user/linuxload.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_=
64-linux-user/linux-user/uaccess.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; x86_64-linux-user/linux-user/uname.o<br />&nbsp; CCAS&nbsp;&nbsp;&nbsp=
; x86_64-linux-user/linux-user/safe-syscall.o<br />&nbsp; CC&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; x86_64-linux-user/linux-user/x86_64/signal.o<br />&nbsp; CC=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/linux-user/x86_64/cpu_loop=
.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/linux-use=
r/exit.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/lin=
ux-user/fd-trans.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linu=
x-user/target/i386/helper.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x8=
6_64-linux-user/target/i386/cpu.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; x86_64-linux-user/target/i386/gdbstub.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; x86_64-linux-user/target/i386/xsave_helper.o<br />&nbsp; CC&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/target/i386/translate.o<br /=
>&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/target/i386/bpt_=
helper.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/tar=
get/i386/cc_helper.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-li=
nux-user/target/i386/excp_helper.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; x86_64-linux-user/target/i386/fpu_helper.o<br />&nbsp; CC&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; x86_64-linux-user/target/i386/int_helper.o<br />&nbsp; CC=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/target/i386/mem_helper.o<b=
r />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/target/i386/m=
isc_helper.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user=
/target/i386/mpx_helper.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_=
64-linux-user/target/i386/seg_helper.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; x86_64-linux-user/target/i386/smm_helper.o<br />&nbsp; CC&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/target/i386/svm_helper.o<br />&nbsp=
; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/target/i386/sev-stub.o=
<br />&nbsp; GEN&nbsp;&nbsp;&nbsp;&nbsp; trace/generated-helpers.c<br />&nb=
sp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/trace/control-target=
.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/gdbstub-x=
ml.o<br />&nbsp; CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x86_64-linux-user/trace/g=
enerated-helpers.o<br />&nbsp; LINK&nbsp;&nbsp;&nbsp; x86_64-linux-user/qem=
u-x86_64<br />ERROR: oe_runmake failed<br />WARNING: exit code 1 from a she=
ll command.<br />ERROR: Function failed: do_compile (log file is located at=
 /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/temp/l=
og.do_compile.5584)<br /><br /><br />I am using "Warrior" version due to li=
mitation from other meta-layers. I have read that above issue is fixed in n=
ewer versions of Yocto. But how can i fix this in Warrior? Is there any wor=
karound?<br /><br />Can someone please help me resolve it?<br /><br />Your =
help will be much appreciated.<br /><br />Thanks in advance.

--VYUG7pM3zflZQ2iiZRoR--

