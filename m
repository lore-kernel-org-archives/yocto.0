Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DC1AE00EB3; Thu, 21 Jul 2016 05:32:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FE51E00EAD
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 05:32:39 -0700 (PDT)
Received: from localhost.localdomain (unknown [74.95.113.124])
	by msfrf2625.sfr.fr (SMTP Server) with ESMTP id C37C81C000C37;
	Thu, 21 Jul 2016 14:32:35 +0200 (CEST)
Received: from localhost.localdomain (unknown [74.95.113.124])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2625.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 21 Jul 2016 14:32:34 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Thu, 21 Jul 2016 20:32:05 +0800
Message-Id: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v4 00/12] Support for VC4 graphics driver
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
X-List-Received-Date: Thu, 21 Jul 2016 12:32:46 -0000

v4 series:
a. rebased
b. Upstream-Status added to the patch to the VC4 driver (needed only for kernel 4.4, accepted upstream in 4.7)

v3 series:
a. patch rebased
b. new revision of kernel, to get a version of the VC4 graphics driver that handles render nodes
c. patch to the VC4 driver to enable proper working of the render nodes (need to add authorization for IOCTLs)

v2 series:
a. Fix the 4.4.10 kernel revision
b. Effectively add vc4-kms-v3d overlay to the list of overlays to build (forgotten previously)
c. Make the parameter to the v4c-kms-v3d overlay configurable
d. Add default values for the cma parameter to the v4c-kms-v3d overlay, depending on the board (and the memory it has)

This patch series enables the support for the VC4 graphics driver from Eric Anholt.
There was a previous patch series by Javier Martinez Canillas, but it required use of a different kernel.
VC4 is now supported in the raspberrypi official kernel, at least for 4.4.9+.
The support in 4.1 exists, but it is NOT STABLE, so it has been deemed unreasonable to support VC4 with 4.1 kernels.

THEREFORE, VC4 graphics is supported ONLY for kernel versions 4.4.9 and later.

This patch series proposes to support VC4 by only adding 'vc4graphics' to MACHINE_FEATURES, for raspberrypi. If this is set, it will trigger all the necessary configuration/changes to use the VC4 driver, including mesa/wayland/weston currently, and adding the overlay required.
In order for this series to work, some previous patches are needed (support for .dtbo, and fix of the mesa packaging when there is no DRI driver).
The memory reserved for the VC4 driver has default values depending on the version of the board used, but it can be configured by setting VC4_CMA_SIZE to a value supported by the overlay ('cma-256', 'cma-192', 'cma-128', 'cma-96', 'cma-64').
'cma-256' is the recommended value, but it might not be possible on boards with 512MB or DRAM, or less...
'cma-64' is known to not being able to support FHD/1080p.

It was tested with wayland/weston, without the support for X11.

This patch series depends on two other patch series previously posted, that enable the support for .dtbo overlay files.

Herve Jourdain (12):
  rpi-default-providers.inc: change default providers to support
    vc4graphics
  rpi-base.inc: add vc4-kms-v3d to the overlays to support vc4graphics
  raspberrypi.conf: set the default value of VC4_CMA_SIZE to support
    vc4graphics
  raspberrypi0.conf: set the default value of VC4_CMA_SIZE to support
    vc4graphics
  raspberrypi2.conf: set the default value of VC4_CMA_SIZE to support
    vc4graphics
  raspberrypi3.conf: set the default value of VC4_CMA_SIZE to support
    vc4graphics
  rpi-config_git.bb: add v4c overlay to config.txt to support
    vc4graphics
  wayland/weston_%.bbappend: modify configuration options to support
    vc4graphics
  weston/weston_%.bbappend: modify configuration options to support
    vc4graphics
  mesa_%.bbappend: new file to add the correct configuration options to
    support vc4graphics
  linux-rpi.inc: add the configuration options required to support
    vc4graphics
  linux-raspberrypi-4.4: add patch to enable proper operation of
    renderD128 device

 conf/machine/include/rpi-base.inc                  |  1 +
 conf/machine/include/rpi-default-providers.inc     |  8 +++---
 conf/machine/raspberrypi.conf                      |  2 ++
 conf/machine/raspberrypi0.conf                     |  2 ++
 conf/machine/raspberrypi2.conf                     |  2 ++
 conf/machine/raspberrypi3.conf                     |  2 ++
 recipes-bsp/bootfiles/rpi-config_git.bb            | 10 +++++++-
 recipes-graphics/mesa/mesa_%.bbappend              |  4 +++
 recipes-graphics/wayland/weston_%.bbappend         |  6 ++---
 recipes-graphics/weston/weston_%.bbappend          | 13 +++++-----
 .../0002-vc4-ioctl-rendering-allow.patch           | 29 ++++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
 recipes-kernel/linux/linux-rpi.inc                 | 10 ++++++++
 13 files changed, 75 insertions(+), 15 deletions(-)
 create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch

-- 
2.7.4


