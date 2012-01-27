Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32F6EE00599
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 09:13:10 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 27 Jan 2012 09:12:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="60610769"
Received: from unknown (HELO envy.home) ([10.255.14.124])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Jan 2012 09:12:13 -0800
Message-ID: <4F22DAD1.4080405@linux.intel.com>
Date: Fri, 27 Jan 2012 09:11:45 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Paul Gortmaker <paul.gortmaker@windriver.com>
References: <1327681331-11557-1-git-send-email-paul.gortmaker@windriver.com>
In-Reply-To: <1327681331-11557-1-git-send-email-paul.gortmaker@windriver.com>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] mpc8315: build u-boot by default.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 27 Jan 2012 17:13:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/27/2012 08:22 AM, Paul Gortmaker wrote:
> Valdiated on v2011.12 with hardware:
> 
>     U-Boot 2011.12 (Jan 26 2012 - 16:55:23)MPC83XX
> 
>     Reset Status: Software Hard, External/Internal Soft, External/Internal Hard
> 
>     CPU:   e300c3, MPC8315E, Rev: 1.2 at 400 MHz, CSB: 133.333 MHz
>     Board: Freescale MPC8315ERDB Rev 1.0
>     I2C:   ready
>     DRAM:  128 MiB (DDR2, 32-bit, ECC off, 266.667 MHz)
>     Flash: 8 MiB
>     NAND:  32 MiB
>     PCIE0: No link
>     PCIE1: No link
>     In:    serial
>     Out:   serial
>     Err:   serial
>     Net:   eTSEC0, eTSEC1
>     Hit any key to stop autoboot:  0
>     => ver
> 
>     U-Boot 2011.12 (Jan 26 2012 - 16:55:23)MPC83XX
>     powerpc-poky-linux-gcc (GCC) 4.6.3 20111117 (prerelease)
>     GNU ld (GNU Binutils) 2.22
>     =>
> 
> Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>

Hi Paul,

Have you verified that the u-boot image this creates functions properly
when flashed to the mpc8315? Last time I tried I bricked the board - and
still haven't got around to unbricking it.

--
Darren

> 
> diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf b/meta-yocto/conf/machine/mpc8315e-rdb.conf
> index d3a5b1c..74ef611 100644
> --- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
> +++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
> @@ -7,6 +7,9 @@ require conf/machine/include/tune-ppc603e.inc
>  
>  KERNEL_IMAGETYPE = "uImage"
>  
> +EXTRA_IMAGEDEPENDS += "u-boot"
> +UBOOT_MACHINE_mpc8315e-rdb = "MPC8315ERDB_config"
> +
>  SERIAL_CONSOLE = "115200 ttyS0"
>  
>  MACHINE_FEATURES = "kernel26 keyboard pci ext2 ext3 serial"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

