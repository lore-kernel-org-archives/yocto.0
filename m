Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6210F4C8009D
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2011 02:27:53 -0500 (CDT)
Received: by wwd20 with SMTP id 20so1151311wwd.11
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2011 00:27:52 -0700 (PDT)
Received: by 10.227.57.82 with SMTP id b18mr517143wbh.74.1308209272082;
	Thu, 16 Jun 2011 00:27:52 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id o19sm938787wbh.21.2011.06.16.00.27.49
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 16 Jun 2011 00:27:50 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <102bc7bfe29dd7c29f1aec2ad0a8113d543d3e4c.1308204165.git.jingdong.lu@windriver.com>
Date: Thu, 16 Jun 2011 09:27:48 +0200
Message-Id: <CB1B40DD-5EDC-4DAE-B5ED-9E5AF274E5C3@dominion.thruhere.net>
References: <cover.1308204165.git.jingdong.lu@windriver.com>
	<102bc7bfe29dd7c29f1aec2ad0a8113d543d3e4c.1308204165.git.jingdong.lu@windriver.com>
To: Jingdong Lu <jingdong.lu@windriver.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] RTC: Ensure msecure is mux'd to be able to set RTC
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
X-List-Received-Date: Thu, 16 Jun 2011 07:27:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 16 jun 2011, om 08:07 heeft Jingdong Lu het volgende geschreven:

> From: Jingdong Lu <jingdong.lu@windriver.com>
>=20
> commit e2a346a2a054f702fd76f328ff747b9ad9264a4c from =
git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap-2.6.git

When I do 'git show e2a346a2a054f702fd76f328ff747b9ad9264a4' I get:

commit e2a346a2a054f702fd76f328ff747b9ad9264a4c
Author: Alexander Holler <holler@ahsoftware.de>

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Date:   Tue Apr 5 15:40:08 2011 +0200

    arm: omap3: beagle: Ensure msecure is mux'd to be able to set the =
RTC
   =20
    Without msecure beeing high it isn't possible to set (or start)
    the RTC.
   =20
    Tested with a BeagleBoard C4.
   =20
    Signed-off-by: Alexander Holler <holler@ahsoftware.de>
    Signed-off-by: Tony Lindgren <tony@atomide.com>

diff --git a/arch/arm/mach-omap2/board-omap3beagle.c =
b/arch/arm/mach-omap2/board-omap3beagle.c
index be71426..d64ed97 100644
--- a/arch/arm/mach-omap2/board-omap3beagle.c
+++ b/arch/arm/mach-omap2/board-omap3beagle.c
@@ -579,6 +579,9 @@ static void __init omap3_beagle_init(void)
        omap_nand_flash_init(NAND_BUSWIDTH_16, =
omap3beagle_nand_partitions,
                             ARRAY_SIZE(omap3beagle_nand_partitions));
=20
+       /* Ensure msecure is mux'd to be able to set the RTC. */
+       omap_mux_init_signal("sys_drm_msecure", =
OMAP_PIN_OFF_OUTPUT_HIGH);
+
        /* Ensure SDRC pins are mux'd for self-refresh */
        omap_mux_init_signal("sdrc_cke0", OMAP_PIN_OUTPUT);
        omap_mux_init_signal("sdrc_cke1", OMAP_PIN_OUTPUT);


So if you're going to change the author, you'd also need to remove the =
SOBs.

>=20
> arm: omap3: beagle: Ensure msecure is mux'd to be able to set the RTC.
> "Msecure" signal provides for protection of the RTC register in =
TPS65950 be
> disabling that function via a control signal from the OMAP3530. So =
ensure
> msecure is mux'd to be able to set the RTC.
>=20
> Tested with a BeagleBoard C4.
> Fixes bug [YOCTO #767]
>=20
> Signed-off-by: Alexander Holler <holler@ahsoftware.de>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> Integrated-by: Jingdong Lu <jingdong.lu@windriver.com>
> ---
> arch/arm/mach-omap2/board-omap3beagle.c |    3 +++
> 1 files changed, 3 insertions(+), 0 deletions(-)
>=20
> diff --git a/arch/arm/mach-omap2/board-omap3beagle.c =
b/arch/arm/mach-omap2/board-omap3beagle.c
> index af1166b..925c0b3 100644
> --- a/arch/arm/mach-omap2/board-omap3beagle.c
> +++ b/arch/arm/mach-omap2/board-omap3beagle.c
> @@ -580,6 +580,9 @@ static void __init omap3_beagle_init(void)
> 	usb_ehci_init(&ehci_pdata);
> 	omap3beagle_flash_init();
>=20
> +	/* Ensure msecure is mux'd to be able to set the RTC. */
> +	omap_mux_init_signal("sys_drm_msecure", =
OMAP_PIN_OFF_OUTPUT_HIGH);
> +
> 	/* Ensure SDRC pins are mux'd for self-refresh */
> 	omap_mux_init_signal("sdrc_cke0", OMAP_PIN_OUTPUT);
> 	omap_mux_init_signal("sdrc_cke1", OMAP_PIN_OUTPUT);
> --=20
> 1.7.0.4
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


