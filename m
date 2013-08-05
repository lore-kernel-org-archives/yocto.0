Return-Path: <lothar@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D98EE003D4
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 05:41:08 -0700 (PDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3c7z9Z36lTz4KK6F;
	Mon,  5 Aug 2013 14:41:06 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3c7z9Z0LNrzbbj6;
	Mon,  5 Aug 2013 14:41:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id VVSMaFNE8Npp; Mon,  5 Aug 2013 14:41:04 +0200 (CEST)
X-Auth-Info: oswYcCQ7MehaxnvYTa1fz8Djwcp3O6A8CRFXlGmi3aI=
Received: from webmail.mnet-online.de (webmail1.mnet-online.de [212.18.5.57])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Mon,  5 Aug 2013 14:41:04 +0200 (CEST)
Received: from host-82-135-33-74.customer.m-online.net
	(host-82-135-33-74.customer.m-online.net [82.135.33.74]) by
	webmail.mnet-online.de (Horde Framework) with HTTP; Mon, 05 Aug 2013
	14:41:04 +0200
Message-ID: <20130805144104.17162h9fc56bibfk@webmail.mnet-online.de>
Date: Mon, 05 Aug 2013 14:41:04 +0200
From: lothar@denx.de
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <20130805114222.15220qh2lyd417dw@webmail.mnet-online.de>
	<7243158.LY4yQ1ssbD@helios>
In-Reply-To: <7243158.LY4yQ1ssbD@helios>
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.3.5)
Cc: yocto@yoctoproject.org
Subject: Re: how to build external firmware for kernel
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
X-List-Received-Date: Mon, 05 Aug 2013 12:41:09 -0000
Content-Type: text/plain;
 charset=ISO-8859-1;
 DelSp="Yes";
 format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

Zitat von Paul Eggleton <paul.eggleton@linux.intel.com>:

> Hi Lothar,
>
> On Monday 05 August 2013 11:42:22 lothar@denx.de wrote:
>> I have a linux kernel and a external firmware. Building manually,
>> first I have to checkout and build the firmware "native" to obtain a
>> firmware blob, then I need this firmware blob to build the kernel for
>> the target.
>>
>> So far I tried to do this in yocto with separate recipes: a
>> firmware.bb and a mylinux.bb. In firmware.bb, I check out the firmware
>> via git and let it run "make" on native (this is necessary, since the
>> Makefile builds a tool which then automatically gets called inside the
>> Makefile to create the firmware blob).
>>
>> In the kernel recipe, I declare a DEPEND on firmware.bb. I set the
>> .config options to load an extra firmware blob. But now, I have a
>> problem: I need actually to have the firmware blob within the kernel's
>> file hierarchy. Ideally I would copy/move it from the firmware's
>> destination directory into the kernel's source directory.
>
> Shouldn't firmware go into /lib/firmware?

Hi Paul, yes, so my first approach was indeed in the firmware.bb  
something like:
     install -d ${D}/lib/firmware/imx/sdma/
     install -m 755 sdma-imx53.bin ${D}/lib/firmware/imx/sdma/sdma-imx53.bin
...and to set in the kernel.bb (I'm aware of the existens of other  
ways to set .config using yocto)
     echo 'CONFIG_EXTRA_FIRMWARE="imx/sdma/sdma-imx53.bin"' >>  
${WORKDIR}/defconfig

But, compiling I got something as follows:
(...)
| DEBUG: Executing shell function do_compile
| NOTE: make -j 8 uImage CC=arm-linux-gnueabi-gcc   
-mno-thumb-interwork -marm LD=arm-linux-gnueabi-ld   LOADADDR=0x70008000
| scripts/kconfig/conf --silentoldconfig Kconfig
|   CHK     include/generated/uapi/linux/version.h
|   CHK     include/generated/utsrelease.h
| make[1]: `include/generated/mach-types.h' is up to date.
|   CC      scripts/mod/devicetable-offsets.s
|   CALL    scripts/checksyscalls.sh
|   GEN     scripts/mod/devicetable-offsets.h
|   HOSTCC  scripts/mod/file2alias.o
|   HOSTLD  scripts/mod/modpost
|   CHK     include/generated/compile.h
| make[1]: *** No rule to make target  
`/lib/firmware/imx/sdma/sdma-imx53.bin', needed by  
`firmware/imx/sdma/sdma-imx53.bin.gen.o'.  Stop.
| make[1]: *** Waiting for unfinished jobs....
|   MK_FW   firmware/imx/sdma/sdma-imx53.bin.gen.S
| make: *** [firmware] Error 2
| make: *** Waiting for unfinished jobs....
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (see  
/work/lothar/BUILD__XXX__m53evk/tmp/work/m53evk-linux-gnueabi(...)

Honestly, I already expected some trouble, because of firmware.bb  
being built for "native", and the kernel not. I sort of played around  
with CONFIG_EXTRA_FIRMWARE and CONFIG_EXTRA_FIRMWARE_DIR without  
success.

I also tried to build it manually by the approach specified here:
https://community.freescale.com/thread/302880
...means, just copying the firmware blob into the kernel source's  
"firmware" folder and running make afterwards. Since this worked just  
perfectly, I thought of doing it like this, since it seemed easier  
than messing with /lib/firmware and yocto/bitbake. But with this  
approach I'm stuck at getting the firmware blob into the firmware  
folder.

Can you please tell me, is this the wrong approach?



>> Questions:
>> How can I achieve this kind of setup working out with yocto or
>> bitbake, respectively? What might be the best approach in my situation?
>
> You can get the kernel version name from ${STAGING_KERNEL_DIR}/kernel-
> abiversion if that helps, but I wouldn't have thought you'd need it if the
> firmware is installed to /lib/firmware instead.

How may I work with the STAGING_KERNEL_DIR, since I first run the  
firmware.bb and then the kernel.bb. I think I did not understand well,  
how I may achieve this. Do I need to install the firmware blob into  
something like $STAGING_KERNEL_DIR/firmware? How may I proceed here,  
could you please explain a bit more?



