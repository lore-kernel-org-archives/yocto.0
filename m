Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADD05E00CA1; Wed, 18 May 2016 05:22:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F6ACE00C5B
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 05:22:09 -0700 (PDT)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])
	by msfrf2622.sfr.fr (SMTP Server) with ESMTP id 991B31C000ACF;
	Wed, 18 May 2016 14:22:08 +0200 (CEST)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2622.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 18 May 2016 14:22:04 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Wed, 18 May 2016 20:21:14 +0800
Message-Id: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/8] Support for vc4 graphics driver
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
X-List-Received-Date: Wed, 18 May 2016 12:22:14 -0000

This patch series enables the support for the VC4 graphics driver from Eric Anholt.
There was a previous patch series by Javier Martinez Canillas, but it required use of a different kernel.
VC4 is now supported in the raspberrypi official kernel, at least for 4.4.9+, but probably also for 4.1.
This patch series proposes to support VC4 by only adding 'vc4graphics' to MACHINE_FEATURES, for raspberrypi. If this is set, it will trigger all the necessary configuration/changes to use the VC4 driver, including mesa/wayland/weston currently, and adding the overlay required.
In order for this series to work, some previous patches are needed (support for .dtbo, and fix of the mesa packaging when there is no DRI driver).
It was tested with wayland/weston, without the support for X11.

Herve Jourdain (8):
  Support fo vc4 graphics driver: change the default providers
  Support fo vc4 graphics driver: add vc4-kms-v3d to the overlays
  Support fo vc4 graphics driver: upgrade firmware to prevent userland
    to interfere with v4 graphics
  Support fo vc4 graphics driver: add kernel configuration options
    needed for VC4
  Support fo vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
  Support fo vc4 graphics driver: modify the wayland configuration for
    vc4
  Support fo vc4 graphics driver: modify the weston configuration for
    vc4
  Support fo vc4 graphics driver: modify the configuration for mesa

 conf/machine/include/rpi-default-providers.inc |  8 ++++----
 recipes-bsp/bootfiles/rpi-config_git.bb        |  8 ++++++++
 recipes-bsp/common/firmware.inc                |  4 ++--
 recipes-graphics/mesa/mesa_%.bbappend          |  4 ++++
 recipes-graphics/wayland/weston_%.bbappend     |  7 +++----
 recipes-graphics/weston/weston_%.bbappend      | 13 +++++++------
 recipes-kernel/linux/linux-raspberrypi_4.4.bb  |  4 ++--
 recipes-kernel/linux/linux-rpi.inc             | 10 ++++++++++
 8 files changed, 40 insertions(+), 18 deletions(-)
 create mode 100644 recipes-graphics/mesa/mesa_%.bbappend

-- 
2.7.4


