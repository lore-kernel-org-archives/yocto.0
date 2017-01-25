Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBBBBE00867; Wed, 25 Jan 2017 07:38:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A5ECE004D8
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 07:38:12 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id c85so43201354wmi.1
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 07:38:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=EhXRpZAv0o5kdw3tn2AWmja7akWX78OpkGunkn8lEjQ=;
	b=rUAtmOgDLZNJviwfGIv4ht8j00YQ76kIDpEOo4iM3XJtwIbYeX5woCpGQGSWO6rcjn
	89oAtb0Az7jj5gg2xTipQB21Gh7XEL+RF+HAjq6cV3exO5FrN416uS353ChKZy16602w
	E8vW09K6yrpHXMsY1IKho4YfITutYOvE/bZxP0n+EsA6oXRKYgBjTNUtDgCgCr2Y3avp
	OVx1Udui65QHahrC36sWjSsk2rhHCgy4Z7dx8pemcnMk4vU5TuL1f5MKIsGdQxsXBAqG
	1NeSGNO1CiRJ3Od3e+Yb1/qOuGV2rfD9YmEJBIylIpm5clFG21xwJmKw7fl40y8JqIDp
	IujQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=EhXRpZAv0o5kdw3tn2AWmja7akWX78OpkGunkn8lEjQ=;
	b=hKaozDYUSRih3FBcAYKTp7hS4guA7UPL0ZgA1oq+WDEmf1z8pOI7ot9UDnbqODgzJE
	b+oaCZrx71pzZNnCvHNGTOR9URZXgC6MtqKv7PJ12+VVOcg6aqur7jNlcgCtA2tjBoBe
	dsfsfXpoGn8z1ueHUUKwGvI6MAXNbxxPOx8+QRjr1ALYvwb3kP6UpjgAKvrm0GifmET6
	6+aH7ndkKVFq7YVN4ImRVLtdudQlj8SufRr4LBBuVFNCMXAop2BDQcXPZNiKu6l1h78u
	plQ+uXxrMLIcmOIlsxg5307pdX9/SrMFIJBmgq9zqq4AlqcafycDm4yUB5RbW4I6z40W
	aBkw==
X-Gm-Message-State: AIkVDXKx0pFlT0uBkBMn96rYlWxMasItscNraAMCvJ6VKYIeqwNJKcZWiyKbFCI0RjpQaA==
X-Received: by 10.28.191.208 with SMTP id o77mr22284720wmi.117.1485358691759; 
	Wed, 25 Jan 2017 07:38:11 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	r24sm25502945wrr.25.2017.01.25.07.38.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 25 Jan 2017 07:38:11 -0800 (PST)
Date: Wed, 25 Jan 2017 15:38:04 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Mirza Krak <mirza.krak@gmail.com>
Message-ID: <20170125153804.GA1803@carbonA>
References: <1485282724-16153-1-git-send-email-mirza.krak@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1485282724-16153-1-git-send-email-mirza.krak@gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] u-boot: drop backported patches
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
X-List-Received-Date: Wed, 25 Jan 2017 15:38:16 -0000
X-Groupsio-MsgNum: 34090
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline

--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 24, 2017 at 07:32:04PM +0100, Mirza Krak wrote:
> From: Mirza Krak <mirza.krak@gmail.com>
>
> U-boot has been updated to 2017.01 in poky/oe-core which contains these
> patches.
>
> Signed-off-by: Mirza Krak <mirza.krak@gmail.com>
> ---
>  ...0001-arm-add-save_boot_params-for-ARM1176.patch |  56 --------
>  ...through-of-the-firmware-provided-FDT-blob.patch | 156 ---------------=
------
>  recipes-bsp/u-boot/u-boot_%.bbappend               |   5 -
>  3 files changed, 217 deletions(-)
>  delete mode 100644 recipes-bsp/u-boot/files/0001-arm-add-save_boot_param=
s-for-ARM1176.patch
>  delete mode 100644 recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-=
firmware-provided-FDT-blob.patch
>
> diff --git a/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-A=
RM1176.patch b/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-A=
RM1176.patch
> deleted file mode 100644
> index a5ebff5..0000000
> --- a/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-ARM1176.=
patch
> +++ /dev/null
> @@ -1,56 +0,0 @@
> -From 3e10fcde3f3c24a488866dd33fa3f5d46ff3d7a3 Mon Sep 17 00:00:00 2001
> -From: =3D?UTF-8?q?C=3DC3=3DA9dric=3D20Schieli?=3D <cschieli@gmail.com>
> -Date: Fri, 11 Nov 2016 11:59:06 +0100
> -Subject: [PATCH] arm: add save_boot_params for ARM1176
> -MIME-Version: 1.0
> -Content-Type: text/plain; charset=3DUTF-8
> -Content-Transfer-Encoding: 8bit
> -
> -Implement a hook to allow boards to save boot-time CPU state for later
> -use. When U-Boot is chain-loaded by another bootloader, CPU registers may
> -contain useful information such as system configuration information. This
> -feature mirrors the equivalent ARMv7 feature.
> -
> -Signed-off-by: C=E9dric Schieli <cschieli@gmail.com>
> -Acked-by: Stephen Warren <swarren@nvidia.com>
> -Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> -Upstream-status: Backport
> ----
> - arch/arm/cpu/arm1176/start.S | 10 ++++++++++
> - 1 file changed, 10 insertions(+)
> -
> -diff --git a/arch/arm/cpu/arm1176/start.S b/arch/arm/cpu/arm1176/start.S
> -index a602d4e..7c00201 100644
> ---- a/arch/arm/cpu/arm1176/start.S
> -+++ b/arch/arm/cpu/arm1176/start.S
> -@@ -16,6 +16,7 @@
> -
> - #include <asm-offsets.h>
> - #include <config.h>
> -+#include <linux/linkage.h>
> -
> - #ifndef CONFIG_SYS_PHY_UBOOT_BASE
> - #define CONFIG_SYS_PHY_UBOOT_BASE	CONFIG_SYS_UBOOT_BASE
> -@@ -37,6 +38,11 @@
> - 	.globl reset
> -
> - reset:
> -+	/* Allow the board to save important registers */
> -+	b	save_boot_params
> -+.globl	save_boot_params_ret
> -+save_boot_params_ret:
> -+
> - 	/*
> - 	 * set the cpu to SVC32 mode
> - 	 */
> -@@ -110,3 +116,7 @@ mmu_disable_phys:
> - c_runtime_cpu_setup:
> -
> - 	mov	pc, lr
> -+
> -+WEAK(save_boot_params)
> -+	b	save_boot_params_ret	/* back to my caller */
> -+ENDPROC(save_boot_params)
> ---
> -2.1.4
> -
> diff --git a/recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmwar=
e-provided-FDT-blob.patch b/recipes-bsp/u-boot/files/0002-rpi-passthrough-o=
f-the-firmware-provided-FDT-blob.patch
> deleted file mode 100644
> index 323b7ab..0000000
> --- a/recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmware-provi=
ded-FDT-blob.patch
> +++ /dev/null
> @@ -1,156 +0,0 @@
> -From ade243a211d62327e9ebadce27bbbff7981e37f0 Mon Sep 17 00:00:00 2001
> -From: =3D?UTF-8?q?C=3DC3=3DA9dric=3D20Schieli?=3D <cschieli@gmail.com>
> -Date: Fri, 11 Nov 2016 11:59:07 +0100
> -Subject: [PATCH] rpi: passthrough of the firmware provided FDT blob
> -MIME-Version: 1.0
> -Content-Type: text/plain; charset=3DUTF-8
> -Content-Transfer-Encoding: 8bit
> -
> -Raspberry firmware used to pass a FDT blob at a fixed address (0x100),
> -but this is not true anymore. The address now depends on both the
> -memory size and the blob size [1].
> -
> -If one wants to passthrough this FDT blob to the kernel, the most
> -reliable way is to save its address from the r2/x0 register in the
> -U-Boot entry point and expose it in a environment variable for
> -further processing.
> -
> -This patch just does this:
> -- save the provided address in the global variable fw_dtb_pointer
> -- expose it in ${fdt_addr} if it points to a a valid FDT blob
> -
> -There are many different ways to use it. One can, for example, use
> -the following script which will extract from the tree the command
> -line built by the firmware, then hand over the blob to a previously
> -loaded kernel:
> -
> -fdt addr ${fdt_addr}
> -fdt get value bootargs /chosen bootargs
> -bootz ${kernel_addr_r} - ${fdt_addr}
> -
> -Alternatively, users relying on sysboot/pxe can simply omit any FDT
> -statement in their extlinux.conf file, U-Boot will automagically pick
> -${fdt_addr} and pass it to the kernel.
> -
> -[1] https://www.raspberrypi.org/forums//viewtopic.php?f=3D107&t=3D134018
> -
> -Upstream-Status: Backport
> -
> -Signed-off-by: C=E9dric Schieli <cschieli@gmail.com>
> -Acked-by: Stephen Warren <swarren@nvidia.com>
> -Signed-off-by: Jonathan Liu <net147@gmail.com>
> ----
> - board/raspberrypi/rpi/Makefile        |  1 +
> - board/raspberrypi/rpi/lowlevel_init.S | 36 ++++++++++++++++++++++++++++=
+++++++
> - board/raspberrypi/rpi/rpi.c           | 29 ++++++++++++++++++++++++++++
> - 3 files changed, 66 insertions(+)
> - create mode 100644 board/raspberrypi/rpi/lowlevel_init.S
> -
> -diff --git a/board/raspberrypi/rpi/Makefile b/board/raspberrypi/rpi/Make=
file
> -index 4ce2c98..dcb25ac 100644
> ---- a/board/raspberrypi/rpi/Makefile
> -+++ b/board/raspberrypi/rpi/Makefile
> -@@ -5,3 +5,4 @@
> - #
> -
> - obj-y	:=3D rpi.o
> -+obj-y	+=3D lowlevel_init.o
> -diff --git a/board/raspberrypi/rpi/lowlevel_init.S b/board/raspberrypi/r=
pi/lowlevel_init.S
> -new file mode 100644
> -index 0000000..cdbd8e1
> ---- /dev/null
> -+++ b/board/raspberrypi/rpi/lowlevel_init.S
> -@@ -0,0 +1,36 @@
> -+/*
> -+ * (C) Copyright 2016
> -+ * C=E9dric Schieli <cschieli@gmail.com>
> -+ *
> -+ * SPDX-License-Identifier:	GPL-2.0+
> -+ */
> -+
> -+#include <config.h>
> -+
> -+.align 8
> -+.global fw_dtb_pointer
> -+fw_dtb_pointer:
> -+#ifdef CONFIG_ARM64
> -+	.dword 0x0
> -+#else
> -+	.word 0x0
> -+#endif
> -+
> -+/*
> -+ * Routine: save_boot_params (called after reset from start.S)
> -+ * Description: save ATAG/FDT address provided by the firmware at boot =
time
> -+ */
> -+
> -+.global save_boot_params
> -+save_boot_params:
> -+
> -+	/* The firmware provided ATAG/FDT address can be found in r2/x0 */
> -+#ifdef CONFIG_ARM64
> -+	adr	x8, fw_dtb_pointer
> -+	str	x0, [x8]
> -+#else
> -+	str	r2, fw_dtb_pointer
> -+#endif
> -+
> -+	/* Returns */
> -+	b	save_boot_params_ret
> -diff --git a/board/raspberrypi/rpi/rpi.c b/board/raspberrypi/rpi/rpi.c
> -index 6245b36..ffd6d31 100644
> ---- a/board/raspberrypi/rpi/rpi.c
> -+++ b/board/raspberrypi/rpi/rpi.c
> -@@ -25,6 +25,9 @@
> -
> - DECLARE_GLOBAL_DATA_PTR;
> -
> -+/* From lowlevel_init.S */
> -+extern unsigned long fw_dtb_pointer;
> -+
> - static const struct bcm2835_gpio_platdata gpio_platdata =3D {
> - 	.base =3D BCM2835_GPIO_BASE,
> - };
> -@@ -285,6 +288,31 @@ static void set_fdtfile(void)
> - 	setenv("fdtfile", fdtfile);
> - }
> -
> -+/*
> -+ * If the firmware provided a valid FDT at boot time, let's expose it in
> -+ * ${fdt_addr} so it may be passed unmodified to the kernel.
> -+ */
> -+static void set_fdt_addr(void)
> -+{
> -+	if (getenv("fdt_addr"))
> -+		return;
> -+
> -+	if (fdt_magic(fw_dtb_pointer) !=3D FDT_MAGIC)
> -+		return;
> -+
> -+	setenv_hex("fdt_addr", fw_dtb_pointer);
> -+}
> -+
> -+/*
> -+ * Prevent relocation from stomping on a firmware provided FDT blob.
> -+ */
> -+unsigned long board_get_usable_ram_top(unsigned long total_size)
> -+{
> -+	if ((gd->ram_top - fw_dtb_pointer) > SZ_64M)
> -+		return gd->ram_top;
> -+	return fw_dtb_pointer & ~0xffff;
> -+}
> -+
> - static void set_usbethaddr(void)
> - {
> - 	ALLOC_CACHE_ALIGN_BUFFER(struct msg_get_mac_address, msg, 1);
> -@@ -356,6 +384,7 @@ static void set_serial_number(void)
> -
> - int misc_init_r(void)
> - {
> -+	set_fdt_addr();
> - 	set_fdtfile();
> - 	set_usbethaddr();
> - #ifdef CONFIG_ENV_VARS_UBOOT_RUNTIME_CONFIG
> ---
> -2.10.2
> -
> diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-=
boot_%.bbappend
> index 0edc8dc..3781666 100644
> --- a/recipes-bsp/u-boot/u-boot_%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot_%.bbappend
> @@ -1,6 +1 @@
> -FILESEXTRAPATHS_prepend_rpi :=3D "${THISDIR}/files:"
>  RDEPENDS_${PN}_append_rpi =3D " rpi-u-boot-scr"
> -SRC_URI_append_rpi =3D " \
> -    file://0001-arm-add-save_boot_params-for-ARM1176.patch \
> -    file://0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch \
> -    "
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thank you.

--
Andrei Gherzan

--MGYHOYXEY6WxJCY8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEQvNqws+Dz7aX1cEEc7voa356t88FAliIxlwACgkQc7voa356
t8/Nhw/9ESr/ohrcsIl0aVt0PnbWndSHHWjXamstHOLoK5gmiMa+XwZhIhdHAdy3
Ie6OjBBINb8JGgZGnPSHWww6kMxM31icqrJcSFmggDRCVx0ViZZDCBZh1JY8EOii
R/EFxDJzncaTlGv6Rvomr9qGprwB2loKEYWmqka7YWZdTAssJs5zujm034NCTA7b
HooDZrizNdDsntA5HPYaKZC6FsvkfRfDn0a76dpR+f1eJuR2BzqhoMXldlH7TQti
4TcToOoatvdSysuuygrQ8il/N1hFwhJpRwIP5sb3KnGbPKOM6/4vc40uCamjFTBc
okzrKCo5kiEixGiEi5BL9hoXNiPQqVpBDLAcJ0uBQK5V8KFHJHiLXNT0wD+XSAj9
vV9As0Dcid1239xvOEz0CysMXIHcJuL7Y7J2D8FN2WZVHS6yGGvkkQ0/bZFRT0/Q
u2u7lgUwJrEFzWbJ/wh8icjuKTPNZZazEZ9EtwWoc8YL/ZmnV5LqKaAAstm6eCqy
DWngd1ZHyaDLisNTrfXTDnFfwUM4mK42eIY778wI4hqvASnSoGlYkmx5nmhGlcpb
bTew5hkhUP7Hy5Z9TGAzo/oIOqfvG9ndM9tQQEJcmTQ19kNKeIdtpvQYqqgx0WJv
Pfs0vEPphg1GOZVLwR28jn6LGVOcQnSTEiNztSYt+scgA21bVOE=
=YKDi
-----END PGP SIGNATURE-----

--MGYHOYXEY6WxJCY8--
