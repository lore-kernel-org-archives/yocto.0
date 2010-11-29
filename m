Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id BD0484C80815
	for <yocto@yoctoproject.org>; Mon, 29 Nov 2010 14:05:54 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oATK5pho029650;
	Mon, 29 Nov 2010 12:05:51 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 29 Nov 2010 12:05:51 -0800
Received: from windriver.com ([128.224.146.67]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 29 Nov 2010 12:05:51 -0800
Received: by windriver.com (Postfix, from userid 8026)
	id 3C1488D8213; Mon, 29 Nov 2010 15:05:50 -0500 (EST)
Date: Mon, 29 Nov 2010 15:05:50 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
Message-ID: <20101129200549.GA25679@windriver.com>
References: <1290974426-24618-1-git-send-email-fransmeulenbroeks@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1290974426-24618-1-git-send-email-fransmeulenbroeks@gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
X-OriginalArrivalTime: 29 Nov 2010 20:05:51.0326 (UTC)
	FILETIME=[D25337E0:01CB9000]
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] meta-bsp-kirkwood: created layer for Marvellkirkwood
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
X-List-Received-Date: Mon, 29 Nov 2010 20:05:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

In message: [yocto] [PATCH] meta-bsp-kirkwood: created layer for Marvellkirkwood
on 28/11/2010 Frans Meulenbroeks wrote:

> This layer is a first attempt to create a layer for kirkwoord.
> It is based upon the OpenEmbedded recipes (most of which I have
> added too)

Sorry for the slow reply, the 3.2M of inlines/attachments
blew Thunderbird out of the water and I had to switch
to mutt.

> 
> u-boot still needs some work and the kernel also needs some attention
> (but marvell/globalscale are not really keeping things up to date)

On this topic. Is there any reason to not use linux-yocto
for the kernel ? Whenever possible, I'd like to get everyone
pulling in the same direction for these platforms. We have
plenty of experience and support for platforms close to
the kirkwood. If the patches were merged into the linux-yocto
kernel repo, they would inherit a feature set and well tested
base that the other BSPs in that repo enjoy.

It also helps us review and push for platforms to be merged
upstrea if things go into a common kernel repository.

It would also mean that the BSP would be kept up to date with
bug/security fixes and be considered for updating to 
the latest kernels (i.e. I'm jumping the BSPs to 2.6.37-rc3 
right now and will done within a day).

I'd be willing to help with this part, and will have a look
at these patches in a 2.6.37 context (but obviously I don't
have the hardware to use for boot testing).

Cheers,

Bruce

> 
> Appreciate your feedback!
> 
> Signed-off-by: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
> ---
>  0001-meta-bsp-kirkwood-created.patch               |48673 ++++++++++++++++++++
>  meta-bsp-kirkwood/conf/layer.conf                  |   10 +
>  meta-bsp-kirkwood/conf/machine/dockstar.conf       |   20 +
>  .../conf/machine/include/kirkwood.inc              |   25 +
>  meta-bsp-kirkwood/conf/machine/openrd-base.conf    |   21 +
>  meta-bsp-kirkwood/conf/machine/openrd-client.conf  |   21 +
>  meta-bsp-kirkwood/conf/machine/sheevaplug.conf     |   21 +
>  .../0001--ARM-Kirkwood-CPU-idle-driver.patch       |  162 +
>  ...001-ARM-Kirkwood-Sound-Sound-driver-added.patch | 3514 ++
>  ...lient-PCIe-Initialize-PCI-express-and-i2c.patch |   36 +
>  ...wood-peripherals-clock-gating-for-power-m.patch |  131 +
>  ...003-ARM-Kirkwood-Sound-Sound-driver-added.patch | 3498 ++
>  ...04-ARM-Kirkwood-OpenRD-SD-UART1-selection.patch |  207 +
>  ...M-Kirkwood-OpenRD-base-SD-UART1-selection.patch |  110 +
>  .../cpuidle-reenable-interrupts.patch              |   19 +
>  .../recipes/linux/linux-kirkwood/defconfig         | 2439 +
>  .../recipes/linux/linux-kirkwood/fw.patch          |   36 +
>  .../recipes/linux/linux-kirkwood/mvsdio.patch      |   46 +
>  .../linux-kirkwood/newer-arm-mach-types.patch      |  181 +
>  .../linux/linux-kirkwood/openrd-base/defconfig     | 2610 ++
>  .../openrd-base/openrd-base-enable-pcie.patch      |   22 +
>  ...002-OpenRD-Client-Volari-Z11-driver-added.patch |29769 ++++++++++++
>  .../linux/linux-kirkwood/openrd-client/defconfig   | 2812 ++
>  .../linux/linux-kirkwood/sheevaplug/defconfig      | 2578 ++
>  .../recipes/linux/linux-kirkwood_2.6.33-rc5.bb     |   41 +
>  meta-bsp-kirkwood/recipes/linux/linux.inc          |  118 +
>  meta-bsp-kirkwood/recipes/u-boot/u-boot.inc        |   67 +
>  meta-bsp-kirkwood/recipes/u-boot/u-boot_git.bb     |   17 +
>  28 files changed, 97204 insertions(+), 0 deletions(-)
>  create mode 100644 0001-meta-bsp-kirkwood-created.patch
>  create mode 100644 meta-bsp-kirkwood/conf/layer.conf
>  create mode 100644 meta-bsp-kirkwood/conf/machine/dockstar.conf
>  create mode 100644 meta-bsp-kirkwood/conf/machine/include/kirkwood.inc
>  create mode 100644 meta-bsp-kirkwood/conf/machine/openrd-base.conf
>  create mode 100644 meta-bsp-kirkwood/conf/machine/openrd-client.conf
>  create mode 100644 meta-bsp-kirkwood/conf/machine/sheevaplug.conf
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/0001--ARM-Kirkwood-CPU-idle-driver.patch
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/0001-ARM-Kirkwood-Sound-Sound-driver-added.patch
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/0001-OpenRD-Client-PCIe-Initialize-PCI-express-and-i2c.patch
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/0002--ARM-Kirkwood-peripherals-clock-gating-for-power-m.patch
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/0003-ARM-Kirkwood-Sound-Sound-driver-added.patch
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/0004-ARM-Kirkwood-OpenRD-SD-UART1-selection.patch
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/0004-ARM-Kirkwood-OpenRD-base-SD-UART1-selection.patch
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/cpuidle-reenable-interrupts.patch
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/defconfig
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/fw.patch
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/mvsdio.patch
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/newer-arm-mach-types.patch
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/openrd-base/defconfig
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/openrd-base/openrd-base-enable-pcie.patch
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/openrd-client/0002-OpenRD-Client-Volari-Z11-driver-added.patch
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/openrd-client/defconfig
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood/sheevaplug/defconfig
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux-kirkwood_2.6.33-rc5.bb
>  create mode 100644 meta-bsp-kirkwood/recipes/linux/linux.inc
>  create mode 100644 meta-bsp-kirkwood/recipes/u-boot/u-boot.inc
>  create mode 100644 meta-bsp-kirkwood/recipes/u-boot/u-boot_git.bb
> 








> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

