Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web09.3018.1611975066757514920
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 18:51:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=juRDlt5i;
 spf=pass (domain: gmail.com, ip: 209.85.222.180, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id a19so10820239qka.2
        for <yocto@lists.yoctoproject.org>; Fri, 29 Jan 2021 18:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ac6A9do6jaKmFaJ3FaD0OVkSHO9tChZ6j4ULeVSxWj8=;
        b=juRDlt5iopYCh3/77rwxpG5o9lTvzLknIQdc1rfuYJEbQoj2+RgZ/wUyZTPqy5axWV
         Sv8gZrwW5B5K2E0dRQJg6Z/rhW6DJEKtfLyanqnBwZQmOUIqmhhutvFMnlQc/G+eZgFH
         06v8IOTVhKeGQMt5iBXUEjHPNAZMk966AOuletVhjMRX/Nh2Ld5iRJ5jGXN5TutHrVTF
         bMDUSy5XEHOBN/86h3KTvhEGjPjwba6yWUFnSFDVXdHhw5F5N9qWj7HiCSXIADAvWoh5
         RPRezIDDVO4+pVfODlYGlVDUnO8g7Hq1Y5eYhWHCTIwD7+DfCILq8rgkgvSQIhanFcPE
         zj1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ac6A9do6jaKmFaJ3FaD0OVkSHO9tChZ6j4ULeVSxWj8=;
        b=BPxZi1OONzwshXGW7Nrp5KdtYMrJ3mXLPakkoVzV3Wr6a1jYUaluMnX9Wzv9T62q26
         avnaEu6jyml8vC4FZXK9ZpTvcQC+rqMZvniCWUH4B3x+69TX9t+AX+IUlJsD+VYvHGG0
         ZsVryEa3jmKzed10wxIm+ZnAASm0pPAK2FCNGHxlHR5QyLeCnc9wYKRXwU7e0xHtPo+G
         yWRAO/A3/4px6b43dyA3pyqOqOOLSBw8bHkbGkwWUIu36ZrKBHClX4X1ygXnlBJCzDBJ
         xxezZfvwnfIWOYAsft6OgygDV3ZczGVcUmcc6y2fy9sja91P0OCxRI9SVlo4H0KLKhdP
         k5sQ==
X-Gm-Message-State: AOAM530Q2uoY6k+6vVzO3e4pRBFr7zJVoTYxLMJQ7zYqkNo22PygAopq
	Tp80/plm/QqblqrJFhJqw2pJL1EbxL+IRvDmwOA=
X-Google-Smtp-Source: ABdhPJw7Nt4gLQhAFrRI3XC+KU8qfccRxrRHNFapp42RvGDXpA8LHQMbk0SXN8MFPQaAQm4RLqqwdCxymVkcgTxyFQg=
X-Received: by 2002:a37:40e:: with SMTP id 14mr4787419qke.354.1611975065901;
 Fri, 29 Jan 2021 18:51:05 -0800 (PST)
MIME-Version: 1.0
References: <CAEyb4nFHLZ-cycQXBgerWeyyKUf3KRP+xSEa2kP0K1zYd7=HNA@mail.gmail.com>
 <CAM9ZRVshoYvDho-Dmu2+UNorjLSyrN3t=ZYE5Uj0zit0_4mAew@mail.gmail.com>
 <165CDE54CF259D2E.7022@lists.yoctoproject.org> <CAEyb4nH1jqEEhRyw-wmKPg+nqAhQMDdDv6GPjKGzc_igbYqyqQ@mail.gmail.com>
 <DB6PR0102MB2630BFE5D26042D67AA4AEDB88BD0@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
In-Reply-To: <DB6PR0102MB2630BFE5D26042D67AA4AEDB88BD0@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
From: "Jonas Vautherin" <jonas.vautherin@gmail.com>
Date: Sat, 30 Jan 2021 03:50:54 +0100
Message-ID: <CAEyb4nGC5Fmdxsz9Q1Pot=E0gJVPvvkR7+E381QRyg2F-KqtaA@mail.gmail.com>
Subject: Re: [yocto] Writing a BSP from downstream kernel sources
To: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
Cc: Paul Barker <pbarker@konsulko.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000309f7705ba1531ae"

--000000000000309f7705ba1531ae
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks a lot for the advice! However, I can't seem to find a `const` that I
can simply remove. To give more context, here is the log output around such
an error (it seems like it is often surrounded by this log2.h warning, by
the way):

| In file included from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/ker=
nel-source/include/linux/kernel.h:11,
> |                  from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/ker=
nel-source/include/linux/kallsyms.h:9,
> |                  from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/ker=
nel-source/include/linux/ftrace.h:10,
> |                  from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/ker=
nel-source/kernel/extable.c:18:
> |
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/ker=
nel-source/include/linux/log2.h:22:1:
> warning: ignoring attribute 'noreturn' because it conflicts with attribut=
e
> 'const' [-Wattributes]
> |    22 | int ____ilog2_NaN(void);
> |       | ^~~
> |   CC      fs/fat/dir.o
> | In file included from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/ker=
nel-source/include/linux/kernel.h:11,
> |                  from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/ker=
nel-source/include/linux/list.h:8,
> |                  from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/ker=
nel-source/include/linux/module.h:9,
> |                  from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/ker=
nel-source/fs/fat/dir.c:16:
> |
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/ker=
nel-source/include/linux/log2.h:22:1:
> warning: ignoring attribute 'noreturn' because it conflicts with attribut=
e
> 'const' [-Wattributes]
> |    22 | int ____ilog2_NaN(void);
> |       | ^~~
> |   CC      block/deadline-iosched.o
> | In file included from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/ker=
nel-source/include/linux/kernel.h:11,
> |                  from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/ker=
nel-source/block/deadline-iosched.c:6:
> |
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/ker=
nel-source/include/linux/log2.h:22:1:
> warning: ignoring attribute 'noreturn' because it conflicts with attribut=
e
> 'const' [-Wattributes]
> |    22 | int ____ilog2_NaN(void);
> |       | ^~~
> | /tmp/cc52vFrQ.s: Assembler messages:
> | /tmp/cc52vFrQ.s:2683: Error: .err encountered
> | /tmp/cc52vFrQ.s:2927: Error: .err encountered
> |   LD      sound/sparc/built-in.o
> |   LD      sound/spi/built-in.o
> | make[3]: ***
> [/home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/ke=
rnel-source/scripts/Makefile.build:257:
> block/scsi_ioctl.o] Error 1
>

I pasted the full output here, if that can help:
https://paste.ubuntu.com/p/KqN8nVWmvv/. The lines that seem to get the log2
warning are:

```
extern __attribute__((const, noreturn))
int ____ilog2_NaN(void);
 ```

So there is a const there, but well... not sure what to do with it :-).

Best,

On Mon, Jan 25, 2021 at 9:00 AM Diego Santa Cruz <
Diego.SantaCruz@spinetix.com> wrote:

> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> Behalf Of *Jonas Vautherin via lists.yoctoproject.org
> *Sent:* 24 January 2021 14:30
> *To:* Jonas Vautherin <jonas.vautherin@gmail.com>
> *Cc:* Paul Barker <pbarker@konsulko.com>; Yocto-mailing-list <
> yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] Writing a BSP from downstream kernel sources
>
>
>
> Just to close this: it seems like the gcc-cross-arm used by yocto
> gatesgarth is too new for that specific downstream kernel (3.18.31).
>
>
>
> The goal was to get a proper BSP package for this device for a modern
> yocto, so I don't think I will try with an older version of Yocto. If I
> compile an old gcc as part of a custom Yocto layer (on gatesgarth), I am
> guessing that I will have issues creating a distro that runs both on RPi
> and on that older device (because RPi will have a newer kernel and gcc, a=
nd
> the skycontroller will use older ones). I also guess that the downstream
> dts won't work with a modern kernel, and I would not know how to write on=
e
> myself for that apq8009 chip.
>
>
>
> Hence, I'm giving up. Thanks a lot for the help :-).
>
> *[Diego Santa Cruz] Wait! **You may be able to get it working, see below.=
*
>
>
>
> On Sat, Jan 23, 2021 at 2:07 PM Jonas Vautherin via lists.yoctoproject.or=
g
> <jonas.vautherin=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Thanks a lot for the answer!
>
>
>
> It seems like using `KCONFIG_MODE =3D "--alldefconfig"` with
> `KBUILD_DEFCONFIG =3D "msm8909_defconfig"` now ends up with the same kind=
 of
> errors as when I use the defconfig from the downstream kernel [1], i.e.:
>
>
>
> *[Diego Santa Cruz] I happen to be doing a similar kind of work, getting
> an even older (2.6.37+) downstream kernel for an ARM machine to compile
> with recent GCC in Yocto, in my case GCC 9.3 from dunfell. There are a fe=
w
> fixes and backports necessary to make it happen and boot. I=E2=80=99m not=
 done with
> the work yet, so I do not know how stable it is, but I have it booting.*
>
> ```
>
> | /tmp/ccz8jKgm.s: Assembler messages:
> | /tmp/ccz8jKgm.s:985: Error: .err encountered
>
> ```
>
> *[Diego Santa Cruz] The fix here is rather simple once you understand
> what=E2=80=99s going on, the problem is abusive use of const for register
> variables, see
> https://gcc.gnu.org/onlinedocs/gcc-9.3.0/gcc/Local-Register-Variables.htm=
l
> <https://gcc.gnu.org/onlinedocs/gcc-9.3.0/gcc/Local-Register-Variables.ht=
ml>
> so when put_user() is used for a literal constant value it gets assigned
> the wrong register, so just remove the const qualifier from the put_user(=
)
> register variable assignment for the value argument. For my older kernel
> the patch is like this.*
>
> --- arch/arm/include/asm/uaccess.h
>
> +++ arch/arm/include/asm/uaccess.h
>
> @@ -145,7 +145,7 @@
>
>  #define
> put_user(x,p)
> \
>
>
> ({
> \
>
> -                               register const typeof(*(p)) __r2 asm("r2"=
)
> =3D (x); \
>
> +                              register typeof(*(p)) __r2 asm("r2") =3D
> (x);                             \
>
>                                 register const typeof(*(p)) __user *__p
> asm("r0") =3D (p);\
>
>                                 register int __e
> asm("r0");                                                           \
>
>                         switch (sizeof(*(__p)))
> {                                                \
>
>
>
> Could it be related to the tuning, e.g. I'm somehow defining a wrong
> toolchain in my machine configuration [2] and it fails to build? I was
> thinking about the tune-cortexa7.inc include, though it seems to me that
> the apq8009 is a cortexa7 [3]:
>
>
>
> *[Diego Santa Cruz] Other commits from post 3.18 that you may need to
> backport are the following (start from bottom of list) *
>
> 474c90156c8dcc2fa815e6716cc9394d7930cb9c give up on gcc ilog2() constant
> optimizations
>
> cb984d101b30eb7478d32df56a0023e4603cba7f compiler-gcc: integrate the
> various compiler-gcc[345].h files
>
> f6d133f877c8bb0a0934dc8c521c758ee771e901 compiler-gcc.h: neatening
>
> 7829fb09a2b4268b30dd9bc782fa5ebee278b137 lib: make memzero_explicit more
> robust against dead store elimination
>
> cb4188ac8e5779f66b9f55888ac2c75b391cde44 compiler: introduce
> __alias(symbol) shortcut
>
> 0b053c9518292705736329a8fe20ef4686ffc8e9 lib: memzero_explicit: use
> barrier instead of OPTIMIZER_HIDE_VAR
>
> ee91ef6173e81819f5ff610c2485802081635657 bufferhead: force inlining of
> buffer head flag operations
>
> cc7fce80229067890365c1ee196be5d304d36dea mtd: blkdevs: fix switch-bool
> compilation warning
>
>
>
>
>
> > The Qualcomm Snapdragon 212 APQ8009 is an entry level SoC for Android
> based tablets and smartphones. It contains four ARM Cortex-A7 CPU cores
> (quad core)
>
>
>
> [1]:
> https://github.com/parrot-opensource/skycontroller3-opensource/blob/maste=
r/sources/linux-3.18.31/linux.config
>
> [2]:
> https://github.com/JonasVautherin/meta-skycontroller3/blob/main/conf/mach=
ine/skycontroller3.conf#L32
>
> [3]:
> https://www.notebookcheck.net/Qualcomm-Snapdragon-212-APQ8009-SoC-Benchma=
rks-and-Specs.169859.0.html
>
>
>
> Best,
>
>
>
> On Sat, Jan 23, 2021 at 11:06 AM Paul Barker <pbarker@konsulko.com> wrote=
:
>
> On Sat, 23 Jan 2021 at 02:29, Jonas Vautherin <jonas.vautherin@gmail.com>
> wrote:
> >
> > As a learning experience, I am trying to create a BSP for a device I ow=
n
> and whose downstream kernel is published. The device in question is the
> Parrot Skycontroller3, and the sources are available here.
> >
> > Let me start by sharing my issue. When I build the kernel with `bitbake
> virtual/kernel`, it fails with errors like:
> >
> > ```
> > |   AS      arch/arm/lib/backtrace.o
> > |   AS      arch/arm/lib/bswapsdi2.o
> > |   AS      arch/arm/lib/call_with_stack.o
> > | /tmp/ccz8jKgm.s: Assembler messages:
> > | /tmp/ccz8jKgm.s:985: Error: .err encountered
> > | /tmp/ccz8jKgm.s:1033: Error: .err encountered
> > | /tmp/ccz8jKgm.s:6812: Error: .err encountered
> > ```
> >
> > My layer is available here.
> >
> > I created it getting inspiration from meta-raspberrypi and meta-qti-bsp=
,
> which seems to have the same CPU: apq8009. According to the Parrot source=
s,
> my device runs a Qualcomm apq8009/msm89090 cpu. In my repo, I use as a
> defconfig file the linux.config that is available in the Parrot sources (=
I
> copied it in my kernel recipe under `files/defconfig` and added it to
> SRC_URI).
> >
> > The Parrot sources also refer to `LINUX_DEFAULT_CONFIG_TARGET :=3D
> msm8909_defconfig`, so I tried to set `KBUILD_DEFCONFIG =3D
> "msm8909_defconfig"`, but that is failing with different errors, such as:
> >
> > ```
> > error: 'VM_ARM_DMA_CONSISTENT' undeclared (first use in this function);
> did you mean 'DMA_ATTR_NON_CONSISTENT'?
> > ```
> >
> > or
> >
> > ```
> > error: 'L_PTE_YOUNG' undeclared
> > ```
> >
> > As a side note, their `drivers/Kconfig` seemed invalid, so I patched it=
.
> >
> > I am a bit lost now, not completely sure where my issues come from. I
> realize that changing the defconfig has quite some impact (I get differen=
t
> errors), and also that my machine configuration may be completely wrong (=
I
> am essentially guessing from the fact that it is an apq8009/msm8909, but
> for instance the tuning I just copied from meta-qti-bsp, which may be
> invalid).
> >
> > I would be glad if I could get hints about debugging this. Again, it is
> really a learning project: I would like to learn how to create a BSP from=
 a
> downstream kernel.
>
> I think setting `KBUILD_DEFCONFIG =3D "msm8909_defconfig"` is likely the
> correct approach here. What you may be missing though is the correct
> value for KCONFIG_MODE. By default, the supplied defconfig file is
> copied to .config but dependencies between config options aren't
> resolved. You need to set `KCONFIG_MODE =3D "--alldefconfig"` to get the
> equivalent of `make msm8909_defconfig` to occur. See
>
> https://github.com/agherzan/meta-raspberrypi/blob/master/recipes-kernel/l=
inux/linux-raspberrypi.inc#L19
> for an idea of how this is done for Raspberry Pi.
>
> Thanks,
>
> --
> Paul Barker
> Konsulko Group
>
>
> --
>
> *Diego Santa Cruz, PhD *Technology Architect
> spinetix.com
>

--000000000000309f7705ba1531ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks a lot for the advice! However, I can&#39;t seem to =
find a `const` that I can simply remove. To give more context, here is the =
log output around such an error (it seems like it is often surrounded by th=
is log2.h warning, by the way):<div><br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">| In file included from /home/jones/Documents/yocto/po=
ky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/kernel.=
h:11,<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fr=
om /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/ke=
rnel-source/include/linux/kallsyms.h:9,<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/jones/Documents/yocto/poky/bui=
ld/tmp/work-shared/skycontroller3/kernel-source/include/linux/ftrace.h:10,<=
br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /ho=
me/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-s=
ource/kernel/extable.c:18:<br>| /home/jones/Documents/yocto/poky/build/tmp/=
work-shared/skycontroller3/kernel-source/include/linux/log2.h:22:1: warning=
: ignoring attribute &#39;noreturn&#39; because it conflicts with attribute=
 &#39;const&#39; [-Wattributes]<br>| =C2=A0 =C2=A022 | int ____ilog2_NaN(vo=
id);<br>| =C2=A0 =C2=A0 =C2=A0 | ^~~<br>| =C2=A0 CC =C2=A0 =C2=A0 =C2=A0fs/=
fat/dir.o<br>| In file included from /home/jones/Documents/yocto/poky/build=
/tmp/work-shared/skycontroller3/kernel-source/include/linux/kernel.h:11,<br=
>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home=
/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-sou=
rce/include/linux/list.h:8,<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0from /home/jones/Documents/yocto/poky/build/tmp/work-sh=
ared/skycontroller3/kernel-source/include/linux/module.h:9,<br>| =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/jones/Docume=
nts/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/fs/fat/di=
r.c:16:<br>| /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycont=
roller3/kernel-source/include/linux/log2.h:22:1: warning: ignoring attribut=
e &#39;noreturn&#39; because it conflicts with attribute &#39;const&#39; [-=
Wattributes]<br>| =C2=A0 =C2=A022 | int ____ilog2_NaN(void);<br>| =C2=A0 =
=C2=A0 =C2=A0 | ^~~<br>| =C2=A0 CC =C2=A0 =C2=A0 =C2=A0block/deadline-iosch=
ed.o<br>| In file included from /home/jones/Documents/yocto/poky/build/tmp/=
work-shared/skycontroller3/kernel-source/include/linux/kernel.h:11,<br>| =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/jo=
nes/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source=
/block/deadline-iosched.c:6:<br>| /home/jones/Documents/yocto/poky/build/tm=
p/work-shared/skycontroller3/kernel-source/include/linux/log2.h:22:1: warni=
ng: ignoring attribute &#39;noreturn&#39; because it conflicts with attribu=
te &#39;const&#39; [-Wattributes]<br>| =C2=A0 =C2=A022 | int ____ilog2_NaN(=
void);<br>| =C2=A0 =C2=A0 =C2=A0 | ^~~<br>| /tmp/cc52vFrQ.s: Assembler mess=
ages:<br>| /tmp/cc52vFrQ.s:2683: Error: .err encountered<br>| /tmp/cc52vFrQ=
.s:2927: Error: .err encountered<br>| =C2=A0 LD =C2=A0 =C2=A0 =C2=A0sound/s=
parc/built-in.o<br>| =C2=A0 LD =C2=A0 =C2=A0 =C2=A0sound/spi/built-in.o<br>=
| make[3]: *** [/home/jones/Documents/yocto/poky/build/tmp/work-shared/skyc=
ontroller3/kernel-source/scripts/Makefile.build:257: block/scsi_ioctl.o] Er=
ror 1<br></blockquote><div><br></div><div>I pasted the full output here, if=
 that can help:=C2=A0<a href=3D"https://paste.ubuntu.com/p/KqN8nVWmvv/">htt=
ps://paste.ubuntu.com/p/KqN8nVWmvv/</a>. The lines that seem to get the log=
2 warning are:</div><div><br></div><div>```</div><div>extern __attribute__(=
(const, noreturn))</div>int ____ilog2_NaN(void);<br><div>=C2=A0```</div><di=
v><br></div><div>So there is a const there, but well... not sure what to do=
 with it :-).</div><div><br></div><div>Best,</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 25, 2021 at 9=
:00 AM Diego Santa Cruz &lt;<a href=3D"mailto:Diego.SantaCruz@spinetix.com"=
>Diego.SantaCruz@spinetix.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_-8822989274626910586WordSection1">
<div style=3D"border-top:none;border-right:none;border-bottom:none;border-l=
eft:1.5pt solid blue;padding:0cm 0cm 0cm 4pt">
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto@lists.yoctoproj=
ect.org" target=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"=
mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctopro=
ject.org</a>&gt;
<b>On Behalf Of </b>Jonas Vautherin via <a href=3D"http://lists.yoctoprojec=
t.org" target=3D"_blank">lists.yoctoproject.org</a><br>
<b>Sent:</b> 24 January 2021 14:30<br>
<b>To:</b> Jonas Vautherin &lt;<a href=3D"mailto:jonas.vautherin@gmail.com"=
 target=3D"_blank">jonas.vautherin@gmail.com</a>&gt;<br>
<b>Cc:</b> Paul Barker &lt;<a href=3D"mailto:pbarker@konsulko.com" target=
=3D"_blank">pbarker@konsulko.com</a>&gt;; Yocto-mailing-list &lt;<a href=3D=
"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctopr=
oject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] Writing a BSP from downstream kernel sources<u>=
</u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Just to close this: it seems like the gcc-cross-arm =
used by yocto gatesgarth is too new for that specific downstream kernel (3.=
18.31).<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The goal was to get a proper BSP package for this de=
vice for a modern yocto, so I don&#39;t think I will try with an older vers=
ion of Yocto. If I compile an old gcc as part of a custom Yocto layer (on g=
atesgarth), I am guessing that I will
 have issues creating a distro that runs both on RPi and on that older devi=
ce (because RPi will have a newer kernel and gcc, and the skycontroller wil=
l use older ones). I also guess that the downstream dts won&#39;t work with=
 a modern kernel, and I would not know
 how to write one myself for that apq8009 chip.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Hence, I&#39;m giving up. Thanks a lot for the help =
:-).<u></u><u></u></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"ES">[Diego Santa Cruz] Wait! </s=
pan></i></b><b><i>You may be able to get it working, see below.</i></b><u><=
/u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Sat, Jan 23, 2021 at 2:07 PM Jonas Vautherin via =
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">
lists.yoctoproject.org</a> &lt;jonas.vautherin=3D<a href=3D"mailto:gmail.co=
m@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.or=
g</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4=
.8pt;margin-right:0cm">
<div>
<p class=3D"MsoNormal">Thanks a lot for the answer!<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">It seems like using `KCONFIG_MODE =3D &quot;--alldef=
config&quot;` with `KBUILD_DEFCONFIG =3D &quot;msm8909_defconfig&quot;` now=
 ends up with the same kind of errors as when I use the defconfig from the =
downstream kernel [1], i.e.:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b><i>[Diego Santa Cruz] I happen to be doing a simi=
lar kind of work, getting an even older (2.6.37+) downstream kernel for an =
ARM machine to compile with recent GCC in Yocto, in my case GCC 9.3 from du=
nfell. There are a few fixes and backports
 necessary to make it happen and boot. I=E2=80=99m not done with the work y=
et, so I do not know how stable it is, but I have it booting.</i></b><u></u=
><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">```<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">| /tmp/ccz8jKgm.s: Assembler messages:<br>
| /tmp/ccz8jKgm.s:985: Error: .err encountered<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">```<u></u><u></u></p>
<p class=3D"MsoNormal"><b><i>[Diego Santa Cruz] The fix here is rather simp=
le once you understand what=E2=80=99s going on, the problem is abusive use =
of const for register variables, see
<a href=3D"https://gcc.gnu.org/onlinedocs/gcc-9.3.0/gcc/Local-Register-Vari=
ables.html" target=3D"_blank">
https://gcc.gnu.org/onlinedocs/gcc-9.3.0/gcc/Local-Register-Variables.html<=
/a> so when put_user() is used for a literal constant value it gets assigne=
d the wrong register, so just remove the const qualifier from the put_user(=
) register variable assignment for
 the value argument. For my older kernel the patch is like this.<u></u><u><=
/u></i></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">--- arch/arm/include/as=
m/uaccess.h<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">+++ arch/arm/include/as=
m/uaccess.h
<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">@@ -145,7 +145,7 @@<u><=
/u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt"><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">=C2=A0#define put_user(=
x,p)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 \<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ({=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \<u></u>=
<u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">-=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 register const typeof(*(p)) __r2 asm(&quot;r2&quot;) =3D (x); \<u=
></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">+=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 register typeof(*(p)) __r2 asm(&quot;r2&quot;) =3D (x);=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 \<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 register const typeof(*(p)) __user *__p asm(&quot;r0&quot;)=
 =3D (p);\<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 register int __e asm(&quot;r0&quot;);=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 \<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 switch (sizeof(*(__p))) {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 \<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Could it be related to the tuning, e.g. I&#39;m some=
how defining a wrong toolchain in my machine configuration [2] and it fails=
 to build? I was thinking about the tune-cortexa7.inc include, though it se=
ems to me that the apq8009 is a cortexa7
 [3]:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b><i>[Diego Santa Cruz] Other commits from post 3.1=
8 that you may need to backport are the following (start from bottom of lis=
t)
<u></u><u></u></i></b></p>
<p class=3D"MsoNormal">474c90156c8dcc2fa815e6716cc9394d7930cb9c give up on =
gcc ilog2() constant optimizations<u></u><u></u></p>
<p class=3D"MsoNormal">cb984d101b30eb7478d32df56a0023e4603cba7f compiler-gc=
c: integrate the various compiler-gcc[345].h files<u></u><u></u></p>
<p class=3D"MsoNormal">f6d133f877c8bb0a0934dc8c521c758ee771e901 compiler-gc=
c.h: neatening<u></u><u></u></p>
<p class=3D"MsoNormal">7829fb09a2b4268b30dd9bc782fa5ebee278b137 lib: make m=
emzero_explicit more robust against dead store elimination<u></u><u></u></p=
>
<p class=3D"MsoNormal">cb4188ac8e5779f66b9f55888ac2c75b391cde44 compiler: i=
ntroduce __alias(symbol) shortcut<u></u><u></u></p>
<p class=3D"MsoNormal">0b053c9518292705736329a8fe20ef4686ffc8e9 lib: memzer=
o_explicit: use barrier instead of OPTIMIZER_HIDE_VAR<u></u><u></u></p>
<p class=3D"MsoNormal">ee91ef6173e81819f5ff610c2485802081635657 bufferhead:=
 force inlining of buffer head flag operations<u></u><u></u></p>
<p class=3D"MsoNormal">cc7fce80229067890365c1ee196be5d304d36dea mtd: blkdev=
s: fix switch-bool compilation warning<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">&gt;=C2=A0The Qualcomm Snapdragon 212 APQ8009 is an =
entry level SoC for Android based tablets and smartphones. It contains four=
 ARM Cortex-A7 CPU cores (quad core)<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">[1]:=C2=A0<a href=3D"https://github.com/parrot-opens=
ource/skycontroller3-opensource/blob/master/sources/linux-3.18.31/linux.con=
fig" target=3D"_blank">https://github.com/parrot-opensource/skycontroller3-=
opensource/blob/master/sources/linux-3.18.31/linux.config</a><u></u><u></u>=
</p>
</div>
<div>
<p class=3D"MsoNormal">[2]:=C2=A0<a href=3D"https://github.com/JonasVauther=
in/meta-skycontroller3/blob/main/conf/machine/skycontroller3.conf#L32" targ=
et=3D"_blank">https://github.com/JonasVautherin/meta-skycontroller3/blob/ma=
in/conf/machine/skycontroller3.conf#L32</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">[3]:=C2=A0<a href=3D"https://www.notebookcheck.net/Q=
ualcomm-Snapdragon-212-APQ8009-SoC-Benchmarks-and-Specs.169859.0.html" targ=
et=3D"_blank">https://www.notebookcheck.net/Qualcomm-Snapdragon-212-APQ8009=
-SoC-Benchmarks-and-Specs.169859.0.html</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Best,<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Sat, Jan 23, 2021 at 11:06 AM Paul Barker &lt;<a =
href=3D"mailto:pbarker@konsulko.com" target=3D"_blank">pbarker@konsulko.com=
</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4=
.8pt;margin-right:0cm">
<p class=3D"MsoNormal">On Sat, 23 Jan 2021 at 02:29, Jonas Vautherin &lt;<a=
 href=3D"mailto:jonas.vautherin@gmail.com" target=3D"_blank">jonas.vautheri=
n@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; As a learning experience, I am trying to create a BSP for a device I o=
wn and whose downstream kernel is published. The device in question is the =
Parrot Skycontroller3, and the sources are available here.<br>
&gt;<br>
&gt; Let me start by sharing my issue. When I build the kernel with `bitbak=
e virtual/kernel`, it fails with errors like:<br>
&gt;<br>
&gt; ```<br>
&gt; |=C2=A0 =C2=A0AS=C2=A0 =C2=A0 =C2=A0 arch/arm/lib/backtrace.o<br>
&gt; |=C2=A0 =C2=A0AS=C2=A0 =C2=A0 =C2=A0 arch/arm/lib/bswapsdi2.o<br>
&gt; |=C2=A0 =C2=A0AS=C2=A0 =C2=A0 =C2=A0 arch/arm/lib/call_with_stack.o<br=
>
&gt; | /tmp/ccz8jKgm.s: Assembler messages:<br>
&gt; | /tmp/ccz8jKgm.s:985: Error: .err encountered<br>
&gt; | /tmp/ccz8jKgm.s:1033: Error: .err encountered<br>
&gt; | /tmp/ccz8jKgm.s:6812: Error: .err encountered<br>
&gt; ```<br>
&gt;<br>
&gt; My layer is available here.<br>
&gt;<br>
&gt; I created it getting inspiration from meta-raspberrypi and meta-qti-bs=
p, which seems to have the same CPU: apq8009. According to the Parrot sourc=
es, my device runs a Qualcomm apq8009/msm89090 cpu. In my repo, I use as a =
defconfig file the linux.config that
 is available in the Parrot sources (I copied it in my kernel recipe under =
`files/defconfig` and added it to SRC_URI).<br>
&gt;<br>
&gt; The Parrot sources also refer to `LINUX_DEFAULT_CONFIG_TARGET :=3D msm=
8909_defconfig`, so I tried to set `KBUILD_DEFCONFIG =3D &quot;msm8909_defc=
onfig&quot;`, but that is failing with different errors, such as:<br>
&gt;<br>
&gt; ```<br>
&gt; error: &#39;VM_ARM_DMA_CONSISTENT&#39; undeclared (first use in this f=
unction); did you mean &#39;DMA_ATTR_NON_CONSISTENT&#39;?<br>
&gt; ```<br>
&gt;<br>
&gt; or<br>
&gt;<br>
&gt; ```<br>
&gt; error: &#39;L_PTE_YOUNG&#39; undeclared<br>
&gt; ```<br>
&gt;<br>
&gt; As a side note, their `drivers/Kconfig` seemed invalid, so I patched i=
t.<br>
&gt;<br>
&gt; I am a bit lost now, not completely sure where my issues come from. I =
realize that changing the defconfig has quite some impact (I get different =
errors), and also that my machine configuration may be completely wrong (I =
am essentially guessing from the fact
 that it is an apq8009/msm8909, but for instance the tuning I just copied f=
rom meta-qti-bsp, which may be invalid).<br>
&gt;<br>
&gt; I would be glad if I could get hints about debugging this. Again, it i=
s really a learning project: I would like to learn how to create a BSP from=
 a downstream kernel.<br>
<br>
I think setting `KBUILD_DEFCONFIG =3D &quot;msm8909_defconfig&quot;` is lik=
ely the<br>
correct approach here. What you may be missing though is the correct<br>
value for KCONFIG_MODE. By default, the supplied defconfig file is<br>
copied to .config but dependencies between config options aren&#39;t<br>
resolved. You need to set `KCONFIG_MODE =3D &quot;--alldefconfig&quot;` to =
get the<br>
equivalent of `make msm8909_defconfig` to occur. See<br>
<a href=3D"https://github.com/agherzan/meta-raspberrypi/blob/master/recipes=
-kernel/linux/linux-raspberrypi.inc#L19" target=3D"_blank">https://github.c=
om/agherzan/meta-raspberrypi/blob/master/recipes-kernel/linux/linux-raspber=
rypi.inc#L19</a><br>
for an idea of how this is done for Raspberry Pi.<br>
<br>
Thanks,<br>
<br>
-- <br>
Paul Barker<br>
Konsulko Group<u></u><u></u></p>
</blockquote>
</div>
</blockquote>
</div>
</div>
<p class=3D"MsoNormal"><br>
<span style=3D"font-size:9pt;font-family:Arial,sans-serif">-- <br>
<b>Diego Santa Cruz, PhD<br>
</b><span style=3D"color:gray">Technology Architect<br>
<a href=3D"http://spinetix.com" target=3D"_blank">spinetix.com</a></span></=
span><span style=3D"font-size:12pt;font-family:&quot;Times New Roman&quot;,=
serif;color:gray"><u></u><u></u></span></p>
</div>
</div>

</blockquote></div>

--000000000000309f7705ba1531ae--
