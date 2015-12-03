Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77A63E007B1; Thu,  3 Dec 2015 08:34:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DEFEE00888
	for <yocto@yoctoproject.org>; Thu,  3 Dec 2015 08:34:00 -0800 (PST)
Received: by pabfh17 with SMTP id fh17so73617111pab.0
	for <yocto@yoctoproject.org>; Thu, 03 Dec 2015 08:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=h6pHrn46i6CGvQMN20USdhSNrM0e1iHRkArG2HeacPA=;
	b=axZSLhy8NtwzJZnUkTqHY91vM5hLOFtkAyXGAoHmCh2Vz7Mn/b1ZQYxtz3ZNAJHSNC
	xKRQlExDtIRYABFLRdyJtnbdXzBbTqV3bD4lS3qHVe0v0rvMt3oxk61iLytqSlsLca9D
	ntgcThuJMJ7sNyvAFVZkMJYNog3qp3F5eDJuGgWcIEP/D+GlskYgBzDLBpFCK3FRwrOX
	d8CYv9hZJWTgsGatDHN9rqk8WZ8iAnKwWF5d2TlQKscGtaG7MNBv4k1nDHLqX9lkKYaJ
	tR5KSj+cY/1B81k1lLlXE0+IbPHLF+zvAQFDW1StGM/J7kEVJBxkYsZk2FddSED/cNOV
	tMIQ==
X-Received: by 10.66.117.199 with SMTP id kg7mr14445721pab.105.1449160440635; 
	Thu, 03 Dec 2015 08:34:00 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1239:a5bb:4986:438:c8c9?
	([2601:202:4000:1239:a5bb:4986:438:c8c9])
	by smtp.googlemail.com with ESMTPSA id
	ry1sm11755690pab.30.2015.12.03.08.33.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 03 Dec 2015 08:33:59 -0800 (PST)
To: Jin Li <lijin14@huawei.com>, yocto@yoctoproject.org
References: <565FD8D4.5070803@huawei.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <56606EF5.3020700@gmail.com>
Date: Thu, 3 Dec 2015 08:33:57 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <565FD8D4.5070803@huawei.com>
Subject: Re: Big Endian set for qemuarm64 build based on poky
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
X-List-Received-Date: Thu, 03 Dec 2015 16:34:24 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Jin Li,

On 12/02/2015 09:53 PM, Jin Li wrote:
> Hi,
> 
> There is build error when I'm trying to build qemuarm64 project based on default poky git repo with the big endian set as follows:
> 
> l00356543@hulk-test1:~/poky$ git diff meta/conf/machine/include/arm/arch-arm64.inc
> diff --git a/meta/conf/machine/include/arm/arch-arm64.inc b/meta/conf/machine/include/arm/arch-arm64.inc
> index 866b71f..8fe6660 100644
> --- a/meta/conf/machine/include/arm/arch-arm64.inc
> +++ b/meta/conf/machine/include/arm/arch-arm64.inc
> @@ -1,4 +1,4 @@
> -DEFAULTTUNE ?= "aarch64"
> +DEFAULTTUNE ?= "aarch64_be"
> 
>  require conf/machine/include/arm/arch-armv7a.inc
> 
> l00356543@hulk-test1:~/poky$
> 
> --------------------------------------------------------------------
> 
> Attach the build log:
> 
> l00356543@hulk-test1:~/qemuarm64_be$ bitbake core-image-sato
> Parsing recipes: 100% |###############################################################################################################| ETA:  00:00:00
> Parsing of 888 .bb files complete (0 cached, 888 parsed). 1310 targets, 61 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> 
> Build Configuration:
> BB_VERSION        = "1.28.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "aarch64_be-poky-linux"
> MACHINE           = "qemuarm64"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.0"
> TUNE_FEATURES     = "aarch64 bigendian"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-yocto-bsp    = "master:698c74c373110ed081a7586e21d4a27b8b44c89b"
> 
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: Failed to fetch URL http://downloads.sourceforge.net/libusb/libusb-1.0.20.tar.bz2, attempting MIRRORS if available
> WARNING: Failed to fetch URL http://bitmath.org/code/mtdev/mtdev-1.1.5.tar.bz2, attempting MIRRORS if available
> WARNING: Failed to fetch URL http://wiki.qemu-project.org/download/qemu-2.4.0.1.tar.bz2, attempting MIRRORS if available
> ERROR: oe_runmake failed
> ERROR: Function failed: do_compile (log file is located at /home/l00356543/qemuarm64_be/tmp/work/qemuarm64-poky-linux/linux-yocto/4.1.13+gitAUTOINC+30c4b4bd79_c22dc676d6-r0/temp/log.do_compile.43788)
> ERROR: Logfile of failure stored in: /home/l00356543/qemuarm64_be/tmp/work/qemuarm64-poky-linux/linux-yocto/4.1.13+gitAUTOINC+30c4b4bd79_c22dc676d6-r0/temp/log.do_compile.43788
> 
> ...
> 
> |   LD      arch/arm64/kernel/vdso/built-in.o
> | aarch64_be-poky-linux-ld.bfd: usr/initramfs_data.o: compiled for a little endian system and target is big endian
> | aarch64_be-poky-linux-ld.bfd: failed to merge target specific data of file usr/initramfs_data.o
> | make[3]: *** [usr/built-in.o] Error 1

This looks like the kernel config is set to 'LE'. Please try bitbake -c
menuconfig yocto-linux and change to 'BE"

- armin
> 
> 

