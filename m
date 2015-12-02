Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDDE5E007B1; Wed,  2 Dec 2015 14:00:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0592E00404
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 14:00:09 -0800 (PST)
Received: by wmuu63 with SMTP id u63so233686080wmu.0
	for <yocto@yoctoproject.org>; Wed, 02 Dec 2015 14:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=UdBZvbiAKOiEseGPWUrDcb4vxDt27+qzvnT1iO+w5mQ=;
	b=B3LOt19Uc4KUeOP8PX9vATqX/Yx6XyhKLP52SvweA7qNWjeV9wl8Yy2OSSvurdoYMe
	FHvzRaahAyYJhEUDRbA0yyN2jRM45AelU7ugPq/bISHMcW7W+6FJEmDrxJXj4Lz70bzE
	a8I4rURpX18myObYrkhh0jVpbWHKw7U2LIdXKhBt8gU5E5m4pD47Pb3g0bGQmWIMYOwW
	YQIAc/dci97b9DSidqeAJLeHOJOoXi3cWh+PrTQsY/YTRTAlnk4UlJQ27y2JE7Tsa1Qb
	Zy5HqJQRT4b5jvJs+C4w4kXuG6QaCUVcplx5stbxzRHFHsqBKjcZ7EdReoIms8QLNPh+
	ODKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=UdBZvbiAKOiEseGPWUrDcb4vxDt27+qzvnT1iO+w5mQ=;
	b=HMF6GGziei04m/Y/38jvJgakT5U4QG/GPwmsTQRTLzesQ0y8NT+zJl5YAZ8bjtw3dk
	ht6ssmxBtdGs+dnOCYptZ8NnSPKIO30R9sqAc9hgvOdsIBvNEZu7eDNq2lJAMmBjExS/
	eFyqiwR0hn5+es6so2uGA5biUlG1r7xCsN64cnpXcW5Joid/CUxrtpleuq46RlR5gndU
	nqsJOkvp+Jso63XTxhGL8/MlCThtSTnc8wxVugkGuhMyCnsgMsj5k8qbwby2hfoQ/rPZ
	wFfEqTw4+XEnS9IaPUFhn85frRpTPHpQsRQkjRQjtJ2PSaLCW2KTFXf0AM37S8ev+o4C
	CsPg==
X-Gm-Message-State: ALoCoQmttIv2+1LvTcTPeHm6aMKxBH8Rgr8yhaBKZjXLpyIxKtTiamwdnDusBPTeAlGW+aVdVntC
X-Received: by 10.28.125.73 with SMTP id y70mr8704460wmc.95.1449093608719;
	Wed, 02 Dec 2015 14:00:08 -0800 (PST)
Received: from resin (ipservice-092-217-115-210.092.217.pools.vodafone-ip.de.
	[92.217.115.210])
	by smtp.gmail.com with ESMTPSA id 67sm32860168wmm.6.2015.12.02.14.00.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 02 Dec 2015 14:00:07 -0800 (PST)
Date: Wed, 2 Dec 2015 23:00:05 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <20151202220005.GB8209@resin>
References: <1447166720-13316-1-git-send-email-javier@osg.samsung.com>
	<1447166720-13316-2-git-send-email-javier@osg.samsung.com>
	<20151202142505.GB21739@resin>
MIME-Version: 1.0
In-Reply-To: <20151202142505.GB21739@resin>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>, yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v3 1/2] linux-raspberrypi: Add a 4.2.3 linux kernel with vc4 support
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
X-List-Received-Date: Wed, 02 Dec 2015 22:00:12 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed, Dec 02, 2015 at 03:25:05PM +0100, Andrei Gherzan wrote:
> On Tue, Nov 10, 2015 at 11:45:19AM -0300, Javier Martinez Canillas wrote:
> > From: Derek Foreman <derekf@osg.samsung.com>
> > 
> > This adds Eric Anholt's WIP kernel with dri/kms/3d support for the GPU on
> > the rpi2. Adding a recipe that tracks this kernel, will make it easier to
> > test this setup.
> > 
> > This recipe should only used for testing purposes for now, so it will not
> > be set as the default but can be chosen by changing the default providers.
> > 
> > Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
> > [javier: Extended commit message and set default preference to -1]
> > Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>
> > 
> > ---
> > 
> > Changes in v3:
> > - Update to latest vc4-kms-v3d-rpi2 branch sha1. Suggested by Andreas Müller.
> > - Drop patches that were already merged in the vc4-kms-v3d-rpi2 branch.
> > - Bump Linux version from 4.1 to 4.2.
> > 
> > Changes in v2:
> > - Add a linux-raspberrypi-vc4 recipe insted of a linux-raspberrypi one.
> >   Suggested by Petter Mabäcker, Andreas Müller and Andrei Gherzan.
> > - Split the readme change in a separate patch. Suggested by Andrei Gherzan.
> > - Don't make the vc4 patches inclusion conditional since will always be
> >   needed when choosing the recipe. Suggested by Andrei Gherzan.
> > 
> >  ..._defconfig-Enable-config-options-for-vc4-.patch | 40 ++++++++++++++++++++++
> >  .../0002-bcm2708-Fix-DTC-build-error.patch         | 38 ++++++++++++++++++++
> >  .../linux/linux-raspberrypi-vc4/defconfig          |  1 +
> >  recipes-kernel/linux/linux-raspberrypi-vc4_4.2.bb  |  9 +++++
> >  4 files changed, 88 insertions(+)
> >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-vc4/0001-ARM-bcm2709_defconfig-Enable-config-options-for-vc4-.patch
> >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-vc4/0002-bcm2708-Fix-DTC-build-error.patch
> >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-vc4/defconfig
> >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-vc4_4.2.bb
> > 
> > diff --git a/recipes-kernel/linux/linux-raspberrypi-vc4/0001-ARM-bcm2709_defconfig-Enable-config-options-for-vc4-.patch b/recipes-kernel/linux/linux-raspberrypi-vc4/0001-ARM-bcm2709_defconfig-Enable-config-options-for-vc4-.patch
> > new file mode 100644
> > index 000000000000..d7b722dd35df
> > --- /dev/null
> > +++ b/recipes-kernel/linux/linux-raspberrypi-vc4/0001-ARM-bcm2709_defconfig-Enable-config-options-for-vc4-.patch
> > @@ -0,0 +1,40 @@
> > +From 10e0beec47def7813e2e256697018f3d0a4559fe Mon Sep 17 00:00:00 2001
> > +From: Derek Foreman <derekf@osg.samsung.com>
> > +Date: Fri, 6 Nov 2015 13:15:35 -0300
> > +Subject: [PATCH 1/1] ARM: bcm2709_defconfig: Enable config options for vc4
> > + support
> > +
> > +Add the needed Kconfig symbols to build Eric Anholt's WIP kernel
> > +4.1 Linux kernel with vc4 dri/kms/3d support. Also increase CMA
> > +size from 5 MiB to 256 MiB as that is needed by the driver.
> > +
> > +Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
> > +---
> > + arch/arm/configs/bcm2709_defconfig | 4 +++-
> > + 1 file changed, 3 insertions(+), 1 deletion(-)
> > +
> > +diff --git a/arch/arm/configs/bcm2709_defconfig b/arch/arm/configs/bcm2709_defconfig
> > +index c2ddd10dc106..4312906bfe0f 100644
> > +--- a/arch/arm/configs/bcm2709_defconfig
> > ++++ b/arch/arm/configs/bcm2709_defconfig
> > +@@ -394,7 +394,7 @@ CONFIG_NFC_PN533=m
> > + CONFIG_DEVTMPFS=y
> > + CONFIG_DEVTMPFS_MOUNT=y
> > + CONFIG_DMA_CMA=y
> > +-CONFIG_CMA_SIZE_MBYTES=5
> > ++CONFIG_CMA_SIZE_MBYTES=256
> > + CONFIG_MTD=m
> > + CONFIG_MTD_BLOCK=m
> > + CONFIG_MTD_NAND=m
> > +@@ -807,6 +807,8 @@ CONFIG_FB=y
> > + CONFIG_FB_BCM2708=y
> > + CONFIG_FB_SSD1307=m
> > + CONFIG_FB_RPISENSE=m
> > ++CONFIG_DRM=y
> > ++CONFIG_DRM_VC4=y
> > + # CONFIG_BACKLIGHT_GENERIC is not set
> > + CONFIG_BACKLIGHT_GPIO=m
> > + CONFIG_FRAMEBUFFER_CONSOLE=y
> > +-- 
> > +2.4.3
> > +
> > diff --git a/recipes-kernel/linux/linux-raspberrypi-vc4/0002-bcm2708-Fix-DTC-build-error.patch b/recipes-kernel/linux/linux-raspberrypi-vc4/0002-bcm2708-Fix-DTC-build-error.patch
> > new file mode 100644
> > index 000000000000..59aa0e54d353
> > --- /dev/null
> > +++ b/recipes-kernel/linux/linux-raspberrypi-vc4/0002-bcm2708-Fix-DTC-build-error.patch
> > @@ -0,0 +1,38 @@
> > +From 2d0adbb07ccccef248173af3ac090ca867cf3460 Mon Sep 17 00:00:00 2001
> > +From: Javier Martinez Canillas <javier@osg.samsung.com>
> > +Date: Mon, 9 Nov 2015 16:17:28 -0300
> > +Subject: [PATCH 1/1] bcm2708: Fix DTC build error
> > +
> > +Commit fa6a6d220c4c ("bcm2708: Use #include in dtsi files") changed the bcm*
> > +DTSI files to use the pre-processor #include directive instead the /include/
> > +but forgot to change the arch/arm/boot/dts/bcm2708.dtsi file. Later commit
> > +7f04e14bebf1 ("fixup! bcm2708: Use #include in dtsi files") tried to do that
> > +change but introduced a build error:
> > +
> > +DTC     arch/arm/boot/dts/bcm2708-rpi-b.dtb
> > +In file included from arch/arm/boot/dts/bcm2708-rpi-b.dts:3:0:
> > +arch/arm/boot/dts/bcm2708.dtsi:1:9: error: #include expects "FILENAME" or <FILENAME>
> > +            ^
> > +scripts/Makefile.lib:293: recipe for target 'arch/arm/boot/dts/bcm2708-rpi-b.dtb' failed
> > +make[1]: *** [arch/arm/boot/dts/bcm2708-rpi-b.dtb] Error 1
> > +arch/arm/Makefile:327: recipe for target 'bcm2708-rpi-b.dtb' failed
> > +make: *** [bcm2708-rpi-b.dtb] Error 2
> > +
> > +Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>
> > +---
> > + arch/arm/boot/dts/bcm2708.dtsi | 2 +-
> > + 1 file changed, 1 insertion(+), 1 deletion(-)
> > +
> > +diff --git a/arch/arm/boot/dts/bcm2708.dtsi b/arch/arm/boot/dts/bcm2708.dtsi
> > +index a70fa3107ac2..b954255bb860 100644
> > +--- a/arch/arm/boot/dts/bcm2708.dtsi
> > ++++ b/arch/arm/boot/dts/bcm2708.dtsi
> > +@@ -1,4 +1,4 @@
> > +-#include/ "bcm2708_common.dtsi"
> > ++#include "bcm2708_common.dtsi"
> > + 
> > + / {
> > + 	compatible = "brcm,bcm2708";
> > +-- 
> > +2.4.3
> > +
> > diff --git a/recipes-kernel/linux/linux-raspberrypi-vc4/defconfig b/recipes-kernel/linux/linux-raspberrypi-vc4/defconfig
> > new file mode 100644
> > index 000000000000..ecbf32cfdc4c
> > --- /dev/null
> > +++ b/recipes-kernel/linux/linux-raspberrypi-vc4/defconfig
> > @@ -0,0 +1 @@
> > +# Dummy file to get through do_kernel_configme.
> > diff --git a/recipes-kernel/linux/linux-raspberrypi-vc4_4.2.bb b/recipes-kernel/linux/linux-raspberrypi-vc4_4.2.bb
> > new file mode 100644
> > index 000000000000..cdd351c3ee66
> > --- /dev/null
> > +++ b/recipes-kernel/linux/linux-raspberrypi-vc4_4.2.bb
> > @@ -0,0 +1,9 @@
> > +LINUX_VERSION ?= "4.2.3"
> > +
> > +SRCREV = "b8b2f50546513355fecd9ac44b2355f19a9620a8"
> > +SRC_URI = "git://github.com/anholt/linux.git;protocol=git;branch=vc4-kms-v3d-rpi2 \
> 
> Cloning this seems a problematic:
> 
> ERROR: Fetcher failure: Fetch command failed with exit code 141, output:
> Cloning into bare repository '/home/andrei/work/yocto/shared-downloads/git2/github.com.anholt.linux.git'...
> error: inflate: data stream error (invalid distance too far back)
> fatal: pack has bad object at offset 357395694: inflate returned -3
> 
> Any idea what might go wrong?

Scratch that as it seems to have been related to my netowrk. But now there is another problem. The branch you selected in the recipe doesn't contain the wanted revision. I'm wondering if that is due to a rebase or it is just a miss in the patch? If it's the first thing... then we need to find a stable revision (why do people rebase?). 

-- 
Andrei Gherzan

