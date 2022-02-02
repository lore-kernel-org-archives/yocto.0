Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1634C433F5
	for <webhook@archiver.kernel.org>; Wed,  2 Feb 2022 20:58:54 +0000 (UTC)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
 [209.85.166.41])
 by mx.groups.io with SMTP id smtpd.web09.1477.1643835534188197244
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Feb 2022 12:58:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XL96Au/a;
 spf=pass (domain: gmail.com, ip: 209.85.166.41,
 mailfrom: hrsourabh011@gmail.com)
Received: by mail-io1-f41.google.com with SMTP id y84so731986iof.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 02 Feb 2022 12:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pMTF4JgyRNz3Tzcy0FTNB7DaUG1HCjS58zTjDrun6Qw=;
        b=XL96Au/a/VoPMqMQ98+3iiez10q1FCdIwlgL7L/hCM0i4S3LV70ULnnnaYfis6zOZF
         tyUkKPEpYWxeVed6LZZtezs/wnQUy3k3jw3fev4rby2RyUg/Xz3N2blyH3YPT45iJ1I2
         /Nw2fGuFnrkWwpscT6UPYl5qEDnftdA5k0MEMSMhOKa2lBL4iPyOjhJ1JxN8+/SICM8t
         X5iIlmhcKXbJp9mv8NdaC01m1tBm2aor4f0hQmW+QgyxfMgJAFgNy7QkQGBpjbvwibWc
         bsLlk2rZUWJ0AfNOf0RKIH2mu8VdlNOLMoDX5ttbEFtJQl64Jumfv5iFbCP5Ahl4zkKn
         AqZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pMTF4JgyRNz3Tzcy0FTNB7DaUG1HCjS58zTjDrun6Qw=;
        b=BBpYf04mLniYYjXXZabq2ijFdozGXi942q/pVJP1f3iLLIFGblBpBuF9dq3Dz1Fzt4
         FAEPqFDjssPhjBQHEFlXMWBacCmZcR6Omn58m+4qe1j6uTdG6Ks3AqD1jpvjKcq1W1wX
         a3ZgK43ITJt+RGB6Y53Kr7ccpv54+xxUUa02XKxSysJWSfxs6Sk8ZKZEcNpXNmooyqsu
         Ykn7sThO1o444NtmjxVS5RcdOZamcb1EX2soJa+8zp3aM6AsnIEM/1CbjGbrJmZmugHu
         VbnCxeKG9GFnZK4fs9/Ghtu2B5bm/heNqBmaR7FZGWn2YzPU+eNEPiafMM9hYsJpTFNM
         gCAA==
X-Gm-Message-State: AOAM533Pmbbl9g9CXBusnEyjNB7UML/KT3cuThYJ80YJfB++hpBax2g8
	ruUHdZGlAev9ZLag4ETc4/ZKiB6ERc2+I+eCN4w=
X-Google-Smtp-Source: 
 ABdhPJwu01HF4aTzp1n7qZAYZnM06NwmM3TZZJPOznaPqJqXwHmVJ1IIvxdAzp3QWCj065QRlSpfgNxv35r01veT+Bg=
X-Received: by 2002:a05:6602:3307:: with SMTP id
 b7mr17729366ioz.78.1643835533489;
 Wed, 02 Feb 2022 12:58:53 -0800 (PST)
MIME-Version: 1.0
References: <PKpV.1643830994022623476.Am2t@lists.yoctoproject.org>
 <CAMKF1soP074UyEm9AYQSZYQr5V42qVxGXWmo-fLNMjGwmv=cAg@mail.gmail.com>
In-Reply-To: 
 <CAMKF1soP074UyEm9AYQSZYQr5V42qVxGXWmo-fLNMjGwmv=cAg@mail.gmail.com>
From: Sourabh Hegde <hrsourabh011@gmail.com>
Date: Wed, 2 Feb 2022 21:58:42 +0100
Message-ID: 
 <CADYjeStw+Lx+gnLtwpE_=+-F8s2fO+gmro0+A0AcVHZQYbKFjA@mail.gmail.com>
Subject: Re: [yocto] Build error:undefined reference to `stime' on Yocto
 Warrior
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000afb0805d70f4906"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Feb 2022 20:58:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56047

--0000000000000afb0805d70f4906
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello @Khem,

Thanks for the quick response.

Can you please let me know where and how to include this patch in poky/meta=
?

Thanks in advance

On Wed, Feb 2, 2022, 21:19 Khem Raj <raj.khem@gmail.com> wrote:

> you need something like this
>
> https://patchwork.openembedded.org/patch/172282/
>
> On Wed, Feb 2, 2022 at 11:43 AM Sourabh Hegde <hrsourabh011@gmail.com>
> wrote:
> >
> > Hello All,
> >
> > When I execute the bitbake for my custom image recipe I hit the below
> issue related to "qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linux-user/syscall.=
c:7404:
> undefined reference to `stime'".
> >
> > DEBUG: Executing shell function do_compile
> > NOTE: make -j 8 LD=3Dld  AR=3Dar OBJCOPY=3Dobjcopy
> LDFLAGS=3D-L/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.=
1.1-r0/recipe-sysroot-native/usr/lib
>
>  -L/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/re=
cipe-sysroot-native/lib
>                        -Wl,--enable-new-dtags
>  -Wl,-rpath-link,/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native=
/3.1.1.1-r0/recipe-sysroot-native/usr/lib
>
>  -Wl,-rpath-link,/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native=
/3.1.1.1-r0/recipe-sysroot-native/lib
>
>  -Wl,-rpath,/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.=
1.1-r0/recipe-sysroot-native/usr/lib
>
>  -Wl,-rpath,/root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.=
1.1-r0/recipe-sysroot-native/lib
>                        -Wl,-O1 -fuse-ld=3Dbfd
> >   LINK    i386-linux-user/qemu-i386
> >   LINK    mipsel-linux-user/qemu-mipsel
> >   LINK    arm-linux-user/qemu-arm
> >   LINK    mips-linux-user/qemu-mips
> >   LINK    ppc-linux-user/qemu-ppc
> >   GEN     x86_64-linux-user/config-target.h
> >   LINK    sh4-linux-user/qemu-sh4
> >   CC      x86_64-linux-user/exec.o
> >   CC      x86_64-linux-user/tcg/tcg.o
> >   CC      x86_64-linux-user/tcg/tcg-op.o
> > /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in
> function `do_syscall1':
> >
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/syscall.c:7404:
> undefined reference to `stime'
> > collect2: error: ld returned 1 exit status
> > make[1]: *** [Makefile:199: qemu-arm] Error 1
> > make: *** [Makefile:483: subdir-arm-linux-user] Error 2
> > make: *** Waiting for unfinished jobs....
> >   CC      x86_64-linux-user/tcg/tcg-op-vec.o
> > /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in
> function `do_syscall1':
> >
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/syscall.c:7404:
> undefined reference to `stime'
> > collect2: error: ld returned 1 exit status
> > make[1]: *** [Makefile:199: qemu-i386] Error 1
> > make: *** [Makefile:483: subdir-i386-linux-user] Error 2
> >   CC      x86_64-linux-user/tcg/tcg-op-gvec.o
> > /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in
> function `do_syscall1':
> >
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/syscall.c:7404:
> undefined reference to `stime'
> > collect2: error: ld returned 1 exit status
> > make[1]: *** [Makefile:199: qemu-sh4] Error 1
> > make: *** [Makefile:483: subdir-sh4-linux-user] Error 2
> >   CC      x86_64-linux-user/tcg/tcg-common.o
> > /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in
> function `do_syscall1':
> >
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/syscall.c:7404:
> undefined reference to `stime'
> > collect2: error: ld returned 1 exit status
> > make[1]: *** [Makefile:199: qemu-ppc] Error 1
> > make: *** [Makefile:483: subdir-ppc-linux-user] Error 2
> >   CC      x86_64-linux-user/tcg/optimize.o
> > /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in
> function `do_syscall1':
> >
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/syscall.c:7404:
> undefined reference to `stime'
> > collect2: error: ld returned 1 exit status
> > make[1]: *** [Makefile:199: qemu-mipsel] Error 1
> > make: *** [Makefile:483: subdir-mipsel-linux-user] Error 2
> >   CC      x86_64-linux-user/fpu/softfloat.o
> > /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in
> function `do_syscall1':
> >
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/syscall.c:7404:
> undefined reference to `stime'
> > collect2: error: ld returned 1 exit status
> > make[1]: *** [Makefile:199: qemu-mips] Error 1
> > make: *** [Makefile:483: subdir-mips-linux-user] Error 2
> >   CC      x86_64-linux-user/disas.o
> >   GEN     x86_64-linux-user/gdbstub-xml.c
> >   CC      x86_64-linux-user/gdbstub.o
> >   CC      x86_64-linux-user/thunk.o
> >   CC      x86_64-linux-user/accel/stubs/hax-stub.o
> >   CC      x86_64-linux-user/accel/stubs/hvf-stub.o
> >   CC      x86_64-linux-user/accel/stubs/whpx-stub.o
> >   CC      x86_64-linux-user/accel/stubs/kvm-stub.o
> >   CC      x86_64-linux-user/accel/tcg/tcg-runtime.o
> >   CC      x86_64-linux-user/accel/tcg/tcg-runtime-gvec.o
> >   CC      x86_64-linux-user/accel/tcg/cpu-exec.o
> >   CC      x86_64-linux-user/accel/tcg/cpu-exec-common.o
> >   CC      x86_64-linux-user/accel/tcg/translate-all.o
> >   CC      x86_64-linux-user/accel/tcg/translator.o
> >   CC      x86_64-linux-user/accel/tcg/user-exec.o
> >   CC      x86_64-linux-user/accel/tcg/user-exec-stub.o
> >   CC      x86_64-linux-user/linux-user/main.o
> >   CC      x86_64-linux-user/linux-user/syscall.o
> >   CC      x86_64-linux-user/linux-user/strace.o
> >   CC      x86_64-linux-user/linux-user/mmap.o
> >   CC      x86_64-linux-user/linux-user/signal.o
> >   CC      x86_64-linux-user/linux-user/elfload.o
> > In file included from /usr/include/string.h:495,
> >                  from
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/include/qemu/osdep.h:84,
> >                  from
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/elfload.c:2:
> > In function =E2=80=98strncpy=E2=80=99,
> >     inlined from =E2=80=98fill_psinfo=E2=80=99 at
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/elfload.c:3158:12,
> >     inlined from =E2=80=98fill_note_info=E2=80=99 at
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/elfload.c:3340:5,
> >     inlined from =E2=80=98elf_core_dump=E2=80=99 at
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-=
3.1.1.1/linux-user/elfload.c:3489:9:
> > /usr/include/x86_64-linux-gnu/bits/string_fortified.h:106:10: warning:
> =E2=80=98__builtin_strncpy=E2=80=99 specified bound 16 equals destination=
 size
> [-Wstringop-truncation]
> >   106 |   return __builtin___strncpy_chk (__dest, __src, __len, __bos
> (__dest));
> >       |
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >   CC      x86_64-linux-user/linux-user/linuxload.o
> >   CC      x86_64-linux-user/linux-user/uaccess.o
> >   CC      x86_64-linux-user/linux-user/uname.o
> >   CCAS    x86_64-linux-user/linux-user/safe-syscall.o
> >   CC      x86_64-linux-user/linux-user/x86_64/signal.o
> >   CC      x86_64-linux-user/linux-user/x86_64/cpu_loop.o
> >   CC      x86_64-linux-user/linux-user/exit.o
> >   CC      x86_64-linux-user/linux-user/fd-trans.o
> >   CC      x86_64-linux-user/target/i386/helper.o
> >   CC      x86_64-linux-user/target/i386/cpu.o
> >   CC      x86_64-linux-user/target/i386/gdbstub.o
> >   CC      x86_64-linux-user/target/i386/xsave_helper.o
> >   CC      x86_64-linux-user/target/i386/translate.o
> >   CC      x86_64-linux-user/target/i386/bpt_helper.o
> >   CC      x86_64-linux-user/target/i386/cc_helper.o
> >   CC      x86_64-linux-user/target/i386/excp_helper.o
> >   CC      x86_64-linux-user/target/i386/fpu_helper.o
> >   CC      x86_64-linux-user/target/i386/int_helper.o
> >   CC      x86_64-linux-user/target/i386/mem_helper.o
> >   CC      x86_64-linux-user/target/i386/misc_helper.o
> >   CC      x86_64-linux-user/target/i386/mpx_helper.o
> >   CC      x86_64-linux-user/target/i386/seg_helper.o
> >   CC      x86_64-linux-user/target/i386/smm_helper.o
> >   CC      x86_64-linux-user/target/i386/svm_helper.o
> >   CC      x86_64-linux-user/target/i386/sev-stub.o
> >   GEN     trace/generated-helpers.c
> >   CC      x86_64-linux-user/trace/control-target.o
> >   CC      x86_64-linux-user/gdbstub-xml.o
> >   CC      x86_64-linux-user/trace/generated-helpers.o
> >   LINK    x86_64-linux-user/qemu-x86_64
> > ERROR: oe_runmake failed
> > WARNING: exit code 1 from a shell command.
> > ERROR: Function failed: do_compile (log file is located at
> /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/temp/=
log.do_compile.5584)
> >
> >
> > I am using "Warrior" version due to limitation from other meta-layers. =
I
> have read that above issue is fixed in newer versions of Yocto. But how c=
an
> i fix this in Warrior? Is there any workaround?
> >
> > Can someone please help me resolve it?
> >
> > Your help will be much appreciated.
> >
> > Thanks in advance.
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#56045):
> https://lists.yoctoproject.org/g/yocto/message/56045
> > Mute This Topic: https://lists.yoctoproject.org/mt/88867221/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--0000000000000afb0805d70f4906
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello @Khem,<div dir=3D"auto"><br></div><div dir=3D"auto"=
>Thanks for the quick response.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Can you please let me know where and how to include this patch in=
 poky/meta?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks in ad=
vance</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Feb 2, 2022, 21:19 Khem Raj &lt;<a href=3D"mailto:raj.kh=
em@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">you need something like this<br>
<br>
<a href=3D"https://patchwork.openembedded.org/patch/172282/" rel=3D"norefer=
rer noreferrer" target=3D"_blank">https://patchwork.openembedded.org/patch/=
172282/</a><br>
<br>
On Wed, Feb 2, 2022 at 11:43 AM Sourabh Hegde &lt;<a href=3D"mailto:hrsoura=
bh011@gmail.com" target=3D"_blank" rel=3D"noreferrer">hrsourabh011@gmail.co=
m</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello All,<br>
&gt;<br>
&gt; When I execute the bitbake for my custom image recipe I hit the below =
issue related to &quot;qemu-native/3.1.1.1-r0/qemu-<a href=3D"http://3.1.1.=
1/linux-user/syscall.c" target=3D"_blank" rel=3D"noreferrer">3.1.1.1/linux-=
user/syscall.c</a>:7404: undefined reference to `stime&#39;&quot;.<br>
&gt;<br>
&gt; DEBUG: Executing shell function do_compile<br>
&gt; NOTE: make -j 8 LD=3Dld=C2=A0 AR=3Dar OBJCOPY=3Dobjcopy LDFLAGS=3D-L/r=
oot/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/recipe-sy=
sroot-native/usr/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-L/root/build-rauc/tmp-glibc/work/x86_64=
-linux/qemu-native/3.1.1.1-r0/recipe-sysroot-native/lib=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-=
-enable-new-dtags=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-rpath-link,/root/build-rauc/tmp-glib=
c/work/x86_64-linux/qemu-native/3.1.1.1-r0/recipe-sysroot-native/usr/lib=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0-Wl,-rpath-link,/root/build-rauc/tmp-glibc/work/x86_64-linux/q=
emu-native/3.1.1.1-r0/recipe-sysroot-native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-rpath,/r=
oot/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/recipe-sy=
sroot-native/usr/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-rpath,/root/build-rauc/tmp-glibc/wo=
rk/x86_64-linux/qemu-native/3.1.1.1-r0/recipe-sysroot-native/lib=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0-Wl,-O1 -fuse-ld=3Dbfd<br>
&gt;=C2=A0 =C2=A0LINK=C2=A0 =C2=A0 i386-linux-user/qemu-i386<br>
&gt;=C2=A0 =C2=A0LINK=C2=A0 =C2=A0 mipsel-linux-user/qemu-mipsel<br>
&gt;=C2=A0 =C2=A0LINK=C2=A0 =C2=A0 arm-linux-user/qemu-arm<br>
&gt;=C2=A0 =C2=A0LINK=C2=A0 =C2=A0 mips-linux-user/qemu-mips<br>
&gt;=C2=A0 =C2=A0LINK=C2=A0 =C2=A0 ppc-linux-user/qemu-ppc<br>
&gt;=C2=A0 =C2=A0GEN=C2=A0 =C2=A0 =C2=A0x86_64-linux-user/config-target.h<b=
r>
&gt;=C2=A0 =C2=A0LINK=C2=A0 =C2=A0 sh4-linux-user/qemu-sh4<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/exec.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/tcg/tcg.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/tcg/tcg-op.o<br>
&gt; /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in =
function `do_syscall1&#39;:<br>
&gt; /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qe=
mu-3.1.1.1/linux-user/syscall.c:7404: undefined reference to `stime&#39;<br=
>
&gt; collect2: error: ld returned 1 exit status<br>
&gt; make[1]: *** [Makefile:199: qemu-arm] Error 1<br>
&gt; make: *** [Makefile:483: subdir-arm-linux-user] Error 2<br>
&gt; make: *** Waiting for unfinished jobs....<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/tcg/tcg-op-vec.o<=
br>
&gt; /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in =
function `do_syscall1&#39;:<br>
&gt; /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qe=
mu-3.1.1.1/linux-user/syscall.c:7404: undefined reference to `stime&#39;<br=
>
&gt; collect2: error: ld returned 1 exit status<br>
&gt; make[1]: *** [Makefile:199: qemu-i386] Error 1<br>
&gt; make: *** [Makefile:483: subdir-i386-linux-user] Error 2<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/tcg/tcg-op-gvec.o=
<br>
&gt; /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in =
function `do_syscall1&#39;:<br>
&gt; /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qe=
mu-3.1.1.1/linux-user/syscall.c:7404: undefined reference to `stime&#39;<br=
>
&gt; collect2: error: ld returned 1 exit status<br>
&gt; make[1]: *** [Makefile:199: qemu-sh4] Error 1<br>
&gt; make: *** [Makefile:483: subdir-sh4-linux-user] Error 2<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/tcg/tcg-common.o<=
br>
&gt; /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in =
function `do_syscall1&#39;:<br>
&gt; /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qe=
mu-3.1.1.1/linux-user/syscall.c:7404: undefined reference to `stime&#39;<br=
>
&gt; collect2: error: ld returned 1 exit status<br>
&gt; make[1]: *** [Makefile:199: qemu-ppc] Error 1<br>
&gt; make: *** [Makefile:483: subdir-ppc-linux-user] Error 2<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/tcg/optimize.o<br=
>
&gt; /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in =
function `do_syscall1&#39;:<br>
&gt; /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qe=
mu-3.1.1.1/linux-user/syscall.c:7404: undefined reference to `stime&#39;<br=
>
&gt; collect2: error: ld returned 1 exit status<br>
&gt; make[1]: *** [Makefile:199: qemu-mipsel] Error 1<br>
&gt; make: *** [Makefile:483: subdir-mipsel-linux-user] Error 2<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/fpu/softfloat.o<b=
r>
&gt; /root/build-rauc/tmp-glibc/hosttools/ld.bfd: linux-user/syscall.o: in =
function `do_syscall1&#39;:<br>
&gt; /root/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qe=
mu-3.1.1.1/linux-user/syscall.c:7404: undefined reference to `stime&#39;<br=
>
&gt; collect2: error: ld returned 1 exit status<br>
&gt; make[1]: *** [Makefile:199: qemu-mips] Error 1<br>
&gt; make: *** [Makefile:483: subdir-mips-linux-user] Error 2<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/disas.o<br>
&gt;=C2=A0 =C2=A0GEN=C2=A0 =C2=A0 =C2=A0x86_64-linux-user/gdbstub-xml.c<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/gdbstub.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/thunk.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/accel/stubs/hax-s=
tub.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/accel/stubs/hvf-s=
tub.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/accel/stubs/whpx-=
stub.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/accel/stubs/kvm-s=
tub.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/accel/tcg/tcg-run=
time.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/accel/tcg/tcg-run=
time-gvec.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/accel/tcg/cpu-exe=
c.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/accel/tcg/cpu-exe=
c-common.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/accel/tcg/transla=
te-all.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/accel/tcg/transla=
tor.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/accel/tcg/user-ex=
ec.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/accel/tcg/user-ex=
ec-stub.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/linux-user/main.o=
<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/linux-user/syscal=
l.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/linux-user/strace=
.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/linux-user/mmap.o=
<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/linux-user/signal=
.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/linux-user/elfloa=
d.o<br>
&gt; In file included from /usr/include/string.h:495,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from /ro=
ot/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1=
.1/include/qemu/osdep.h:84,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from /ro=
ot/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1=
.1/linux-user/elfload.c:2:<br>
&gt; In function =E2=80=98strncpy=E2=80=99,<br>
&gt;=C2=A0 =C2=A0 =C2=A0inlined from =E2=80=98fill_psinfo=E2=80=99 at /root=
/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1.1=
/linux-user/elfload.c:3158:12,<br>
&gt;=C2=A0 =C2=A0 =C2=A0inlined from =E2=80=98fill_note_info=E2=80=99 at /r=
oot/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.=
1.1/linux-user/elfload.c:3340:5,<br>
&gt;=C2=A0 =C2=A0 =C2=A0inlined from =E2=80=98elf_core_dump=E2=80=99 at /ro=
ot/build-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1=
.1/linux-user/elfload.c:3489:9:<br>
&gt; /usr/include/x86_64-linux-gnu/bits/string_fortified.h:106:10: warning:=
 =E2=80=98__builtin_strncpy=E2=80=99 specified bound 16 equals destination =
size [-Wstringop-truncation]<br>
&gt;=C2=A0 =C2=A0106 |=C2=A0 =C2=A0return __builtin___strncpy_chk (__dest, =
__src, __len, __bos (__dest));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/linux-user/linuxl=
oad.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/linux-user/uacces=
s.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/linux-user/uname.=
o<br>
&gt;=C2=A0 =C2=A0CCAS=C2=A0 =C2=A0 x86_64-linux-user/linux-user/safe-syscal=
l.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/linux-user/x86_64=
/signal.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/linux-user/x86_64=
/cpu_loop.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/linux-user/exit.o=
<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/linux-user/fd-tra=
ns.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/helpe=
r.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/cpu.o=
<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/gdbst=
ub.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/xsave=
_helper.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/trans=
late.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/bpt_h=
elper.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/cc_he=
lper.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/excp_=
helper.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/fpu_h=
elper.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/int_h=
elper.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/mem_h=
elper.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/misc_=
helper.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/mpx_h=
elper.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/seg_h=
elper.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/smm_h=
elper.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/svm_h=
elper.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/target/i386/sev-s=
tub.o<br>
&gt;=C2=A0 =C2=A0GEN=C2=A0 =C2=A0 =C2=A0trace/generated-helpers.c<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/trace/control-tar=
get.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/gdbstub-xml.o<br>
&gt;=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 x86_64-linux-user/trace/generated-h=
elpers.o<br>
&gt;=C2=A0 =C2=A0LINK=C2=A0 =C2=A0 x86_64-linux-user/qemu-x86_64<br>
&gt; ERROR: oe_runmake failed<br>
&gt; WARNING: exit code 1 from a shell command.<br>
&gt; ERROR: Function failed: do_compile (log file is located at /root/build=
-rauc/tmp-glibc/work/x86_64-linux/qemu-native/3.1.1.1-r0/temp/log.do_compil=
e.5584)<br>
&gt;<br>
&gt;<br>
&gt; I am using &quot;Warrior&quot; version due to limitation from other me=
ta-layers. I have read that above issue is fixed in newer versions of Yocto=
. But how can i fix this in Warrior? Is there any workaround?<br>
&gt;<br>
&gt; Can someone please help me resolve it?<br>
&gt;<br>
&gt; Your help will be much appreciated.<br>
&gt;<br>
&gt; Thanks in advance.<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#56045): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/56045" rel=3D"noreferrer noreferrer" target=3D"_blank">http=
s://lists.yoctoproject.org/g/yocto/message/56045</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88867221=
/1997914" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/mt/88867221/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><=
br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/g/yocto/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bla=
nk" rel=3D"noreferrer">raj.khem@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--0000000000000afb0805d70f4906--

