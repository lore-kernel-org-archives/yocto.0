Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web11.1827.1612405207568309903
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Feb 2021 18:20:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l2/sNVqV;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id x81so2023327qkb.0
        for <yocto@lists.yoctoproject.org>; Wed, 03 Feb 2021 18:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hZzv9LwDDjAAwvGDvYAlK9TGq0GkMGcWlG1ZVTcQ2Kc=;
        b=l2/sNVqV+OXwbFLDvsRnV80+hHvwmsaMCNlcKwG48jopXE1JxSonWPNMlg2AlvV/mX
         0pVrp3zUyOg+HGTTmxMlBWoUxizZ/rCi74MTvcRvfATJIu2lneJFJwS4SS9yx9M1LcAH
         +/+QkpJwFGtttu1nOmL8nRKhqhPkndFcY7uiutk2DJoCTm9SXgFO6IZ6iZCUla6Q76Kc
         dr8euy3UYBzeYpln5AX62gBl9wNB04ALOGs1z82ZZWJmGDel5wTXjf9UuwWb23WVSKpK
         wMdXozJiBSt/jNQP8ytZ+PoOS77goR+fr+IY9ByhMj4kYzPTNe85JsvbgUkneWuXXl4g
         vrSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hZzv9LwDDjAAwvGDvYAlK9TGq0GkMGcWlG1ZVTcQ2Kc=;
        b=DG8fY2SssoMdJzaHHwIktnVvIbikFLLmG6IshxXb2HS/0OP5UNKfkBFmBub3HkHYnm
         NZlk0dToV1apHFpEKveIQF6a+N1OWY0cn636MSqfx00rj9NNZGDCvdnRhV4Oeu1ZZ1M6
         D5aizXfeJ9K97ZM5blF6UitzTLEYuVfMWqVAtivmPFqgWtVfdYuG+ZFZ2Rg+TgXKfGcZ
         6cboJc/uQSQLDlS3K7NohDVoXLcmRZCJ1HmZy0adBzLsePZ3t9eFaj8UNDozlxOSUnCT
         6GmWV6VsoKlEkLzLsRFrtNxEPDZzTU1f+iTORwMTbd2tYmXOxfGqqvgBmpO8moqhyJ9e
         qogg==
X-Gm-Message-State: AOAM531IdhW5OQQeRcDI+EccoPTSD+dRgiQTl2WLyAp3k035u/wMSuJz
	o9wljllfbqDkdebxozXVbmSGylGStFtj5aZ5Meg=
X-Google-Smtp-Source: ABdhPJxH76kE99CjqaOmfHe7FNGOk1frdq6UZKDrlR5BKlqpVd9fZ9pinRneBrzLlqirtkHply/1MrvBp+m0QfF2xDk=
X-Received: by 2002:a37:6848:: with SMTP id d69mr5516212qkc.257.1612405206631;
 Wed, 03 Feb 2021 18:20:06 -0800 (PST)
MIME-Version: 1.0
References: <CAEyb4nFHLZ-cycQXBgerWeyyKUf3KRP+xSEa2kP0K1zYd7=HNA@mail.gmail.com>
 <CAM9ZRVshoYvDho-Dmu2+UNorjLSyrN3t=ZYE5Uj0zit0_4mAew@mail.gmail.com>
 <165CDE54CF259D2E.7022@lists.yoctoproject.org> <CAEyb4nH1jqEEhRyw-wmKPg+nqAhQMDdDv6GPjKGzc_igbYqyqQ@mail.gmail.com>
 <DB6PR0102MB2630BFE5D26042D67AA4AEDB88BD0@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
 <CAEyb4nGC5Fmdxsz9Q1Pot=E0gJVPvvkR7+E381QRyg2F-KqtaA@mail.gmail.com>
 <165EF1C95601254E.16314@lists.yoctoproject.org> <CAFSZm+g_8B=8-Y3H8VC4kCj311hWDDLWupAWqvnZ4Pew5WhCUw@mail.gmail.com>
 <CAEyb4nFOfjSmCB47RgFg1uRkqRCO8+0NKNW4QOzgjJOZ+c34ww@mail.gmail.com>
 <DB6PR0102MB2630EDA352DCFAFE77D4661088B69@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
 <38d778fcbc1e31c2efa82b5efef922e2@herrie.org>
In-Reply-To: <38d778fcbc1e31c2efa82b5efef922e2@herrie.org>
From: "Jonas Vautherin" <jonas.vautherin@gmail.com>
Date: Thu, 4 Feb 2021 03:19:55 +0100
Message-ID: <CAEyb4nHaJn=eL8w_GajtHq=bVBjr-1cVDEh-H33xWmnwpPX8UA@mail.gmail.com>
Subject: Re: [yocto] Writing a BSP from downstream kernel sources
To: yoctoproject.org@herrie.org
Cc: Diego Santa Cruz <diego.santacruz@spinetix.com>, Aaron Cohen <aaron@assonance.org>, 
	Paul Barker <pbarker@konsulko.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000093480405ba79575f"

--00000000000093480405ba79575f
Content-Type: text/plain; charset="UTF-8"

Thanks a lot everybody, I managed to go further with Diego's idea! I
removed the `const` in two other places, though I'm not sure if it was
necessary (I'll check that later). But the `.err encountered` errors
disappeared!

@Herman: checking your sources, too :-)

Best Regards,

On Mon, Feb 1, 2021 at 9:21 AM Herman van Hazendonk <me@herrie.org> wrote:

> Hi,
>
> We've been using 3.18 (Android) kernels on our LuneOS project with Yocto,
> so we carry the various patches to get it to build with newer GCC's.
>
> See:
> https://github.com/shr-distribution/linux/commits/tissot/3.18/halium-7.1
> for some inspiration :)
>
> For older 3.4 kernels you would need more patches obviously:
>
> https://github.com/shr-distribution/linux/commits/hammerhead/3.4/halium-5.1
>
>
> Best regards,
> Herman
>
> On 2021-02-01 08:04, Diego Santa Cruz via lists.yoctoproject.org wrote:
>
> *From:* Jonas Vautherin <jonas.vautherin@gmail.com>
> *Sent:* 31 January 2021 22:23
> *To:* Aaron Cohen <aaron@assonance.org>
> *Cc:* Diego Santa Cruz <Diego.SantaCruz@spinetix.com>; Paul Barker <
> pbarker@konsulko.com>; Yocto-mailing-list <yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] Writing a BSP from downstream kernel sources
>
>
>
> Thanks Aaron!
>
>
>
> That seems to remove the log2 warnings, but it seems like they were not
> related to those "Assembler" errors, e.g.:
>
>
>
> ```
>
> | /tmp/ccbtfgo7.s: Assembler messages:
> | /tmp/ccbtfgo7.s:2011: Error: .err encountered
>
> ```
>
>
>
> I think I need to fix them like Diego was suggesting, but I have trouble
> relating the error to a source file...
>
> *[Diego Santa Cruz] It may be easier to build the SDK with a dummy kernel
> (i.e. no kernel, setting PREFERRED_PROVIDER_virtual/kernel ?= "linux-dummy"
> in conf/local.conf) and use that SDK to get the kernel building outside of
> Yocto. If you run the make with V=1 you will see the full compiler command
> and you can re-run it manually. The use the -S (and eventually -E) line and
> you can inspect the faulty assembly file or source and track the original
> location. At least that is the route I took and worked well for me.*
>
> *I think you are using kernel 3.18.31, in that version it is the
> __put_user_check macro you need to fix,
> https://elixir.bootlin.com/linux/v3.18.31/source/arch/arm/include/asm/uaccess.h#L219
> <https://elixir.bootlin.com/linux/v3.18.31/source/arch/arm/include/asm/uaccess.h#L219>*
>
>
>
> *A hand written patch (not tested at all!) that should solve your problem
> is*
>
> --- arch/arm/include/asm/uaccess.h
>
> +++ arch/arm/include/asm/uaccess.h
>
> #define
> __put_user_check(x,p)
> \
>
>
> ({
> \
>
>                           unsigned long __limit =
> current_thread_info()->addr_limit - 1; \
>
>                           const typeof(*(p)) __user *__tmp_p =
> (p);                            \
>
> -                          register const typeof(*(p)) __r2 asm("r2") =
> (x); \
>
> +                         register typeof(*(p)) __r2 asm("r2") =
> (x);             \
>
>                           register const typeof(*(p)) __user *__p
> asm("r0") = __tmp_p; \
>
>                           register unsigned long __l asm("r1") =
> __limit;                    \
>
>                           register int __e
> asm("r0");                                                           \
>
>                              switch (sizeof(*(__p)))
> {                                                \
>
>
>
> On Sat, Jan 30, 2021 at 8:29 AM Aaron Cohen <aaron@assonance.org> wrote:
>
> Actually, I found the upstream patch I backported, which you're probably
> better off using (same diff though).
>
>
>
> https://lore.kernel.org/patchwork/patch/773330/
>
>
>
> On Sat, Jan 30, 2021 at 2:26 AM Joel A Cohen via lists.yoctoproject.org
> <aaron=assonance.org@lists.yoctoproject.org> wrote:
>
> I'm not sure if this is your issue, but I had a similar issue ilog2 and
> the disassembler and fixed it by backporting this patch.
>
>
>
> No guarantees, but perhaps it will help.
>
>
>
> --Aaron
>
>
>
>
>
> On Fri, Jan 29, 2021 at 9:51 PM Jonas Vautherin <jonas.vautherin@gmail.com>
> wrote:
>
> Thanks a lot for the advice! However, I can't seem to find a `const` that
> I can simply remove. To give more context, here is the log output around
> such an error (it seems like it is often surrounded by this log2.h warning,
> by the way):
>
>
>
> | In file included from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/kernel.h:11,
> |                  from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/kallsyms.h:9,
> |                  from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/ftrace.h:10,
> |                  from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/kernel/extable.c:18:
> |
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/log2.h:22:1:
> warning: ignoring attribute 'noreturn' because it conflicts with attribute
> 'const' [-Wattributes]
> |    22 | int ____ilog2_NaN(void);
> |       | ^~~
> |   CC      fs/fat/dir.o
> | In file included from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/kernel.h:11,
> |                  from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/list.h:8,
> |                  from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/module.h:9,
> |                  from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/fs/fat/dir.c:16:
> |
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/log2.h:22:1:
> warning: ignoring attribute 'noreturn' because it conflicts with attribute
> 'const' [-Wattributes]
> |    22 | int ____ilog2_NaN(void);
> |       | ^~~
> |   CC      block/deadline-iosched.o
> | In file included from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/kernel.h:11,
> |                  from
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/block/deadline-iosched.c:6:
> |
> /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/log2.h:22:1:
> warning: ignoring attribute 'noreturn' because it conflicts with attribute
> 'const' [-Wattributes]
> |    22 | int ____ilog2_NaN(void);
> |       | ^~~
> | /tmp/cc52vFrQ.s: Assembler messages:
> | /tmp/cc52vFrQ.s:2683: Error: .err encountered
> | /tmp/cc52vFrQ.s:2927: Error: .err encountered
> |   LD      sound/sparc/built-in.o
> |   LD      sound/spi/built-in.o
> | make[3]: ***
> [/home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/scripts/Makefile.build:257:
> block/scsi_ioctl.o] Error 1
>
>
>
> I pasted the full output here, if that can help:
> https://paste.ubuntu.com/p/KqN8nVWmvv/. The lines that seem to get the
> log2 warning are:
>
>
>
> ```
>
> extern __attribute__((const, noreturn))
>
> int ____ilog2_NaN(void);
>
>  ```
>
>
>
> So there is a const there, but well... not sure what to do with it :-).
>
>
>
> Best,
>
>
>
> On Mon, Jan 25, 2021 at 9:00 AM Diego Santa Cruz <
> Diego.SantaCruz@spinetix.com> wrote:
>
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
> and on that older device (because RPi will have a newer kernel and gcc, and
> the skycontroller will use older ones). I also guess that the downstream
> dts won't work with a modern kernel, and I would not know how to write one
> myself for that apq8009 chip.
>
>
>
> Hence, I'm giving up. Thanks a lot for the help :-).
>
> *[Diego Santa Cruz] Wait! You may be able to get it working, see below.*
>
>
>
> On Sat, Jan 23, 2021 at 2:07 PM Jonas Vautherin via lists.yoctoproject.org
> <jonas.vautherin=gmail.com@lists.yoctoproject.org> wrote:
>
> Thanks a lot for the answer!
>
>
>
> It seems like using `KCONFIG_MODE = "--alldefconfig"` with
> `KBUILD_DEFCONFIG = "msm8909_defconfig"` now ends up with the same kind of
> errors as when I use the defconfig from the downstream kernel [1], i.e.:
>
>
>
> *[Diego Santa Cruz] I happen to be doing a similar kind of work, getting
> an even older (2.6.37+) downstream kernel for an ARM machine to compile
> with recent GCC in Yocto, in my case GCC 9.3 from dunfell. There are a few
> fixes and backports necessary to make it happen and boot. I'm not done with
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
> what's going on, the problem is abusive use of const for register
> variables, see
> https://gcc.gnu.org/onlinedocs/gcc-9.3.0/gcc/Local-Register-Variables.html
> <https://gcc.gnu.org/onlinedocs/gcc-9.3.0/gcc/Local-Register-Variables.html>
> so when put_user() is used for a literal constant value it gets assigned
> the wrong register, so just remove the const qualifier from the put_user()
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
> -                               register const typeof(*(p)) __r2 asm("r2")
> = (x); \
>
> +                              register typeof(*(p)) __r2 asm("r2") =
> (x);                             \
>
>                                 register const typeof(*(p)) __user *__p
> asm("r0") = (p);\
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
> https://github.com/parrot-opensource/skycontroller3-opensource/blob/master/sources/linux-3.18.31/linux.config
>
> [2]:
> https://github.com/JonasVautherin/meta-skycontroller3/blob/main/conf/machine/skycontroller3.conf#L32
>
> [3]:
> https://www.notebookcheck.net/Qualcomm-Snapdragon-212-APQ8009-SoC-Benchmarks-and-Specs.169859.0.html
>
>
>
> Best,
>
>
>
> On Sat, Jan 23, 2021 at 11:06 AM Paul Barker <pbarker@konsulko.com> wrote:
>
> On Sat, 23 Jan 2021 at 02:29, Jonas Vautherin <jonas.vautherin@gmail.com>
> wrote:
> >
> > As a learning experience, I am trying to create a BSP for a device I own
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
> > I created it getting inspiration from meta-raspberrypi and meta-qti-bsp,
> which seems to have the same CPU: apq8009. According to the Parrot sources,
> my device runs a Qualcomm apq8009/msm89090 cpu. In my repo, I use as a
> defconfig file the linux.config that is available in the Parrot sources (I
> copied it in my kernel recipe under `files/defconfig` and added it to
> SRC_URI).
> >
> > The Parrot sources also refer to `LINUX_DEFAULT_CONFIG_TARGET :=
> msm8909_defconfig`, so I tried to set `KBUILD_DEFCONFIG =
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
> > As a side note, their `drivers/Kconfig` seemed invalid, so I patched it.
> >
> > I am a bit lost now, not completely sure where my issues come from. I
> realize that changing the defconfig has quite some impact (I get different
> errors), and also that my machine configuration may be completely wrong (I
> am essentially guessing from the fact that it is an apq8009/msm8909, but
> for instance the tuning I just copied from meta-qti-bsp, which may be
> invalid).
> >
> > I would be glad if I could get hints about debugging this. Again, it is
> really a learning project: I would like to learn how to create a BSP from a
> downstream kernel.
>
> I think setting `KBUILD_DEFCONFIG = "msm8909_defconfig"` is likely the
> correct approach here. What you may be missing though is the correct
> value for KCONFIG_MODE. By default, the supplied defconfig file is
> copied to .config but dependencies between config options aren't
> resolved. You need to set `KCONFIG_MODE = "--alldefconfig"` to get the
> equivalent of `make msm8909_defconfig` to occur. See
>
> https://github.com/agherzan/meta-raspberrypi/blob/master/recipes-kernel/linux/linux-raspberrypi.inc#L19
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
>
>
>
> --
>
> *Diego Santa Cruz, PhD *Technology Architect
> spinetix.com
>
>
>
>
>
>
>
> 
>
>
>

--00000000000093480405ba79575f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks a lot everybody, I managed to go further with Diego=
&#39;s idea! I removed the `const` in two other places, though I&#39;m not =
sure if it was necessary (I&#39;ll check that later). But the `.err encount=
ered` errors disappeared!<div><br></div><div>@Herman: checking your sources=
, too :-)<br></div><div><br></div><div>Best Regards,</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 1, 20=
21 at 9:21 AM Herman van Hazendonk &lt;<a href=3D"mailto:me@herrie.org">me@=
herrie.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div style=3D"font-size:10pt;font-family:Verdana,Geneva,sans-se=
rif">
<p>Hi,</p>
<p>We&#39;ve been using 3.18 (Android) kernels on our LuneOS project with =
Yocto, so we carry the various patches to get it to build with newer GCC&#3=
9;s.</p>
<p>See: <a href=3D"https://github.com/shr-distribution/linux/commits/tisso=
t/3.18/halium-7.1" target=3D"_blank">https://github.com/shr-distribution/li=
nux/commits/tissot/3.18/halium-7.1</a> for some inspiration :)</p>
<p>For older 3.4 kernels you would need more patches obviously:</p>
<p><a href=3D"https://github.com/shr-distribution/linux/commits/hammerhead=
/3.4/halium-5.1" target=3D"_blank">https://github.com/shr-distribution/linu=
x/commits/hammerhead/3.4/halium-5.1</a></p>
<p><br>Best regards,<br>Herman</p>
<p>On 2021-02-01 08:04, Diego Santa Cruz via <a href=3D"http://lists.yocto=
project.org" target=3D"_blank">lists.yoctoproject.org</a> wrote:</p>
<blockquote type=3D"cite" style=3D"padding:0px 0.4em;border-left:2px solid=
 rgb(16,16,255);margin:0px">  
<div>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border=
-top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><strong>From:</strong> Jonas Vautherin &lt;<a href=
=3D"mailto:jonas.vautherin@gmail.com" target=3D"_blank">jonas.vautherin@gm=
ail.com</a>&gt; <br> <strong>Sent:</strong> 31 January 2021 22:23<br> <stro=
ng>To:</strong> Aaron Cohen &lt;<a href=3D"mailto:aaron@assonance.org" targ=
et=3D"_blank">aaron@assonance.org</a>&gt;<br> <strong>Cc:</strong> Diego Sa=
nta Cruz &lt;<a href=3D"mailto:Diego.SantaCruz@spinetix.com" target=3D"_bla=
nk">Diego.SantaCruz@spinetix.com</a>&gt;; Paul Barker &lt;<a href=3D"mailto=
:pbarker@konsulko.com" target=3D"_blank">pbarker@konsulko.com</a>&gt;; Yoct=
o-mailing-list &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org" target=
=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br> <strong>Subject:</str=
ong> Re: [yocto] Writing a BSP from downstream kernel sources</p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0</p>
<div>
<p class=3D"MsoNormal">Thanks Aaron!</p>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">That seems to remove the log2 warnings, but it seem=
s like they were not related to those &quot;Assembler&quot; errors, e.g.:</=
p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">```</p>
</div>
<div>
<p class=3D"MsoNormal">| /tmp/ccbtfgo7.s: Assembler messages:<br> | /tmp/c=
cbtfgo7.s:2011: Error: .err encountered</p>
</div>
<div>
<p class=3D"MsoNormal">```</p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">I think I need to fix them like Diego was suggestin=
g, but I have trouble relating the error to a source file...</p>
<p class=3D"MsoNormal"><strong><em>[Diego Santa Cruz] It may be easier to =
build the SDK with a dummy kernel (i.e. no kernel, setting PREFERRED_PROVID=
ER_virtual/kernel ?=3D &quot;linux-dummy&quot; in conf/local.conf) and use =
that SDK to get the kernel building outside of Yocto. If you run the make w=
ith V=3D1 you will see the full compiler command and you can re-run it manu=
ally. The use the -S (and eventually -E) line and you can inspect the fault=
y assembly file or source and track the original location. At least that is=
 the route I took and worked well for me.</em></strong></p>
<p class=3D"MsoNormal"><strong><em>I think you are using kernel 3.18.31, i=
n that version it is the __put_user_check macro you need to fix, <a href=3D=
"https://elixir.bootlin.com/linux/v3.18.31/source/arch/arm/include/asm/uacc=
ess.h#L219" rel=3D"noopener noreferrer" target=3D"_blank"> https://elixir.b=
ootlin.com/linux/v3.18.31/source/arch/arm/include/asm/uaccess.h#L219</a></e=
m></strong></p>
<p class=3D"MsoNormal"><strong><em>=C2=A0</em></strong></p>
<p class=3D"MsoNormal"><strong><em>A hand written patch (not tested at all=
!) that should solve your problem is</em></strong></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.25pt">--- arch/arm/include/a=
sm/uaccess.h</p>
<p class=3D"MsoNormal" style=3D"margin-left:5.25pt">+++ arch/arm/include/a=
sm/uaccess.h</p>
<p class=3D"MsoNormal" style=3D"margin-left:5.25pt">#define __put_user_che=
ck(x,p)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \=
</p>
<p class=3D"MsoNormal" style=3D"margin-left:5.25pt">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ({=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \</p>
<p class=3D"MsoNormal" style=3D"margin-left:5.25pt">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned long __=
limit =3D current_thread_info()-&gt;addr_limit - 1; \</p>
<p class=3D"MsoNormal" style=3D"margin-left:5.25pt">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const typeof(*(p=
)) __user *__tmp_p =3D (p);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \</p>
<p class=3D"MsoNormal" style=3D"margin-left:5.25pt">-=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 register const t=
ypeof(*(p)) __r2 asm(&quot;r2&quot;) =3D (x); \</p>
<p class=3D"MsoNormal" style=3D"margin-left:5.25pt">+=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 register typeof(*(p)) =
__r2 asm(&quot;r2&quot;) =3D (x);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \</p>
<p class=3D"MsoNormal" style=3D"margin-left:5.25pt">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 register const t=
ypeof(*(p)) __user *__p asm(&quot;r0&quot;) =3D __tmp_p; \</p>
<p class=3D"MsoNormal" style=3D"margin-left:5.25pt">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 register unsigne=
d long __l asm(&quot;r1&quot;) =3D __limit;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 \</p>
<p class=3D"MsoNormal" style=3D"margin-left:5.25pt">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 register int __e=
 asm(&quot;r0&quot;);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 \</p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 switch (sizeof(*(__p))) {=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \</p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0</p>
<div>
<p class=3D"MsoNormal">On Sat, Jan 30, 2021 at 8:29 AM Aaron Cohen &lt;<a =
href=3D"mailto:aaron@assonance.org" target=3D"_blank">aaron@assonance.org</=
a>&gt; wrote:</p>
</div>
<div>
<div>
<p class=3D"MsoNormal">Actually, I found the upstream patch I backported, =
which you&#39;re probably better off using (same diff though).</p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://lore.kernel.org/patchwork/patch/=
773330/" rel=3D"noopener noreferrer" target=3D"_blank">https://lore.kernel.=
org/patchwork/patch/773330/</a></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0</p>
<div>
<p class=3D"MsoNormal">On Sat, Jan 30, 2021 at 2:26 AM Joel A Cohen via <a=
 href=3D"http://lists.yoctoproject.org" rel=3D"noopener noreferrer" target=
=3D"_blank"> lists.yoctoproject.org</a> &lt;aaron=3D<a href=3D"mailto:asso=
nance.org@lists.yoctoproject.org" target=3D"_blank">assonance.org@lists.yoc=
toproject.org</a>&gt; wrote:</p>
</div>
<div>
<div>
<p class=3D"MsoNormal">I&#39;m not sure if this is your issue, but I had a=
 similar issue ilog2 and the disassembler and fixed it by backporting this =
patch.</p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">No guarantees, but perhaps it will help.</p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">--Aaron</p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0</p>
<div>
<div>
<p class=3D"MsoNormal">On Fri, Jan 29, 2021 at 9:51 PM Jonas Vautherin &lt=
;<a href=3D"mailto:jonas.vautherin@gmail.com" target=3D"_blank">jonas.vauth=
erin@gmail.com</a>&gt; wrote:</p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;=
border-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:=
4.8pt;margin-right:0cm">
<div>
<p class=3D"MsoNormal">Thanks a lot for the advice! However, I can&#39;t s=
eem to find a `const` that I can simply remove. To give more context, here =
is the log output around such an error (it seems like it is often surrounde=
d by this log2.h warning, by the way):</p>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;=
border-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:=
4.8pt;margin-right:0cm">
<p class=3D"MsoNormal">| In file included from /home/jones/Documents/yocto=
/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/kern=
el.h:11,<br> | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroll=
er3/kernel-source/include/linux/kallsyms.h:9,<br> | =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/jones/Documents/yocto/=
poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/ftrac=
e.h:10,<br> | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroll=
er3/kernel-source/kernel/extable.c:18:<br> | /home/jones/Documents/yocto/po=
ky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/log2.h:=
22:1: warning: ignoring attribute &#39;noreturn&#39; because it conflicts w=
ith attribute &#39;const&#39; [-Wattributes]<br> | =C2=A0 =C2=A022 | int __=
__ilog2_NaN(void);<br> | =C2=A0 =C2=A0 =C2=A0 | ^~~<br> | =C2=A0 CC =C2=A0 =
=
=C2=A0 =C2=A0fs/fat/dir.o<br> | In file included from /home/jones/Document=
s/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/lin=
ux/kernel.h:11,<br> | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skyc=
ontroller3/kernel-source/include/linux/list.h:8,<br> | =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/jones/Documents/yocto/=
poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/modul=
e.h:9,<br> | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/=
kernel-source/fs/fat/dir.c:16:<br> | /home/jones/Documents/yocto/poky/build=
/tmp/work-shared/skycontroller3/kernel-source/include/linux/log2.h:22:1: wa=
rning: ignoring attribute &#39;noreturn&#39; because it conflicts with attr=
ibute &#39;const&#39; [-Wattributes]<br> | =C2=A0 =C2=A022 | int ____ilog2_=
NaN(void);<br> | =C2=A0 =C2=A0 =C2=A0 | ^~~<br> | =C2=A0 CC =C2=A0 =C2=A0 =
=C2=A0block/deadline-iosched.o<br> | In file included from /home/jones/Doc=
uments/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/includ=
e/linux/kernel.h:11,<br> | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0from /home/jones/Documents/yocto/poky/build/tmp/work-shared/s=
kycontroller3/kernel-source/block/deadline-iosched.c:6:<br> | /home/jones/D=
ocuments/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/incl=
ude/linux/log2.h:22:1: warning: ignoring attribute &#39;noreturn&#39; becau=
se it conflicts with attribute &#39;const&#39; [-Wattributes]<br> | =C2=A0 =
=
=C2=A022 | int ____ilog2_NaN(void);<br> | =C2=A0 =C2=A0 =C2=A0 | ^~~<br> |=
 /tmp/cc52vFrQ.s: Assembler messages:<br> | /tmp/cc52vFrQ.s:2683: Error: .e=
rr encountered<br> | /tmp/cc52vFrQ.s:2927: Error: .err encountered<br> | =
=C2=A0 LD =C2=A0 =C2=A0 =C2=A0sound/sparc/built-in.o<br> | =C2=A0 LD =C2=
=A0 =C2=A0 =C2=A0sound/spi/built-in.o<br> | make[3]: *** [/home/jones/Docu=
ments/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/scripts=
/Makefile.build:257: block/scsi_ioctl.o] Error 1</p>
</blockquote>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">I pasted the full output here, if that can help:=C2=
=
=A0<a href=3D"https://paste.ubuntu.com/p/KqN8nVWmvv/" rel=3D"noopener nore=
ferrer" target=3D"_blank">https://paste.ubuntu.com/p/KqN8nVWmvv/</a>. The l=
ines that seem to get the log2 warning are:</p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">```</p>
</div>
<div>
<p class=3D"MsoNormal">extern __attribute__((const, noreturn))</p>
</div>
<p class=3D"MsoNormal">int ____ilog2_NaN(void);</p>
<div>
<p class=3D"MsoNormal">=C2=A0```</p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">So there is a const there, but well... not sure wha=
t to do with it :-).</p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">Best,</p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0</p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Jan 25, 2021 at 9:00 AM Diego Santa Cruz &l=
t;<a href=3D"mailto:Diego.SantaCruz@spinetix.com" target=3D"_blank">Diego.S=
antaCruz@spinetix.com</a>&gt; wrote:</p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;=
border-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:=
4.8pt;margin-right:0cm">
<div>
<div>
<div style=3D"border-top:none currentcolor;border-right:none currentcolor;=
border-bottom:none currentcolor;border-left:1.5pt solid blue;padding:0cm 0c=
m 0cm 4pt">
<div>
<div style=3D"border-right:none currentcolor;border-bottom:none currentcol=
or;border-left:none currentcolor;border-top:1pt solid currentcolor;padding:=
3pt 0cm 0cm">
<p class=3D"MsoNormal"><strong>From:</strong> <a href=3D"mailto:yocto@list=
s.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;=
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lis=
ts.yoctoproject.org</a>&gt; <strong>On Behalf Of </strong>Jonas Vautherin v=
ia <a href=3D"http://lists.yoctoproject.org" rel=3D"noopener noreferrer" ta=
rget=3D"_blank"> lists.yoctoproject.org</a><br> <strong>Sent:</strong> 24 J=
anuary 2021 14:30<br> <strong>To:</strong> Jonas Vautherin &lt;<a href=3D"m=
ailto:jonas.vautherin@gmail.com" target=3D"_blank">jonas.vautherin@gmail.co=
m</a>&gt;<br> <strong>Cc:</strong> Paul Barker &lt;<a href=3D"mailto:pbarke=
r@konsulko.com" target=3D"_blank">pbarker@konsulko.com</a>&gt;; Yocto-maili=
ng-list &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k">yocto@lists.yoctoproject.org</a>&gt;<br> <strong>Subject:</strong> Re: [=
yocto] Writing a BSP from downstream kernel sources</p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0</p>
<div>
<p class=3D"MsoNormal">Just to close this: it seems like the gcc-cross-arm=
 used by yocto gatesgarth is too new for that specific downstream kernel (3=
.18.31).</p>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">The goal was to get a proper BSP package for this d=
evice for a modern yocto, so I don&#39;t think I will try with an older ver=
sion of Yocto. If I compile an old gcc as part of a custom Yocto layer (on =
gatesgarth), I am guessing that I will have issues creating a distro that r=
uns both on RPi and on that older device (because RPi will have a newer ker=
nel and gcc, and the skycontroller will use older ones). I also guess that =
the downstream dts won&#39;t work with a modern kernel, and I would not kno=
w how to write one myself for that apq8009 chip.</p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">Hence, I&#39;m giving up. Thanks a lot for the help=
 :-).</p>
<p class=3D"MsoNormal"><strong><em><span>[Diego Santa Cruz] Wait! </span>Y=
ou may be able to get it working, see below.</em></strong></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0</p>
<div>
<div>
<p class=3D"MsoNormal">On Sat, Jan 23, 2021 at 2:07 PM Jonas Vautherin via=
 <a href=3D"http://lists.yoctoproject.org" rel=3D"noopener noreferrer" targ=
et=3D"_blank">lists.yoctoproject.org</a> &lt;jonas.vautherin=3D<a href=3D"m=
ailto:gmail.com@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.y=
octoproject.org</a>&gt; wrote:</p>
</div>
<blockquote style=3D"border-top:none currentcolor;border-right:none curren=
tcolor;border-bottom:none currentcolor;border-left:1pt solid rgb(204,204,20=
4);padding:0cm 0cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt">
<div>
<p class=3D"MsoNormal">Thanks a lot for the answer!</p>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">It seems like using `KCONFIG_MODE =3D &quot;--allde=
fconfig&quot;` with `KBUILD_DEFCONFIG =3D &quot;msm8909_defconfig&quot;` no=
w ends up with the same kind of errors as when I use the defconfig from the=
 downstream kernel [1], i.e.:</p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
<p class=3D"MsoNormal"><strong><em>[Diego Santa Cruz] I happen to be doing=
 a similar kind of work, getting an even older (2.6.37+) downstream kernel =
for an ARM machine to compile with recent GCC in Yocto, in my case GCC 9.3 =
from dunfell. There are a few fixes and backports necessary to make it happ=
en and boot. I&#39;m not done with the work yet, so I do not know how stabl=
e it is, but I have it booting.</em></strong></p>
</div>
<div>
<p class=3D"MsoNormal">```</p>
</div>
<div>
<p class=3D"MsoNormal">| /tmp/ccz8jKgm.s: Assembler messages:<br> | /tmp/c=
cz8jKgm.s:985: Error: .err encountered</p>
</div>
<div>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><strong><em>[Diego Santa Cruz] The fix here is rath=
er simple once you understand what&#39;s going on, the problem is abusive u=
se of const for register variables, see <a href=3D"https://gcc.gnu.org/onli=
nedocs/gcc-9.3.0/gcc/Local-Register-Variables.html" rel=3D"noopener norefer=
rer" target=3D"_blank"> https://gcc.gnu.org/onlinedocs/gcc-9.3.0/gcc/Local-=
Register-Variables.html</a> so when put_user() is used for a literal consta=
nt value it gets assigned the wrong register, so just remove the const qual=
ifier from the put_user() register variable assignment for the value argume=
nt. For my older kernel the patch is like this.</em></strong></p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">--- arch/arm/include/a=
sm/uaccess.h</p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">+++ arch/arm/include/a=
sm/uaccess.h </p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">@@ -145,7 +145,7 @@</p=
>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">=C2=A0#define put_user=
(x,p)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 \</p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ({=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 \</p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">-=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 register const typeof(*(p)) __r2 asm(&quot;r2&quot;) =3D (=
x); \</p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">+=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 register typeof(*(p)) __r2 asm(&quot;r2&quot;) =3D (x);=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 \</p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 register const typeof(*(p)) __user *__p asm(&quot;r0=
&quot;) =3D (p);\</p>
<p class=3D"MsoNormal" style=3D"margin-left:16.8pt">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 register int __e asm(&quot;r0&quot;);=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \</p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 switch (sizeof(*(__p))) {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \</p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">Could it be related to the tuning, e.g. I&#39;m som=
ehow defining a wrong toolchain in my machine configuration [2] and it fail=
s to build? I was thinking about the tune-cortexa7.inc include, though it s=
eems to me that the apq8009 is a cortexa7 [3]:</p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
<p class=3D"MsoNormal"><strong><em>[Diego Santa Cruz] Other commits from p=
ost 3.18 that you may need to backport are the following (start from bottom=
 of list) </em></strong></p>
<p class=3D"MsoNormal">474c90156c8dcc2fa815e6716cc9394d7930cb9c give up on=
 gcc ilog2() constant optimizations</p>
<p class=3D"MsoNormal">cb984d101b30eb7478d32df56a0023e4603cba7f compiler-g=
cc: integrate the various compiler-gcc[345].h files</p>
<p class=3D"MsoNormal">f6d133f877c8bb0a0934dc8c521c758ee771e901 compiler-g=
cc.h: neatening</p>
<p class=3D"MsoNormal">7829fb09a2b4268b30dd9bc782fa5ebee278b137 lib: make =
memzero_explicit more robust against dead store elimination</p>
<p class=3D"MsoNormal">cb4188ac8e5779f66b9f55888ac2c75b391cde44 compiler: =
introduce __alias(symbol) shortcut</p>
<p class=3D"MsoNormal">0b053c9518292705736329a8fe20ef4686ffc8e9 lib: memze=
ro_explicit: use barrier instead of OPTIMIZER_HIDE_VAR</p>
<p class=3D"MsoNormal">ee91ef6173e81819f5ff610c2485802081635657 bufferhead=
: force inlining of buffer head flag operations</p>
<p class=3D"MsoNormal">cc7fce80229067890365c1ee196be5d304d36dea mtd: blkde=
vs: fix switch-bool compilation warning</p>
<p class=3D"MsoNormal">=C2=A0</p>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">&gt;=C2=A0The Qualcomm Snapdragon 212 APQ8009 is an=
 entry level SoC for Android based tablets and smartphones. It contains fou=
r ARM Cortex-A7 CPU cores (quad core)</p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">[1]:=C2=A0<a href=3D"https://github.com/parrot-open=
source/skycontroller3-opensource/blob/master/sources/linux-3.18.31/linux.co=
nfig" rel=3D"noopener noreferrer" target=3D"_blank">https://github.com/parr=
ot-opensource/skycontroller3-opensource/blob/master/sources/linux-3.18.31/l=
inux.config</a></p>
</div>
<div>
<p class=3D"MsoNormal">[2]:=C2=A0<a href=3D"https://github.com/JonasVauthe=
rin/meta-skycontroller3/blob/main/conf/machine/skycontroller3.conf#L32" rel=
=
=3D"noopener noreferrer" target=3D"_blank">https://github.com/JonasVauther=
in/meta-skycontroller3/blob/main/conf/machine/skycontroller3.conf#L32</a></=
p>
</div>
<div>
<p class=3D"MsoNormal">[3]:=C2=A0<a href=3D"https://www.notebookcheck.net/=
Qualcomm-Snapdragon-212-APQ8009-SoC-Benchmarks-and-Specs.169859.0.html" rel=
=
=3D"noopener noreferrer" target=3D"_blank">https://www.notebookcheck.net/Q=
ualcomm-Snapdragon-212-APQ8009-SoC-Benchmarks-and-Specs.169859.0.html</a></=
p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0</p>
</div>
<div>
<p class=3D"MsoNormal">Best,</p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0</p>
<div>
<div>
<p class=3D"MsoNormal">On Sat, Jan 23, 2021 at 11:06 AM Paul Barker &lt;<a=
 href=3D"mailto:pbarker@konsulko.com" target=3D"_blank">pbarker@konsulko.co=
m</a>&gt; wrote:</p>
</div>
<blockquote style=3D"border-top:none currentcolor;border-right:none curren=
tcolor;border-bottom:none currentcolor;border-left:1pt solid rgb(204,204,20=
4);padding:0cm 0cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt">
<p class=3D"MsoNormal">On Sat, 23 Jan 2021 at 02:29, Jonas Vautherin &lt;<=
a href=3D"mailto:jonas.vautherin@gmail.com" target=3D"_blank">jonas.vauther=
in@gmail.com</a>&gt; wrote:<br> &gt;<br> &gt; As a learning experience, I a=
m trying to create a BSP for a device I own and whose downstream kernel is =
published. The device in question is the Parrot Skycontroller3, and the sou=
rces are available here.<br> &gt;<br> &gt; Let me start by sharing my issue=
. When I build the kernel with `bitbake virtual/kernel`, it fails with erro=
rs like:<br> &gt;<br> &gt; ```<br> &gt; |=C2=A0 =C2=A0AS=C2=A0 =C2=A0 =C2=
=A0 arch/arm/lib/backtrace.o<br> &gt; |=C2=A0 =C2=A0AS=C2=A0 =C2=A0 =C2=A0=
 arch/arm/lib/bswapsdi2.o<br> &gt; |=C2=A0 =C2=A0AS=C2=A0 =C2=A0 =C2=A0 arc=
h/arm/lib/call_with_stack.o<br> &gt; | /tmp/ccz8jKgm.s: Assembler messages:=
<br> &gt; | /tmp/ccz8jKgm.s:985: Error: .err encountered<br> &gt; | /tmp/cc=
z8jKgm.s:1033: Error: .err encountered<br> &gt; | /tmp/ccz8jKgm.s:6812: Err=
or: .err encountered<br> &gt; ```<br> &gt;<br> &gt; My layer is available h=
ere.<br> &gt;<br> &gt; I created it getting inspiration from meta-raspberry=
pi and meta-qti-bsp, which seems to have the same CPU: apq8009. According t=
o the Parrot sources, my device runs a Qualcomm apq8009/msm89090 cpu. In my=
 repo, I use as a defconfig file the linux.config that is available in the =
Parrot sources (I copied it in my kernel recipe under `files/defconfig` and=
 added it to SRC_URI).<br> &gt;<br> &gt; The Parrot sources also refer to `=
LINUX_DEFAULT_CONFIG_TARGET :=3D msm8909_defconfig`, so I tried to set `KBU=
ILD_DEFCONFIG =3D &quot;msm8909_defconfig&quot;`, but that is failing with =
different errors, such as:<br> &gt;<br> &gt; ```<br> &gt; error: &#39;VM_AR=
M_DMA_CONSISTENT&#39; undeclared (first use in this function); did you mean=
 &#39;DMA_ATTR_NON_CONSISTENT&#39;?<br> &gt; ```<br> &gt;<br> &gt; or<br> &=
gt;<br> &gt; ```<br> &gt; error: &#39;L_PTE_YOUNG&#39; undeclared<br> &gt; =
```<br> &gt;<br> &gt; As a side note, their `drivers/Kconfig` seemed invali=
d, so I patched it.<br> &gt;<br> &gt; I am a bit lost now, not completely s=
ure where my issues come from. I realize that changing the defconfig has qu=
ite some impact (I get different errors), and also that my machine configur=
ation may be completely wrong (I am essentially guessing from the fact that=
 it is an apq8009/msm8909, but for instance the tuning I just copied from m=
eta-qti-bsp, which may be invalid).<br> &gt;<br> &gt; I would be glad if I =
could get hints about debugging this. Again, it is really a learning projec=
t: I would like to learn how to create a BSP from a downstream kernel.<br> =
<br> I think setting `KBUILD_DEFCONFIG =3D &quot;msm8909_defconfig&quot;` i=
s likely the<br> correct approach here. What you may be missing though is t=
he correct<br> value for KCONFIG_MODE. By default, the supplied defconfig f=
ile is<br> copied to .config but dependencies between config options aren&#=
39;t<br> resolved. You need to set `KCONFIG_MODE =3D &quot;--alldefconfig&q=
uot;` to get the<br> equivalent of `make msm8909_defconfig` to occur. See<b=
r> <a href=3D"https://github.com/agherzan/meta-raspberrypi/blob/master/reci=
pes-kernel/linux/linux-raspberrypi.inc#L19" rel=3D"noopener noreferrer" tar=
get=3D"_blank">https://github.com/agherzan/meta-raspberrypi/blob/master/rec=
ipes-kernel/linux/linux-raspberrypi.inc#L19</a><br> for an idea of how this=
 is done for Raspberry Pi.<br> <br> Thanks,<br> <br> -- <br> Paul Barker<br=
> Konsulko Group</p>
</blockquote>
</div>
</blockquote>
</div>
</div>
<p class=3D"MsoNormal"><br> <span style=3D"font-size:9pt;font-family:Arial=
,sans-serif">-- <br> <strong>Diego Santa Cruz, PhD<br> </strong><span style=
=
=3D"color:gray">Technology Architect<br> <a href=3D"http://spinetix.com" r=
el=3D"noopener noreferrer" target=3D"_blank">spinetix.com</a></span></span>=
</p>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><br> <br> </p>
</blockquote>
</div>
<p class=3D"MsoNormal"><br> <span style=3D"font-size:9pt;font-family:Arial=
,sans-serif">-- <br> <strong>Diego Santa Cruz, PhD<br> </strong><span style=
=
=3D"color:gray">Technology Architect<br> <a href=3D"http://spinetix.com" t=
arget=3D"_blank">spinetix.com</a></span></span><span style=3D"font-size:12p=
t;font-family:&quot;Times New Roman&quot;,serif;color:gray"></span></p>
<p class=3D"MsoNormal">=C2=A0</p>
<div style=3D"border-top:none;border-right:none;border-bottom:none;border-=
left:1.5pt solid blue;padding:0cm 0cm 0cm 4pt">
<div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;=
border-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:=
4.8pt;margin-right:0cm">
<div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;=
border-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:=
4.8pt;margin-right:0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">=C2=A0</p>
</blockquote>
</div>
</blockquote>
</div>
</div>
</div>
<br>
<div style=3D"margin:0px;padding:0px;font-family:monospace"><br> <br> </di=
v>
</blockquote>
<p><br></p>

</div>
</blockquote></div>

--00000000000093480405ba79575f--
