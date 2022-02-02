Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F520C433EF
	for <webhook@archiver.kernel.org>; Wed,  2 Feb 2022 20:19:54 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
 [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web12.868.1643833192690326755
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Feb 2022 12:19:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mzUJAe9Z;
 spf=pass (domain: gmail.com, ip: 209.85.219.50, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f50.google.com with SMTP id i19so636588qvx.12
        for <yocto@lists.yoctoproject.org>;
 Wed, 02 Feb 2022 12:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=g9Jlt+BlYAv9yp3/QD1BpNfByQiGajhPcjBpaMMxezA=;
        b=mzUJAe9ZFaOLSD3lD4G5ZixmFv8YALOGCyCXSDQNC2TAKWFoPOwYkSNkavfNVsc8YN
         rmkNXKOKc197OHKwOPC+hsaUSeD2AK7nFCGfvB+PD9LeSRtB9/8rC7hOuPjYcSb202jD
         4yW4kujsvBvInbWk3VQ9zo1QYK2wax/hEjP6zis6dqrMSPjwXnlmAUvLbwLuMMbscAJs
         s8XEN99q2r2BScKOY0AXaO+DFsqIAbHkzbL9CsezSCahhHnQ1T8E+R5IvZ9RMq5Xg7Zu
         sQOEATaTzwgFPOH7JFHgCkCSWZCViURXuzmpaBk9HjyTGVJPjbVRsC5CN1lvYNARomR1
         yOzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=g9Jlt+BlYAv9yp3/QD1BpNfByQiGajhPcjBpaMMxezA=;
        b=pxIsd1opFrA5YgZzFy9kCE+4JvkMflFrZq2RAopzof+rFLfvdFut9Fv5roUIDQgsli
         io0WPabhC3I416B6XsT4k6nUlGZNUvdpTU2cMzvPukJ4GSxGl1iy5yqEw5tVog4W7O/T
         DKn1p/1SHaRSWagnIhF7vIxeMutF7QAWcxZrBpbSJ8I1It8O/ScjDERTJpMPl+1rmTQ+
         d2DA37gBWPhdyoT+0xgndwZEItxYzg2KI6DGdGlEBqEqsWImqZtXD/25vrpP1Ow4vN25
         Y60L5Nzv20SJC+3jeKvcfX5opMzn5Z6QI4IOCBDBRHRY0NkqBnnFcf+oON8MuHeTM5ap
         0mTQ==
X-Gm-Message-State: AOAM533PyjMFkHzChyGvxuAnt3QZ3EpVyKPQbm4RPoDeg79RekDrJT7M
	2lN8noGRBCpHuff9TSqmoYSlnK6uHrJgd1haZzs=
X-Google-Smtp-Source: 
 ABdhPJz8XGvWyhnDpNOZ4Htb939D0d5Y1bIdtfS3qR/4Nx0g02qBomvdYqC8Y2og99VudnFS25yH/hlNFdm7wP7pmnw=
X-Received: by 2002:a05:6214:27e8:: with SMTP id
 jt8mr28737995qvb.110.1643833191585;
 Wed, 02 Feb 2022 12:19:51 -0800 (PST)
MIME-Version: 1.0
References: <PKpV.1643830994022623476.Am2t@lists.yoctoproject.org>
In-Reply-To: <PKpV.1643830994022623476.Am2t@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 2 Feb 2022 12:19:25 -0800
Message-ID: 
 <CAMKF1soP074UyEm9AYQSZYQr5V42qVxGXWmo-fLNMjGwmv=cAg@mail.gmail.com>
Subject: Re: [yocto] Build error:undefined reference to `stime' on Yocto
 Warrior
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Feb 2022 20:19:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56046

you need something like this

https://patchwork.openembedded.org/patch/172282/

On Wed, Feb 2, 2022 at 11:43 AM Sourabh Hegde <hrsourabh011@gmail.com> wrot=
e:
>
> Hello All,
>
> When I execute the bitbake for my custom image recipe I hit the below iss=
ue related to "qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linux-user/syscall.c:740=
4: undefined reference to `stime'".
>
> DEBUG: Executing shell function do_compile
> NOTE: make -j 8 LD=3Dld  AR=3Dar OBJCOPY=3Dobjcopy LDFLAGS=3D-L/root/buil=
d-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/recipe-sysroot-na=
tive/usr/lib                         -L/root/build-rauc/tmp-glibc/work/x86_=
64-linux/qemu-native/3.1.1.1-r0/recipe-sysroot-native/lib                  =
       -Wl,--enable-new-dtags                         -Wl,-rpath-link,/root=
/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/recipe-sysro=
ot-native/usr/lib                         -Wl,-rpath-link,/root/build-rauc/=
tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/recipe-sysroot-native/li=
b                         -Wl,-rpath,/root/build-rauc/tmp-glibc/work/x86_64=
-linux/qemu-native/3.1.1.1-r0/recipe-sysroot-native/usr/lib                =
         -Wl,-rpath,/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-nativ=
e/3.1.1.1-r0/recipe-sysroot-native/lib                         -Wl,-O1 -fus=
e-ld=3Dbfd
>   LINK    i386-linux-user/qemu-i386
>   LINK    mipsel-linux-user/qemu-mipsel
>   LINK    arm-linux-user/qemu-arm
>   LINK    mips-linux-user/qemu-mips
>   LINK    ppc-linux-user/qemu-ppc
>   GEN     x86_64-linux-user/config-target.h
>   LINK    sh4-linux-user/qemu-sh4
>   CC      x86_64-linux-user/exec.o
>   CC      x86_64-linux-user/tcg/tcg.o
>   CC      x86_64-linux-user/tcg/tcg-op.o
> /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in fun=
ction `do_syscall1':
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/syscall.c:7404: undefined reference to `stime'
> collect2: error: ld returned 1 exit status
> make[1]: *** [Makefile:199: qemu-arm] Error 1
> make: *** [Makefile:483: subdir-arm-linux-user] Error 2
> make: *** Waiting for unfinished jobs....
>   CC      x86_64-linux-user/tcg/tcg-op-vec.o
> /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in fun=
ction `do_syscall1':
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/syscall.c:7404: undefined reference to `stime'
> collect2: error: ld returned 1 exit status
> make[1]: *** [Makefile:199: qemu-i386] Error 1
> make: *** [Makefile:483: subdir-i386-linux-user] Error 2
>   CC      x86_64-linux-user/tcg/tcg-op-gvec.o
> /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in fun=
ction `do_syscall1':
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/syscall.c:7404: undefined reference to `stime'
> collect2: error: ld returned 1 exit status
> make[1]: *** [Makefile:199: qemu-sh4] Error 1
> make: *** [Makefile:483: subdir-sh4-linux-user] Error 2
>   CC      x86_64-linux-user/tcg/tcg-common.o
> /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in fun=
ction `do_syscall1':
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/syscall.c:7404: undefined reference to `stime'
> collect2: error: ld returned 1 exit status
> make[1]: *** [Makefile:199: qemu-ppc] Error 1
> make: *** [Makefile:483: subdir-ppc-linux-user] Error 2
>   CC      x86_64-linux-user/tcg/optimize.o
> /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in fun=
ction `do_syscall1':
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/syscall.c:7404: undefined reference to `stime'
> collect2: error: ld returned 1 exit status
> make[1]: *** [Makefile:199: qemu-mipsel] Error 1
> make: *** [Makefile:483: subdir-mipsel-linux-user] Error 2
>   CC      x86_64-linux-user/fpu/softfloat.o
> /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in fun=
ction `do_syscall1':
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/syscall.c:7404: undefined reference to `stime'
> collect2: error: ld returned 1 exit status
> make[1]: *** [Makefile:199: qemu-mips] Error 1
> make: *** [Makefile:483: subdir-mips-linux-user] Error 2
>   CC      x86_64-linux-user/disas.o
>   GEN     x86_64-linux-user/gdbstub-xml.c
>   CC      x86_64-linux-user/gdbstub.o
>   CC      x86_64-linux-user/thunk.o
>   CC      x86_64-linux-user/accel/stubs/hax-stub.o
>   CC      x86_64-linux-user/accel/stubs/hvf-stub.o
>   CC      x86_64-linux-user/accel/stubs/whpx-stub.o
>   CC      x86_64-linux-user/accel/stubs/kvm-stub.o
>   CC      x86_64-linux-user/accel/tcg/tcg-runtime.o
>   CC      x86_64-linux-user/accel/tcg/tcg-runtime-gvec.o
>   CC      x86_64-linux-user/accel/tcg/cpu-exec.o
>   CC      x86_64-linux-user/accel/tcg/cpu-exec-common.o
>   CC      x86_64-linux-user/accel/tcg/translate-all.o
>   CC      x86_64-linux-user/accel/tcg/translator.o
>   CC      x86_64-linux-user/accel/tcg/user-exec.o
>   CC      x86_64-linux-user/accel/tcg/user-exec-stub.o
>   CC      x86_64-linux-user/linux-user/main.o
>   CC      x86_64-linux-user/linux-user/syscall.o
>   CC      x86_64-linux-user/linux-user/strace.o
>   CC      x86_64-linux-user/linux-user/mmap.o
>   CC      x86_64-linux-user/linux-user/signal.o
>   CC      x86_64-linux-user/linux-user/elfload.o
> In file included from /usr/include/string.h:495,
>                  from /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-n=
ative/3.1.1.1-r0/qemu-3.1.1.1/include/qemu/osdep.h:84,
>                  from /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-n=
ative/3.1.1.1-r0/qemu-3.1.1.1/linux-user/elfload.c:2:
> In function =E2=80=98strncpy=E2=80=99,
>     inlined from =E2=80=98fill_psinfo=E2=80=99 at /root/build-rauc/tmp-gl=
ibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linux-user/elfloa=
d.c:3158:12,
>     inlined from =E2=80=98fill_note_info=E2=80=99 at /root/build-rauc/tmp=
-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linux-user/elf=
load.c:3340:5,
>     inlined from =E2=80=98elf_core_dump=E2=80=99 at /root/build-rauc/tmp-=
glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linux-user/elfl=
oad.c:3489:9:
> /usr/include/x86_64-linux-gnu/bits/string_fortified.h:106:10: warning: =
=E2=80=98__builtin_strncpy=E2=80=99 specified bound 16 equals destination s=
ize [-Wstringop-truncation]
>   106 |   return __builtin___strncpy_chk (__dest, __src, __len, __bos (__=
dest));
>       |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~
>   CC      x86_64-linux-user/linux-user/linuxload.o
>   CC      x86_64-linux-user/linux-user/uaccess.o
>   CC      x86_64-linux-user/linux-user/uname.o
>   CCAS    x86_64-linux-user/linux-user/safe-syscall.o
>   CC      x86_64-linux-user/linux-user/x86_64/signal.o
>   CC      x86_64-linux-user/linux-user/x86_64/cpu_loop.o
>   CC      x86_64-linux-user/linux-user/exit.o
>   CC      x86_64-linux-user/linux-user/fd-trans.o
>   CC      x86_64-linux-user/target/i386/helper.o
>   CC      x86_64-linux-user/target/i386/cpu.o
>   CC      x86_64-linux-user/target/i386/gdbstub.o
>   CC      x86_64-linux-user/target/i386/xsave_helper.o
>   CC      x86_64-linux-user/target/i386/translate.o
>   CC      x86_64-linux-user/target/i386/bpt_helper.o
>   CC      x86_64-linux-user/target/i386/cc_helper.o
>   CC      x86_64-linux-user/target/i386/excp_helper.o
>   CC      x86_64-linux-user/target/i386/fpu_helper.o
>   CC      x86_64-linux-user/target/i386/int_helper.o
>   CC      x86_64-linux-user/target/i386/mem_helper.o
>   CC      x86_64-linux-user/target/i386/misc_helper.o
>   CC      x86_64-linux-user/target/i386/mpx_helper.o
>   CC      x86_64-linux-user/target/i386/seg_helper.o
>   CC      x86_64-linux-user/target/i386/smm_helper.o
>   CC      x86_64-linux-user/target/i386/svm_helper.o
>   CC      x86_64-linux-user/target/i386/sev-stub.o
>   GEN     trace/generated-helpers.c
>   CC      x86_64-linux-user/trace/control-target.o
>   CC      x86_64-linux-user/gdbstub-xml.o
>   CC      x86_64-linux-user/trace/generated-helpers.o
>   LINK    x86_64-linux-user/qemu-x86_64
> ERROR: oe_runmake failed
> WARNING: exit code 1 from a shell command.
> ERROR: Function failed: do_compile (log file is located at /root/build-ra=
uc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/temp/log.do_compile.5=
584)
>
>
> I am using "Warrior" version due to limitation from other meta-layers. I =
have read that above issue is fixed in newer versions of Yocto. But how can=
 i fix this in Warrior? Is there any workaround?
>
> Can someone please help me resolve it?
>
> Your help will be much appreciated.
>
> Thanks in advance.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56045): https://lists.yoctoproject.org/g/yocto/messag=
e/56045
> Mute This Topic: https://lists.yoctoproject.org/mt/88867221/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

