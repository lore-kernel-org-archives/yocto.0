Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52856E00A64; Sun, 20 Nov 2016 21:03:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	UPPERCASE_50_75 autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 UPPERCASE_50_75 message body is 50-75% uppercase
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02594E0098A
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 21:03:40 -0800 (PST)
Received: from nbhjo (114-136-54-125.EMOME-IP.hinet.net [114.136.54.125])
	by msfrf2615.sfr.fr (SMTP Server) with ESMTP id 359281C001C62;
	Mon, 21 Nov 2016 06:03:39 +0100 (CET)
Received: from nbhjo (114-136-54-125.EMOME-IP.hinet.net
	[114.136.54.125])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2615.sfr.fr (SMTP Server) with ESMTPSA;
	Mon, 21 Nov 2016 06:03:36 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Khem Raj' <raj.khem@gmail.com>
References: <1479645974-95274-1-git-send-email-herve.jourdain@neuf.fr>
	<1479645974-95274-3-git-send-email-herve.jourdain@neuf.fr>
	<CAMKF1sqtj_mSR0F7+D_RJ5rcFcBS2hmRsedqfFyqM8Hma=4poQ@mail.gmail.com>
In-Reply-To: <CAMKF1sqtj_mSR0F7+D_RJ5rcFcBS2hmRsedqfFyqM8Hma=4poQ@mail.gmail.com>
Date: Mon, 21 Nov 2016 06:03:27 +0100
Message-ID: <000101d243b4$9c887ad0$d5997070$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJoK/GhQDQ7egNatCuqwg2aI/C+2QD/wQ//AZONkBSfona9gA==
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/2] Support for 64bits target on raspberrypi3 (patches for supporting 64bits on linux 4.7)
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
X-List-Received-Date: Mon, 21 Nov 2016 05:03:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Khem,

OK, I'll submit a v2 soon.

Herve

-----Original Message-----
From: Khem Raj [mailto:raj.khem@gmail.com]=20
Sent: dimanche 20 novembre 2016 20:42
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH 2/2] Support for 64bits =
target on raspberrypi3 (patches for supporting 64bits on linux 4.7)

this patch needs some rework. user __PRIx64__ whereveer llx and lld
are used you dont need ifdefs
secondly all the backports should be a separate patch. All local
changes should be logically seprated individual patches.

On Sun, Nov 20, 2016 at 4:46 AM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  .../0001-fix-dtbo-rules.patch                      |   19 +-
>  .../0002-support-64bits.patch                      | 2080 =
++++++++++++++++++++
>  recipes-kernel/linux/linux-raspberrypi_4.7.bb      |    2 +
>  3 files changed, 2098 insertions(+), 3 deletions(-)
>  create mode 100644 =
recipes-kernel/linux/linux-raspberrypi-4.7/0002-support-64bits.patch
>
> diff --git =
a/recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch =
b/recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
> index 5113e23..96f3c32 100644
> --- =
a/recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
> +++ =
b/recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
> @@ -1,7 +1,7 @@
> -From 13c8784da3dbd977f64cec740eba775b6fab11c2 Mon Sep 17 00:00:00 =
2001
> +From 13c8784da3dbd977f64cec740eba775b6fab11c2 Sat Nov 19 00:00:00 =
2001
>  From: Herve Jourdain <herve.jourdain@neuf.fr>
> -Date: Fri, 20 May 2016 16:02:23 +0800
> -Subject: [yocto][meta-raspberrypi][PATCH v4 4/5] =
linux-raspberrypi_4.4.inc:
> +Date: Sat, 19 Nov 2016 16:02:23 +0800
> +Subject: [yocto][meta-raspberrypi][PATCH] linux-raspberrypi_4.7.inc:
>   support for .dtbo files for dtb overlays
>
>  Upstream-Status: Pending
> @@ -28,6 +28,19 @@ index a2e7cf7..673c1cb 100644
>
>   PHONY +=3D dtbs dtbs_install
>
> +diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> +index 648a32c..68b8147 100644
> +--- a/arch/arm64/Makefile
> ++++ b/arch/arm64/Makefile
> +@@ -103,6 +103,8 @@ zinstall install:
> +
> + %.dtb: scripts
> +       $(Q)$(MAKE) $(build)=3D$(boot)/dts $(boot)/dts/$@
> ++%.dtbo: scripts
> ++      $(Q)$(MAKE) $(build)=3D$(boot)/dts $(boot)/dts/$@
> +
> + PHONY +=3D dtbs dtbs_install
> +
>  diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
>  index 3079c4f..6cc3766 100644
>  --- a/scripts/Makefile.lib
> diff --git =
a/recipes-kernel/linux/linux-raspberrypi-4.7/0002-support-64bits.patch =
b/recipes-kernel/linux/linux-raspberrypi-4.7/0002-support-64bits.patch
> new file mode 100644
> index 0000000..681e05a
> --- /dev/null
> +++ =
b/recipes-kernel/linux/linux-raspberrypi-4.7/0002-support-64bits.patch
> @@ -0,0 +1,2080 @@
> +From dbf41aef92421f5601e2122cbee921561a56ad4b Mon Sep 17 00:00:00 =
2001
> +From: Herve Jourdain <herve.jourdain@neuf.fr>
> +Date: Wed, 31 Aug 2016 19:30:33 +0800
> +Subject: [PATCH] Support for 64bits (aarch64) v4.7 kernel on =
RaspberryPi3
> +
> +---
> + arch/arm/boot/dts/bcm283x-rpi-smsc9514.dtsi      |   19 +
> + arch/arm/boot/dts/bcm283x.dtsi                   |    2 +
> + arch/arm64/Kconfig.platforms                     |   13 +
> + arch/arm64/boot/dts/broadcom/Makefile            |    5 +
> + arch/arm64/boot/dts/broadcom/bcm2837-rpi-3-b.dts |   47 +
> + arch/arm64/boot/dts/broadcom/bcm2837.dtsi        |   76 ++
> + arch/arm64/boot/dts/broadcom/overlays            |    1 +
> + arch/arm64/configs/bcm2837_defconfig             | 1273 =
++++++++++++++++++++++
> + arch/arm64/include/asm/dma-mapping.h             |   15 +-
> + drivers/irqchip/irq-bcm2835.c                    |   22 +
> + drivers/irqchip/irq-bcm2836.c                    |    8 +-
> + drivers/mmc/host/bcm2835-sdhost.c                |  104 ++
> + drivers/spi/spi-bcm2835.c                        |    4 +
> + drivers/tty/serial/amba-pl011.c                  |    2 +
> + drivers/video/fbdev/bcm2708_fb.c                 |    4 +
> + 15 files changed, 1592 insertions(+), 3 deletions(-)
> + create mode 100644 arch/arm/boot/dts/bcm283x-rpi-smsc9514.dtsi
> + create mode 100644 arch/arm64/boot/dts/broadcom/bcm2837-rpi-3-b.dts
> + create mode 100644 arch/arm64/boot/dts/broadcom/bcm2837.dtsi
> + create mode 120000 arch/arm64/boot/dts/broadcom/overlays
> + create mode 100644 arch/arm64/configs/bcm2837_defconfig
> +
> +diff --git a/arch/arm/boot/dts/bcm283x-rpi-smsc9514.dtsi =
b/arch/arm/boot/dts/bcm283x-rpi-smsc9514.dtsi
> +new file mode 100644
> +index 0000000..3f0a56e
> +--- /dev/null
> ++++ b/arch/arm/boot/dts/bcm283x-rpi-smsc9514.dtsi
> +@@ -0,0 +1,19 @@
> ++/ {
> ++      aliases {
> ++              ethernet =3D &ethernet;
> ++      };
> ++};
> ++
> ++&usb {
> ++      usb1@1 {
> ++              compatible =3D "usb424,9514";
> ++              reg =3D <1>;
> ++              #address-cells =3D <1>;
> ++              #size-cells =3D <0>;
> ++
> ++              ethernet: usbether@1 {
> ++                      compatible =3D "usb424,ec00";
> ++                      reg =3D <1>;
> ++              };
> ++      };
> ++};
> +diff --git a/arch/arm/boot/dts/bcm283x.dtsi =
b/arch/arm/boot/dts/bcm283x.dtsi
> +index 10b27b9..b982522 100644
> +--- a/arch/arm/boot/dts/bcm283x.dtsi
> ++++ b/arch/arm/boot/dts/bcm283x.dtsi
> +@@ -287,6 +287,8 @@
> +                       compatible =3D "brcm,bcm2835-usb";
> +                       reg =3D <0x7e980000 0x10000>;
> +                       interrupts =3D <1 9>;
> ++                      #address-cells =3D <1>;
> ++                      #size-cells =3D <0>;
> +               };
> +
> +               v3d: v3d@7ec00000 {
> +diff --git a/arch/arm64/Kconfig.platforms =
b/arch/arm64/Kconfig.platforms
> +index 7ef1d05..ea88402 100644
> +--- a/arch/arm64/Kconfig.platforms
> ++++ b/arch/arm64/Kconfig.platforms
> +@@ -13,6 +13,19 @@ config ARCH_ALPINE
> +         This enables support for the Annapurna Labs Alpine
> +         Soc family.
> +
> ++config ARCH_BCM2835
> ++      bool "Broadcom BCM2835 family"
> ++      select ARCH_REQUIRE_GPIOLIB
> ++      select CLKSRC_OF
> ++      select PINCTRL
> ++      select PINCTRL_BCM2835
> ++      select ARM_AMBA
> ++      select ARM_TIMER_SP804
> ++      select HAVE_ARM_ARCH_TIMER
> ++      help
> ++        This enables support for the Broadcom BCM2837 SoC.
> ++        This SoC is used in the Raspberry Pi 3 device.
> ++
> + config ARCH_BCM_IPROC
> +       bool "Broadcom iProc SoC Family"
> +       select COMMON_CLK_IPROC
> +diff --git a/arch/arm64/boot/dts/broadcom/Makefile =
b/arch/arm64/boot/dts/broadcom/Makefile
> +index bec1f8b..05faf2a 100644
> +--- a/arch/arm64/boot/dts/broadcom/Makefile
> ++++ b/arch/arm64/boot/dts/broadcom/Makefile
> +@@ -1,6 +1,11 @@
> ++dtb-$(CONFIG_ARCH_BCM2835) +=3D bcm2837-rpi-3-b.dtb
> + dtb-$(CONFIG_ARCH_BCM_IPROC) +=3D ns2-svk.dtb
> + dtb-$(CONFIG_ARCH_VULCAN) +=3D vulcan-eval.dtb
> +
> ++ifeq ($(CONFIG_ARCH_BCM2835),y)
> ++    dts-dirs +=3D overlays
> ++endif
> ++
> + always                :=3D $(dtb-y)
> + subdir-y      :=3D $(dts-dirs)
> + clean-files   :=3D *.dtb
> +diff --git a/arch/arm64/boot/dts/broadcom/bcm2837-rpi-3-b.dts =
b/arch/arm64/boot/dts/broadcom/bcm2837-rpi-3-b.dts
> +new file mode 100644
> +index 0000000..e991ac1
> +--- /dev/null
> ++++ b/arch/arm64/boot/dts/broadcom/bcm2837-rpi-3-b.dts
> +@@ -0,0 +1,47 @@
> ++/dts-v1/;
> ++#include "bcm2837.dtsi"
> ++#include "../../../../arm/boot/dts/bcm2835-rpi.dtsi"
> ++#include "../../../../arm/boot/dts/bcm283x-rpi-smsc9514.dtsi"
> ++
> ++/ {
> ++      compatible =3D "raspberrypi,3-model-b", "brcm,bcm2837";
> ++      model =3D "Raspberry Pi 3 Model B";
> ++
> ++      chosen {
> ++              bootargs =3D "";
> ++      };
> ++
> ++      memory {
> ++              reg =3D <0 0x40000000>;
> ++      };
> ++
> ++      leds {
> ++              act {
> ++                      gpios =3D <&gpio 47 0>;
> ++                      linux,default-trigger =3D "mmc0";
> ++              };
> ++
> ++              pwr {
> ++                      label =3D "PWR";
> ++                      gpios =3D <&gpio 35 0>;
> ++                      default-state =3D "keep";
> ++                      linux,default-trigger =3D "default-on";
> ++              };
> ++      };
> ++};
> ++
> ++&uart1 {
> ++      status =3D "okay";
> ++};
> ++
> ++&i2c0 {
> ++      clock-frequency =3D <100000>;
> ++};
> ++
> ++&i2c1 {
> ++      clock-frequency =3D <100000>;
> ++};
> ++
> ++&i2c2 {
> ++      clock-frequency =3D <100000>;
> ++};
> +diff --git a/arch/arm64/boot/dts/broadcom/bcm2837.dtsi =
b/arch/arm64/boot/dts/broadcom/bcm2837.dtsi
> +new file mode 100644
> +index 0000000..f2a31d0
> +--- /dev/null
> ++++ b/arch/arm64/boot/dts/broadcom/bcm2837.dtsi
> +@@ -0,0 +1,76 @@
> ++#include "../../../../arm/boot/dts/bcm283x.dtsi"
> ++
> ++/ {
> ++      compatible =3D "brcm,bcm2836";
> ++
> ++      soc {
> ++              ranges =3D <0x7e000000 0x3f000000 0x1000000>,
> ++                       <0x40000000 0x40000000 0x00001000>;
> ++              dma-ranges =3D <0xc0000000 0x00000000 0x3f000000>;
> ++
> ++              local_intc: local_intc {
> ++                      compatible =3D "brcm,bcm2836-l1-intc";
> ++                      reg =3D <0x40000000 0x100>;
> ++                      interrupt-controller;
> ++                      #interrupt-cells =3D <1>;
> ++                      interrupt-parent =3D <&local_intc>;
> ++              };
> ++      };
> ++
> ++      timer {
> ++              compatible =3D "arm,armv7-timer";
> ++              interrupt-parent =3D <&local_intc>;
> ++              interrupts =3D <0>, // PHYS_SECURE_PPI
> ++                           <1>, // PHYS_NONSECURE_PPI
> ++                           <3>, // VIRT_PPI
> ++                           <2>; // HYP_PPI
> ++              always-on;
> ++      };
> ++
> ++      cpus: cpus {
> ++              #address-cells =3D <1>;
> ++              #size-cells =3D <0>;
> ++
> ++              cpu0: cpu@0 {
> ++                      device_type =3D "cpu";
> ++                      compatible =3D "arm,cortex-a53";
> ++                      reg =3D <0>;
> ++                      enable-method =3D "spin-table";
> ++                      cpu-release-addr =3D <0x0 0x000000d8>;
> ++              };
> ++
> ++              cpu1: cpu@1 {
> ++                      device_type =3D "cpu";
> ++                      compatible =3D "arm,cortex-a53";
> ++                      reg =3D <1>;
> ++                      enable-method =3D "spin-table";
> ++                      cpu-release-addr =3D <0x0 0x000000e0>;
> ++              };
> ++
> ++              cpu2: cpu@2 {
> ++                      device_type =3D "cpu";
> ++                      compatible =3D "arm,cortex-a53";
> ++                      reg =3D <2>;
> ++                      enable-method =3D "spin-table";
> ++                      cpu-release-addr =3D <0x0 0x000000e8>;
> ++              };
> ++
> ++              cpu3: cpu@3 {
> ++                      device_type =3D "cpu";
> ++                      compatible =3D "arm,cortex-a53";
> ++                      reg =3D <3>;
> ++                      enable-method =3D "spin-table";
> ++                      cpu-release-addr =3D <0x0 0x000000f0>;
> ++              };
> ++      };
> ++};
> ++
> ++/* Make the BCM2835-style global interrupt controller be a child of =
the
> ++ * CPU-local interrupt controller.
> ++ */
> ++&intc {
> ++      compatible =3D "brcm,bcm2836-armctrl-ic";
> ++      reg =3D <0x7e00b200 0x200>;
> ++      interrupt-parent =3D <&local_intc>;
> ++      interrupts =3D <8>;
> ++};
> +diff --git a/arch/arm64/boot/dts/broadcom/overlays =
b/arch/arm64/boot/dts/broadcom/overlays
> +new file mode 120000
> +index 0000000..d33085c
> +--- /dev/null
> ++++ b/arch/arm64/boot/dts/broadcom/overlays
> +@@ -0,0 +1 @@
> ++../../../../arm/boot/dts/overlays/
> +\ No newline at end of file
> +diff --git a/arch/arm64/configs/bcm2837_defconfig =
b/arch/arm64/configs/bcm2837_defconfig
> +new file mode 100644
> +index 0000000..c295da8
> +--- /dev/null
> ++++ b/arch/arm64/configs/bcm2837_defconfig
> +@@ -0,0 +1,1273 @@
> ++CONFIG_LOCALVERSION=3D"-v8"
> ++# CONFIG_LOCALVERSION_AUTO is not set
> ++CONFIG_SYSVIPC=3Dy
> ++CONFIG_POSIX_MQUEUE=3Dy
> ++CONFIG_NO_HZ=3Dy
> ++CONFIG_HIGH_RES_TIMERS=3Dy
> ++CONFIG_BSD_PROCESS_ACCT=3Dy
> ++CONFIG_BSD_PROCESS_ACCT_V3=3Dy
> ++CONFIG_TASKSTATS=3Dy
> ++CONFIG_TASK_DELAY_ACCT=3Dy
> ++CONFIG_TASK_XACCT=3Dy
> ++CONFIG_TASK_IO_ACCOUNTING=3Dy
> ++CONFIG_IKCONFIG=3Dm
> ++CONFIG_IKCONFIG_PROC=3Dy
> ++CONFIG_MEMCG=3Dy
> ++CONFIG_BLK_CGROUP=3Dy
> ++CONFIG_CGROUP_FREEZER=3Dy
> ++CONFIG_CPUSETS=3Dy
> ++CONFIG_CGROUP_DEVICE=3Dy
> ++CONFIG_CGROUP_CPUACCT=3Dy
> ++CONFIG_NAMESPACES=3Dy
> ++CONFIG_USER_NS=3Dy
> ++CONFIG_SCHED_AUTOGROUP=3Dy
> ++CONFIG_BLK_DEV_INITRD=3Dy
> ++CONFIG_EMBEDDED=3Dy
> ++# CONFIG_COMPAT_BRK is not set
> ++CONFIG_PROFILING=3Dy
> ++CONFIG_JUMP_LABEL=3Dy
> ++CONFIG_MODULES=3Dy
> ++CONFIG_MODULE_UNLOAD=3Dy
> ++CONFIG_MODVERSIONS=3Dy
> ++CONFIG_MODULE_SRCVERSION_ALL=3Dy
> ++CONFIG_TRIM_UNUSED_KSYMS=3Dy
> ++CONFIG_BLK_DEV_THROTTLING=3Dy
> ++CONFIG_PARTITION_ADVANCED=3Dy
> ++CONFIG_MAC_PARTITION=3Dy
> ++CONFIG_CFQ_GROUP_IOSCHED=3Dy
> ++CONFIG_ARCH_BCM2835=3Dy
> ++CONFIG_NR_CPUS=3D4
> ++CONFIG_HOTPLUG_CPU=3Dy
> ++CONFIG_PREEMPT_VOLUNTARY=3Dy
> ++CONFIG_HZ_100=3Dy
> ++CONFIG_CLEANCACHE=3Dy
> ++CONFIG_FRONTSWAP=3Dy
> ++CONFIG_CMA=3Dy
> ++CONFIG_ZSMALLOC=3Dm
> ++CONFIG_PGTABLE_MAPPING=3Dy
> ++CONFIG_SECCOMP=3Dy
> ++CONFIG_CMDLINE=3D"console=3DttyS0,115200 kgdboc=3DttyS0,115200 =
root=3D/dev/mmcblk0p2 rootfs=3Dext4 rootwait"
> ++# CONFIG_EFI is not set
> ++CONFIG_BINFMT_MISC=3Dm
> ++CONFIG_COMPAT=3Dy
> ++# CONFIG_SUSPEND is not set
> ++CONFIG_PM=3Dy
> ++CONFIG_CPU_FREQ=3Dy
> ++CONFIG_CPU_FREQ_STAT=3Dm
> ++CONFIG_CPU_FREQ_STAT_DETAILS=3Dy
> ++CONFIG_CPU_FREQ_DEFAULT_GOV_POWERSAVE=3Dy
> ++CONFIG_CPU_FREQ_GOV_PERFORMANCE=3Dy
> ++CONFIG_CPU_FREQ_GOV_USERSPACE=3Dy
> ++CONFIG_CPU_FREQ_GOV_ONDEMAND=3Dy
> ++CONFIG_CPU_FREQ_GOV_CONSERVATIVE=3Dy
> ++CONFIG_CPU_FREQ_GOV_SCHEDUTIL=3Dy
> ++CONFIG_NET=3Dy
> ++CONFIG_PACKET=3Dy
> ++CONFIG_UNIX=3Dy
> ++CONFIG_XFRM_USER=3Dy
> ++CONFIG_NET_KEY=3Dm
> ++CONFIG_INET=3Dy
> ++CONFIG_IP_MULTICAST=3Dy
> ++CONFIG_IP_ADVANCED_ROUTER=3Dy
> ++CONFIG_IP_MULTIPLE_TABLES=3Dy
> ++CONFIG_IP_ROUTE_MULTIPATH=3Dy
> ++CONFIG_IP_ROUTE_VERBOSE=3Dy
> ++CONFIG_IP_PNP=3Dy
> ++CONFIG_IP_PNP_DHCP=3Dy
> ++CONFIG_IP_PNP_RARP=3Dy
> ++CONFIG_NET_IPIP=3Dm
> ++CONFIG_NET_IPGRE_DEMUX=3Dm
> ++CONFIG_NET_IPGRE=3Dm
> ++CONFIG_IP_MROUTE=3Dy
> ++CONFIG_IP_MROUTE_MULTIPLE_TABLES=3Dy
> ++CONFIG_IP_PIMSM_V1=3Dy
> ++CONFIG_IP_PIMSM_V2=3Dy
> ++CONFIG_SYN_COOKIES=3Dy
> ++CONFIG_INET_AH=3Dm
> ++CONFIG_INET_ESP=3Dm
> ++CONFIG_INET_IPCOMP=3Dm
> ++CONFIG_INET_XFRM_MODE_TRANSPORT=3Dm
> ++CONFIG_INET_XFRM_MODE_TUNNEL=3Dm
> ++CONFIG_INET_XFRM_MODE_BEET=3Dm
> ++CONFIG_INET_DIAG=3Dm
> ++CONFIG_IPV6=3Dm
> ++CONFIG_IPV6_ROUTER_PREF=3Dy
> ++CONFIG_INET6_AH=3Dm
> ++CONFIG_INET6_ESP=3Dm
> ++CONFIG_INET6_IPCOMP=3Dm
> ++CONFIG_IPV6_TUNNEL=3Dm
> ++CONFIG_IPV6_MULTIPLE_TABLES=3Dy
> ++CONFIG_IPV6_SUBTREES=3Dy
> ++CONFIG_IPV6_MROUTE=3Dy
> ++CONFIG_IPV6_MROUTE_MULTIPLE_TABLES=3Dy
> ++CONFIG_IPV6_PIMSM_V2=3Dy
> ++CONFIG_NETFILTER=3Dy
> ++CONFIG_NF_CONNTRACK=3Dm
> ++CONFIG_NF_CONNTRACK_EVENTS=3Dy
> ++CONFIG_NF_CONNTRACK_TIMESTAMP=3Dy
> ++CONFIG_NF_CT_PROTO_DCCP=3Dm
> ++CONFIG_NF_CT_PROTO_UDPLITE=3Dm
> ++CONFIG_NF_CONNTRACK_AMANDA=3Dm
> ++CONFIG_NF_CONNTRACK_FTP=3Dm
> ++CONFIG_NF_CONNTRACK_H323=3Dm
> ++CONFIG_NF_CONNTRACK_IRC=3Dm
> ++CONFIG_NF_CONNTRACK_NETBIOS_NS=3Dm
> ++CONFIG_NF_CONNTRACK_SNMP=3Dm
> ++CONFIG_NF_CONNTRACK_PPTP=3Dm
> ++CONFIG_NF_CONNTRACK_SANE=3Dm
> ++CONFIG_NF_CONNTRACK_SIP=3Dm
> ++CONFIG_NF_CONNTRACK_TFTP=3Dm
> ++CONFIG_NF_CT_NETLINK=3Dm
> ++CONFIG_NETFILTER_XT_SET=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_CHECKSUM=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_CLASSIFY=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_CONNMARK=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_DSCP=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_HMARK=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_IDLETIMER=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_LED=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_LOG=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_MARK=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_NFLOG=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_NFQUEUE=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_NOTRACK=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_TEE=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_TPROXY=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_TRACE=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_TCPMSS=3Dm
> ++CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_BPF=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_CLUSTER=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_COMMENT=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_CONNBYTES=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_CONNLABEL=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_CONNLIMIT=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_CONNMARK=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_CONNTRACK=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_CPU=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_DCCP=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_DEVGROUP=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_DSCP=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_ESP=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_HASHLIMIT=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_HELPER=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_IPRANGE=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_IPVS=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_LENGTH=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_LIMIT=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_MAC=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_MARK=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_MULTIPORT=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_NFACCT=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_OSF=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_OWNER=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_POLICY=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_PHYSDEV=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_PKTTYPE=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_QUOTA=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_RATEEST=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_REALM=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_RECENT=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_SOCKET=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_STATE=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_STATISTIC=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_STRING=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_TCPMSS=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_TIME=3Dm
> ++CONFIG_NETFILTER_XT_MATCH_U32=3Dm
> ++CONFIG_IP_SET=3Dm
> ++CONFIG_IP_SET_BITMAP_IP=3Dm
> ++CONFIG_IP_SET_BITMAP_IPMAC=3Dm
> ++CONFIG_IP_SET_BITMAP_PORT=3Dm
> ++CONFIG_IP_SET_HASH_IP=3Dm
> ++CONFIG_IP_SET_HASH_IPPORT=3Dm
> ++CONFIG_IP_SET_HASH_IPPORTIP=3Dm
> ++CONFIG_IP_SET_HASH_IPPORTNET=3Dm
> ++CONFIG_IP_SET_HASH_NET=3Dm
> ++CONFIG_IP_SET_HASH_NETPORT=3Dm
> ++CONFIG_IP_SET_HASH_NETIFACE=3Dm
> ++CONFIG_IP_SET_LIST_SET=3Dm
> ++CONFIG_IP_VS=3Dm
> ++CONFIG_IP_VS_PROTO_TCP=3Dy
> ++CONFIG_IP_VS_PROTO_UDP=3Dy
> ++CONFIG_IP_VS_PROTO_ESP=3Dy
> ++CONFIG_IP_VS_PROTO_AH=3Dy
> ++CONFIG_IP_VS_PROTO_SCTP=3Dy
> ++CONFIG_IP_VS_RR=3Dm
> ++CONFIG_IP_VS_WRR=3Dm
> ++CONFIG_IP_VS_LC=3Dm
> ++CONFIG_IP_VS_WLC=3Dm
> ++CONFIG_IP_VS_LBLC=3Dm
> ++CONFIG_IP_VS_LBLCR=3Dm
> ++CONFIG_IP_VS_DH=3Dm
> ++CONFIG_IP_VS_SH=3Dm
> ++CONFIG_IP_VS_SED=3Dm
> ++CONFIG_IP_VS_NQ=3Dm
> ++CONFIG_IP_VS_FTP=3Dm
> ++CONFIG_IP_VS_PE_SIP=3Dm
> ++CONFIG_NF_CONNTRACK_IPV4=3Dm
> ++CONFIG_IP_NF_IPTABLES=3Dm
> ++CONFIG_IP_NF_MATCH_AH=3Dm
> ++CONFIG_IP_NF_MATCH_ECN=3Dm
> ++CONFIG_IP_NF_MATCH_RPFILTER=3Dm
> ++CONFIG_IP_NF_MATCH_TTL=3Dm
> ++CONFIG_IP_NF_FILTER=3Dm
> ++CONFIG_IP_NF_TARGET_REJECT=3Dm
> ++CONFIG_IP_NF_NAT=3Dm
> ++CONFIG_IP_NF_TARGET_MASQUERADE=3Dm
> ++CONFIG_IP_NF_TARGET_NETMAP=3Dm
> ++CONFIG_IP_NF_TARGET_REDIRECT=3Dm
> ++CONFIG_IP_NF_MANGLE=3Dm
> ++CONFIG_IP_NF_TARGET_CLUSTERIP=3Dm
> ++CONFIG_IP_NF_TARGET_ECN=3Dm
> ++CONFIG_IP_NF_TARGET_TTL=3Dm
> ++CONFIG_IP_NF_RAW=3Dm
> ++CONFIG_IP_NF_ARPTABLES=3Dm
> ++CONFIG_IP_NF_ARPFILTER=3Dm
> ++CONFIG_IP_NF_ARP_MANGLE=3Dm
> ++CONFIG_NF_CONNTRACK_IPV6=3Dm
> ++CONFIG_IP6_NF_IPTABLES=3Dm
> ++CONFIG_IP6_NF_MATCH_AH=3Dm
> ++CONFIG_IP6_NF_MATCH_EUI64=3Dm
> ++CONFIG_IP6_NF_MATCH_FRAG=3Dm
> ++CONFIG_IP6_NF_MATCH_OPTS=3Dm
> ++CONFIG_IP6_NF_MATCH_HL=3Dm
> ++CONFIG_IP6_NF_MATCH_IPV6HEADER=3Dm
> ++CONFIG_IP6_NF_MATCH_MH=3Dm
> ++CONFIG_IP6_NF_MATCH_RPFILTER=3Dm
> ++CONFIG_IP6_NF_MATCH_RT=3Dm
> ++CONFIG_IP6_NF_TARGET_HL=3Dm
> ++CONFIG_IP6_NF_FILTER=3Dm
> ++CONFIG_IP6_NF_TARGET_REJECT=3Dm
> ++CONFIG_IP6_NF_MANGLE=3Dm
> ++CONFIG_IP6_NF_RAW=3Dm
> ++CONFIG_IP6_NF_NAT=3Dm
> ++CONFIG_IP6_NF_TARGET_MASQUERADE=3Dm
> ++CONFIG_IP6_NF_TARGET_NPT=3Dm
> ++CONFIG_BRIDGE_NF_EBTABLES=3Dm
> ++CONFIG_BRIDGE_EBT_BROUTE=3Dm
> ++CONFIG_BRIDGE_EBT_T_FILTER=3Dm
> ++CONFIG_BRIDGE_EBT_T_NAT=3Dm
> ++CONFIG_BRIDGE_EBT_802_3=3Dm
> ++CONFIG_BRIDGE_EBT_AMONG=3Dm
> ++CONFIG_BRIDGE_EBT_ARP=3Dm
> ++CONFIG_BRIDGE_EBT_IP=3Dm
> ++CONFIG_BRIDGE_EBT_IP6=3Dm
> ++CONFIG_BRIDGE_EBT_LIMIT=3Dm
> ++CONFIG_BRIDGE_EBT_MARK=3Dm
> ++CONFIG_BRIDGE_EBT_PKTTYPE=3Dm
> ++CONFIG_BRIDGE_EBT_STP=3Dm
> ++CONFIG_BRIDGE_EBT_VLAN=3Dm
> ++CONFIG_BRIDGE_EBT_ARPREPLY=3Dm
> ++CONFIG_BRIDGE_EBT_DNAT=3Dm
> ++CONFIG_BRIDGE_EBT_MARK_T=3Dm
> ++CONFIG_BRIDGE_EBT_REDIRECT=3Dm
> ++CONFIG_BRIDGE_EBT_SNAT=3Dm
> ++CONFIG_BRIDGE_EBT_LOG=3Dm
> ++CONFIG_BRIDGE_EBT_NFLOG=3Dm
> ++CONFIG_SCTP_COOKIE_HMAC_SHA1=3Dy
> ++CONFIG_ATM=3Dm
> ++CONFIG_L2TP=3Dm
> ++CONFIG_L2TP_V3=3Dy
> ++CONFIG_L2TP_IP=3Dm
> ++CONFIG_L2TP_ETH=3Dm
> ++CONFIG_BRIDGE=3Dm
> ++CONFIG_VLAN_8021Q=3Dm
> ++CONFIG_VLAN_8021Q_GVRP=3Dy
> ++CONFIG_ATALK=3Dm
> ++CONFIG_6LOWPAN=3Dm
> ++CONFIG_IEEE802154=3Dm
> ++CONFIG_IEEE802154_6LOWPAN=3Dm
> ++CONFIG_MAC802154=3Dm
> ++CONFIG_NET_SCHED=3Dy
> ++CONFIG_NET_SCH_CBQ=3Dm
> ++CONFIG_NET_SCH_HTB=3Dm
> ++CONFIG_NET_SCH_HFSC=3Dm
> ++CONFIG_NET_SCH_PRIO=3Dm
> ++CONFIG_NET_SCH_MULTIQ=3Dm
> ++CONFIG_NET_SCH_RED=3Dm
> ++CONFIG_NET_SCH_SFB=3Dm
> ++CONFIG_NET_SCH_SFQ=3Dm
> ++CONFIG_NET_SCH_TEQL=3Dm
> ++CONFIG_NET_SCH_TBF=3Dm
> ++CONFIG_NET_SCH_GRED=3Dm
> ++CONFIG_NET_SCH_DSMARK=3Dm
> ++CONFIG_NET_SCH_NETEM=3Dm
> ++CONFIG_NET_SCH_DRR=3Dm
> ++CONFIG_NET_SCH_MQPRIO=3Dm
> ++CONFIG_NET_SCH_CHOKE=3Dm
> ++CONFIG_NET_SCH_QFQ=3Dm
> ++CONFIG_NET_SCH_CODEL=3Dm
> ++CONFIG_NET_SCH_FQ_CODEL=3Dm
> ++CONFIG_NET_SCH_INGRESS=3Dm
> ++CONFIG_NET_SCH_PLUG=3Dm
> ++CONFIG_NET_CLS_BASIC=3Dm
> ++CONFIG_NET_CLS_TCINDEX=3Dm
> ++CONFIG_NET_CLS_ROUTE4=3Dm
> ++CONFIG_NET_CLS_FW=3Dm
> ++CONFIG_NET_CLS_U32=3Dm
> ++CONFIG_CLS_U32_MARK=3Dy
> ++CONFIG_NET_CLS_RSVP=3Dm
> ++CONFIG_NET_CLS_RSVP6=3Dm
> ++CONFIG_NET_CLS_FLOW=3Dm
> ++CONFIG_NET_CLS_CGROUP=3Dm
> ++CONFIG_NET_EMATCH=3Dy
> ++CONFIG_NET_EMATCH_CMP=3Dm
> ++CONFIG_NET_EMATCH_NBYTE=3Dm
> ++CONFIG_NET_EMATCH_U32=3Dm
> ++CONFIG_NET_EMATCH_META=3Dm
> ++CONFIG_NET_EMATCH_TEXT=3Dm
> ++CONFIG_NET_EMATCH_IPSET=3Dm
> ++CONFIG_NET_CLS_ACT=3Dy
> ++CONFIG_NET_ACT_POLICE=3Dm
> ++CONFIG_NET_ACT_GACT=3Dm
> ++CONFIG_GACT_PROB=3Dy
> ++CONFIG_NET_ACT_MIRRED=3Dm
> ++CONFIG_NET_ACT_IPT=3Dm
> ++CONFIG_NET_ACT_NAT=3Dm
> ++CONFIG_NET_ACT_PEDIT=3Dm
> ++CONFIG_NET_ACT_SIMP=3Dm
> ++CONFIG_NET_ACT_SKBEDIT=3Dm
> ++CONFIG_NET_ACT_CSUM=3Dm
> ++CONFIG_BATMAN_ADV=3Dm
> ++CONFIG_OPENVSWITCH=3Dm
> ++CONFIG_NET_PKTGEN=3Dm
> ++CONFIG_HAMRADIO=3Dy
> ++CONFIG_AX25=3Dm
> ++CONFIG_NETROM=3Dm
> ++CONFIG_ROSE=3Dm
> ++CONFIG_MKISS=3Dm
> ++CONFIG_6PACK=3Dm
> ++CONFIG_BPQETHER=3Dm
> ++CONFIG_BAYCOM_SER_FDX=3Dm
> ++CONFIG_BAYCOM_SER_HDX=3Dm
> ++CONFIG_YAM=3Dm
> ++CONFIG_CAN=3Dm
> ++CONFIG_CAN_VCAN=3Dm
> ++CONFIG_CAN_MCP251X=3Dm
> ++CONFIG_IRDA=3Dm
> ++CONFIG_IRLAN=3Dm
> ++CONFIG_IRNET=3Dm
> ++CONFIG_IRCOMM=3Dm
> ++CONFIG_IRDA_ULTRA=3Dy
> ++CONFIG_IRDA_CACHE_LAST_LSAP=3Dy
> ++CONFIG_IRDA_FAST_RR=3Dy
> ++CONFIG_IRTTY_SIR=3Dm
> ++CONFIG_KINGSUN_DONGLE=3Dm
> ++CONFIG_KSDAZZLE_DONGLE=3Dm
> ++CONFIG_KS959_DONGLE=3Dm
> ++CONFIG_USB_IRDA=3Dm
> ++CONFIG_SIGMATEL_FIR=3Dm
> ++CONFIG_MCS_FIR=3Dm
> ++CONFIG_BT=3Dm
> ++CONFIG_BT_RFCOMM=3Dm
> ++CONFIG_BT_RFCOMM_TTY=3Dy
> ++CONFIG_BT_BNEP=3Dm
> ++CONFIG_BT_BNEP_MC_FILTER=3Dy
> ++CONFIG_BT_BNEP_PROTO_FILTER=3Dy
> ++CONFIG_BT_HIDP=3Dm
> ++CONFIG_BT_6LOWPAN=3Dm
> ++CONFIG_BT_HCIBTUSB=3Dm
> ++CONFIG_BT_HCIUART=3Dm
> ++CONFIG_BT_HCIUART_3WIRE=3Dy
> ++CONFIG_BT_HCIUART_BCM=3Dy
> ++CONFIG_BT_HCIBCM203X=3Dm
> ++CONFIG_BT_HCIBPA10X=3Dm
> ++CONFIG_BT_HCIBFUSB=3Dm
> ++CONFIG_BT_HCIVHCI=3Dm
> ++CONFIG_BT_MRVL=3Dm
> ++CONFIG_BT_MRVL_SDIO=3Dm
> ++CONFIG_BT_ATH3K=3Dm
> ++CONFIG_BT_WILINK=3Dm
> ++CONFIG_CFG80211_WEXT=3Dy
> ++CONFIG_MAC80211=3Dm
> ++CONFIG_MAC80211_MESH=3Dy
> ++CONFIG_WIMAX=3Dm
> ++CONFIG_RFKILL=3Dm
> ++CONFIG_RFKILL_INPUT=3Dy
> ++CONFIG_NET_9P=3Dm
> ++CONFIG_NFC=3Dm
> ++CONFIG_DEVTMPFS=3Dy
> ++CONFIG_DEVTMPFS_MOUNT=3Dy
> ++CONFIG_DMA_CMA=3Dy
> ++CONFIG_MTD=3Dm
> ++CONFIG_MTD_BLOCK=3Dm
> ++CONFIG_MTD_NAND=3Dm
> ++CONFIG_MTD_UBI=3Dm
> ++CONFIG_OF_CONFIGFS=3Dy
> ++CONFIG_ZRAM=3Dm
> ++CONFIG_ZRAM_LZ4_COMPRESS=3Dy
> ++CONFIG_BLK_DEV_LOOP=3Dy
> ++CONFIG_BLK_DEV_CRYPTOLOOP=3Dm
> ++CONFIG_BLK_DEV_DRBD=3Dm
> ++CONFIG_BLK_DEV_NBD=3Dm
> ++CONFIG_BLK_DEV_RAM=3Dy
> ++CONFIG_CDROM_PKTCDVD=3Dm
> ++CONFIG_ATA_OVER_ETH=3Dm
> ++CONFIG_EEPROM_AT24=3Dm
> ++CONFIG_TI_ST=3Dm
> ++# CONFIG_BCM2708_VCHIQ is not set
> ++CONFIG_SCSI=3Dy
> ++# CONFIG_SCSI_PROC_FS is not set
> ++CONFIG_BLK_DEV_SD=3Dy
> ++CONFIG_CHR_DEV_ST=3Dm
> ++CONFIG_CHR_DEV_OSST=3Dm
> ++CONFIG_BLK_DEV_SR=3Dm
> ++CONFIG_CHR_DEV_SG=3Dm
> ++CONFIG_SCSI_ISCSI_ATTRS=3Dy
> ++CONFIG_ISCSI_TCP=3Dm
> ++CONFIG_ISCSI_BOOT_SYSFS=3Dm
> ++CONFIG_MD=3Dy
> ++CONFIG_MD_LINEAR=3Dm
> ++CONFIG_MD_RAID0=3Dm
> ++CONFIG_BLK_DEV_DM=3Dm
> ++CONFIG_DM_CRYPT=3Dm
> ++CONFIG_DM_SNAPSHOT=3Dm
> ++CONFIG_DM_THIN_PROVISIONING=3Dm
> ++CONFIG_DM_MIRROR=3Dm
> ++CONFIG_DM_LOG_USERSPACE=3Dm
> ++CONFIG_DM_RAID=3Dm
> ++CONFIG_DM_ZERO=3Dm
> ++CONFIG_DM_DELAY=3Dm
> ++CONFIG_NETDEVICES=3Dy
> ++CONFIG_BONDING=3Dm
> ++CONFIG_DUMMY=3Dm
> ++CONFIG_IFB=3Dm
> ++CONFIG_MACVLAN=3Dm
> ++CONFIG_NETCONSOLE=3Dm
> ++CONFIG_TUN=3Dm
> ++CONFIG_VETH=3Dm
> ++# CONFIG_NET_VENDOR_AMD is not set
> ++CONFIG_ENC28J60=3Dm
> ++CONFIG_QCA7000=3Dm
> ++CONFIG_MDIO_BITBANG=3Dm
> ++CONFIG_PPP=3Dm
> ++CONFIG_PPP_BSDCOMP=3Dm
> ++CONFIG_PPP_DEFLATE=3Dm
> ++CONFIG_PPP_FILTER=3Dy
> ++CONFIG_PPP_MPPE=3Dm
> ++CONFIG_PPP_MULTILINK=3Dy
> ++CONFIG_PPPOATM=3Dm
> ++CONFIG_PPPOE=3Dm
> ++CONFIG_PPPOL2TP=3Dm
> ++CONFIG_PPP_ASYNC=3Dm
> ++CONFIG_PPP_SYNC_TTY=3Dm
> ++CONFIG_SLIP=3Dm
> ++CONFIG_SLIP_COMPRESSED=3Dy
> ++CONFIG_SLIP_SMART=3Dy
> ++CONFIG_USB_CATC=3Dm
> ++CONFIG_USB_KAWETH=3Dm
> ++CONFIG_USB_PEGASUS=3Dm
> ++CONFIG_USB_RTL8150=3Dm
> ++CONFIG_USB_RTL8152=3Dm
> ++CONFIG_USB_USBNET=3Dy
> ++CONFIG_USB_NET_AX8817X=3Dm
> ++CONFIG_USB_NET_AX88179_178A=3Dm
> ++CONFIG_USB_NET_CDCETHER=3Dm
> ++CONFIG_USB_NET_CDC_EEM=3Dm
> ++CONFIG_USB_NET_CDC_NCM=3Dm
> ++CONFIG_USB_NET_HUAWEI_CDC_NCM=3Dm
> ++CONFIG_USB_NET_CDC_MBIM=3Dm
> ++CONFIG_USB_NET_DM9601=3Dm
> ++CONFIG_USB_NET_SR9700=3Dm
> ++CONFIG_USB_NET_SR9800=3Dm
> ++CONFIG_USB_NET_SMSC75XX=3Dm
> ++CONFIG_USB_NET_SMSC95XX=3Dy
> ++CONFIG_USB_NET_GL620A=3Dm
> ++CONFIG_USB_NET_NET1080=3Dm
> ++CONFIG_USB_NET_PLUSB=3Dm
> ++CONFIG_USB_NET_MCS7830=3Dm
> ++CONFIG_USB_NET_CDC_SUBSET=3Dm
> ++CONFIG_USB_ALI_M5632=3Dy
> ++CONFIG_USB_AN2720=3Dy
> ++CONFIG_USB_EPSON2888=3Dy
> ++CONFIG_USB_KC2190=3Dy
> ++CONFIG_USB_NET_ZAURUS=3Dm
> ++CONFIG_USB_NET_CX82310_ETH=3Dm
> ++CONFIG_USB_NET_KALMIA=3Dm
> ++CONFIG_USB_NET_QMI_WWAN=3Dm
> ++CONFIG_USB_HSO=3Dm
> ++CONFIG_USB_NET_INT51X1=3Dm
> ++CONFIG_USB_IPHETH=3Dm
> ++CONFIG_USB_SIERRA_NET=3Dm
> ++CONFIG_USB_VL600=3Dm
> ++CONFIG_ATH9K=3Dm
> ++CONFIG_ATH9K_HTC=3Dm
> ++CONFIG_CARL9170=3Dm
> ++CONFIG_ATH6KL=3Dm
> ++CONFIG_ATH6KL_USB=3Dm
> ++CONFIG_AR5523=3Dm
> ++CONFIG_AT76C50X_USB=3Dm
> ++CONFIG_B43=3Dm
> ++# CONFIG_B43_PHY_N is not set
> ++CONFIG_B43LEGACY=3Dm
> ++CONFIG_BRCMFMAC=3Dm
> ++CONFIG_BRCMFMAC_USB=3Dy
> ++CONFIG_HOSTAP=3Dm
> ++CONFIG_P54_COMMON=3Dm
> ++CONFIG_P54_USB=3Dm
> ++CONFIG_LIBERTAS=3Dm
> ++CONFIG_LIBERTAS_USB=3Dm
> ++CONFIG_LIBERTAS_SDIO=3Dm
> ++CONFIG_LIBERTAS_THINFIRM=3Dm
> ++CONFIG_LIBERTAS_THINFIRM_USB=3Dm
> ++CONFIG_MWIFIEX=3Dm
> ++CONFIG_MWIFIEX_SDIO=3Dm
> ++CONFIG_MT7601U=3Dm
> ++CONFIG_RT2X00=3Dm
> ++CONFIG_RT2500USB=3Dm
> ++CONFIG_RT73USB=3Dm
> ++CONFIG_RT2800USB=3Dm
> ++CONFIG_RT2800USB_RT3573=3Dy
> ++CONFIG_RT2800USB_RT53XX=3Dy
> ++CONFIG_RT2800USB_RT55XX=3Dy
> ++CONFIG_RT2800USB_UNKNOWN=3Dy
> ++CONFIG_RTL8187=3Dm
> ++CONFIG_USB_ZD1201=3Dm
> ++CONFIG_ZD1211RW=3Dm
> ++CONFIG_MAC80211_HWSIM=3Dm
> ++CONFIG_USB_NET_RNDIS_WLAN=3Dm
> ++CONFIG_WIMAX_I2400M_USB=3Dm
> ++CONFIG_IEEE802154_AT86RF230=3Dm
> ++CONFIG_IEEE802154_MRF24J40=3Dm
> ++CONFIG_IEEE802154_CC2520=3Dm
> ++CONFIG_INPUT_POLLDEV=3Dm
> ++# CONFIG_INPUT_MOUSEDEV_PSAUX is not set
> ++CONFIG_INPUT_JOYDEV=3Dm
> ++CONFIG_INPUT_EVDEV=3Dm
> ++# CONFIG_KEYBOARD_ATKBD is not set
> ++CONFIG_KEYBOARD_GPIO=3Dm
> ++# CONFIG_INPUT_MOUSE is not set
> ++CONFIG_INPUT_JOYSTICK=3Dy
> ++CONFIG_JOYSTICK_IFORCE=3Dm
> ++CONFIG_JOYSTICK_IFORCE_USB=3Dy
> ++CONFIG_JOYSTICK_XPAD=3Dm
> ++CONFIG_JOYSTICK_XPAD_FF=3Dy
> ++CONFIG_JOYSTICK_XPAD_LEDS=3Dy
> ++CONFIG_JOYSTICK_RPISENSE=3Dm
> ++CONFIG_INPUT_TOUCHSCREEN=3Dy
> ++CONFIG_TOUCHSCREEN_ADS7846=3Dm
> ++CONFIG_TOUCHSCREEN_EGALAX=3Dm
> ++CONFIG_TOUCHSCREEN_FT6236=3Dm
> ++CONFIG_TOUCHSCREEN_RPI_FT5406=3Dm
> ++CONFIG_TOUCHSCREEN_USB_COMPOSITE=3Dm
> ++CONFIG_TOUCHSCREEN_STMPE=3Dm
> ++CONFIG_INPUT_MISC=3Dy
> ++CONFIG_INPUT_AD714X=3Dm
> ++CONFIG_INPUT_ATI_REMOTE2=3Dm
> ++CONFIG_INPUT_KEYSPAN_REMOTE=3Dm
> ++CONFIG_INPUT_POWERMATE=3Dm
> ++CONFIG_INPUT_YEALINK=3Dm
> ++CONFIG_INPUT_CM109=3Dm
> ++CONFIG_INPUT_UINPUT=3Dm
> ++CONFIG_INPUT_GPIO_ROTARY_ENCODER=3Dm
> ++CONFIG_INPUT_ADXL34X=3Dm
> ++CONFIG_INPUT_CMA3000=3Dm
> ++CONFIG_SERIO=3Dm
> ++CONFIG_SERIO_RAW=3Dm
> ++CONFIG_GAMEPORT=3Dm
> ++CONFIG_GAMEPORT_NS558=3Dm
> ++CONFIG_GAMEPORT_L4=3Dm
> ++# CONFIG_LEGACY_PTYS is not set
> ++# CONFIG_DEVKMEM is not set
> ++CONFIG_SERIAL_8250=3Dy
> ++# CONFIG_SERIAL_8250_DEPRECATED_OPTIONS is not set
> ++CONFIG_SERIAL_8250_CONSOLE=3Dy
> ++# CONFIG_SERIAL_8250_DMA is not set
> ++CONFIG_SERIAL_8250_NR_UARTS=3D1
> ++CONFIG_SERIAL_8250_RUNTIME_UARTS=3D1
> ++CONFIG_SERIAL_8250_EXTENDED=3Dy
> ++CONFIG_SERIAL_8250_SHARE_IRQ=3Dy
> ++CONFIG_SERIAL_8250_BCM2835AUX=3Dy
> ++CONFIG_SERIAL_OF_PLATFORM=3Dy
> ++CONFIG_SERIAL_AMBA_PL011=3Dy
> ++CONFIG_SERIAL_AMBA_PL011_CONSOLE=3Dy
> ++CONFIG_TTY_PRINTK=3Dy
> ++CONFIG_HW_RANDOM=3Dy
> ++CONFIG_RAW_DRIVER=3Dy
> ++CONFIG_I2C=3Dy
> ++CONFIG_I2C_CHARDEV=3Dm
> ++CONFIG_I2C_MUX_PCA954x=3Dm
> ++CONFIG_I2C_BCM2835=3Dm
> ++CONFIG_I2C_GPIO=3Dm
> ++CONFIG_SPI=3Dy
> ++CONFIG_SPI_BCM2835=3Dm
> ++CONFIG_SPI_BCM2835AUX=3Dm
> ++CONFIG_SPI_SPIDEV=3Dy
> ++CONFIG_PPS=3Dm
> ++CONFIG_PPS_CLIENT_LDISC=3Dm
> ++CONFIG_PPS_CLIENT_GPIO=3Dm
> ++CONFIG_GPIO_SYSFS=3Dy
> ++CONFIG_GPIO_BCM_VIRT=3Dy
> ++CONFIG_GPIO_ARIZONA=3Dm
> ++CONFIG_GPIO_STMPE=3Dy
> ++CONFIG_GPIO_MCP23S08=3Dm
> ++CONFIG_W1=3Dm
> ++CONFIG_W1_MASTER_DS2490=3Dm
> ++CONFIG_W1_MASTER_DS2482=3Dm
> ++CONFIG_W1_MASTER_DS1WM=3Dm
> ++CONFIG_W1_MASTER_GPIO=3Dm
> ++CONFIG_W1_SLAVE_THERM=3Dm
> ++CONFIG_W1_SLAVE_SMEM=3Dm
> ++CONFIG_W1_SLAVE_DS2408=3Dm
> ++CONFIG_W1_SLAVE_DS2413=3Dm
> ++CONFIG_W1_SLAVE_DS2406=3Dm
> ++CONFIG_W1_SLAVE_DS2423=3Dm
> ++CONFIG_W1_SLAVE_DS2431=3Dm
> ++CONFIG_W1_SLAVE_DS2433=3Dm
> ++CONFIG_W1_SLAVE_DS2760=3Dm
> ++CONFIG_W1_SLAVE_DS2780=3Dm
> ++CONFIG_W1_SLAVE_DS2781=3Dm
> ++CONFIG_W1_SLAVE_DS28E04=3Dm
> ++CONFIG_W1_SLAVE_BQ27000=3Dm
> ++CONFIG_BATTERY_DS2760=3Dm
> ++CONFIG_POWER_RESET_GPIO=3Dy
> ++CONFIG_HWMON=3Dm
> ++CONFIG_SENSORS_SHT21=3Dm
> ++CONFIG_SENSORS_SHTC1=3Dm
> ++CONFIG_THERMAL=3Dy
> ++CONFIG_THERMAL_BCM2835=3Dy
> ++CONFIG_WATCHDOG=3Dy
> ++CONFIG_BCM2835_WDT=3Dm
> ++CONFIG_MFD_STMPE=3Dy
> ++CONFIG_STMPE_SPI=3Dy
> ++CONFIG_MFD_SYSCON=3Dy
> ++CONFIG_MFD_ARIZONA_I2C=3Dm
> ++CONFIG_MFD_ARIZONA_SPI=3Dm
> ++CONFIG_MFD_WM5102=3Dy
> ++CONFIG_MEDIA_SUPPORT=3Dm
> ++CONFIG_MEDIA_CAMERA_SUPPORT=3Dy
> ++CONFIG_MEDIA_ANALOG_TV_SUPPORT=3Dy
> ++CONFIG_MEDIA_DIGITAL_TV_SUPPORT=3Dy
> ++CONFIG_MEDIA_RADIO_SUPPORT=3Dy
> ++CONFIG_MEDIA_RC_SUPPORT=3Dy
> ++CONFIG_MEDIA_CONTROLLER=3Dy
> ++CONFIG_LIRC=3Dm
> ++CONFIG_RC_DEVICES=3Dy
> ++CONFIG_RC_ATI_REMOTE=3Dm
> ++CONFIG_IR_IMON=3Dm
> ++CONFIG_IR_MCEUSB=3Dm
> ++CONFIG_IR_REDRAT3=3Dm
> ++CONFIG_IR_STREAMZAP=3Dm
> ++CONFIG_IR_IGUANA=3Dm
> ++CONFIG_IR_TTUSBIR=3Dm
> ++CONFIG_RC_LOOPBACK=3Dm
> ++CONFIG_IR_GPIO_CIR=3Dm
> ++CONFIG_MEDIA_USB_SUPPORT=3Dy
> ++CONFIG_USB_VIDEO_CLASS=3Dm
> ++CONFIG_USB_M5602=3Dm
> ++CONFIG_USB_STV06XX=3Dm
> ++CONFIG_USB_GL860=3Dm
> ++CONFIG_USB_GSPCA_BENQ=3Dm
> ++CONFIG_USB_GSPCA_CONEX=3Dm
> ++CONFIG_USB_GSPCA_CPIA1=3Dm
> ++CONFIG_USB_GSPCA_DTCS033=3Dm
> ++CONFIG_USB_GSPCA_ETOMS=3Dm
> ++CONFIG_USB_GSPCA_FINEPIX=3Dm
> ++CONFIG_USB_GSPCA_JEILINJ=3Dm
> ++CONFIG_USB_GSPCA_JL2005BCD=3Dm
> ++CONFIG_USB_GSPCA_KINECT=3Dm
> ++CONFIG_USB_GSPCA_KONICA=3Dm
> ++CONFIG_USB_GSPCA_MARS=3Dm
> ++CONFIG_USB_GSPCA_MR97310A=3Dm
> ++CONFIG_USB_GSPCA_NW80X=3Dm
> ++CONFIG_USB_GSPCA_OV519=3Dm
> ++CONFIG_USB_GSPCA_OV534=3Dm
> ++CONFIG_USB_GSPCA_OV534_9=3Dm
> ++CONFIG_USB_GSPCA_PAC207=3Dm
> ++CONFIG_USB_GSPCA_PAC7302=3Dm
> ++CONFIG_USB_GSPCA_PAC7311=3Dm
> ++CONFIG_USB_GSPCA_SE401=3Dm
> ++CONFIG_USB_GSPCA_SN9C2028=3Dm
> ++CONFIG_USB_GSPCA_SN9C20X=3Dm
> ++CONFIG_USB_GSPCA_SONIXB=3Dm
> ++CONFIG_USB_GSPCA_SONIXJ=3Dm
> ++CONFIG_USB_GSPCA_SPCA500=3Dm
> ++CONFIG_USB_GSPCA_SPCA501=3Dm
> ++CONFIG_USB_GSPCA_SPCA505=3Dm
> ++CONFIG_USB_GSPCA_SPCA506=3Dm
> ++CONFIG_USB_GSPCA_SPCA508=3Dm
> ++CONFIG_USB_GSPCA_SPCA561=3Dm
> ++CONFIG_USB_GSPCA_SPCA1528=3Dm
> ++CONFIG_USB_GSPCA_SQ905=3Dm
> ++CONFIG_USB_GSPCA_SQ905C=3Dm
> ++CONFIG_USB_GSPCA_SQ930X=3Dm
> ++CONFIG_USB_GSPCA_STK014=3Dm
> ++CONFIG_USB_GSPCA_STK1135=3Dm
> ++CONFIG_USB_GSPCA_STV0680=3Dm
> ++CONFIG_USB_GSPCA_SUNPLUS=3Dm
> ++CONFIG_USB_GSPCA_T613=3Dm
> ++CONFIG_USB_GSPCA_TOPRO=3Dm
> ++CONFIG_USB_GSPCA_TV8532=3Dm
> ++CONFIG_USB_GSPCA_VC032X=3Dm
> ++CONFIG_USB_GSPCA_VICAM=3Dm
> ++CONFIG_USB_GSPCA_XIRLINK_CIT=3Dm
> ++CONFIG_USB_GSPCA_ZC3XX=3Dm
> ++CONFIG_USB_PWC=3Dm
> ++CONFIG_VIDEO_CPIA2=3Dm
> ++CONFIG_USB_ZR364XX=3Dm
> ++CONFIG_USB_STKWEBCAM=3Dm
> ++CONFIG_USB_S2255=3Dm
> ++CONFIG_VIDEO_USBTV=3Dm
> ++CONFIG_VIDEO_PVRUSB2=3Dm
> ++CONFIG_VIDEO_HDPVR=3Dm
> ++CONFIG_VIDEO_USBVISION=3Dm
> ++CONFIG_VIDEO_STK1160_COMMON=3Dm
> ++CONFIG_VIDEO_STK1160_AC97=3Dy
> ++CONFIG_VIDEO_GO7007=3Dm
> ++CONFIG_VIDEO_GO7007_USB=3Dm
> ++CONFIG_VIDEO_GO7007_USB_S2250_BOARD=3Dm
> ++CONFIG_VIDEO_AU0828=3Dm
> ++CONFIG_VIDEO_AU0828_RC=3Dy
> ++CONFIG_VIDEO_CX231XX=3Dm
> ++CONFIG_VIDEO_CX231XX_ALSA=3Dm
> ++CONFIG_VIDEO_CX231XX_DVB=3Dm
> ++CONFIG_VIDEO_TM6000=3Dm
> ++CONFIG_VIDEO_TM6000_ALSA=3Dm
> ++CONFIG_VIDEO_TM6000_DVB=3Dm
> ++CONFIG_DVB_USB=3Dm
> ++CONFIG_DVB_USB_A800=3Dm
> ++CONFIG_DVB_USB_DIBUSB_MB=3Dm
> ++CONFIG_DVB_USB_DIBUSB_MB_FAULTY=3Dy
> ++CONFIG_DVB_USB_DIBUSB_MC=3Dm
> ++CONFIG_DVB_USB_DIB0700=3Dm
> ++CONFIG_DVB_USB_UMT_010=3Dm
> ++CONFIG_DVB_USB_CXUSB=3Dm
> ++CONFIG_DVB_USB_M920X=3Dm
> ++CONFIG_DVB_USB_DIGITV=3Dm
> ++CONFIG_DVB_USB_VP7045=3Dm
> ++CONFIG_DVB_USB_VP702X=3Dm
> ++CONFIG_DVB_USB_GP8PSK=3Dm
> ++CONFIG_DVB_USB_NOVA_T_USB2=3Dm
> ++CONFIG_DVB_USB_TTUSB2=3Dm
> ++CONFIG_DVB_USB_DTT200U=3Dm
> ++CONFIG_DVB_USB_OPERA1=3Dm
> ++CONFIG_DVB_USB_AF9005=3Dm
> ++CONFIG_DVB_USB_AF9005_REMOTE=3Dm
> ++CONFIG_DVB_USB_PCTV452E=3Dm
> ++CONFIG_DVB_USB_DW2102=3Dm
> ++CONFIG_DVB_USB_CINERGY_T2=3Dm
> ++CONFIG_DVB_USB_DTV5100=3Dm
> ++CONFIG_DVB_USB_FRIIO=3Dm
> ++CONFIG_DVB_USB_AZ6027=3Dm
> ++CONFIG_DVB_USB_TECHNISAT_USB2=3Dm
> ++CONFIG_DVB_USB_V2=3Dm
> ++CONFIG_DVB_USB_AF9015=3Dm
> ++CONFIG_DVB_USB_AF9035=3Dm
> ++CONFIG_DVB_USB_ANYSEE=3Dm
> ++CONFIG_DVB_USB_AU6610=3Dm
> ++CONFIG_DVB_USB_AZ6007=3Dm
> ++CONFIG_DVB_USB_CE6230=3Dm
> ++CONFIG_DVB_USB_EC168=3Dm
> ++CONFIG_DVB_USB_GL861=3Dm
> ++CONFIG_DVB_USB_LME2510=3Dm
> ++CONFIG_DVB_USB_MXL111SF=3Dm
> ++CONFIG_DVB_USB_RTL28XXU=3Dm
> ++CONFIG_DVB_USB_DVBSKY=3Dm
> ++CONFIG_SMS_USB_DRV=3Dm
> ++CONFIG_DVB_B2C2_FLEXCOP_USB=3Dm
> ++CONFIG_DVB_AS102=3Dm
> ++CONFIG_VIDEO_EM28XX=3Dm
> ++CONFIG_VIDEO_EM28XX_V4L2=3Dm
> ++CONFIG_VIDEO_EM28XX_ALSA=3Dm
> ++CONFIG_VIDEO_EM28XX_DVB=3Dm
> ++CONFIG_V4L_PLATFORM_DRIVERS=3Dy
> ++CONFIG_VIDEO_BCM2835=3Dy
> ++CONFIG_RADIO_SI470X=3Dy
> ++CONFIG_USB_SI470X=3Dm
> ++CONFIG_I2C_SI470X=3Dm
> ++CONFIG_RADIO_SI4713=3Dm
> ++CONFIG_I2C_SI4713=3Dm
> ++CONFIG_USB_MR800=3Dm
> ++CONFIG_USB_DSBR=3Dm
> ++CONFIG_RADIO_SHARK=3Dm
> ++CONFIG_RADIO_SHARK2=3Dm
> ++CONFIG_USB_KEENE=3Dm
> ++CONFIG_USB_MA901=3Dm
> ++CONFIG_RADIO_TEA5764=3Dm
> ++CONFIG_RADIO_SAA7706H=3Dm
> ++CONFIG_RADIO_TEF6862=3Dm
> ++CONFIG_RADIO_WL1273=3Dm
> ++CONFIG_RADIO_WL128X=3Dm
> ++# CONFIG_MEDIA_SUBDRV_AUTOSELECT is not set
> ++CONFIG_VIDEO_UDA1342=3Dm
> ++CONFIG_VIDEO_SONY_BTF_MPX=3Dm
> ++CONFIG_VIDEO_TVP5150=3Dm
> ++CONFIG_VIDEO_TW2804=3Dm
> ++CONFIG_VIDEO_TW9903=3Dm
> ++CONFIG_VIDEO_TW9906=3Dm
> ++CONFIG_VIDEO_OV7640=3Dm
> ++CONFIG_VIDEO_MT9V011=3Dm
> ++CONFIG_DRM=3Dm
> ++CONFIG_DRM_LOAD_EDID_FIRMWARE=3Dy
> ++CONFIG_DRM_UDL=3Dm
> ++CONFIG_DRM_VC4=3Dm
> ++CONFIG_FB=3Dy
> ++CONFIG_FB_BCM2708=3Dy
> ++CONFIG_FB_UDL=3Dm
> ++CONFIG_FB_SSD1307=3Dm
> ++CONFIG_FB_RPISENSE=3Dm
> ++# CONFIG_BACKLIGHT_GENERIC is not set
> ++CONFIG_BACKLIGHT_RPI=3Dm
> ++CONFIG_BACKLIGHT_GPIO=3Dm
> ++CONFIG_FRAMEBUFFER_CONSOLE=3Dy
> ++CONFIG_LOGO=3Dy
> ++# CONFIG_LOGO_LINUX_MONO is not set
> ++# CONFIG_LOGO_LINUX_VGA16 is not set
> ++CONFIG_SOUND=3Dy
> ++CONFIG_SND=3Dm
> ++CONFIG_SND_SEQUENCER=3Dm
> ++CONFIG_SND_SEQ_DUMMY=3Dm
> ++CONFIG_SND_MIXER_OSS=3Dm
> ++CONFIG_SND_PCM_OSS=3Dm
> ++CONFIG_SND_SEQUENCER_OSS=3Dy
> ++CONFIG_SND_HRTIMER=3Dm
> ++CONFIG_SND_DUMMY=3Dm
> ++CONFIG_SND_ALOOP=3Dm
> ++CONFIG_SND_VIRMIDI=3Dm
> ++CONFIG_SND_MTPAV=3Dm
> ++CONFIG_SND_SERIAL_U16550=3Dm
> ++CONFIG_SND_MPU401=3Dm
> ++CONFIG_SND_USB_AUDIO=3Dm
> ++CONFIG_SND_USB_UA101=3Dm
> ++CONFIG_SND_USB_CAIAQ=3Dm
> ++CONFIG_SND_USB_CAIAQ_INPUT=3Dy
> ++CONFIG_SND_USB_6FIRE=3Dm
> ++CONFIG_SND_SOC=3Dm
> ++CONFIG_SND_BCM2835_SOC_I2S=3Dm
> ++CONFIG_SND_BCM2708_SOC_HIFIBERRY_DAC=3Dm
> ++CONFIG_SND_BCM2708_SOC_HIFIBERRY_DACPLUS=3Dm
> ++CONFIG_SND_BCM2708_SOC_HIFIBERRY_DIGI=3Dm
> ++CONFIG_SND_BCM2708_SOC_HIFIBERRY_AMP=3Dm
> ++CONFIG_SND_BCM2708_SOC_RPI_DAC=3Dm
> ++CONFIG_SND_BCM2708_SOC_RPI_PROTO=3Dm
> ++CONFIG_SND_BCM2708_SOC_JUSTBOOM_DAC=3Dm
> ++CONFIG_SND_BCM2708_SOC_JUSTBOOM_DIGI=3Dm
> ++CONFIG_SND_BCM2708_SOC_IQAUDIO_DAC=3Dm
> ++CONFIG_SND_BCM2708_SOC_IQAUDIO_DIGI=3Dm
> ++CONFIG_SND_BCM2708_SOC_RASPIDAC3=3Dm
> ++CONFIG_SND_BCM2708_SOC_ADAU1977_ADC=3Dm
> ++CONFIG_SND_AUDIOINJECTOR_PI_SOUNDCARD=3Dm
> ++CONFIG_SND_DIGIDAC1_SOUNDCARD=3Dm
> ++CONFIG_SND_BCM2708_SOC_DIONAUDIO_LOCO=3Dm
> ++CONFIG_SND_SOC_ADAU1701=3Dm
> ++CONFIG_SND_SOC_WM8804_I2C=3Dm
> ++CONFIG_SND_SIMPLE_CARD=3Dm
> ++CONFIG_SOUND_PRIME=3Dm
> ++CONFIG_HIDRAW=3Dy
> ++CONFIG_UHID=3Dm
> ++CONFIG_HID_A4TECH=3Dm
> ++CONFIG_HID_ACRUX=3Dm
> ++CONFIG_HID_APPLE=3Dm
> ++CONFIG_HID_BELKIN=3Dm
> ++CONFIG_HID_BETOP_FF=3Dm
> ++CONFIG_HID_CHERRY=3Dm
> ++CONFIG_HID_CHICONY=3Dm
> ++CONFIG_HID_CYPRESS=3Dm
> ++CONFIG_HID_DRAGONRISE=3Dm
> ++CONFIG_HID_EMS_FF=3Dm
> ++CONFIG_HID_ELECOM=3Dm
> ++CONFIG_HID_ELO=3Dm
> ++CONFIG_HID_EZKEY=3Dm
> ++CONFIG_HID_HOLTEK=3Dm
> ++CONFIG_HID_KEYTOUCH=3Dm
> ++CONFIG_HID_KYE=3Dm
> ++CONFIG_HID_UCLOGIC=3Dm
> ++CONFIG_HID_WALTOP=3Dm
> ++CONFIG_HID_GYRATION=3Dm
> ++CONFIG_HID_TWINHAN=3Dm
> ++CONFIG_HID_KENSINGTON=3Dm
> ++CONFIG_HID_LCPOWER=3Dm
> ++CONFIG_HID_LOGITECH=3Dm
> ++CONFIG_HID_LOGITECH_DJ=3Dm
> ++CONFIG_LOGITECH_FF=3Dy
> ++CONFIG_LOGIRUMBLEPAD2_FF=3Dy
> ++CONFIG_LOGIG940_FF=3Dy
> ++CONFIG_HID_MAGICMOUSE=3Dm
> ++CONFIG_HID_MICROSOFT=3Dm
> ++CONFIG_HID_MONTEREY=3Dm
> ++CONFIG_HID_MULTITOUCH=3Dm
> ++CONFIG_HID_NTRIG=3Dm
> ++CONFIG_HID_ORTEK=3Dm
> ++CONFIG_HID_PANTHERLORD=3Dm
> ++CONFIG_HID_PETALYNX=3Dm
> ++CONFIG_HID_PICOLCD=3Dm
> ++CONFIG_HID_ROCCAT=3Dm
> ++CONFIG_HID_SAMSUNG=3Dm
> ++CONFIG_HID_SONY=3Dm
> ++CONFIG_HID_SPEEDLINK=3Dm
> ++CONFIG_HID_SUNPLUS=3Dm
> ++CONFIG_HID_GREENASIA=3Dm
> ++CONFIG_HID_SMARTJOYPLUS=3Dm
> ++CONFIG_HID_TOPSEED=3Dm
> ++CONFIG_HID_THINGM=3Dm
> ++CONFIG_HID_THRUSTMASTER=3Dm
> ++CONFIG_HID_WACOM=3Dm
> ++CONFIG_HID_WIIMOTE=3Dm
> ++CONFIG_HID_XINMO=3Dm
> ++CONFIG_HID_ZEROPLUS=3Dm
> ++CONFIG_HID_ZYDACRON=3Dm
> ++CONFIG_HID_PID=3Dy
> ++CONFIG_USB_HIDDEV=3Dy
> ++CONFIG_USB=3Dy
> ++CONFIG_USB_ANNOUNCE_NEW_DEVICES=3Dy
> ++CONFIG_USB_MON=3Dm
> ++CONFIG_USB_PRINTER=3Dm
> ++CONFIG_USB_STORAGE=3Dy
> ++CONFIG_USB_STORAGE_REALTEK=3Dm
> ++CONFIG_USB_STORAGE_DATAFAB=3Dm
> ++CONFIG_USB_STORAGE_FREECOM=3Dm
> ++CONFIG_USB_STORAGE_ISD200=3Dm
> ++CONFIG_USB_STORAGE_USBAT=3Dm
> ++CONFIG_USB_STORAGE_SDDR09=3Dm
> ++CONFIG_USB_STORAGE_SDDR55=3Dm
> ++CONFIG_USB_STORAGE_JUMPSHOT=3Dm
> ++CONFIG_USB_STORAGE_ALAUDA=3Dm
> ++CONFIG_USB_STORAGE_ONETOUCH=3Dm
> ++CONFIG_USB_STORAGE_KARMA=3Dm
> ++CONFIG_USB_STORAGE_CYPRESS_ATACB=3Dm
> ++CONFIG_USB_STORAGE_ENE_UB6250=3Dm
> ++CONFIG_USB_MDC800=3Dm
> ++CONFIG_USB_MICROTEK=3Dm
> ++CONFIG_USBIP_CORE=3Dm
> ++CONFIG_USBIP_VHCI_HCD=3Dm
> ++CONFIG_USBIP_HOST=3Dm
> ++CONFIG_USB_DWC2=3Dy
> ++CONFIG_USB_SERIAL=3Dm
> ++CONFIG_USB_SERIAL_GENERIC=3Dy
> ++CONFIG_USB_SERIAL_AIRCABLE=3Dm
> ++CONFIG_USB_SERIAL_ARK3116=3Dm
> ++CONFIG_USB_SERIAL_BELKIN=3Dm
> ++CONFIG_USB_SERIAL_CH341=3Dm
> ++CONFIG_USB_SERIAL_WHITEHEAT=3Dm
> ++CONFIG_USB_SERIAL_DIGI_ACCELEPORT=3Dm
> ++CONFIG_USB_SERIAL_CP210X=3Dm
> ++CONFIG_USB_SERIAL_CYPRESS_M8=3Dm
> ++CONFIG_USB_SERIAL_EMPEG=3Dm
> ++CONFIG_USB_SERIAL_FTDI_SIO=3Dm
> ++CONFIG_USB_SERIAL_VISOR=3Dm
> ++CONFIG_USB_SERIAL_IPAQ=3Dm
> ++CONFIG_USB_SERIAL_IR=3Dm
> ++CONFIG_USB_SERIAL_EDGEPORT=3Dm
> ++CONFIG_USB_SERIAL_EDGEPORT_TI=3Dm
> ++CONFIG_USB_SERIAL_F81232=3Dm
> ++CONFIG_USB_SERIAL_GARMIN=3Dm
> ++CONFIG_USB_SERIAL_IPW=3Dm
> ++CONFIG_USB_SERIAL_IUU=3Dm
> ++CONFIG_USB_SERIAL_KEYSPAN_PDA=3Dm
> ++CONFIG_USB_SERIAL_KEYSPAN=3Dm
> ++CONFIG_USB_SERIAL_KLSI=3Dm
> ++CONFIG_USB_SERIAL_KOBIL_SCT=3Dm
> ++CONFIG_USB_SERIAL_MCT_U232=3Dm
> ++CONFIG_USB_SERIAL_METRO=3Dm
> ++CONFIG_USB_SERIAL_MOS7720=3Dm
> ++CONFIG_USB_SERIAL_MOS7840=3Dm
> ++CONFIG_USB_SERIAL_NAVMAN=3Dm
> ++CONFIG_USB_SERIAL_PL2303=3Dm
> ++CONFIG_USB_SERIAL_OTI6858=3Dm
> ++CONFIG_USB_SERIAL_QCAUX=3Dm
> ++CONFIG_USB_SERIAL_QUALCOMM=3Dm
> ++CONFIG_USB_SERIAL_SPCP8X5=3Dm
> ++CONFIG_USB_SERIAL_SAFE=3Dm
> ++CONFIG_USB_SERIAL_SIERRAWIRELESS=3Dm
> ++CONFIG_USB_SERIAL_SYMBOL=3Dm
> ++CONFIG_USB_SERIAL_TI=3Dm
> ++CONFIG_USB_SERIAL_CYBERJACK=3Dm
> ++CONFIG_USB_SERIAL_XIRCOM=3Dm
> ++CONFIG_USB_SERIAL_OPTION=3Dm
> ++CONFIG_USB_SERIAL_OMNINET=3Dm
> ++CONFIG_USB_SERIAL_OPTICON=3Dm
> ++CONFIG_USB_SERIAL_XSENS_MT=3Dm
> ++CONFIG_USB_SERIAL_WISHBONE=3Dm
> ++CONFIG_USB_SERIAL_SSU100=3Dm
> ++CONFIG_USB_SERIAL_QT2=3Dm
> ++CONFIG_USB_SERIAL_DEBUG=3Dm
> ++CONFIG_USB_EMI62=3Dm
> ++CONFIG_USB_EMI26=3Dm
> ++CONFIG_USB_ADUTUX=3Dm
> ++CONFIG_USB_SEVSEG=3Dm
> ++CONFIG_USB_RIO500=3Dm
> ++CONFIG_USB_LEGOTOWER=3Dm
> ++CONFIG_USB_LCD=3Dm
> ++CONFIG_USB_LED=3Dm
> ++CONFIG_USB_CYPRESS_CY7C63=3Dm
> ++CONFIG_USB_CYTHERM=3Dm
> ++CONFIG_USB_IDMOUSE=3Dm
> ++CONFIG_USB_FTDI_ELAN=3Dm
> ++CONFIG_USB_APPLEDISPLAY=3Dm
> ++CONFIG_USB_LD=3Dm
> ++CONFIG_USB_TRANCEVIBRATOR=3Dm
> ++CONFIG_USB_IOWARRIOR=3Dm
> ++CONFIG_USB_TEST=3Dm
> ++CONFIG_USB_ISIGHTFW=3Dm
> ++CONFIG_USB_YUREX=3Dm
> ++CONFIG_USB_ATM=3Dm
> ++CONFIG_USB_SPEEDTOUCH=3Dm
> ++CONFIG_USB_CXACRU=3Dm
> ++CONFIG_USB_UEAGLEATM=3Dm
> ++CONFIG_USB_XUSBATM=3Dm
> ++CONFIG_MMC=3Dy
> ++CONFIG_MMC_BLOCK_MINORS=3D32
> ++CONFIG_MMC_BCM2835=3Dy
> ++CONFIG_MMC_BCM2835_DMA=3Dy
> ++CONFIG_MMC_BCM2835_SDHOST=3Dy
> ++CONFIG_MMC_SDHCI=3Dy
> ++CONFIG_MMC_SDHCI_PLTFM=3Dy
> ++CONFIG_MMC_SDHCI_BCM2835=3Dy
> ++CONFIG_MMC_SPI=3Dm
> ++CONFIG_LEDS_CLASS=3Dy
> ++CONFIG_LEDS_GPIO=3Dy
> ++CONFIG_LEDS_TRIGGER_TIMER=3Dy
> ++CONFIG_LEDS_TRIGGER_ONESHOT=3Dy
> ++CONFIG_LEDS_TRIGGER_HEARTBEAT=3Dy
> ++CONFIG_LEDS_TRIGGER_BACKLIGHT=3Dy
> ++CONFIG_LEDS_TRIGGER_CPU=3Dy
> ++CONFIG_LEDS_TRIGGER_GPIO=3Dy
> ++CONFIG_LEDS_TRIGGER_DEFAULT_ON=3Dy
> ++CONFIG_LEDS_TRIGGER_TRANSIENT=3Dm
> ++CONFIG_LEDS_TRIGGER_CAMERA=3Dm
> ++CONFIG_LEDS_TRIGGER_INPUT=3Dy
> ++CONFIG_LEDS_TRIGGER_PANIC=3Dy
> ++CONFIG_RTC_CLASS=3Dy
> ++# CONFIG_RTC_HCTOSYS is not set
> ++CONFIG_RTC_DRV_DS1307=3Dm
> ++CONFIG_RTC_DRV_DS1374=3Dm
> ++CONFIG_RTC_DRV_DS1672=3Dm
> ++CONFIG_RTC_DRV_MAX6900=3Dm
> ++CONFIG_RTC_DRV_RS5C372=3Dm
> ++CONFIG_RTC_DRV_ISL1208=3Dm
> ++CONFIG_RTC_DRV_ISL12022=3Dm
> ++CONFIG_RTC_DRV_ISL12057=3Dm
> ++CONFIG_RTC_DRV_X1205=3Dm
> ++CONFIG_RTC_DRV_PCF8523=3Dm
> ++CONFIG_RTC_DRV_PCF8563=3Dm
> ++CONFIG_RTC_DRV_PCF8583=3Dm
> ++CONFIG_RTC_DRV_M41T80=3Dm
> ++CONFIG_RTC_DRV_BQ32K=3Dm
> ++CONFIG_RTC_DRV_S35390A=3Dm
> ++CONFIG_RTC_DRV_FM3130=3Dm
> ++CONFIG_RTC_DRV_RX8581=3Dm
> ++CONFIG_RTC_DRV_RX8025=3Dm
> ++CONFIG_RTC_DRV_EM3027=3Dm
> ++CONFIG_RTC_DRV_M41T93=3Dm
> ++CONFIG_RTC_DRV_M41T94=3Dm
> ++CONFIG_RTC_DRV_DS1302=3Dm
> ++CONFIG_RTC_DRV_DS1305=3Dm
> ++CONFIG_RTC_DRV_DS1390=3Dm
> ++CONFIG_RTC_DRV_R9701=3Dm
> ++CONFIG_RTC_DRV_RX4581=3Dm
> ++CONFIG_RTC_DRV_RS5C348=3Dm
> ++CONFIG_RTC_DRV_MAX6902=3Dm
> ++CONFIG_RTC_DRV_PCF2123=3Dm
> ++CONFIG_RTC_DRV_DS3232=3Dm
> ++CONFIG_RTC_DRV_PCF2127=3Dm
> ++CONFIG_RTC_DRV_RV3029C2=3Dm
> ++CONFIG_DMADEVICES=3Dy
> ++CONFIG_DMA_BCM2835=3Dy
> ++CONFIG_UIO=3Dm
> ++CONFIG_UIO_PDRV_GENIRQ=3Dm
> ++CONFIG_STAGING=3Dy
> ++CONFIG_PRISM2_USB=3Dm
> ++CONFIG_R8712U=3Dm
> ++CONFIG_R8188EU=3Dm
> ++CONFIG_R8723AU=3Dm
> ++CONFIG_VT6656=3Dm
> ++CONFIG_SPEAKUP=3Dm
> ++CONFIG_SPEAKUP_SYNTH_SOFT=3Dm
> ++CONFIG_STAGING_MEDIA=3Dy
> ++CONFIG_LIRC_STAGING=3Dy
> ++CONFIG_LIRC_IMON=3Dm
> ++CONFIG_LIRC_RPI=3Dm
> ++CONFIG_LIRC_SASEM=3Dm
> ++CONFIG_LIRC_SERIAL=3Dm
> ++CONFIG_FB_TFT=3Dm
> ++CONFIG_FB_TFT_AGM1264K_FL=3Dm
> ++CONFIG_FB_TFT_BD663474=3Dm
> ++CONFIG_FB_TFT_HX8340BN=3Dm
> ++CONFIG_FB_TFT_HX8347D=3Dm
> ++CONFIG_FB_TFT_HX8353D=3Dm
> ++CONFIG_FB_TFT_ILI9163=3Dm
> ++CONFIG_FB_TFT_ILI9320=3Dm
> ++CONFIG_FB_TFT_ILI9325=3Dm
> ++CONFIG_FB_TFT_ILI9340=3Dm
> ++CONFIG_FB_TFT_ILI9341=3Dm
> ++CONFIG_FB_TFT_ILI9481=3Dm
> ++CONFIG_FB_TFT_ILI9486=3Dm
> ++CONFIG_FB_TFT_PCD8544=3Dm
> ++CONFIG_FB_TFT_RA8875=3Dm
> ++CONFIG_FB_TFT_S6D02A1=3Dm
> ++CONFIG_FB_TFT_S6D1121=3Dm
> ++CONFIG_FB_TFT_SSD1289=3Dm
> ++CONFIG_FB_TFT_SSD1306=3Dm
> ++CONFIG_FB_TFT_SSD1331=3Dm
> ++CONFIG_FB_TFT_SSD1351=3Dm
> ++CONFIG_FB_TFT_ST7735R=3Dm
> ++CONFIG_FB_TFT_TINYLCD=3Dm
> ++CONFIG_FB_TFT_TLS8204=3Dm
> ++CONFIG_FB_TFT_UC1701=3Dm
> ++CONFIG_FB_TFT_UPD161704=3Dm
> ++CONFIG_FB_TFT_WATTEROTT=3Dm
> ++CONFIG_FB_FLEX=3Dm
> ++CONFIG_FB_TFT_FBTFT_DEVICE=3Dm
> ++# CONFIG_COMMON_CLK_XGENE is not set
> ++CONFIG_MAILBOX=3Dy
> ++CONFIG_BCM2835_MBOX=3Dy
> ++# CONFIG_IOMMU_SUPPORT is not set
> ++CONFIG_RASPBERRYPI_POWER=3Dy
> ++CONFIG_EXTCON=3Dm
> ++CONFIG_EXTCON_ARIZONA=3Dm
> ++CONFIG_IIO=3Dm
> ++CONFIG_IIO_BUFFER=3Dy
> ++CONFIG_IIO_BUFFER_CB=3Dm
> ++CONFIG_IIO_KFIFO_BUF=3Dm
> ++CONFIG_MCP320X=3Dm
> ++CONFIG_MCP3422=3Dm
> ++CONFIG_DHT11=3Dm
> ++CONFIG_PWM_BCM2835=3Dm
> ++CONFIG_PWM_PCA9685=3Dm
> ++CONFIG_GENERIC_PHY=3Dy
> ++CONFIG_RASPBERRYPI_FIRMWARE=3Dy
> ++CONFIG_EXT4_FS=3Dy
> ++CONFIG_EXT4_FS_POSIX_ACL=3Dy
> ++CONFIG_EXT4_FS_SECURITY=3Dy
> ++CONFIG_REISERFS_FS=3Dm
> ++CONFIG_REISERFS_FS_XATTR=3Dy
> ++CONFIG_REISERFS_FS_POSIX_ACL=3Dy
> ++CONFIG_REISERFS_FS_SECURITY=3Dy
> ++CONFIG_JFS_FS=3Dm
> ++CONFIG_JFS_POSIX_ACL=3Dy
> ++CONFIG_JFS_SECURITY=3Dy
> ++CONFIG_JFS_STATISTICS=3Dy
> ++CONFIG_XFS_FS=3Dm
> ++CONFIG_XFS_QUOTA=3Dy
> ++CONFIG_XFS_POSIX_ACL=3Dy
> ++CONFIG_XFS_RT=3Dy
> ++CONFIG_GFS2_FS=3Dm
> ++CONFIG_OCFS2_FS=3Dm
> ++CONFIG_BTRFS_FS=3Dm
> ++CONFIG_BTRFS_FS_POSIX_ACL=3Dy
> ++CONFIG_NILFS2_FS=3Dm
> ++CONFIG_F2FS_FS=3Dy
> ++CONFIG_FANOTIFY=3Dy
> ++CONFIG_QFMT_V1=3Dm
> ++CONFIG_QFMT_V2=3Dm
> ++CONFIG_AUTOFS4_FS=3Dy
> ++CONFIG_FUSE_FS=3Dm
> ++CONFIG_CUSE=3Dm
> ++CONFIG_OVERLAY_FS=3Dm
> ++CONFIG_FSCACHE=3Dy
> ++CONFIG_FSCACHE_STATS=3Dy
> ++CONFIG_FSCACHE_HISTOGRAM=3Dy
> ++CONFIG_CACHEFILES=3Dy
> ++CONFIG_ISO9660_FS=3Dm
> ++CONFIG_JOLIET=3Dy
> ++CONFIG_ZISOFS=3Dy
> ++CONFIG_UDF_FS=3Dm
> ++CONFIG_MSDOS_FS=3Dy
> ++CONFIG_VFAT_FS=3Dy
> ++CONFIG_FAT_DEFAULT_IOCHARSET=3D"ascii"
> ++CONFIG_NTFS_FS=3Dm
> ++CONFIG_NTFS_RW=3Dy
> ++CONFIG_TMPFS=3Dy
> ++CONFIG_TMPFS_POSIX_ACL=3Dy
> ++CONFIG_ECRYPT_FS=3Dm
> ++CONFIG_HFS_FS=3Dm
> ++CONFIG_HFSPLUS_FS=3Dm
> ++CONFIG_JFFS2_FS=3Dm
> ++CONFIG_JFFS2_SUMMARY=3Dy
> ++CONFIG_UBIFS_FS=3Dm
> ++CONFIG_SQUASHFS=3Dm
> ++CONFIG_SQUASHFS_XATTR=3Dy
> ++CONFIG_SQUASHFS_LZO=3Dy
> ++CONFIG_SQUASHFS_XZ=3Dy
> ++CONFIG_NFS_FS=3Dy
> ++CONFIG_NFS_V3_ACL=3Dy
> ++CONFIG_NFS_V4=3Dy
> ++CONFIG_NFS_SWAP=3Dy
> ++CONFIG_ROOT_NFS=3Dy
> ++CONFIG_NFS_FSCACHE=3Dy
> ++CONFIG_NFSD=3Dm
> ++CONFIG_NFSD_V3_ACL=3Dy
> ++CONFIG_NFSD_V4=3Dy
> ++CONFIG_CIFS=3Dm
> ++CONFIG_CIFS_WEAK_PW_HASH=3Dy
> ++CONFIG_CIFS_UPCALL=3Dy
> ++CONFIG_CIFS_XATTR=3Dy
> ++CONFIG_CIFS_POSIX=3Dy
> ++CONFIG_CIFS_ACL=3Dy
> ++CONFIG_CIFS_DFS_UPCALL=3Dy
> ++CONFIG_CIFS_SMB2=3Dy
> ++CONFIG_CIFS_FSCACHE=3Dy
> ++CONFIG_9P_FS=3Dm
> ++CONFIG_9P_FS_POSIX_ACL=3Dy
> ++CONFIG_NLS_DEFAULT=3D"utf8"
> ++CONFIG_NLS_CODEPAGE_437=3Dy
> ++CONFIG_NLS_CODEPAGE_737=3Dm
> ++CONFIG_NLS_CODEPAGE_775=3Dm
> ++CONFIG_NLS_CODEPAGE_850=3Dm
> ++CONFIG_NLS_CODEPAGE_852=3Dm
> ++CONFIG_NLS_CODEPAGE_855=3Dm
> ++CONFIG_NLS_CODEPAGE_857=3Dm
> ++CONFIG_NLS_CODEPAGE_860=3Dm
> ++CONFIG_NLS_CODEPAGE_861=3Dm
> ++CONFIG_NLS_CODEPAGE_862=3Dm
> ++CONFIG_NLS_CODEPAGE_863=3Dm
> ++CONFIG_NLS_CODEPAGE_864=3Dm
> ++CONFIG_NLS_CODEPAGE_865=3Dm
> ++CONFIG_NLS_CODEPAGE_866=3Dm
> ++CONFIG_NLS_CODEPAGE_869=3Dm
> ++CONFIG_NLS_CODEPAGE_936=3Dm
> ++CONFIG_NLS_CODEPAGE_950=3Dm
> ++CONFIG_NLS_CODEPAGE_932=3Dm
> ++CONFIG_NLS_CODEPAGE_949=3Dm
> ++CONFIG_NLS_CODEPAGE_874=3Dm
> ++CONFIG_NLS_ISO8859_8=3Dm
> ++CONFIG_NLS_CODEPAGE_1250=3Dm
> ++CONFIG_NLS_CODEPAGE_1251=3Dm
> ++CONFIG_NLS_ASCII=3Dy
> ++CONFIG_NLS_ISO8859_1=3Dm
> ++CONFIG_NLS_ISO8859_2=3Dm
> ++CONFIG_NLS_ISO8859_3=3Dm
> ++CONFIG_NLS_ISO8859_4=3Dm
> ++CONFIG_NLS_ISO8859_5=3Dm
> ++CONFIG_NLS_ISO8859_6=3Dm
> ++CONFIG_NLS_ISO8859_7=3Dm
> ++CONFIG_NLS_ISO8859_9=3Dm
> ++CONFIG_NLS_ISO8859_13=3Dm
> ++CONFIG_NLS_ISO8859_14=3Dm
> ++CONFIG_NLS_ISO8859_15=3Dm
> ++CONFIG_NLS_KOI8_R=3Dm
> ++CONFIG_NLS_KOI8_U=3Dm
> ++CONFIG_DLM=3Dm
> ++CONFIG_PRINTK_TIME=3Dy
> ++CONFIG_BOOT_PRINTK_DELAY=3Dy
> ++CONFIG_DEBUG_MEMORY_INIT=3Dy
> ++CONFIG_DETECT_HUNG_TASK=3Dy
> ++CONFIG_TIMER_STATS=3Dy
> ++CONFIG_IRQSOFF_TRACER=3Dy
> ++CONFIG_SCHED_TRACER=3Dy
> ++CONFIG_STACK_TRACER=3Dy
> ++CONFIG_BLK_DEV_IO_TRACE=3Dy
> ++CONFIG_FUNCTION_PROFILER=3Dy
> ++CONFIG_KGDB=3Dy
> ++CONFIG_KGDB_KDB=3Dy
> ++CONFIG_KDB_KEYBOARD=3Dy
> ++# CONFIG_DEBUG_SET_MODULE_RONX is not set
> ++# CONFIG_DEBUG_RODATA is not set
> ++CONFIG_CRYPTO_USER=3Dm
> ++CONFIG_CRYPTO_CBC=3Dy
> ++CONFIG_CRYPTO_CTS=3Dm
> ++CONFIG_CRYPTO_XTS=3Dm
> ++CONFIG_CRYPTO_XCBC=3Dm
> ++CONFIG_CRYPTO_TGR192=3Dm
> ++CONFIG_CRYPTO_WP512=3Dm
> ++CONFIG_CRYPTO_CAST5=3Dm
> ++CONFIG_CRYPTO_DES=3Dy
> ++CONFIG_CRYPTO_USER_API_SKCIPHER=3Dm
> ++# CONFIG_CRYPTO_HW is not set
> ++CONFIG_ARM64_CRYPTO=3Dy
> ++CONFIG_CRYPTO_AES_ARM64_NEON_BLK=3Dy
> ++CONFIG_CRYPTO_CRC32_ARM64=3Dy
> ++CONFIG_CRC_ITU_T=3Dy
> ++CONFIG_LIBCRC32C=3Dy
> +diff --git a/arch/arm64/include/asm/dma-mapping.h =
b/arch/arm64/include/asm/dma-mapping.h
> +index 7dbea6c..446b353 100644
> +--- a/arch/arm64/include/asm/dma-mapping.h
> ++++ b/arch/arm64/include/asm/dma-mapping.h
> +@@ -66,12 +66,14 @@ static inline bool is_device_dma_coherent(struct =
device *dev)
> +
> + static inline dma_addr_t phys_to_dma(struct device *dev, phys_addr_t =
paddr)
> + {
> +-      return (dma_addr_t)paddr;
> ++      dma_addr_t dev_addr =3D (dma_addr_t)paddr;
> ++      return dev_addr - ((dma_addr_t)dev->dma_pfn_offset << =
PAGE_SHIFT);
> + }
> +
> + static inline phys_addr_t dma_to_phys(struct device *dev, dma_addr_t =
dev_addr)
> + {
> +-      return (phys_addr_t)dev_addr;
> ++      phys_addr_t paddr =3D (phys_addr_t)dev_addr;
> ++      return paddr + ((phys_addr_t)dev->dma_pfn_offset << =
PAGE_SHIFT);
> + }
> +
> + static inline bool dma_capable(struct device *dev, dma_addr_t addr, =
size_t size)
> +@@ -86,5 +88,14 @@ static inline void dma_mark_clean(void *addr, =
size_t size)
> + {
> + }
> +
> ++/* Override for dma_max_pfn() */
> ++static inline unsigned long dma_max_pfn(struct device *dev)
> ++{
> ++      dma_addr_t dma_max =3D (dma_addr_t)*dev->dma_mask;
> ++
> ++      return (ulong)dma_to_phys(dev, dma_max) >> PAGE_SHIFT;
> ++}
> ++#define dma_max_pfn(dev) dma_max_pfn(dev)
> ++
> + #endif        /* __KERNEL__ */
> + #endif        /* __ASM_DMA_MAPPING_H */
> +diff --git a/drivers/irqchip/irq-bcm2835.c =
b/drivers/irqchip/irq-bcm2835.c
> +index c02bf8a..a09553a 100644
> +--- a/drivers/irqchip/irq-bcm2835.c
> ++++ b/drivers/irqchip/irq-bcm2835.c
> +@@ -54,7 +54,9 @@
> + #include <linux/regmap.h>
> +
> + #include <asm/exception.h>
> ++#ifndef CONFIG_ARM64
> + #include <asm/mach/irq.h>
> ++#endif
> +
> + /* Put the bank and irq (32 bits) into the hwirq */
> + #define MAKE_HWIRQ(b, n)      (((b) << 5) | (n))
> +@@ -72,12 +74,16 @@
> + #define BANK0_VALID_MASK      (BANK0_HWIRQ_MASK | BANK1_HWIRQ | =
BANK2_HWIRQ \
> +                                       | SHORTCUT1_MASK | =
SHORTCUT2_MASK)
> +
> ++#ifndef CONFIG_ARM64
> + #undef ARM_LOCAL_GPU_INT_ROUTING
> + #define ARM_LOCAL_GPU_INT_ROUTING 0x0c
> ++#endif
> +
> ++#ifndef CONFIG_ARM64
> + #define REG_FIQ_CONTROL               0x0c
> + #define REG_FIQ_ENABLE                0x80
> + #define REG_FIQ_DISABLE               0
> ++#endif
> +
> + #define NR_BANKS              3
> + #define IRQS_PER_BANK         32
> +@@ -101,7 +107,9 @@ struct armctrl_ic {
> +       void __iomem *enable[NR_BANKS];
> +       void __iomem *disable[NR_BANKS];
> +       struct irq_domain *domain;
> ++#ifndef CONFIG_ARM64
> +       struct regmap *local_regmap;
> ++#endif
> + };
> +
> + static struct armctrl_ic intc __read_mostly;
> +@@ -109,6 +117,7 @@ static void __exception_irq_entry =
bcm2835_handle_irq(
> +       struct pt_regs *regs);
> + static void bcm2836_chained_handle_irq(struct irq_desc *desc);
> +
> ++#ifndef CONFIG_ARM64
> + static inline unsigned int hwirq_to_fiq(unsigned long hwirq)
> + {
> +       hwirq -=3D NUMBER_IRQS;
> +@@ -123,18 +132,22 @@ static inline unsigned int =
hwirq_to_fiq(unsigned long hwirq)
> +
> +       return hwirq + 64;
> + }
> ++#endif
> +
> + static void armctrl_mask_irq(struct irq_data *d)
> + {
> ++#ifndef CONFIG_ARM64
> +       if (d->hwirq >=3D NUMBER_IRQS)
> +               writel_relaxed(REG_FIQ_DISABLE, intc.base + =
REG_FIQ_CONTROL);
> +       else
> ++#endif
> +               writel_relaxed(HWIRQ_BIT(d->hwirq),
> +                              intc.disable[HWIRQ_BANK(d->hwirq)]);
> + }
> +
> + static void armctrl_unmask_irq(struct irq_data *d)
> + {
> ++#ifndef CONFIG_ARM64
> +       if (d->hwirq >=3D NUMBER_IRQS) {
> +               if (num_online_cpus() > 1) {
> +                       unsigned int data;
> +@@ -164,6 +177,9 @@ static void armctrl_unmask_irq(struct irq_data =
*d)
> +               writel_relaxed(HWIRQ_BIT(d->hwirq),
> +                              intc.enable[HWIRQ_BANK(d->hwirq)]);
> +       }
> ++#else
> ++      writel_relaxed(HWIRQ_BIT(d->hwirq), =
intc.enable[HWIRQ_BANK(d->hwirq)]);
> ++#endif
> + }
> +
> + static struct irq_chip armctrl_chip =3D {
> +@@ -241,6 +257,7 @@ static int __init armctrl_of_init(struct =
device_node *node,
> +               set_handle_irq(bcm2835_handle_irq);
> +       }
> +
> ++#ifndef CONFIG_ARM64
> +       if (is_2836) {
> +               intc.local_regmap =3D
> +                       =
syscon_regmap_lookup_by_compatible("brcm,bcm2836-arm-local");
> +@@ -261,6 +278,7 @@ static int __init armctrl_of_init(struct =
device_node *node,
> +               }
> +       }
> +       init_FIQ(FIQ_START);
> ++#endif
> +
> +       return 0;
> + }
> +@@ -322,7 +340,11 @@ static void __exception_irq_entry =
bcm2835_handle_irq(
> +       u32 hwirq;
> +
> +       while ((hwirq =3D get_next_armctrl_hwirq()) !=3D ~0)
> ++#ifndef CONFIG_ARM64
> +               handle_IRQ(irq_linear_revmap(intc.domain, hwirq), =
regs);
> ++#else
> ++              handle_domain_irq(intc.domain, hwirq, regs);
> ++#endif
> + }
> +
> + static void bcm2836_chained_handle_irq(struct irq_desc *desc)
> +diff --git a/drivers/irqchip/irq-bcm2836.c =
b/drivers/irqchip/irq-bcm2836.c
> +index de3b3a3..b2425d7 100644
> +--- a/drivers/irqchip/irq-bcm2836.c
> ++++ b/drivers/irqchip/irq-bcm2836.c
> +@@ -175,13 +175,19 @@ __exception_irq_entry =
bcm2836_arm_irqchip_handle_irq(struct pt_regs *regs)
> +               u32 ipi =3D ffs(mbox_val) - 1;
> +
> +               writel(1 << ipi, mailbox0);
> ++#ifndef CONFIG_ARM64
> +               dsb();
> ++#endif
> +               handle_IPI(ipi, regs);
> + #endif
> +       } else if (stat) {
> +               u32 hwirq =3D ffs(stat) - 1;
> +
> ++#ifndef CONFIG_ARM64
> +               handle_IRQ(irq_linear_revmap(intc.domain, hwirq), =
regs);
> ++#else
> ++              handle_domain_irq(intc.domain, hwirq, regs);
> ++#endif
> +       }
> + }
> +
> +@@ -225,7 +231,7 @@ static struct notifier_block =
bcm2836_arm_irqchip_cpu_notifier =3D {
> + };
> +
> + #ifdef CONFIG_ARM
> +-int __init bcm2836_smp_boot_secondary(unsigned int cpu,
> ++static int __init bcm2836_smp_boot_secondary(unsigned int cpu,
> +                                     struct task_struct *idle)
> + {
> +       unsigned long secondary_startup_phys =3D
> +diff --git a/drivers/mmc/host/bcm2835-sdhost.c =
b/drivers/mmc/host/bcm2835-sdhost.c
> +index d7b6b5a..2204ca9 100644
> +--- a/drivers/mmc/host/bcm2835-sdhost.c
> ++++ b/drivers/mmc/host/bcm2835-sdhost.c
> +@@ -241,7 +241,11 @@ static void log_init(u32 bus_to_phys)
> +       sdhost_log_buf =3D dma_zalloc_coherent(NULL, LOG_SIZE, =
&sdhost_log_addr,
> +                                            GFP_KERNEL);
> +       if (sdhost_log_buf) {
> ++#ifndef CONFIG_ARM64
> +               pr_info("sdhost: log_buf @ %p (%x)\n",
> ++#else
> ++              pr_info("sdhost: log_buf @ %p (%llx)\n",
> ++#endif
> +                       sdhost_log_buf, sdhost_log_addr);
> +               timer_base =3D ioremap_nocache(bus_to_phys + =
0x7e003000, SZ_4K);
> +               if (!timer_base)
> +@@ -522,7 +526,11 @@ static void bcm2835_sdhost_dma_complete(void =
*param)
> +       unsigned long flags;
> +
> +       spin_lock_irqsave(&host->lock, flags);
> ++#ifndef CONFIG_ARM64
> +       log_event("DMA<", (u32)host->data, bcm2835_sdhost_read(host, =
SDHSTS));
> ++#else
> ++      log_event("DMA<", (u64)host->data, bcm2835_sdhost_read(host, =
SDHSTS));
> ++#endif
> +       log_event("DMA ", bcm2835_sdhost_read(host, SDCMD),
> +                 bcm2835_sdhost_read(host, SDEDM));
> +
> +@@ -554,7 +562,11 @@ static void bcm2835_sdhost_dma_complete(void =
*param)
> +
> +       bcm2835_sdhost_finish_data(host);
> +
> ++#ifndef CONFIG_ARM64
> +       log_event("DMA>", (u32)host->data, 0);
> ++#else
> ++      log_event("DMA>", (u64)host->data, 0);
> ++#endif
> +       spin_unlock_irqrestore(&host->lock, flags);
> + }
> +
> +@@ -743,7 +755,11 @@ static void bcm2835_sdhost_transfer_pio(struct =
bcm2835_host *host)
> +       u32 sdhsts;
> +       bool is_read;
> +       BUG_ON(!host->data);
> ++#ifndef CONFIG_ARM64
> +       log_event("XFP<", (u32)host->data, host->blocks);
> ++#else
> ++      log_event("XFP<", (u64)host->data, host->blocks);
> ++#endif
> +
> +       is_read =3D (host->data->flags & MMC_DATA_READ) !=3D 0;
> +       if (is_read)
> +@@ -768,7 +784,11 @@ static void bcm2835_sdhost_transfer_pio(struct =
bcm2835_host *host)
> +                      sdhsts);
> +               host->data->error =3D -ETIMEDOUT;
> +       }
> ++#ifndef CONFIG_ARM64
> +       log_event("XFP>", (u32)host->data, host->blocks);
> ++#else
> ++      log_event("XFP>", (u64)host->data, host->blocks);
> ++#endif
> + }
> +
> + static void bcm2835_sdhost_prepare_dma(struct bcm2835_host *host,
> +@@ -778,7 +798,11 @@ static void bcm2835_sdhost_prepare_dma(struct =
bcm2835_host *host,
> +       struct dma_async_tx_descriptor *desc =3D NULL;
> +       struct dma_chan *dma_chan;
> +
> ++#ifndef CONFIG_ARM64
> +       log_event("PRD<", (u32)data, 0);
> ++#else
> ++      log_event("PRD<", (u64)data, 0);
> ++#endif
> +       pr_debug("bcm2835_sdhost_prepare_dma()\n");
> +
> +       dma_chan =3D host->dma_chan_rxtx;
> +@@ -789,7 +813,11 @@ static void bcm2835_sdhost_prepare_dma(struct =
bcm2835_host *host,
> +               dir_data =3D DMA_TO_DEVICE;
> +               dir_slave =3D DMA_MEM_TO_DEV;
> +       }
> ++#ifndef CONFIG_ARM64
> +       log_event("PRD1", (u32)dma_chan, 0);
> ++#else
> ++      log_event("PRD1", (u64)dma_chan, 0);
> ++#endif
> +
> +       BUG_ON(!dma_chan->device);
> +       BUG_ON(!dma_chan->device->dev);
> +@@ -836,7 +864,11 @@ static void bcm2835_sdhost_prepare_dma(struct =
bcm2835_host *host,
> +               desc =3D dmaengine_prep_slave_sg(dma_chan, data->sg,
> +                                              len, dir_slave,
> +                                              DMA_PREP_INTERRUPT | =
DMA_CTRL_ACK);
> ++#ifndef CONFIG_ARM64
> +       log_event("PRD3", (u32)desc, 0);
> ++#else
> ++      log_event("PRD3", (u64)desc, 0);
> ++#endif
> +
> +       if (desc) {
> +               desc->callback =3D bcm2835_sdhost_dma_complete;
> +@@ -845,12 +877,20 @@ static void bcm2835_sdhost_prepare_dma(struct =
bcm2835_host *host,
> +               host->dma_chan =3D dma_chan;
> +               host->dma_dir =3D dir_data;
> +       }
> ++#ifndef CONFIG_ARM64
> +       log_event("PDM>", (u32)data, 0);
> ++#else
> ++      log_event("PDM>", (u64)data, 0);
> ++#endif
> + }
> +
> + static void bcm2835_sdhost_start_dma(struct bcm2835_host *host)
> + {
> ++#ifndef CONFIG_ARM64
> +       log_event("SDMA", (u32)host->data, (u32)host->dma_chan);
> ++#else
> ++      log_event("SDMA", (u64)host->data, (u64)host->dma_chan);
> ++#endif
> +       dmaengine_submit(host->dma_desc);
> +       dma_async_issue_pending(host->dma_chan);
> + }
> +@@ -1074,7 +1114,11 @@ static void bcm2835_sdhost_finish_data(struct =
bcm2835_host *host)
> +       data =3D host->data;
> +       BUG_ON(!data);
> +
> ++#ifndef CONFIG_ARM64
> +       log_event("FDA<", (u32)host->mrq, (u32)host->cmd);
> ++#else
> ++      log_event("FDA<", (u64)host->mrq, (u64)host->cmd);
> ++#endif
> +       pr_debug("finish_data(error %d, stop %d, sbc %d)\n",
> +              data->error, data->stop ? 1 : 0,
> +              host->mrq->sbc ? 1 : 0);
> +@@ -1097,7 +1141,11 @@ static void bcm2835_sdhost_finish_data(struct =
bcm2835_host *host)
> +       }
> +       else
> +               bcm2835_sdhost_transfer_complete(host);
> ++#ifndef CONFIG_ARM64
> +       log_event("FDA>", (u32)host->mrq, (u32)host->cmd);
> ++#else
> ++      log_event("FDA>", (u64)host->mrq, (u64)host->cmd);
> ++#endif
> + }
> +
> + static void bcm2835_sdhost_transfer_complete(struct bcm2835_host =
*host)
> +@@ -1111,7 +1159,11 @@ static void =
bcm2835_sdhost_transfer_complete(struct bcm2835_host *host)
> +       data =3D host->data;
> +       host->data =3D NULL;
> +
> ++#ifndef CONFIG_ARM64
> +       log_event("TCM<", (u32)data, data->error);
> ++#else
> ++      log_event("TCM<", (u64)data, data->error);
> ++#endif
> +       pr_debug("transfer_complete(error %d, stop %d)\n",
> +              data->error, data->stop ? 1 : 0);
> +
> +@@ -1133,7 +1185,11 @@ static void =
bcm2835_sdhost_transfer_complete(struct bcm2835_host *host)
> +               bcm2835_sdhost_wait_transfer_complete(host);
> +               tasklet_schedule(&host->finish_tasklet);
> +       }
> ++#ifndef CONFIG_ARM64
> +       log_event("TCM>", (u32)data, 0);
> ++#else
> ++      log_event("TCM>", (u64)data, 0);
> ++#endif
> + }
> +
> + /* If irq_flags is valid, the caller is in a thread context and is =
allowed
> +@@ -1148,7 +1204,11 @@ static void =
bcm2835_sdhost_finish_command(struct bcm2835_host *host,
> +       int timediff =3D 0;
> + #endif
> +
> ++#ifndef CONFIG_ARM64
> +       log_event("FCM<", (u32)host->mrq, (u32)host->cmd);
> ++#else
> ++      log_event("FCM<", (u64)host->mrq, (u64)host->cmd);
> ++#endif
> +       pr_debug("finish_command(%x)\n", bcm2835_sdhost_read(host, =
SDCMD));
> +
> +       BUG_ON(!host->cmd || !host->mrq);
> +@@ -1298,7 +1358,11 @@ static void =
bcm2835_sdhost_finish_command(struct bcm2835_host *host,
> +               else if (host->data_complete)
> +                       bcm2835_sdhost_transfer_complete(host);
> +       }
> ++#ifndef CONFIG_ARM64
> +       log_event("FCM>", (u32)host->mrq, (u32)host->cmd);
> ++#else
> ++      log_event("FCM>", (u64)host->mrq, (u64)host->cmd);
> ++#endif
> + }
> +
> + static void bcm2835_sdhost_timeout(unsigned long data)
> +@@ -1337,7 +1401,11 @@ static void bcm2835_sdhost_timeout(unsigned =
long data)
> +
> + static void bcm2835_sdhost_busy_irq(struct bcm2835_host *host, u32 =
intmask)
> + {
> ++#ifndef CONFIG_ARM64
> +       log_event("IRQB", (u32)host->cmd, intmask);
> ++#else
> ++      log_event("IRQB", (u64)host->cmd, intmask);
> ++#endif
> +       if (!host->cmd) {
> +               pr_err("%s: got command busy interrupt 0x%08x even "
> +                       "though no command operation was in =
progress.\n",
> +@@ -1390,7 +1458,11 @@ static void bcm2835_sdhost_data_irq(struct =
bcm2835_host *host, u32 intmask)
> +          data/space available FIFO status bits. It is therefore not
> +          an error to get here when there is no data transfer in
> +          progress. */
> ++#ifndef CONFIG_ARM64
> +       log_event("IRQD", (u32)host->data, intmask);
> ++#else
> ++      log_event("IRQD", (u64)host->data, intmask);
> ++#endif
> +       if (!host->data)
> +               return;
> +
> +@@ -1427,7 +1499,11 @@ static void bcm2835_sdhost_data_irq(struct =
bcm2835_host *host, u32 intmask)
> +
> + static void bcm2835_sdhost_block_irq(struct bcm2835_host *host, u32 =
intmask)
> + {
> ++#ifndef CONFIG_ARM64
> +       log_event("IRQK", (u32)host->data, intmask);
> ++#else
> ++      log_event("IRQK", (u64)host->data, intmask);
> ++#endif
> +       if (!host->data) {
> +               pr_err("%s: got block interrupt 0x%08x even "
> +                       "though no data operation was in progress.\n",
> +@@ -1686,10 +1762,18 @@ static void bcm2835_sdhost_request(struct =
mmc_host *mmc, struct mmc_request *mrq
> +       edm =3D bcm2835_sdhost_read(host, SDEDM);
> +       fsm =3D edm & SDEDM_FSM_MASK;
> +
> ++#ifndef CONFIG_ARM64
> +       log_event("REQ<", (u32)mrq, edm);
> ++#else
> ++      log_event("REQ<", (u64)mrq, edm);
> ++#endif
> +       if ((fsm !=3D SDEDM_FSM_IDENTMODE) &&
> +           (fsm !=3D SDEDM_FSM_DATAMODE)) {
> ++#ifndef CONFIG_ARM64
> +               log_event("REQ!", (u32)mrq, edm);
> ++#else
> ++              log_event("REQ!", (u64)mrq, edm);
> ++#endif
> +               if (host->debug) {
> +                       pr_warn("%s: previous command (%d) not =
complete (EDM %x)\n",
> +                              mmc_hostname(host->mmc),
> +@@ -1725,7 +1809,11 @@ static void bcm2835_sdhost_request(struct =
mmc_host *mmc, struct mmc_request *mrq
> +                  mrq->data ? (u32)mrq->data->blksz : 0);
> +       mmiowb();
> +
> ++#ifndef CONFIG_ARM64
> +       log_event("REQ>", (u32)mrq, 0);
> ++#else
> ++      log_event("REQ>", (u64)mrq, 0);
> ++#endif
> +       spin_unlock_irqrestore(&host->lock, flags);
> + }
> +
> +@@ -1781,7 +1869,11 @@ static void =
bcm2835_sdhost_cmd_wait_work(struct work_struct *work)
> +
> +       spin_lock_irqsave(&host->lock, flags);
> +
> ++#ifndef CONFIG_ARM64
> +       log_event("CWK<", (u32)host->cmd, (u32)host->mrq);
> ++#else
> ++      log_event("CWK<", (u64)host->cmd, (u64)host->mrq);
> ++#endif
> +
> +       /*
> +        * If this tasklet gets rescheduled while running, it will
> +@@ -1796,7 +1888,11 @@ static void =
bcm2835_sdhost_cmd_wait_work(struct work_struct *work)
> +
> +       mmiowb();
> +
> ++#ifndef CONFIG_ARM64
> +       log_event("CWK>", (u32)host->cmd, 0);
> ++#else
> ++      log_event("CWK>", (u64)host->cmd, 0);
> ++#endif
> +
> +       spin_unlock_irqrestore(&host->lock, flags);
> + }
> +@@ -1812,7 +1908,11 @@ static void =
bcm2835_sdhost_tasklet_finish(unsigned long param)
> +
> +       spin_lock_irqsave(&host->lock, flags);
> +
> ++#ifndef CONFIG_ARM64
> +       log_event("TSK<", (u32)host->mrq, 0);
> ++#else
> ++      log_event("TSK<", (u64)host->mrq, 0);
> ++#endif
> +       /*
> +        * If this tasklet gets rescheduled while running, it will
> +        * be run again afterwards but without any active request.
> +@@ -1880,7 +1980,11 @@ static void =
bcm2835_sdhost_tasklet_finish(unsigned long param)
> +       }
> +
> +       mmc_request_done(host->mmc, mrq);
> ++#ifndef CONFIG_ARM64
> +       log_event("TSK>", (u32)mrq, 0);
> ++#else
> ++      log_event("TSK>", (u64)mrq, 0);
> ++#endif
> + }
> +
> + int bcm2835_sdhost_add_host(struct bcm2835_host *host)
> +diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
> +index 8493474..5402b8f 100644
> +--- a/drivers/spi/spi-bcm2835.c
> ++++ b/drivers/spi/spi-bcm2835.c
> +@@ -679,17 +679,21 @@ static void bcm2835_spi_set_cs(struct =
spi_device *spi, bool gpio_level)
> +       bcm2835_wr(bs, BCM2835_SPI_CS, cs);
> + }
> +
> ++#if 0
> + static int chip_match_name(struct gpio_chip *chip, void *data)
> + {
> +       return !strcmp(chip->label, data);
> + }
> ++#endif
> +
> + static int bcm2835_spi_setup(struct spi_device *spi)
> + {
> ++#if 0
> +       int err;
> +       struct gpio_chip *chip;
> +       struct device_node *pins;
> +       u32 pingroup_index;
> ++#endif
> +       /*
> +        * sanity checking the native-chipselects
> +        */
> +diff --git a/drivers/tty/serial/amba-pl011.c =
b/drivers/tty/serial/amba-pl011.c
> +index a04d27e..61329c0 100644
> +--- a/drivers/tty/serial/amba-pl011.c
> ++++ b/drivers/tty/serial/amba-pl011.c
> +@@ -2345,6 +2345,7 @@ static struct uart_driver amba_reg =3D {
> +       .cons                   =3D AMBA_CONSOLE,
> + };
> +
> ++#if 0
> + static int pl011_probe_dt_alias(int index, struct device *dev)
> + {
> +       struct device_node *np;
> +@@ -2376,6 +2377,7 @@ static int pl011_probe_dt_alias(int index, =
struct device *dev)
> +
> +       return ret;
> + }
> ++#endif
> +
> + /* unregisters the driver also if no more ports are left */
> + static void pl011_unregister_port(struct uart_amba_port *uap)
> +diff --git a/drivers/video/fbdev/bcm2708_fb.c =
b/drivers/video/fbdev/bcm2708_fb.c
> +index 37f6081..731ab30 100644
> +--- a/drivers/video/fbdev/bcm2708_fb.c
> ++++ b/drivers/video/fbdev/bcm2708_fb.c
> +@@ -735,7 +735,11 @@ static int bcm2708_fb_probe(struct =
platform_device *dev)
> +               goto free_fb;
> +       }
> +
> ++#ifndef CONFIG_ARM64
> +       pr_info("BCM2708FB: allocated DMA memory %08x\n",
> ++#else
> ++      pr_info("BCM2708FB: allocated DMA memory %016llx\n",
> ++#endif
> +              fb->cb_handle);
> +
> +       ret =3D bcm_dma_chan_alloc(BCM_DMA_FEATURE_BULK,
> +--
> +2.7.4
> +
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.7.bb =
b/recipes-kernel/linux/linux-raspberrypi_4.7.bb
> index 4a8fe36..a03a582 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.7.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.7.bb
> @@ -6,4 +6,6 @@ SRCREV =3D "e7fa325a40f260ed9fb86391a0b65150eba8c112"
>  SRC_URI =3D =
"git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.7.y=
 \
>             file://0001-fix-dtbo-rules.patch \
>  "
> +SRC_URI_append_raspberrypi3-64 =3D " =
file://0002-support-64bits.patch"
> +
>  require linux-raspberrypi.inc
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


