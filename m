Received: from outbound1.mail.transip.nl (outbound1.mail.transip.nl [149.210.149.72])
 by mx.groups.io with SMTP id smtpd.web11.31002.1612167692015465181
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Feb 2021 00:21:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@herrie.org header.s=transip-a header.b=KLGZmWb4;
 spf=pass (domain: herrie.org, ip: 149.210.149.72, mailfrom: me@herrie.org)
Received: from submission6.mail.transip.nl (unknown [10.103.8.157])
	by outbound1.mail.transip.nl (Postfix) with ESMTP id 4DTgrn0w19zRjHP;
	Mon,  1 Feb 2021 09:21:29 +0100 (CET)
Received: from transip.email (unknown [10.100.4.34])
	by submission6.mail.transip.nl (Postfix) with ESMTPA id 4DTgrj5Y3pz12LWy;
	Mon,  1 Feb 2021 09:21:24 +0100 (CET)
MIME-Version: 1.0
Date: Mon, 01 Feb 2021 09:21:24 +0100
From: "Herman van Hazendonk (Herrie)" <yoctoproject.org@herrie.org>
To: diego.santacruz@spinetix.com
Cc: Jonas Vautherin <jonas.vautherin@gmail.com>, Aaron Cohen
 <aaron@assonance.org>, Paul Barker <pbarker@konsulko.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Writing a BSP from downstream kernel sources
Reply-To: yoctoproject.org@herrie.org
Mail-Reply-To: yoctoproject.org@herrie.org
In-Reply-To: <DB6PR0102MB2630EDA352DCFAFE77D4661088B69@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
References: <CAEyb4nFHLZ-cycQXBgerWeyyKUf3KRP+xSEa2kP0K1zYd7=HNA@mail.gmail.com>
 <CAM9ZRVshoYvDho-Dmu2+UNorjLSyrN3t=ZYE5Uj0zit0_4mAew@mail.gmail.com>
 <165CDE54CF259D2E.7022@lists.yoctoproject.org>
 <CAEyb4nH1jqEEhRyw-wmKPg+nqAhQMDdDv6GPjKGzc_igbYqyqQ@mail.gmail.com>
 <DB6PR0102MB2630BFE5D26042D67AA4AEDB88BD0@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
 <CAEyb4nGC5Fmdxsz9Q1Pot=E0gJVPvvkR7+E381QRyg2F-KqtaA@mail.gmail.com>
 <165EF1C95601254E.16314@lists.yoctoproject.org>
 <CAFSZm+g_8B=8-Y3H8VC4kCj311hWDDLWupAWqvnZ4Pew5WhCUw@mail.gmail.com>
 <CAEyb4nFOfjSmCB47RgFg1uRkqRCO8+0NKNW4QOzgjJOZ+c34ww@mail.gmail.com>
 <DB6PR0102MB2630EDA352DCFAFE77D4661088B69@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
Message-ID: <38d778fcbc1e31c2efa82b5efef922e2@herrie.org>
X-Sender: me@herrie.org
User-Agent: Webmail
X-Scanned-By: ClueGetter at submission6.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1612167686; h=from:reply-to:subject:to:
 cc:references:in-reply-to:date:mime-version:content-type;
 bh=cEjFT6io4Y3Erz3520s6qkcCW1D90XWlo5zBmS9cbsc=;
 b=KLGZmWb4J74Ph9aprW+BDf8drwwG7LDlPPTXPn8yyuIG55C55Mr4tVo7ku9avnVmJE+QU5
 xAt9Id1CUXns/YJhEJUN6Qpz/dFerfPmYEVWY1987r4XxkKNpi6L3oJKNrE+OqJG5aCZ7C
 jxml4b4RKtcaANqLbm5diim0CYlAzk702D5CK7BjKKPyGEOhyM6mribH9N5vyBE03Vk0s6
 E/57o9vWUf10JHfMLF9wi38fY/TkCI6VqFjSWvhQlEmd7W9XRN8TIPYwphM9ZoqFM5PBcH
 NCLBrAPmdQ+8K3EgMQ4iUB+VO5n31TbL6iYui9HGh54SdUB5cdYHhub1eGc4Wg==
X-Report-Abuse-To: abuse@transip.nl
Content-Type: multipart/alternative;
 boundary="=_192323ad42c62a2b7dc4f0ba7dd3e414"

--=_192323ad42c62a2b7dc4f0ba7dd3e414
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII

Hi, 

We've been using 3.18 (Android) kernels on our LuneOS project with
Yocto, so we carry the various patches to get it to build with newer
GCC's. 

See:
https://github.com/shr-distribution/linux/commits/tissot/3.18/halium-7.1
for some inspiration :) 

For older 3.4 kernels you would need more patches obviously: 

https://github.com/shr-distribution/linux/commits/hammerhead/3.4/halium-5.1


Best regards,
Herman 

On 2021-02-01 08:04, Diego Santa Cruz via lists.yoctoproject.org wrote:

> FROM: Jonas Vautherin <jonas.vautherin@gmail.com> 
> SENT: 31 January 2021 22:23
> TO: Aaron Cohen <aaron@assonance.org>
> CC: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>; Paul Barker <pbarker@konsulko.com>; Yocto-mailing-list <yocto@lists.yoctoproject.org>
> SUBJECT: Re: [yocto] Writing a BSP from downstream kernel sources 
> 
> Thanks Aaron!
> 
> That seems to remove the log2 warnings, but it seems like they were not related to those "Assembler" errors, e.g.: 
> 
> ``` 
> 
> | /tmp/ccbtfgo7.s: Assembler messages:
> | /tmp/ccbtfgo7.s:2011: Error: .err encountered 
> 
> ``` 
> 
> I think I need to fix them like Diego was suggesting, but I have trouble relating the error to a source file... 
> 
> _[DIEGO SANTA CRUZ] IT MAY BE EASIER TO BUILD THE SDK WITH A DUMMY KERNEL (I.E. NO KERNEL, SETTING PREFERRED_PROVIDER_VIRTUAL/KERNEL ?= "LINUX-DUMMY" IN CONF/LOCAL.CONF) AND USE THAT SDK TO GET THE KERNEL BUILDING OUTSIDE OF YOCTO. IF YOU RUN THE MAKE WITH V=1 YOU WILL SEE THE FULL COMPILER COMMAND AND YOU CAN RE-RUN IT MANUALLY. THE USE THE -S (AND EVENTUALLY -E) LINE AND YOU CAN INSPECT THE FAULTY ASSEMBLY FILE OR SOURCE AND TRACK THE ORIGINAL LOCATION. AT LEAST THAT IS THE ROUTE I TOOK AND WORKED WELL FOR ME._ 
> 
> _I THINK YOU ARE USING KERNEL 3.18.31, IN THAT VERSION IT IS THE __PUT_USER_CHECK MACRO YOU NEED TO FIX, HTTPS://ELIXIR.BOOTLIN.COM/LINUX/V3.18.31/SOURCE/ARCH/ARM/INCLUDE/ASM/UACCESS.H#L219 [1]_ 
> 
> _ _ 
> 
> _A HAND WRITTEN PATCH (NOT TESTED AT ALL!) THAT SHOULD SOLVE YOUR PROBLEM IS_ 
> 
> --- arch/arm/include/asm/uaccess.h 
> 
> +++ arch/arm/include/asm/uaccess.h 
> 
> #define __put_user_check(x,p)                                                                                                            \ 
> 
> ({                                                                                                                             \ 
> 
> unsigned long __limit = current_thread_info()->addr_limit - 1; \ 
> 
> const typeof(*(p)) __user *__tmp_p = (p);                            \ 
> 
> -                          register const typeof(*(p)) __r2 asm("r2") = (x); \ 
> 
> +                         register typeof(*(p)) __r2 asm("r2") = (x);             \ 
> 
> register const typeof(*(p)) __user *__p asm("r0") = __tmp_p; \ 
> 
> register unsigned long __l asm("r1") = __limit;                    \ 
> 
> register int __e asm("r0");                                                           \ 
> 
> switch (sizeof(*(__p))) {                                                \ 
> 
> On Sat, Jan 30, 2021 at 8:29 AM Aaron Cohen <aaron@assonance.org> wrote: 
> 
> Actually, I found the upstream patch I backported, which you're probably better off using (same diff though). 
> 
> https://lore.kernel.org/patchwork/patch/773330/ 
> 
> On Sat, Jan 30, 2021 at 2:26 AM Joel A Cohen via lists.yoctoproject.org [2] <aaron=assonance.org@lists.yoctoproject.org> wrote: 
> 
> I'm not sure if this is your issue, but I had a similar issue ilog2 and the disassembler and fixed it by backporting this patch. 
> 
> No guarantees, but perhaps it will help. 
> 
> --Aaron 
> 
> On Fri, Jan 29, 2021 at 9:51 PM Jonas Vautherin <jonas.vautherin@gmail.com> wrote: 
> 
> Thanks a lot for the advice! However, I can't seem to find a `const` that I can simply remove. To give more context, here is the log output around such an error (it seems like it is often surrounded by this log2.h warning, by the way):
> 
> | In file included from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/kernel.h:11,
> |                  from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/kallsyms.h:9,
> |                  from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/ftrace.h:10,
> |                  from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/kernel/extable.c:18:
> | /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/log2.h:22:1: warning: ignoring attribute 'noreturn' because it conflicts with attribute 'const' [-Wattributes]
> |    22 | int ____ilog2_NaN(void);
> |       | ^~~
> |   CC      fs/fat/dir.o
> | In file included from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/kernel.h:11,
> |                  from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/list.h:8,
> |                  from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/module.h:9,
> |                  from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/fs/fat/dir.c:16:
> | /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/log2.h:22:1: warning: ignoring attribute 'noreturn' because it conflicts with attribute 'const' [-Wattributes]
> |    22 | int ____ilog2_NaN(void);
> |       | ^~~
> |   CC      block/deadline-iosched.o
> | In file included from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/kernel.h:11,
> |                  from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/block/deadline-iosched.c:6:
> | /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/log2.h:22:1: warning: ignoring attribute 'noreturn' because it conflicts with attribute 'const' [-Wattributes]
> |    22 | int ____ilog2_NaN(void);
> |       | ^~~
> | /tmp/cc52vFrQ.s: Assembler messages:
> | /tmp/cc52vFrQ.s:2683: Error: .err encountered
> | /tmp/cc52vFrQ.s:2927: Error: .err encountered
> |   LD      sound/sparc/built-in.o
> |   LD      sound/spi/built-in.o
> | make[3]: *** [/home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/scripts/Makefile.build:257: block/scsi_ioctl.o] Error 1 
> 
> I pasted the full output here, if that can help: https://paste.ubuntu.com/p/KqN8nVWmvv/. The lines that seem to get the log2 warning are: 
> 
> ``` 
> 
> extern __attribute__((const, noreturn)) 
> 
> int ____ilog2_NaN(void);
> 
> ``` 
> 
> So there is a const there, but well... not sure what to do with it :-). 
> 
> Best, 
> 
> On Mon, Jan 25, 2021 at 9:00 AM Diego Santa Cruz <Diego.SantaCruz@spinetix.com> wrote: 
> 
> FROM: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> ON BEHALF OF Jonas Vautherin via lists.yoctoproject.org [2]
> SENT: 24 January 2021 14:30
> TO: Jonas Vautherin <jonas.vautherin@gmail.com>
> CC: Paul Barker <pbarker@konsulko.com>; Yocto-mailing-list <yocto@lists.yoctoproject.org>
> SUBJECT: Re: [yocto] Writing a BSP from downstream kernel sources 
> 
> Just to close this: it seems like the gcc-cross-arm used by yocto gatesgarth is too new for that specific downstream kernel (3.18.31).
> 
> The goal was to get a proper BSP package for this device for a modern yocto, so I don't think I will try with an older version of Yocto. If I compile an old gcc as part of a custom Yocto layer (on gatesgarth), I am guessing that I will have issues creating a distro that runs both on RPi and on that older device (because RPi will have a newer kernel and gcc, and the skycontroller will use older ones). I also guess that the downstream dts won't work with a modern kernel, and I would not know how to write one myself for that apq8009 chip. 
> 
> Hence, I'm giving up. Thanks a lot for the help :-). 
> 
> _[DIEGO SANTA CRUZ] WAIT! YOU MAY BE ABLE TO GET IT WORKING, SEE BELOW._ 
> 
> On Sat, Jan 23, 2021 at 2:07 PM Jonas Vautherin via lists.yoctoproject.org [2] <jonas.vautherin=gmail.com@lists.yoctoproject.org> wrote: 
> 
> Thanks a lot for the answer!
> 
> It seems like using `KCONFIG_MODE = "--alldefconfig"` with `KBUILD_DEFCONFIG = "msm8909_defconfig"` now ends up with the same kind of errors as when I use the defconfig from the downstream kernel [1], i.e.: 
> 
> _[DIEGO SANTA CRUZ] I HAPPEN TO BE DOING A SIMILAR KIND OF WORK, GETTING AN EVEN OLDER (2.6.37+) DOWNSTREAM KERNEL FOR AN ARM MACHINE TO COMPILE WITH RECENT GCC IN YOCTO, IN MY CASE GCC 9.3 FROM DUNFELL. THERE ARE A FEW FIXES AND BACKPORTS NECESSARY TO MAKE IT HAPPEN AND BOOT. I'M NOT DONE WITH THE WORK YET, SO I DO NOT KNOW HOW STABLE IT IS, BUT I HAVE IT BOOTING._ 
> 
> ``` 
> 
> | /tmp/ccz8jKgm.s: Assembler messages:
> | /tmp/ccz8jKgm.s:985: Error: .err encountered 
> 
> ``` 
> 
> _[DIEGO SANTA CRUZ] THE FIX HERE IS RATHER SIMPLE ONCE YOU UNDERSTAND WHAT'S GOING ON, THE PROBLEM IS ABUSIVE USE OF CONST FOR REGISTER VARIABLES, SEE HTTPS://GCC.GNU.ORG/ONLINEDOCS/GCC-9.3.0/GCC/LOCAL-REGISTER-VARIABLES.HTML [3] SO WHEN PUT_USER() IS USED FOR A LITERAL CONSTANT VALUE IT GETS ASSIGNED THE WRONG REGISTER, SO JUST REMOVE THE CONST QUALIFIER FROM THE PUT_USER() REGISTER VARIABLE ASSIGNMENT FOR THE VALUE ARGUMENT. FOR MY OLDER KERNEL THE PATCH IS LIKE THIS._ 
> 
> --- arch/arm/include/asm/uaccess.h 
> 
> +++ arch/arm/include/asm/uaccess.h 
> 
> @@ -145,7 +145,7 @@ 
> 
> #define put_user(x,p)                                                                                                    \ 
> 
> ({                                                                                                                             \ 
> 
> -                               register const typeof(*(p)) __r2 asm("r2") = (x); \ 
> 
> +                              register typeof(*(p)) __r2 asm("r2") = (x);                             \ 
> 
> register const typeof(*(p)) __user *__p asm("r0") = (p);\ 
> 
> register int __e asm("r0");                                                           \ 
> 
> switch (sizeof(*(__p))) {                                                \ 
> 
> Could it be related to the tuning, e.g. I'm somehow defining a wrong toolchain in my machine configuration [2] and it fails to build? I was thinking about the tune-cortexa7.inc include, though it seems to me that the apq8009 is a cortexa7 [3]: 
> 
> _[DIEGO SANTA CRUZ] OTHER COMMITS FROM POST 3.18 THAT YOU MAY NEED TO BACKPORT ARE THE FOLLOWING (START FROM BOTTOM OF LIST) _ 
> 
> 474c90156c8dcc2fa815e6716cc9394d7930cb9c give up on gcc ilog2() constant optimizations 
> 
> cb984d101b30eb7478d32df56a0023e4603cba7f compiler-gcc: integrate the various compiler-gcc[345].h files 
> 
> f6d133f877c8bb0a0934dc8c521c758ee771e901 compiler-gcc.h: neatening 
> 
> 7829fb09a2b4268b30dd9bc782fa5ebee278b137 lib: make memzero_explicit more robust against dead store elimination 
> 
> cb4188ac8e5779f66b9f55888ac2c75b391cde44 compiler: introduce __alias(symbol) shortcut 
> 
> 0b053c9518292705736329a8fe20ef4686ffc8e9 lib: memzero_explicit: use barrier instead of OPTIMIZER_HIDE_VAR 
> 
> ee91ef6173e81819f5ff610c2485802081635657 bufferhead: force inlining of buffer head flag operations 
> 
> cc7fce80229067890365c1ee196be5d304d36dea mtd: blkdevs: fix switch-bool compilation warning 
> 
>> The Qualcomm Snapdragon 212 APQ8009 is an entry level SoC for Android based tablets and smartphones. It contains four ARM Cortex-A7 CPU cores (quad core) 
> 
> [1]: https://github.com/parrot-opensource/skycontroller3-opensource/blob/master/sources/linux-3.18.31/linux.config 
> 
> [2]: https://github.com/JonasVautherin/meta-skycontroller3/blob/main/conf/machine/skycontroller3.conf#L32 
> 
> [3]: https://www.notebookcheck.net/Qualcomm-Snapdragon-212-APQ8009-SoC-Benchmarks-and-Specs.169859.0.html 
> 
> Best, 
> 
> On Sat, Jan 23, 2021 at 11:06 AM Paul Barker <pbarker@konsulko.com> wrote: 
> 
> On Sat, 23 Jan 2021 at 02:29, Jonas Vautherin <jonas.vautherin@gmail.com> wrote:
>> 
>> As a learning experience, I am trying to create a BSP for a device I own and whose downstream kernel is published. The device in question is the Parrot Skycontroller3, and the sources are available here.
>> 
>> Let me start by sharing my issue. When I build the kernel with `bitbake virtual/kernel`, it fails with errors like:
>> 
>> ```
>> |   AS      arch/arm/lib/backtrace.o
>> |   AS      arch/arm/lib/bswapsdi2.o
>> |   AS      arch/arm/lib/call_with_stack.o
>> | /tmp/ccz8jKgm.s: Assembler messages:
>> | /tmp/ccz8jKgm.s:985: Error: .err encountered
>> | /tmp/ccz8jKgm.s:1033: Error: .err encountered
>> | /tmp/ccz8jKgm.s:6812: Error: .err encountered
>> ```
>> 
>> My layer is available here.
>> 
>> I created it getting inspiration from meta-raspberrypi and meta-qti-bsp, which seems to have the same CPU: apq8009. According to the Parrot sources, my device runs a Qualcomm apq8009/msm89090 cpu. In my repo, I use as a defconfig file the linux.config that is available in the Parrot sources (I copied it in my kernel recipe under `files/defconfig` and added it to SRC_URI).
>> 
>> The Parrot sources also refer to `LINUX_DEFAULT_CONFIG_TARGET := msm8909_defconfig`, so I tried to set `KBUILD_DEFCONFIG = "msm8909_defconfig"`, but that is failing with different errors, such as:
>> 
>> ```
>> error: 'VM_ARM_DMA_CONSISTENT' undeclared (first use in this function); did you mean 'DMA_ATTR_NON_CONSISTENT'?
>> ```
>> 
>> or
>> 
>> ```
>> error: 'L_PTE_YOUNG' undeclared
>> ```
>> 
>> As a side note, their `drivers/Kconfig` seemed invalid, so I patched it.
>> 
>> I am a bit lost now, not completely sure where my issues come from. I realize that changing the defconfig has quite some impact (I get different errors), and also that my machine configuration may be completely wrong (I am essentially guessing from the fact that it is an apq8009/msm8909, but for instance the tuning I just copied from meta-qti-bsp, which may be invalid).
>> 
>> I would be glad if I could get hints about debugging this. Again, it is really a learning project: I would like to learn how to create a BSP from a downstream kernel.
> 
> I think setting `KBUILD_DEFCONFIG = "msm8909_defconfig"` is likely the
> correct approach here. What you may be missing though is the correct
> value for KCONFIG_MODE. By default, the supplied defconfig file is
> copied to .config but dependencies between config options aren't
> resolved. You need to set `KCONFIG_MODE = "--alldefconfig"` to get the
> equivalent of `make msm8909_defconfig` to occur. See
> https://github.com/agherzan/meta-raspberrypi/blob/master/recipes-kernel/linux/linux-raspberrypi.inc#L19
> for an idea of how this is done for Raspberry Pi.
> 
> Thanks,
> 
> -- 
> Paul Barker
> Konsulko Group

-- 
Diego Santa Cruz, PhD
Technology Architect
spinetix.com [4] 

-- 
Diego Santa Cruz, PhD
Technology Architect
spinetix.com 

>> 



 

Links:
------
[1]
https://elixir.bootlin.com/linux/v3.18.31/source/arch/arm/include/asm/uaccess.h#L219
[2] http://lists.yoctoproject.org
[3]
https://gcc.gnu.org/onlinedocs/gcc-9.3.0/gcc/Local-Register-Variables.html
[4] http://spinetix.com

--=_192323ad42c62a2b7dc4f0ba7dd3e414
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Ge=
neva,sans-serif'>
<p>Hi,</p>
<p>We've been using 3.18 (Android) kernels on our LuneOS project with Yoct=
o, so we carry the various patches to get it to build with newer GCC's.</p>
<p>See: https://github.com/shr-distribution/linux/commits/tissot/3.18/hali=
um-7.1 for some inspiration :)</p>
<p>For older 3.4 kernels you would need more patches obviously:</p>
<p><a href=3D"https://github.com/shr-distribution/linux/commits/hammerhead=
/3.4/halium-5.1">https://github.com/shr-distribution/linux/commits/hammerhe=
ad/3.4/halium-5.1</a></p>
<p><br />Best regards,<br />Herman</p>
<p>On 2021-02-01 08:04, Diego Santa Cruz via lists.yoctoproject.org wrote:=
</p>
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0"><!-- html ignored --> <!-- head ignored --><!-- meta =
ignored --> <!-- meta ignored -->
<div class=3D"WordSection1">
<div>
<div style=3D"border: none; border-top: solid #E1E1E1 1.0pt; padding: 3.0p=
t 0cm 0cm 0cm;">
<p class=3D"MsoNormal"><strong>From:</strong> Jonas Vautherin &lt;jonas.va=
utherin@gmail.com&gt; <br /> <strong>Sent:</strong> 31 January 2021 22:23<b=
r /> <strong>To:</strong> Aaron Cohen &lt;aaron@assonance.org&gt;<br /> <st=
rong>Cc:</strong> Diego Santa Cruz &lt;Diego.SantaCruz@spinetix.com&gt;; Pa=
ul Barker &lt;pbarker@konsulko.com&gt;; Yocto-mailing-list &lt;yocto@lists.=
yoctoproject.org&gt;<br /> <strong>Subject:</strong> Re: [yocto] Writing a =
BSP from downstream kernel sources<!-- o ignored --></p>
</div>
</div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
<div>
<p class=3D"MsoNormal">Thanks Aaron!<!-- o ignored --></p>
<div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
</div>
<div>
<p class=3D"MsoNormal">That seems to remove the log2 warnings, but it seem=
s like they were not related to those "Assembler" errors, e.g.:<!-- o ignor=
ed --></p>
</div>
<div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
</div>
<div>
<p class=3D"MsoNormal">```<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal">| /tmp/ccbtfgo7.s: Assembler messages:<br /> | /tmp=
/ccbtfgo7.s:2011: Error: .err encountered<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal">```<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
</div>
<div>
<p class=3D"MsoNormal">I think I need to fix them like Diego was suggestin=
g, but I have trouble relating the error to a source file...<!-- o ignored =
--></p>
<p class=3D"MsoNormal"><strong><em>[Diego Santa Cruz] It may be easier to =
build the SDK with a dummy kernel (i.e. no kernel, setting PREFERRED_PROVID=
ER_virtual/kernel ?=3D "linux-dummy" in conf/local.conf) and use that SDK t=
o get the kernel building outside of Yocto. If you run the make with V=3D1 =
you will see the full compiler command and you can re-run it manually. The =
use the -S (and eventually -E) line and you can inspect the faulty assembly=
 file or source and track the original location. At least that is the route=
 I took and worked well for me.<!-- o ignored --></em></strong></p>
<p class=3D"MsoNormal"><strong><em>I think you are using kernel 3.18.31, i=
n that version it is the __put_user_check macro you need to fix, <a href=3D=
"https://elixir.bootlin.com/linux/v3.18.31/source/arch/arm/include/asm/uacc=
ess.h#L219" target=3D"_blank" rel=3D"noopener noreferrer"> https://elixir.b=
ootlin.com/linux/v3.18.31/source/arch/arm/include/asm/uaccess.h#L219</a><!-=
- o ignored --></em></strong></p>
<p class=3D"MsoNormal"><strong><em><!-- o ignored -->&nbsp;</em></strong><=
/p>
<p class=3D"MsoNormal"><strong><em>A hand written patch (not tested at all=
!) that should solve your problem is<!-- o ignored --></em></strong></p>
<p class=3D"MsoNormal" style=3D"margin-left: 5.25pt;">--- arch/arm/include=
/asm/uaccess.h<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"margin-left: 5.25pt;">+++ arch/arm/include=
/asm/uaccess.h<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"margin-left: 5.25pt;">#define __put_user_c=
heck(x,p)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"margin-left: 5.25pt;">&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ({&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"margin-left: 5.25pt;">&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned long __lim=
it =3D current_thread_info()-&gt;addr_limit - 1; \<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"margin-left: 5.25pt;">&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const typeof(*(p)) =
__user *__tmp_p =3D (p);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"margin-left: 5.25pt;">-&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; register const typ=
eof(*(p)) __r2 asm("r2") =3D (x); \<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"margin-left: 5.25pt;">+&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; register typeof(*(p)) __=
r2 asm("r2") =3D (x);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; \<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"margin-left: 5.25pt;">&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; register const type=
of(*(p)) __user *__p asm("r0") =3D __tmp_p; \<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"margin-left: 5.25pt;">&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; register unsigned l=
ong __l asm("r1") =3D __limit;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \<!--=
 o ignored --></p>
<p class=3D"MsoNormal" style=3D"margin-left: 5.25pt;">&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; register int __e as=
m("r0");&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \<!-- o ignored --=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; switch (sizeof(*(__p))) {&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \<!-- o ignored --></p>
</div>
</div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
<div>
<p class=3D"MsoNormal">On Sat, Jan 30, 2021 at 8:29 AM Aaron Cohen &lt;<a =
href=3D"mailto:aaron@assonance.org">aaron@assonance.org</a>&gt; wrote:<!-- =
o ignored --></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">Actually, I found the upstream patch I backported, =
which you're probably better off using (same diff though).<!-- o ignored --=
></p>
</div>
<div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://lore.kernel.org/patchwork/patch/=
773330/" target=3D"_blank" rel=3D"noopener noreferrer">https://lore.kernel.=
org/patchwork/patch/773330/</a><!-- o ignored --></p>
</div>
</div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
<div>
<p class=3D"MsoNormal">On Sat, Jan 30, 2021 at 2:26 AM Joel A Cohen via <a=
 href=3D"http://lists.yoctoproject.org" target=3D"_blank" rel=3D"noopener n=
oreferrer"> lists.yoctoproject.org</a> &lt;aaron=3D<a href=3D"mailto:assona=
nce.org@lists.yoctoproject.org">assonance.org@lists.yoctoproject.org</a>&gt=
; wrote:<!-- o ignored --></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">I'm not sure if this is your issue, but I had a sim=
ilar issue ilog2 and the disassembler and fixed it by backporting this patc=
h.<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
</div>
<div>
<p class=3D"MsoNormal">No guarantees, but perhaps it will help.<!-- o igno=
red --></p>
</div>
<div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
</div>
<div>
<p class=3D"MsoNormal">--Aaron<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
</div>
</div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
<div>
<div>
<p class=3D"MsoNormal">On Fri, Jan 29, 2021 at 9:51 PM Jonas Vautherin &lt=
;<a href=3D"mailto:jonas.vautherin@gmail.com">jonas.vautherin@gmail.com</a>=
&gt; wrote:<!-- o ignored --></p>
</div>
<blockquote style=3D"border: none; border-left: solid #CCCCCC 1.0pt; paddi=
ng: 0cm 0cm 0cm 6.0pt; margin-left: 4.8pt; margin-right: 0cm;">
<div>
<p class=3D"MsoNormal">Thanks a lot for the advice! However, I can't seem =
to find a `const` that I can simply remove. To give more context, here is t=
he log output around such an error (it seems like it is often surrounded by=
 this log2.h warning, by the way):<!-- o ignored --></p>
<div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
</div>
<blockquote style=3D"border: none; border-left: solid #CCCCCC 1.0pt; paddi=
ng: 0cm 0cm 0cm 6.0pt; margin-left: 4.8pt; margin-right: 0cm;">
<p class=3D"MsoNormal">| In file included from /home/jones/Documents/yocto=
/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/kern=
el.h:11,<br /> | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroll=
er3/kernel-source/include/linux/kallsyms.h:9,<br /> | &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/jones/Documents/yocto/p=
oky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/ftrace=
.h:10,<br /> | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller=
3/kernel-source/kernel/extable.c:18:<br /> | /home/jones/Documents/yocto/po=
ky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/log2.h:=
22:1: warning: ignoring attribute 'noreturn' because it conflicts with attr=
ibute 'const' [-Wattributes]<br /> | &nbsp; &nbsp;22 | int ____ilog2_NaN(vo=
id);<br /> | &nbsp; &nbsp; &nbsp; | ^~~<br /> | &nbsp; CC &nbsp; &nbsp; &nb=
sp;fs/fat/dir.o<br /> | In file included from /home/jones/Documents/yocto/p=
oky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/kernel=
.h:11,<br /> | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller=
3/kernel-source/include/linux/list.h:8,<br /> | &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/jones/Documents/yocto/poky/bu=
ild/tmp/work-shared/skycontroller3/kernel-source/include/linux/module.h:9,<=
br /> | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from =
/home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontroller3/kerne=
l-source/fs/fat/dir.c:16:<br /> | /home/jones/Documents/yocto/poky/build/tm=
p/work-shared/skycontroller3/kernel-source/include/linux/log2.h:22:1: warni=
ng: ignoring attribute 'noreturn' because it conflicts with attribute 'cons=
t' [-Wattributes]<br /> | &nbsp; &nbsp;22 | int ____ilog2_NaN(void);<br /> =
| &nbsp; &nbsp; &nbsp; | ^~~<br /> | &nbsp; CC &nbsp; &nbsp; &nbsp;block/de=
adline-iosched.o<br /> | In file included from /home/jones/Documents/yocto/=
poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux/kerne=
l.h:11,<br /> | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;from /home/jones/Documents/yocto/poky/build/tmp/work-shared/skycontrolle=
r3/kernel-source/block/deadline-iosched.c:6:<br /> | /home/jones/Documents/=
yocto/poky/build/tmp/work-shared/skycontroller3/kernel-source/include/linux=
/log2.h:22:1: warning: ignoring attribute 'noreturn' because it conflicts w=
ith attribute 'const' [-Wattributes]<br /> | &nbsp; &nbsp;22 | int ____ilog=
2_NaN(void);<br /> | &nbsp; &nbsp; &nbsp; | ^~~<br /> | /tmp/cc52vFrQ.s: As=
sembler messages:<br /> | /tmp/cc52vFrQ.s:2683: Error: .err encountered<br =
/> | /tmp/cc52vFrQ.s:2927: Error: .err encountered<br /> | &nbsp; LD &nbsp;=
 &nbsp; &nbsp;sound/sparc/built-in.o<br /> | &nbsp; LD &nbsp; &nbsp; &nbsp;=
sound/spi/built-in.o<br /> | make[3]: *** [/home/jones/Documents/yocto/poky=
/build/tmp/work-shared/skycontroller3/kernel-source/scripts/Makefile.build:=
257: block/scsi_ioctl.o] Error 1<!-- o ignored --></p>
</blockquote>
<div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
</div>
<div>
<p class=3D"MsoNormal">I pasted the full output here, if that can help:&nb=
sp;<a href=3D"https://paste.ubuntu.com/p/KqN8nVWmvv/" target=3D"_blank" rel=
=
=3D"noopener noreferrer">https://paste.ubuntu.com/p/KqN8nVWmvv/</a>. The l=
ines that seem to get the log2 warning are:<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
</div>
<div>
<p class=3D"MsoNormal">```<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal">extern __attribute__((const, noreturn))<!-- o ignor=
ed --></p>
</div>
<p class=3D"MsoNormal">int ____ilog2_NaN(void);<!-- o ignored --></p>
<div>
<p class=3D"MsoNormal">&nbsp;```<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
</div>
<div>
<p class=3D"MsoNormal">So there is a const there, but well... not sure wha=
t to do with it :-).<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
</div>
<div>
<p class=3D"MsoNormal">Best,<!-- o ignored --></p>
</div>
</div>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Jan 25, 2021 at 9:00 AM Diego Santa Cruz &l=
t;<a href=3D"mailto:Diego.SantaCruz@spinetix.com">Diego.SantaCruz@spinetix.=
com</a>&gt; wrote:<!-- o ignored --></p>
</div>
<blockquote style=3D"border: none; border-left: solid #CCCCCC 1.0pt; paddi=
ng: 0cm 0cm 0cm 6.0pt; margin-left: 4.8pt; margin-right: 0cm;">
<div>
<div>
<div style=3D"border: none; border-left: solid windowtext 1.5pt; padding: =
0cm 0cm 0cm 4.0pt; border-color: currentcolor currentcolor currentcolor blu=
e;">
<div>
<div style=3D"border: none; border-top: solid windowtext 1.0pt; padding: 3=
.0pt 0cm 0cm 0cm; border-color: currentcolor currentcolor;">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;"><strong>From:</strong> <a href=3D"mailto:yocto@lists.yoctopro=
ject.org">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@list=
s.yoctoproject.org">yocto@lists.yoctoproject.org</a>&gt; <strong>On Behalf =
Of </strong>Jonas Vautherin via <a href=3D"http://lists.yoctoproject.org" t=
arget=3D"_blank" rel=3D"noopener noreferrer"> lists.yoctoproject.org</a><br=
 /> <strong>Sent:</strong> 24 January 2021 14:30<br /> <strong>To:</strong>=
 Jonas Vautherin &lt;<a href=3D"mailto:jonas.vautherin@gmail.com">jonas.vau=
therin@gmail.com</a>&gt;<br /> <strong>Cc:</strong> Paul Barker &lt;<a href=
=
=3D"mailto:pbarker@konsulko.com">pbarker@konsulko.com</a>&gt;; Yocto-maili=
ng-list &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoc=
toproject.org</a>&gt;<br /> <strong>Subject:</strong> Re: [yocto] Writing a=
 BSP from downstream kernel sources<!-- o ignored --></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">&nbsp;<!-- o ignored --></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">Just to close this: it seems like the gcc-cross-arm used by y=
octo gatesgarth is too new for that specific downstream kernel (3.18.31).<!=
-- o ignored --></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">&nbsp;<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">The goal was to get a proper BSP package for this device for =
a modern yocto, so I don't think I will try with an older version of Yocto.=
 If I compile an old gcc as part of a custom Yocto layer (on gatesgarth), I=
 am guessing that I will have issues creating a distro that runs both on RP=
i and on that older device (because RPi will have a newer kernel and gcc, a=
nd the skycontroller will use older ones). I also guess that the downstream=
 dts won't work with a modern kernel, and I would not know how to write one=
 myself for that apq8009 chip.<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">&nbsp;<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">Hence, I'm giving up. Thanks a lot for the help :-).<!-- o ig=
nored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;"><strong><em><span>[Diego Santa Cruz] Wait! </span>You may be =
able to get it working, see below.</em></strong><!-- o ignored --></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">&nbsp;<!-- o ignored --></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">On Sat, Jan 23, 2021 at 2:07 PM Jonas Vautherin via <a href=
=3D"http://lists.yoctoproject.org" target=3D"_blank" rel=3D"noopener noref=
errer">lists.yoctoproject.org</a> &lt;jonas.vautherin=3D<a href=3D"mailto:g=
mail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; w=
rote:<!-- o ignored --></p>
</div>
<blockquote style=3D"border: none; border-left: solid windowtext 1.0pt; pa=
dding: 0cm 0cm 0cm 6.0pt; border-color: currentcolor currentcolor currentco=
lor #cccccc; margin: 5.0pt 0cm 5.0pt 4.8pt;">
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">Thanks a lot for the answer!<!-- o ignored --></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">&nbsp;<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">It seems like using `KCONFIG_MODE =3D "--alldefconfig"` with =
`KBUILD_DEFCONFIG =3D "msm8909_defconfig"` now ends up with the same kind o=
f errors as when I use the defconfig from the downstream kernel [1], i.e.:<=
!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">&nbsp;<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;"><strong><em>[Diego Santa Cruz] I happen to be doing a similar=
 kind of work, getting an even older (2.6.37+) downstream kernel for an ARM=
 machine to compile with recent GCC in Yocto, in my case GCC 9.3 from dunfe=
ll. There are a few fixes and backports necessary to make it happen and boo=
t. I'm not done with the work yet, so I do not know how stable it is, but I=
 have it booting.</em></strong><!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">```<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">| /tmp/ccz8jKgm.s: Assembler messages:<br /> | /tmp/ccz8jKgm.=
s:985: Error: .err encountered<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">```<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;"><strong><em>[Diego Santa Cruz] The fix here is rather simple =
once you understand what's going on, the problem is abusive use of const fo=
r register variables, see <a href=3D"https://gcc.gnu.org/onlinedocs/gcc-9.3=
.0/gcc/Local-Register-Variables.html" target=3D"_blank" rel=3D"noopener nor=
eferrer"> https://gcc.gnu.org/onlinedocs/gcc-9.3.0/gcc/Local-Register-Varia=
bles.html</a> so when put_user() is used for a literal constant value it ge=
ts assigned the wrong register, so just remove the const qualifier from the=
 put_user() register variable assignment for the value argument. For my old=
er kernel the patch is like this.</em></strong><!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto; margin-left: 16.8pt;">--- arch/arm/include/asm/uaccess.h<!-- o=
 ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto; margin-left: 16.8pt;">+++ arch/arm/include/asm/uaccess.h <!-- =
o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto; margin-left: 16.8pt;">@@ -145,7 +145,7 @@<!-- o ignored --></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto; margin-left: 16.8pt;">&nbsp;#define put_user(x,p)&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \<!-- o ignored --=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto; margin-left: 16.8pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ({&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto; margin-left: 16.8pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; register=
 const typeof(*(p)) __r2 asm("r2") =3D (x); \<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto; margin-left: 16.8pt;">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; register typeo=
f(*(p)) __r2 asm("r2") =3D (x);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto; margin-left: 16.8pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg=
ister const typeof(*(p)) __user *__p asm("r0") =3D (p);\<!-- o ignored --><=
/p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto; margin-left: 16.8pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg=
ister int __e asm("r0");&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \<=
!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; switch (sizeof(*(__p))) {&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; \<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">&nbsp;<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">Could it be related to the tuning, e.g. I'm somehow defining =
a wrong toolchain in my machine configuration [2] and it fails to build? I =
was thinking about the tune-cortexa7.inc include, though it seems to me tha=
t the apq8009 is a cortexa7 [3]:<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">&nbsp;<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;"><strong><em>[Diego Santa Cruz] Other commits from post 3.18 t=
hat you may need to backport are the following (start from bottom of list) =
</em></strong><!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">474c90156c8dcc2fa815e6716cc9394d7930cb9c give up on gcc ilog2=
() constant optimizations<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">cb984d101b30eb7478d32df56a0023e4603cba7f compiler-gcc: integr=
ate the various compiler-gcc[345].h files<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">f6d133f877c8bb0a0934dc8c521c758ee771e901 compiler-gcc.h: neat=
ening<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">7829fb09a2b4268b30dd9bc782fa5ebee278b137 lib: make memzero_ex=
plicit more robust against dead store elimination<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">cb4188ac8e5779f66b9f55888ac2c75b391cde44 compiler: introduce =
__alias(symbol) shortcut<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">0b053c9518292705736329a8fe20ef4686ffc8e9 lib: memzero_explici=
t: use barrier instead of OPTIMIZER_HIDE_VAR<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">ee91ef6173e81819f5ff610c2485802081635657 bufferhead: force in=
lining of buffer head flag operations<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">cc7fce80229067890365c1ee196be5d304d36dea mtd: blkdevs: fix sw=
itch-bool compilation warning<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">&nbsp;<!-- o ignored --></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">&nbsp;<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">&gt;&nbsp;The Qualcomm Snapdragon 212 APQ8009 is an entry lev=
el SoC for Android based tablets and smartphones. It contains four ARM Cort=
ex-A7 CPU cores (quad core)<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">&nbsp;<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">[1]:&nbsp;<a href=3D"https://github.com/parrot-opensource/sky=
controller3-opensource/blob/master/sources/linux-3.18.31/linux.config" targ=
et=3D"_blank" rel=3D"noopener noreferrer">https://github.com/parrot-opensou=
rce/skycontroller3-opensource/blob/master/sources/linux-3.18.31/linux.confi=
g</a><!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">[2]:&nbsp;<a href=3D"https://github.com/JonasVautherin/meta-s=
kycontroller3/blob/main/conf/machine/skycontroller3.conf#L32" target=3D"_bl=
ank" rel=3D"noopener noreferrer">https://github.com/JonasVautherin/meta-sky=
controller3/blob/main/conf/machine/skycontroller3.conf#L32</a><!-- o ignore=
d --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">[3]:&nbsp;<a href=3D"https://www.notebookcheck.net/Qualcomm-S=
napdragon-212-APQ8009-SoC-Benchmarks-and-Specs.169859.0.html" target=3D"_bl=
ank" rel=3D"noopener noreferrer">https://www.notebookcheck.net/Qualcomm-Sna=
pdragon-212-APQ8009-SoC-Benchmarks-and-Specs.169859.0.html</a><!-- o ignore=
d --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">&nbsp;<!-- o ignored --></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">Best,<!-- o ignored --></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">&nbsp;<!-- o ignored --></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">On Sat, Jan 23, 2021 at 11:06 AM Paul Barker &lt;<a href=3D"m=
ailto:pbarker@konsulko.com">pbarker@konsulko.com</a>&gt; wrote:<!-- o ignor=
ed --></p>
</div>
<blockquote style=3D"border: none; border-left: solid windowtext 1.0pt; pa=
dding: 0cm 0cm 0cm 6.0pt; border-color: currentcolor currentcolor currentco=
lor #cccccc; margin: 5.0pt 0cm 5.0pt 4.8pt;">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;">On Sat, 23 Jan 2021 at 02:29, Jonas Vautherin &lt;<a href=3D"=
mailto:jonas.vautherin@gmail.com">jonas.vautherin@gmail.com</a>&gt; wrote:<=
br /> &gt;<br /> &gt; As a learning experience, I am trying to create a BSP=
 for a device I own and whose downstream kernel is published. The device in=
 question is the Parrot Skycontroller3, and the sources are available here.=
<br /> &gt;<br /> &gt; Let me start by sharing my issue. When I build the k=
ernel with `bitbake virtual/kernel`, it fails with errors like:<br /> &gt;<=
br /> &gt; ```<br /> &gt; |&nbsp; &nbsp;AS&nbsp; &nbsp; &nbsp; arch/arm/lib=
/backtrace.o<br /> &gt; |&nbsp; &nbsp;AS&nbsp; &nbsp; &nbsp; arch/arm/lib/b=
swapsdi2.o<br /> &gt; |&nbsp; &nbsp;AS&nbsp; &nbsp; &nbsp; arch/arm/lib/cal=
l_with_stack.o<br /> &gt; | /tmp/ccz8jKgm.s: Assembler messages:<br /> &gt;=
 | /tmp/ccz8jKgm.s:985: Error: .err encountered<br /> &gt; | /tmp/ccz8jKgm.=
s:1033: Error: .err encountered<br /> &gt; | /tmp/ccz8jKgm.s:6812: Error: .=
err encountered<br /> &gt; ```<br /> &gt;<br /> &gt; My layer is available =
here.<br /> &gt;<br /> &gt; I created it getting inspiration from meta-rasp=
berrypi and meta-qti-bsp, which seems to have the same CPU: apq8009. Accord=
ing to the Parrot sources, my device runs a Qualcomm apq8009/msm89090 cpu. =
In my repo, I use as a defconfig file the linux.config that is available in=
 the Parrot sources (I copied it in my kernel recipe under `files/defconfig=
` and added it to SRC_URI).<br /> &gt;<br /> &gt; The Parrot sources also r=
efer to `LINUX_DEFAULT_CONFIG_TARGET :=3D msm8909_defconfig`, so I tried to=
 set `KBUILD_DEFCONFIG =3D "msm8909_defconfig"`, but that is failing with d=
ifferent errors, such as:<br /> &gt;<br /> &gt; ```<br /> &gt; error: 'VM_A=
RM_DMA_CONSISTENT' undeclared (first use in this function); did you mean 'D=
MA_ATTR_NON_CONSISTENT'?<br /> &gt; ```<br /> &gt;<br /> &gt; or<br /> &gt;=
<br /> &gt; ```<br /> &gt; error: 'L_PTE_YOUNG' undeclared<br /> &gt; ```<b=
r /> &gt;<br /> &gt; As a side note, their `drivers/Kconfig` seemed invalid=
, so I patched it.<br /> &gt;<br /> &gt; I am a bit lost now, not completel=
y sure where my issues come from. I realize that changing the defconfig has=
 quite some impact (I get different errors), and also that my machine confi=
guration may be completely wrong (I am essentially guessing from the fact t=
hat it is an apq8009/msm8909, but for instance the tuning I just copied fro=
m meta-qti-bsp, which may be invalid).<br /> &gt;<br /> &gt; I would be gla=
d if I could get hints about debugging this. Again, it is really a learning=
 project: I would like to learn how to create a BSP from a downstream kerne=
l.<br /> <br /> I think setting `KBUILD_DEFCONFIG =3D "msm8909_defconfig"` =
is likely the<br /> correct approach here. What you may be missing though i=
s the correct<br /> value for KCONFIG_MODE. By default, the supplied defcon=
fig file is<br /> copied to .config but dependencies between config options=
 aren't<br /> resolved. You need to set `KCONFIG_MODE =3D "--alldefconfig"`=
 to get the<br /> equivalent of `make msm8909_defconfig` to occur. See<br /=
> <a href=3D"https://github.com/agherzan/meta-raspberrypi/blob/master/recip=
es-kernel/linux/linux-raspberrypi.inc#L19" target=3D"_blank" rel=3D"noopene=
r noreferrer">https://github.com/agherzan/meta-raspberrypi/blob/master/reci=
pes-kernel/linux/linux-raspberrypi.inc#L19</a><br /> for an idea of how thi=
s is done for Raspberry Pi.<br /> <br /> Thanks,<br /> <br /> -- <br /> Pau=
l Barker<br /> Konsulko Group<!-- o ignored --></p>
</blockquote>
</div>
</blockquote>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto;"><br /> <span style=3D"font-size: 9.0pt; font-family: 'Arial',=
sans-serif;">-- <br /> <strong>Diego Santa Cruz, PhD<br /> </strong><span s=
tyle=3D"color: gray;">Technology Architect<br /> <a href=3D"http://spinetix=
.com" target=3D"_blank" rel=3D"noopener noreferrer">spinetix.com</a></span>=
</span><!-- o ignored --></p>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom: 12.0pt;"><br /> <br /> <!--=
 o ignored --></p>
</blockquote>
</div>
<p class=3D"MsoNormal"><br /> <span style=3D"font-size: 9.0pt; font-family=
: 'Arial',sans-serif;">-- <br /> <strong>Diego Santa Cruz, PhD<br /> </stro=
ng><span style=3D"color: gray;">Technology Architect<br /> spinetix.com</sp=
an></span><span style=3D"font-size: 12.0pt; font-family: 'Times New Roman',=
serif; color: gray;"><!-- o ignored --></span></p>
<p class=3D"MsoNormal"><!-- o ignored -->&nbsp;</p>
<div style=3D"border: none; border-left: solid blue 1.5pt; padding: 0cm 0c=
m 0cm 4.0pt;">
<div>
<blockquote style=3D"border: none; border-left: solid #CCCCCC 1.0pt; paddi=
ng: 0cm 0cm 0cm 6.0pt; margin-left: 4.8pt; margin-right: 0cm;">
<div>
<blockquote style=3D"border: none; border-left: solid #CCCCCC 1.0pt; paddi=
ng: 0cm 0cm 0cm 6.0pt; margin-left: 4.8pt; margin-right: 0cm;">
<p class=3D"MsoNormal" style=3D"margin-bottom: 12.0pt;"><!-- o ignored -->=
&nbsp;</p>
</blockquote>
</div>
</blockquote>
</div>
</div>
</div>
<!-- html ignored --><br />
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><br /> <br /> </div>
</blockquote>
<p><br /></p>

</body></html>

--=_192323ad42c62a2b7dc4f0ba7dd3e414--
