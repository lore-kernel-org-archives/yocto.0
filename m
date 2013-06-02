Return-Path: <michael@cubic.org>
Received: from roasted.cubic.org (roasted.cubic.org [193.108.181.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6831BE0149A
	for <yocto@yoctoproject.org>; Sun,  2 Jun 2013 06:27:02 -0700 (PDT)
Received: from kiel-4d066c97.pool.mediaways.net ([77.6.108.151]:53854
	helo=[192.168.10.100])
	by roasted.cubic.org with esmtpsa (TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32)
	(Exim 4.69) (envelope-from <michael@cubic.org>) id 1Uj8JC-0002Ep-PY
	for yocto@yoctoproject.org; Sun, 02 Jun 2013 06:26:55 -0700
Message-ID: <51AB4815.6040006@cubic.org>
Date: Sun, 02 Jun 2013 15:26:45 +0200
From: Michael Stickel <michael@cubic.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:14.0) Gecko/20120713 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Spam-Score: -1.4
Subject: Problem building the linux kernel outside source directory for mips
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
X-List-Received-Date: Sun, 02 Jun 2013 13:27:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am new to yocto, so I don't know if this is the right list.

I tried to build a kernel for the MTX-1 platform that uses an AU1500 
which is a MIPS32 based SoC.
After some work I got the standard kernel (3.8.4) used in poky 9 to work.
But I encountered some problems:

In poky-dylan-9.0.0/meta/recipes-kernel/linux/linux-yocto.inc the 
builddir is set to 
"${WORKDIR}/linux-${MACHINE}-${LINUX_KERNEL_TYPE}-build", but 
KERNEL_EXTRA_ARGS does not contain O="${B}". How is the the out of 
source build of the kernel meant to work?

The task do_kernel_configme trashed my kernel config. This may be 
because defconfig is copied to ${B}/.config and do_kernel_configme is 
executed in ${S} and does not find .config.

Is the intended behavior of the out of source build for the kernel 
documented.

BTW: The kernel works and boots the core-image-minimal with usb USB 
Storage as rootfs.

Best regards
Michael

