Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 77AD14C800B3
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2011 01:06:48 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5G66lZj014620
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2011 23:06:47 -0700 (PDT)
Received: from localhost (128.224.162.215) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 15 Jun 2011 23:06:47 -0700
Message-ID: <102bc7bfe29dd7c29f1aec2ad0a8113d543d3e4c.1308204165.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1308204165.git.jingdong.lu@windriver.com>
References: <cover.1308204165.git.jingdong.lu@windriver.com>
Old-Date: Wed, 15 Jun 2011 17:54:10 +0800
Date: Thu, 16 Jun 2011 14:07:15 +0800
To: <yocto@yoctoproject.org>
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.215]
Subject: [PATCH 1/1] RTC: Ensure msecure is mux'd to be able to set RTC
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
X-List-Received-Date: Thu, 16 Jun 2011 06:06:48 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

commit e2a346a2a054f702fd76f328ff747b9ad9264a4c from git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap-2.6.git

arm: omap3: beagle: Ensure msecure is mux'd to be able to set the RTC.
"Msecure" signal provides for protection of the RTC register in TPS65950 be
disabling that function via a control signal from the OMAP3530. So ensure
msecure is mux'd to be able to set the RTC.

Tested with a BeagleBoard C4.
Fixes bug [YOCTO #767]

Signed-off-by: Alexander Holler <holler@ahsoftware.de>
Signed-off-by: Tony Lindgren <tony@atomide.com>
Integrated-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 arch/arm/mach-omap2/board-omap3beagle.c |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-omap2/board-omap3beagle.c b/arch/arm/mach-omap2/board-omap3beagle.c
index af1166b..925c0b3 100644
--- a/arch/arm/mach-omap2/board-omap3beagle.c
+++ b/arch/arm/mach-omap2/board-omap3beagle.c
@@ -580,6 +580,9 @@ static void __init omap3_beagle_init(void)
 	usb_ehci_init(&ehci_pdata);
 	omap3beagle_flash_init();
 
+	/* Ensure msecure is mux'd to be able to set the RTC. */
+	omap_mux_init_signal("sys_drm_msecure", OMAP_PIN_OFF_OUTPUT_HIGH);
+
 	/* Ensure SDRC pins are mux'd for self-refresh */
 	omap_mux_init_signal("sdrc_cke0", OMAP_PIN_OUTPUT);
 	omap_mux_init_signal("sdrc_cke1", OMAP_PIN_OUTPUT);
-- 
1.7.0.4


