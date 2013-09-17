Return-Path: <apelete@seketeli.net>
Received: from ms.seketeli.net (seketeli.net [91.121.166.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6DACE013D6
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 06:11:11 -0700 (PDT)
Received: from localhost (176-26-190-109.dsl.ovh.fr [109.190.26.176])
	by ms.seketeli.net (Postfix) with ESMTP id ACBB9EA042;
	Tue, 17 Sep 2013 15:47:28 +0200 (CEST)
Received: by localhost (Postfix, from userid 1000)
	id C9113A40611; Tue, 17 Sep 2013 15:15:00 +0200 (CEST)
Date: Tue, 17 Sep 2013 15:15:00 +0200
From: Apelete Seketeli <apelete@seketeli.net>
To: "BITONTI Giuseppe (MM)" <giuseppe.bitonti@external.magnetimarelli.com>
Message-ID: <20130917131500.GB20226@amegan>
References: <9E1CA21291B3664A8E8F31523A10D6BE160CFB9AC3@MXCL21.fgremc.it>
MIME-Version: 1.0
In-Reply-To: <9E1CA21291B3664A8E8F31523A10D6BE160CFB9AC3@MXCL21.fgremc.it>
X-Operating-System: Debian GNU/Linux 7
X-URL: http://www.seketeli.net/~apelete
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel debugging over serial console?
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
X-List-Received-Date: Tue, 17 Sep 2013 13:11:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Giuseppe,

On 17-Sep-13, BITONTI Giuseppe (MM) wrote:
> I am trying to debug the kernel through kgdb for an imx6 sabre lite board with the following kernel built from poky 1.4:
> 
> root@imx6qsabrelite:~# uname -a
> Linux imx6qsabrelite 3.0.35-1.1.0+g2dc5560 #1 SMP PREEMPT Thu Aug 8 15:15:39 CEST 2013 armv7l GNU/Linux
> 
> The system boot well but when I try to enter in debugging mode it returns:
> 
> root@imx6qsabrelite:~# echo g > /proc/sysrq-trigger
> SysRq : HELP : loglevel(0-9) reBoot Crash terminate-all-tasks(E) memory-full-oom-kill(F) kill-all-tasks(I) thaw-filesystems(J) saK show-backtrace-all-active-cpus(L) show-memory-usage(M) nice-all-RT-tasks(N) powerOff show-registers(P) show-all-timers(Q) unRaw Sync show-task-states(T) Unmount ETM buffer dump show-blocked-tasks(W)
> root@imx6qsabrelite:~#

I didn't dabble with OE or Yocto for a while, but from a pure Linux
kernel point of view, it seems like something is amiss with your kgdb
configuration.

> I have configured the kernel with the command:
> 
> bitbake -c menuconfig linux-imx
> 
> enabling:
> 
> -*- Magic SysRq key
> [*] Kernel debugging
> [*] Compile the kernel with debug info
> [*] KGDB: kernel debugger
> <*> KGDB: use kgdb over the serial console
> 
> I have also edited defconfig file in fsl-community-bsp-dylan/sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/mx6q/ adding:
> 
> CONFIG_FRAME_POINTER=y
> CONFIG_DEBUG_KERNEL=y
> CONFIG_KGDB=y
> CONFIG_DEBUG_INFO=y
> CONFIG_KGDB_SERIAL_CONSOLE=y
> CONFIG_MAGIC_SYSRQ=y
> 
> and added kernel parameter to bootargs with:
> 
> MX6QSABRELITE U-Boot > editenv mmcargs
> edit: setenv bootargs console=${console},${baudrate} root=${mmcroot} kgdboc=ttymxc1,115200
> MX6QSABRELITE U-Boot > saveenv
> Saving Environment to MMC...
> Writing to MMC(0)... done
> MX6QSABRELITE U-Boot > boot

You kernel configuration looks ok, and the kgdboc parameter passed by
u-boot to the kernel seems correct (at least syntactically speaking).
 
> but it still does not work.

Depending on the serial driver in use in the kernel, it sometimes
happens that kgdboc is not configured despite the kgdboc parameter
being passed to the kernel.
To check that kgdboc is configured like you intended, from user-sapce
please try:

root@imx6qsabrelite:~# cat /sys/module/kgdboc/parameters/kgdboc

Guessing from what you wrote, it should return: ttymxc1,115200
If it doesn't, please try configuring kgdboc from user-space:

root@imx6qsabrelite:~# echo ttymxc1,115200 > /sys/module/kgdboc/parameters/kgdboc

And then:

root@imx6qsabrelite:~# echo g > /proc/sysrq-trigger

Should break the kernel and let you connect to kgdb using, for
instance, a gdb client.

Hope it helps :-).

Cheers.
-- 
        Apelete

