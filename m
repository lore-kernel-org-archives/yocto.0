Return-Path: <apelete@seketeli.net>
Received: from ms.seketeli.net (seketeli.net [91.121.166.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59CB3E013E5
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 06:25:39 -0700 (PDT)
Received: from localhost (176-26-190-109.dsl.ovh.fr [109.190.26.176])
	by ms.seketeli.net (Postfix) with ESMTP id D641DEA042;
	Tue, 17 Sep 2013 16:01:56 +0200 (CEST)
Received: by localhost (Postfix, from userid 1000)
	id 03618A40611; Tue, 17 Sep 2013 15:29:28 +0200 (CEST)
Date: Tue, 17 Sep 2013 15:29:28 +0200
From: Apelete Seketeli <apelete@seketeli.net>
To: "BITONTI Giuseppe (MM)" <giuseppe.bitonti@external.magnetimarelli.com>
Message-ID: <20130917132928.GC20226@amegan>
References: <9E1CA21291B3664A8E8F31523A10D6BE160CFB9AC3@MXCL21.fgremc.it>
	<20130917131500.GB20226@amegan>
MIME-Version: 1.0
In-Reply-To: <20130917131500.GB20226@amegan>
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
X-List-Received-Date: Tue, 17 Sep 2013 13:25:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 17-Sep-13, Apelete Seketeli wrote:
> Hello Giuseppe,
> 
> On 17-Sep-13, BITONTI Giuseppe (MM) wrote:
> > I have configured the kernel with the command:
> > 
> > bitbake -c menuconfig linux-imx
> > 
> > enabling:
> > 
> > -*- Magic SysRq key
> > [*] Kernel debugging
> > [*] Compile the kernel with debug info
> > [*] KGDB: kernel debugger
> > <*> KGDB: use kgdb over the serial console
> > 
> > I have also edited defconfig file in fsl-community-bsp-dylan/sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/mx6q/ adding:
> > 
> > CONFIG_FRAME_POINTER=y
> > CONFIG_DEBUG_KERNEL=y
> > CONFIG_KGDB=y
> > CONFIG_DEBUG_INFO=y
> > CONFIG_KGDB_SERIAL_CONSOLE=y
> > CONFIG_MAGIC_SYSRQ=y
> > 
> > and added kernel parameter to bootargs with:
> > 
> > MX6QSABRELITE U-Boot > editenv mmcargs
> > edit: setenv bootargs console=${console},${baudrate} root=${mmcroot} kgdboc=ttymxc1,115200
> > MX6QSABRELITE U-Boot > saveenv
> > Saving Environment to MMC...
> > Writing to MMC(0)... done
> > MX6QSABRELITE U-Boot > boot
> 
> You kernel configuration looks ok, and the kgdboc parameter passed by
> u-boot to the kernel seems correct (at least syntactically speaking).

I forgot to mention it, but you might want to add
"CONFIG_CONSOLE_POLL=y" to you kernel configuration to enable the
polling scheme used by the serial driver when working with kgdboc.

Cheers.
-- 
        Apelete

