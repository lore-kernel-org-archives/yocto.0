Return-Path: <lothar@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A771E01358
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 02:38:50 -0700 (PDT)
Received: from frontend3.mail.m-online.net (unknown [192.168.6.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3cPQ553Gk4z4KKHL
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 11:38:49 +0200 (CEST)
Received: from localhost (dynscan3.mnet-online.de [192.168.6.84])
	by mail.m-online.net (Postfix) with ESMTP id 3cPQ553C59zbbbw
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 11:38:49 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.6.180])
	by localhost (dynscan3.mail.m-online.net [192.168.6.84]) (amavisd-new,
	port 10024) with ESMTP id 7o9xkaqyEyft for <yocto@yoctoproject.org>;
	Tue, 27 Aug 2013 11:38:48 +0200 (CEST)
X-Auth-Info: pVoIiLyPeDZ0wfP1n5yOZ/jvtPPQuQj5sTPlC2mTiGE=
Received: from webmail.mnet-online.de (webmail1.mnet-online.de
	[62.245.181.162]) by mail.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 11:38:47 +0200 (CEST)
Received: from host-82-135-33-74.customer.m-online.net ([82.135.33.74])
	by webmail.mnet-online.de
	with HTTP (HTTP/1.1 POST); Tue, 27 Aug 2013 09:38:47 +0000
MIME-Version: 1.0
Date: Tue, 27 Aug 2013 11:38:47 +0200
From: lothar@denx.de
To: yocto@yoctoproject.org
In-Reply-To: <CAFyqS9oq7=v=H2VdH1mK_jznoqrQrCR3ZeS54NAT6g2zAxPk3w@mail.gmail.com>
References: <CAFyqS9oq7=v=H2VdH1mK_jznoqrQrCR3ZeS54NAT6g2zAxPk3w@mail.gmail.com>
Message-ID: <dde6dc479168bb4adda2460411a20b70@denx.de>
X-Sender: lothar@denx.de
User-Agent: Roundcube Webmail/0.9.2
Subject: Re: Kernel 3.9 uImage build problem
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
X-List-Received-Date: Tue, 27 Aug 2013 09:38:51 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

Am 2013-08-27 11:08, schrieb Hans Beckérus:
> Hi. We are trying to build a Linux 3.9 kernel (uplift from 3.6) and
> are suddenly facing a completely new error when creating the uImage.
> 
> HOSTCC  scripts/mod/file2alias.o
> |   HOSTLD  scripts/mod/modpost
> | make[1]: `include/generated/mach-types.h' is up to date.
> |   CALL    scripts/checksyscalls.sh
> |   CHK     include/generated/compile.h
> |   CHK     kernel/config_data.h
> |   Kernel: arch/arm/boot/Image is ready
> |   Kernel: arch/arm/boot/zImage is ready
> | multiple (or no) load addresses:
> | This is incompatible with uImages
> | Specify LOADADDR on the commandline to build an uImage
> | make[1]: *** [arch/arm/boot/uImage] Error 1
> | make: *** [uImage] Error 2
> 
> Any hints on where to start look for source of the problem?
> In our machine config UBOOT_LOADADDR is set.
> 
> Build Configuration:
> BB_VERSION        = "1.19.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "SUSE-LINUX-11"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "zynq-zc706"
> DISTRO            = "poky-chris"
> DISTRO_VERSION    = "1.4+snapshot-20130827"
> TUNE_FEATURES     = "armv7a vfp cortexa9"
> TARGET_FPU        = "vfp"
> 
> Thanks.
> Hans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi,

I once had a similar issue with an ARM kernel. I fixed it by setting in 
my machine conf for the u-boot
UBOOT_ENTRYPOINT := "0x70008000"
and for the kernel
KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"

In my case UBOOT_ENTRYPOINT initializes UBOOT_LOADADDR automatically, 
but both are only for u-boot. The kernel may need to be set to the same 
value manually via compile param, which then has to happen separately.

Perhaps it's similar in your case. Just an idea.

BR,
Lothar Rubusch

