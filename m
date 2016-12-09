Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B511E00C5B; Fri,  9 Dec 2016 02:00:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [188.165.43.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 14.mo3.mail-out.ovh.net (14.mo3.mail-out.ovh.net
	[188.165.43.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9C05E00B96
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 01:59:57 -0800 (PST)
Received: from player693.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with ESMTP id 043A46885C
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 10:54:11 +0100 (CET)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player693.ha.ovh.net (Postfix) with ESMTPSA id 7CD29440CA8;
	Fri,  9 Dec 2016 10:05:22 +0100 (CET)
Date: Fri, 9 Dec 2016 09:05:21 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Mirza Krak <mirza.krak@gmail.com>
Message-ID: <20161209090521.637a191f@nuc.betafive.co.uk>
In-Reply-To: <1481234419-30578-1-git-send-email-mirza.krak@gmail.com>
References: <1481234419-30578-1-git-send-email-mirza.krak@gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 8346014536180074769
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelfedrheeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] u-boot: drop patch to include lowlevel_init
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
X-List-Received-Date: Fri, 09 Dec 2016 10:00:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu,  8 Dec 2016 23:00:19 +0100
Mirza Krak <mirza.krak@gmail.com> wrote:

> From: Mirza Krak <mirza.krak@gmail.com>
>=20
> U-boot has been updated to 2016.11 in OE-core Which means that we can
> use the upstream patches instead of the backports and no need for the thi=
rd
> patch which causes a build error when used with 2016.11.
>=20
> Signed-off-by: Mirza Krak <mirza.krak@gmail.com>
> ---
>  ...0001-arm-add-save_boot_params-for-ARM1176.patch |  4 +---
>  ...through-of-the-firmware-provided-FDT-blob.patch |  7 ++----
>  .../0003-Include-lowlevel_init.o-for-rpi2.patch    | 25 ----------------=
------
>  recipes-bsp/u-boot/u-boot_%.bbappend               |  1 -
>  4 files changed, 3 insertions(+), 34 deletions(-)
>  delete mode 100644 recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o=
-for-rpi2.patch
>=20
> diff --git a/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-A=
RM1176.patch b/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-A=
RM1176.patch
> index a5ebff5..97a4144 100644
> --- a/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-ARM1176.=
patch
> +++ b/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-ARM1176.=
patch
> @@ -1,7 +1,7 @@
>  From 3e10fcde3f3c24a488866dd33fa3f5d46ff3d7a3 Mon Sep 17 00:00:00 2001
>  From: =3D?UTF-8?q?C=3DC3=3DA9dric=3D20Schieli?=3D <cschieli@gmail.com>
>  Date: Fri, 11 Nov 2016 11:59:06 +0100
> -Subject: [PATCH] arm: add save_boot_params for ARM1176
> +Subject: [PATCH 1/1] arm: add save_boot_params for ARM1176
>  MIME-Version: 1.0
>  Content-Type: text/plain; charset=3DUTF-8
>  Content-Transfer-Encoding: 8bit
> @@ -13,8 +13,6 @@ feature mirrors the equivalent ARMv7 feature.
>=20
>  Signed-off-by: C=C3=A9dric Schieli <cschieli@gmail.com>
>  Acked-by: Stephen Warren <swarren@nvidia.com>
> -Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> -Upstream-status: Backport
>  ---
>   arch/arm/cpu/arm1176/start.S | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> diff --git a/recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmwar=
e-provided-FDT-blob.patch b/recipes-bsp/u-boot/files/0002-rpi-passthrough-o=
f-the-firmware-provided-FDT-blob.patch
> index 323b7ab..95ad94c 100644
> --- a/recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmware-provi=
ded-FDT-blob.patch
> +++ b/recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmware-provi=
ded-FDT-blob.patch
> @@ -1,7 +1,7 @@
>  From ade243a211d62327e9ebadce27bbbff7981e37f0 Mon Sep 17 00:00:00 2001
>  From: =3D?UTF-8?q?C=3DC3=3DA9dric=3D20Schieli?=3D <cschieli@gmail.com>
>  Date: Fri, 11 Nov 2016 11:59:07 +0100
> -Subject: [PATCH] rpi: passthrough of the firmware provided FDT blob
> +Subject: [PATCH 1/1] rpi: passthrough of the firmware provided FDT blob
>  MIME-Version: 1.0
>  Content-Type: text/plain; charset=3DUTF-8
>  Content-Transfer-Encoding: 8bit
> @@ -34,11 +34,8 @@ ${fdt_addr} and pass it to the kernel.
>=20
>  [1] https://www.raspberrypi.org/forums//viewtopic.php?f=3D107&t=3D134018
>=20
> -Upstream-Status: Backport
> -
>  Signed-off-by: C=C3=A9dric Schieli <cschieli@gmail.com>
>  Acked-by: Stephen Warren <swarren@nvidia.com>
> -Signed-off-by: Jonathan Liu <net147@gmail.com>
>  ---
>   board/raspberrypi/rpi/Makefile        |  1 +
>   board/raspberrypi/rpi/lowlevel_init.S | 36 ++++++++++++++++++++++++++++=
+++++++
> @@ -152,5 +149,5 @@ index 6245b36..ffd6d31 100644
>   	set_usbethaddr();
>   #ifdef CONFIG_ENV_VARS_UBOOT_RUNTIME_CONFIG
>  --
> -2.10.2
> +2.1.4
>=20

A 'backport' means the patch was already applied upstream, it's a
'backport' whether we need to change the patch or not. We also like to
have the sign-off from whoever brought the patch into the metadata
layer.

See the following link for more details:
http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines#Patch_Head=
er_Recommendations

> diff --git a/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rp=
i2.patch b/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.p=
atch
> deleted file mode 100644
> index ce0273f..0000000
> --- a/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -From 1eb01436bc57ad32519a4567a1c9ec82d52d60a1 Mon Sep 17 00:00:00 2001
> -From: Paul Barker <paul@paulbarker.me.uk>
> -Date: Tue, 29 Nov 2016 19:47:49 +0000
> -Subject: [PATCH] Include lowlevel_init.o for rpi2
> -
> -Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> -Upstream-status: Inappropriate
> -    (not needed upstream as rpi_2 board directory is removed in latest
> -    version)
> ----
> - board/raspberrypi/rpi_2/Makefile | 1 +
> - 1 file changed, 1 insertion(+)
> -
> -diff --git a/board/raspberrypi/rpi_2/Makefile b/board/raspberrypi/rpi_2/=
Makefile
> -index d82cd21..9f865c5 100644
> ---- a/board/raspberrypi/rpi_2/Makefile
> -+++ b/board/raspberrypi/rpi_2/Makefile
> -@@ -5,3 +5,4 @@
> - #
> -
> - obj-y	:=3D ../rpi/rpi.o
> -+obj-y	+=3D ../rpi/lowlevel_init.o
> ---
> -2.1.4
> -
> diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-=
boot_%.bbappend
> index a4545f0..0edc8dc 100644
> --- a/recipes-bsp/u-boot/u-boot_%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot_%.bbappend
> @@ -3,5 +3,4 @@ RDEPENDS_${PN}_append_rpi =3D " rpi-u-boot-scr"
>  SRC_URI_append_rpi =3D " \
>      file://0001-arm-add-save_boot_params-for-ARM1176.patch \
>      file://0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch \
> -    file://0003-Include-lowlevel_init.o-for-rpi2.patch \
>      "
> --
> 2.1.4
>=20

I think the removal of the 0003-Include-lowlevel_init.o-for-rpi2.patch
file and the removal from SRC_URI_append_rpi are all that are needed
here.

Thanks,
Paul

