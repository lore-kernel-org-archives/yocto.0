Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82871E00B3D; Thu, 24 Aug 2017 14:35:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D73AE0090A
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 14:35:21 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1dkzmP-00039P-PP
	for yocto@yoctoproject.org; Thu, 24 Aug 2017 23:35:09 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Ferry Toth <ftoth@telfort.nl>
Date: Thu, 24 Aug 2017 21:34:56 +0000 (UTC)
Message-ID: <onngq0$bic$1@blaine.gmane.org>
References: <onj82v$64m$1@blaine.gmane.org>
	<7b1dbafb-9cdb-c64b-aed7-37f6b26d8b50@gmail.com>
	<onkni5$c4n$1@blaine.gmane.org> <onks4d$r7b$1@blaine.gmane.org>
	<e516cd1c-786a-18f5-7ea6-09da77514d7c@gmail.com>
	<onl099$de$1@blaine.gmane.org>
	<c05477ea-cefe-7532-5694-8334566bd1a3@gmail.com>
	<onlt2c$u3m$1@blaine.gmane.org>
	<277fb613-dcc1-255e-082e-8b3506945255@denx.de>
	<onmj6v$7n0$1@blaine.gmane.org>
	<b6f23560-27d3-a0bf-5088-eb9cd236d3f0@denx.de>
	<onmv7p$5j9$1@blaine.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Pan/0.141 (Tarzan's Death; 168b179 git.gnome.org/pan2)
Subject: Re: Problems building U-Boot for x86_64
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
X-List-Received-Date: Thu, 24 Aug 2017 21:35:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Op Thu, 24 Aug 2017 16:35:05 +0000, schreef Ferry Toth:

> Op Thu, 24 Aug 2017 17:48:55 +0200, schreef Stefano Babic:
> 
>> Hi Ferry,
>> 
>> On 24/08/2017 15:09, Ferry Toth wrote:
>>> Op Thu, 24 Aug 2017 12:40:57 +0200, schreef Stefano Babic:
>>> 
>>>> Hi Ferry,
>>>>
>>>> On 24/08/2017 08:51, Ferry Toth wrote:
>>>>> Op Wed, 23 Aug 2017 21:07:56 -0700, schreef Khem Raj:
>>>>>
>>>>>> On 8/23/17 3:40 PM, Ferry Toth wrote:
>>>>>>> Op Wed, 23 Aug 2017 14:51:55 -0700, schreef Khem Raj:
>>>>>>>
>>>>>>>> On 8/23/17 2:29 PM, Ferry Toth wrote:
>>>>>>>>> Ferry Toth wrote:
>>>>>>>>>
>>>>>>>>>> Khem Raj wrote:
>>>>>>>>>>
>>>>>>>>>>> On 8/22/17 11:41 PM, Ferry Toth wrote:
>>>>>>>>>>>> I am having trouble building a specific U-Boot version with
>>>>>>>>>>>> Yocto.
>>>>>>>>>>>> Outside of Yocto on 64 bit Ubuntu 17.04 with multilib it
>>>>>>>>>>>> builds fine.
>>>>>>>>>>>>
>>>>>>>>>>>> I am extending meta-intel-edison to build a 64 bit Poke
>>>>>>>>>>>> Morty,
>>>>>>>>>>>> with a vanilla 64-bit kernel (4.12). This is working quite
>>>>>>>>>>>> well.
>>>>>>>>>>>>
>>>>>>>>>>>> My host is x86_64, the target is core2 with tune=core-64.
>>>>>>>>>>>>
>>>>>>>>>>>> Without 64bit tune I can build U-Boot fine. With 64bit it can
>>>>>>>>>>>> not link, appearently because it needs lbgcc.a
>>>>>>>>>>>
>>>>>>>>>>> what is exact error message ? is it while compiling host bits
>>>>>>>>>>> or target bits ?
>>>>>>>>>>
>>>>>>>>>> The failing line is:
>>>>>>>>>> x86_64-poky-linux-ld.bfd -Bsymbolic -Bsymbolic-functions -m
>>>>>>>>>> elf_i386 --emit- relocs --wrap=__divdi3 --wrap=__udivdi3
>>>>>>>>>> --wrap=__moddi3 --wrap=__umoddi3 -- gc-sections -pie -Bstatic
>>>>>>>>>> --no-dynamic-linker -Ttext 0x01101000 -o u-boot -T u-boot.lds
>>>>>>>>>> arch/x86/cpu/start.o --start-group arch/x86/cpu/built-in.o
>>>>>>>>>> arch/x86/lib/built-in.o board/intel/edison/built-in.o
>>>>>>>>>> cmd/built-in.o common/built-in.o disk/built-in.o
>>>>>>>>>> drivers/built-in.o drivers/dma/built-in.o
>>>>>>>>>> drivers/gpio/built-in.o drivers/i2c/built-in.o
>>>>>>>>>> drivers/mmc/built-in.o drivers/mtd/built-in.o
>>>>>>>>>> drivers/mtd/onenand/built-in.o drivers/mtd/spi/built- in.o
>>>>>>>>>> drivers/net/built-in.o drivers/net/phy/built-in.o
>>>>>>>>>> drivers/pci/built-
>>>>>>>>>> in.o drivers/power/built-in.o drivers/power/battery/built-in.o
>>>>>>>>>> drivers/power/domain/built-in.o
>>>>>>>>>> drivers/power/fuel_gauge/built-in.o
>>>>>>>>>> drivers/power/mfd/built-in.o drivers/power/pmic/built-in.o
>>>>>>>>>> drivers/power/regulator/built-in.o drivers/serial/built-in.o
>>>>>>>>>> drivers/spi/built-in.o drivers/usb/common/built-in.o
>>>>>>>>>> drivers/usb/dwc3/built- in.o drivers/usb/emul/built-in.o
>>>>>>>>>> drivers/usb/eth/built-in.o drivers/usb/gadget/built-in.o
>>>>>>>>>> drivers/usb/gadget/udc/built-in.o drivers/usb/host/built-in.o
>>>>>>>>>> drivers/usb/musb-new/built-in.o drivers/usb/musb/built-in.o
>>>>>>>>>> drivers/usb/phy/built-in.o drivers/usb/ulpi/built-in.o
>>>>>>>>>> dts/built-in.o fs/built-in.o lib/built-in.o net/built-in.o
>>>>>>>>>> test/built-in.o test/dm/built-in.o --end-group
>>>>>>>>>> arch/x86/lib/lib.a -Map u-boot.map ERROR: oe_runmake failed
>>>>>>>>>> arch/x86/lib/built-in.o: In function `__wrap___udivdi3':
>>>>>>>>>> /home/ferry/tmp/edison-intel/my/edison-
>>>>>>>>>> morty/out/linux64/build/tmp/work/edison-poky-linux/u-boot/
> edison-
>>>>>>> v2017.03-
>>>>>>>>>> r0/git/arch/x86/lib/gcc.c:25: undefined reference to
>>>>>>>>>> `__normal___udivdi3'
>>>>>>>>>
>>>>>>>>> I as believe the missing lib is libgcc.a I just my sysroot and
>>>>>>>>> found it here:
>>>>>>>>
>>>>>>>> the linker cmdline above does not link with libgcc and there
>>>>>>>> might be a good reason for that, many standalone applications
>>>>>>>> dont link with libgcc intentionally. You could look into the code
>>>>>>>> and see if it can be written differently such that gcc does not
>>>>>>>> have to invoke a helper function from gcc runtime. Another option
>>>>>>>> is to link with libgcc explicitly
>>>>>>>
>>>>>>> If change my setup to build for a 32bit target, it build u-boot
>>>>>>> without error.
>>>>>>
>>>>>> compiler may not be generating calls for the missing function.
>>>>>
>>>>> That would be a bug then? Regardless if I set tune=core-64 or not
>>>>> the resulting U-Boot should be the same.
>>>>>
>>>>>>> When I build the same git outside yocto on 64bit with multilib
>>>>>>> installed it also builds without error. In that case the make
>>>>>>> command would be: make -j8 edison_defconfig
>>>>>>
>>>>>> same is possible. Can you do readelf -sW gcc.o and see if there is
>>>>>> a undefined reference to __normal___udivdi3
>>>>>>
>>>>> I will do that tonight.
>>>>>
>>>>>>> My conclusion: I have some bb variable set to the wrong value or I
>>>>>>> need to get multilib installed into
>>>>>>> /..../sysroots/x86_64-linux/lib.
>>>>>>>
>>>>>>> So how to do that?
>>>>>>>
>>>>>>>>> sysroots/lib32-edison/usr/lib/i686-pokymllib32-linux/6.2.0/
>>>>>>>>> sysroots/lib32-edison-tcbootstrap/usr/lib/i686-pokymllib32-
>>>>> linux/6.2.0/
>>>>>>>>> sysroots/edison/usr/lib64/x86_64-poky-linux/6.2.0/
>>>>>>>>> sysroots/edison-tcbootstrap/usr/lib64/x86_64-poky-linux/6.2.0/
>>>>>>>>>
>>>>>>>>> How compile log shows:
>>>>>>>>> NOTE: make -j8 CROSS_COMPILE=x86_64-poky-linux-
>>>>>>>>> CC=x86_64-poky-linux-gcc --sysroot=/..../sysroots/edison V=1
>>>>>>>>> HOSTCC=gcc -isystem/..../sysroots/x86_64-linux/usr/include -O2
>>>>>>>>> -pipe -L/..../sysroots/x86_64-linux/usr/lib
>>>>>>>>> -L/..../sysroots/x86_64-linux/lib
>>>>>>>>> -Wl,-rpath-link,/..../sysroots/x86_64-linux/usr/lib
>>>>>>>>> -Wl,-rpath-link,/..../sysroots/x86_64-linux/lib
>>>>>>>>> -Wl,-rpath,/..../sysroots/x86_64-linux/usr/lib
>>>>>>>>> -Wl,-rpath,/..../sysroots/x86_64-linux/lib -Wl,-O1 -C
>>>>>>>>> /..../out/linux64/build/tmp/work/edison-poky-linux/u-boot/
edison-
>>>>>>>>> v2017.03-r0/git
>>>>>>>>> O=/..../out/linux64/build/tmp/work/edison-poky-linux/u-
>>>>>>>>> boot/edison-v2017.03-r0/build edison_defconfig
>>>>>>>>>
>>>>>>>>> (.... my edits to shorten the uninteresting part of the path)
>>>>>>>>>
>>>>>>>>> I would think: --sysroot points to /edison dir which actually
>>>>>>>>> contains libgcc.a, but -i, _l and -W1 options point to host dirs
>>>>>>>>> that don't have the lib.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>>>> I attempted to add multilib, but although that immediately
>>>>>>>>>>>> exposed bugs in other recipes but actually adds libgcc.a, it
>>>>>>>>>>>> does that for the target sysroot only.
>>>>>>>>>>>>
>>>>>>>>>>>> And for some reason, U-Boot is built with the native gcc
>>>>>>>>>>>> (x86_64-linux),
>>>>>>>>>>>> and multilib does not add libgcc.a to that sysroot.
>>>>>>>>>>>>
>>>>>>>>>>>> So, how do I add multilib to -native sysroot, preferably only
>>>>>>>>>>>> to -native and not to the target, as the target has not
>>>>>>>>>>>> further use for it?
>>>>>>>>>>>>
>>>>>>>>>>>> Strangest thing is in u-boot.inc there is:
>>>>>>>>>>>> EXTRA_OEMAKE = 'CROSS_COMPILE=${TARGET_PREFIX}
>>>>>>>>>>>> CC="${TARGET_PREFIX}gcc ${TOOLCHAIN_OPTIONS}" V=1'
>>>>>>>>>>>> EXTRA_OEMAKE += 'HOSTCC="${BUILD_CC} ${BUILD_CFLAGS}
>>>>>>>>>>>> ${BUILD_LDFLAGS}"'
>>>>>>>>>>>>
>>>>>>>>>>>> But when I check my log file:
>>>>>>>>>>>> NOTE: make -j8 CROSS_COMPILE=x86_64-poky-linux-
>>>>>>>>>>>> CC=x86_64-poky-linux- gcc  ......
>>>>>>>>>>>>
>>>>>>>>>>>> So TARGET_PREFIX resolves to x86_64-poky-linux, but I think
>>>>>>>>>>>> my target is core2_64 (or something like that). Is that
>>>>>>>>>>>> normal for U-Boot?
>>>>>>>>>>>
>>>>>>>>>>> thats ok.
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>> I am a little lost, so any help would be greatly appreciated!
>>>>>>>>>>>>
>>>>>>>>>>>> Ferry
>>>>
>>>> This is a known problem in U-Boot for x86 and it is not yet *cleaned*
>>>> solved. U-Boot for x86 is a 32 bit - there are just disadvantages to
>>>> go to 64 bit version because it is overkilling for a bootloader . The
>>>> issue
>>> 
>>> Alright then. But I didn't intend to build a 64 bit U-Boot. I intended
>>> to build a 64 bit image, which consists in the end of 3 binary image,
>>> U- Boot, Linux and rootfs. The bitness of U-Boot should not depend on
>>> either host or target bitness, it should only depend on the
>>> architectures requirements.
>> 
>> Right, but you cannot build a 64-bit U-Boot: it is unsupported. In
>> fact,
>> when U-Boot is built, gcc is called with -march=i386 -m32.
> 
> That is exactly as it should be.
> 
>> If you check any compiled file, you get a 32 bit object, even if you
>> set tune=core-64.
> 
> Exactly, but I will double check, just to see if there is something
> wrong with the recipe.
> 
> 
>>>> is, as you have found, the libgcc.a library, because the library
>>>> supplied with the host distro is used. This is solved in an elegant
>>>> way with other architectures (PowerPC, ARM) because the required
>>>> (just a few) functions taken from libgcc.a are reimplemented in
>>>> U-Boot (see CONFIG_USE_PRIVATE_LIBGCC, too.) . But this was not done
>>>> for X86, because host and target shared (until 64 bit came) the same
>>>> architecture and the host library is taken. However, this breaks in
>>>> Yocto because the generated library (and then, 64 bit) is taken.
>>> 
>>> Still don't get this. When I build outside of Yocto on a 64 bit host,
>>> it just builds. U-Boot's make file already selects the correct target
>>> bitness and finds the correct libraries.
>> 
>> Right, if you have multilib support. Then you have 32-bit version of
>> libgcc.a
>> 
>>> To me that sounds like that building inside Yocto should just work
>>> too,
>>> if I just get the configuration right.
>> 
>> You built for 64 bit - when the arch/x86/Makefile in U-Boot is called,
>> it tries to find the library itself:
>> 
>> $(shell $(CC) $(PLATFORM_CPPFLAGS) -print-libgcc-file-name)
>> 
>> This always results in the 64bit version of the library built by Yocto.
>> So you have all U-Boot objects built with "-m32" (32 bit objects) and
>> it tries to link against 64 bit libgcc.
> 
> But that would also happens on the host platform (building outside
> Yocto)
> and it doesn't. The host does have multilib and in some genious way gcc
> finds the 32 bit lib and links against it.
> 
>> At least, this what I deducted from the errors...
>> 
>> 
>>> And correct me if I'm wrong, to do that that I need to force Yocto to
>>> build 32 bit target, in case of U-Boot (lib32-u-boot?).
>> 
>> This is already done in U-Boot Makefiles. The architecture is
>> overwritten because "m32" is set inside U-Boot Makefile (just for x86).
>> 
>>> Or override tune=core-64 for U-Boot only?
>>> 
>>> Still, when I build on my host outside of Yocto I don't need to do any
>>> of this. And the linker probably uses 32 bit copy of libgcc.a
>>> installed with multilib on my host.
>> 
>> Absolutely right.
> 
> But the host platform is 64 bit, so that probably shows in
> $(PLATFORM_CPPFLAGS). Everything is built 32 bit due to U-Boot's m32
> override. So how does it know where to find the 32 bit lib?
>> 
>>> Hence my question: Yocto has multilib, which in this case installs 32
>>> bit libs into the targets sysroot. And I suspect I need to install 32
>>> bit libs into the -native sysroot. How to do that? All the
>>> documentation I found are related to installing libs into the target
>>> image.
>> 
>> I don't know - I have given up this way because it looks to me messy to
>> have multilib just for getting libgcc.a to link u-boot.
> 
> The patch below is to find a 32 bit version of the library, put it
> somewhere and patch U-Boot to use that. That sounds way more messy than
> installing installing multilib into the -native envirnment.
> 
> Except I am not sure if that can be done.
> 
> I could try to build U-Boot in the sdk or target environment, as that
> has multilib, but probably the U-Boot image will then be misplaced.
> 
> I could also tell bitbake to use the host compiler and environment, but
> that then puts requirement on the hosts gcc alternatives and puts a
> requirement for multilib on the host actually being installed.

I think I get it. The problem is not that I am building for a 64 bit 
target as this is overruled by U-Boot make. The problem is that it needs 
the 32 bit lib in the -native sysroot. And if the following feature 
request https://bugzilla.yoctoproject.org/show_bug.cgi?id=7960 is current 
it is not (yet) possible to add the lib using multilib.

However, on a 32-bit host the -native sysroot would be i686 and the 
target will be crosscompiled to x86-64, except for U-Boot which will 
still overrule that and build 32-bit, with the 32-bit lib now present.

So, on a x86-64 host I need to overrule bitbake detecting the host arch 
and using that for the -native arch and instead build a i686 -native 
sysroot - which should still run on a 64-bit host.

Otherwise, building U-Boot outside Yocto is the most practical solution. 

> 
>>>> The right and cleanest solution should be to fix in U-Boot just as it
>>>> was done with other architectures.
> 
> Yes, as I understand now, it is not even possible to build U-Boot for
> x86 on an arm platform. Strange.
> 
>>> I think I saw something upstreamed related to this, I'd prefer to wait
>>> till that lands.
>> 
>> I have not yet seen it, it looks I missed that fix.

I probably got that mixed up with another issue.

>>> But I will try to let Yocto apply a patch, instead of adding to my
>>> git.
>>> 
>>>> The workaround I used in a couple of projects is to store in my
>>>> custom meta layer a 32 bit copy of libgcc.a and patch U-Boot to use
>>>> this instead of the library in the distro, that is in :
>>>>
>>>>
>>>> diff --git a/arch/x86/lib/Makefile b/arch/x86/lib/Makefile index
>>>> e17f0bb..62764ec 100644 --- a/arch/x86/lib/Makefile +++
>>>> b/arch/x86/lib/Makefile @@ -40,7 +40,9 @@ obj-$(CONFIG_HAVE_FSP) +=
>>>> fsp/
>>>>
>>>>  extra-$(CONFIG_USE_PRIVATE_LIBGCC) += lib.a
>>>>
>>>> -NORMAL_LIBGCC = $(shell $(CC) $(PLATFORM_CPPFLAGS)
>>>> -print-libgcc-file-name) +#NORMAL_LIBGCC = $(shell $(CC)
>>>> $(PLATFORM_CPPFLAGS)
>>>> -print-libgcc-file-name)
>>>> +NORMAL_LIBGCC = $(PWD)/arch/$(ARCH)/lib/libgcc.a
>>>>  OBJCOPYFLAGS := --prefix-symbols=__normal_ $(obj)/lib.a:
>>>>  $(NORMAL_LIBGCC) FORCE
>>>> +       echo "Library GCC" ${NORMAL_LIBGCC}
>>>>         $(call if_changed,objcopy)
>>>> --
>>>>
>>>> I hope this helps.
>>>>
>>>>
>>>>
>> Best regards,
>> Stefano --
>> =====================================================================
>> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
>> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
>> Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email:
>> sbabic@denx.de
>> =====================================================================



