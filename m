Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C3DDE01551
	for <yocto@yoctoproject.org>; Sun,  2 Jun 2013 13:24:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r52KNxO8018718
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 2 Jun 2013 13:23:59 -0700 (PDT)
Received: from [128.224.21.242] (128.224.21.242) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Sun, 2 Jun 2013 13:23:57 -0700
Message-ID: <51ABA9DB.2030204@windriver.com>
Date: Sun, 2 Jun 2013 16:23:55 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Michael Stickel <michael@cubic.org>
References: <51AB4815.6040006@cubic.org>
In-Reply-To: <51AB4815.6040006@cubic.org>
Cc: yocto@yoctoproject.org
Subject: Re: Problem building the linux kernel outside source directory for mips
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
X-List-Received-Date: Sun, 02 Jun 2013 20:24:09 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-02 09:26 AM, Michael Stickel wrote:
> Hi,
>
> I am new to yocto, so I don't know if this is the right list.

This will work, we also have the linux-yocto@yoctoproject.org kernel
mailing list.

>
> I tried to build a kernel for the MTX-1 platform that uses an AU1500
> which is a MIPS32 based SoC.
> After some work I got the standard kernel (3.8.4) used in poky 9 to work.
> But I encountered some problems:
>
> In poky-dylan-9.0.0/meta/recipes-kernel/linux/linux-yocto.inc the
> builddir is set to
> "${WORKDIR}/linux-${MACHINE}-${LINUX_KERNEL_TYPE}-build", but
> KERNEL_EXTRA_ARGS does not contain O="${B}". How is the the out of
> source build of the kernel meant to work?

Can you elaborate on this ? Are you actually seeing a problem, or
just wondering about the glue ? If it's the glue, kernel-yocto.bbclass
sets:

KBUILD_OUTPUT = "${B}"

For the desired source/binary split.

>
> The task do_kernel_configme trashed my kernel config. This may be
> because defconfig is copied to ${B}/.config and do_kernel_configme is
> executed in ${S} and does not find .config.

Same question as above. This is basic functionality and kernel_configme
is aware of the source/binary split, and has been doing this since
yocto 0.9.

Can you define "trashed" ?

>
> Is the intended behavior of the out of source build for the kernel
> documented.

Everything should be in the kernel-dev manual and the other yocto
project documentation. There's not that much to document, since the
functionality has been unchanged for quite some time and works behind
the scenes for a linux-yocto* based build.

Cheers,

Bruce

>
> BTW: The kernel works and boots the core-image-minimal with usb USB
> Storage as rootfs.
>
> Best regards
> Michael
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


