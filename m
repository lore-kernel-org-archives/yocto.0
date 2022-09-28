Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD518C07E9D
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 02:28:45 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web10.3293.1664332122642482112
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 19:28:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=b74AHocc;
 spf=pass (domain: intel.com, ip: 192.55.52.115,
 mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1664332122; x=1695868122;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=4wTls0XXYC5/s4IcB5f+WIDu06eW9IPSlLlyudfyJjY=;
  b=b74AHoccrrmNhTYXavBZ7eAaNNkHlBrOb5ODVUXICvjeNAgulMvthPfh
   7prH96JOnAFsLw0VxP4MLMS0woBGoddfrRgLnDOVoCmC2X8ELvpcPcyfH
   YbhynOaby5aHweg7qAABQ540acFqVZyWArA8M1AIvDpCS373cR+Vau/Kz
   AewPbMDPBtGUVYpE6a17+kc8CZ6KBzu1JCrpNq81FyfJzFK+ChAokAgNk
   Npp6JHwAwGHyxrTCAzqh+fz0RAn8ZhcGpvTN8eujyzIaro4A/xyIBwMpG
   j0Pmm8Wp3qAGG5k5DgKVT1PRsrdCW1IIaEG3/wE/MI+QmGGNC2bYhvLNb
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="301462108"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200";
   d="scan'208";a="301462108"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 19:28:42 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="621742140"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200";
   d="scan'208";a="621742140"
Received: from saininav-desk1.png.intel.com ([10.158.87.77])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 19:28:41 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyr-openthread-rcp: Support
 nrf52840dk-nrf52840 machine
Date: Wed, 28 Sep 2022 10:48:15 +0800
Message-Id: <20220928024815.3035166-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 02:28:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58194

From: Philippe Coval <philippe.coval@astrolabe.coop>

This Nordic reference design can be a fallback option for
Oniro's gateway-blueprint
I've been tested it myself along my single arduino-nano node

Origin: https://gitlab.eclipse.org/eclipse/oniro-core/meta-zephyr/-/merge_requests/22
Relate-to: https://gitlab.eclipse.org/eclipse/oniro-blueprints/transparent-gateway/meta-oniro-blueprints-gateway/-/issues/6
Signed-off-by: Philippe Coval <philippe.coval@astrolabe.coop>
Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../recipes-kernel/zephyr-kernel/zephyr-openthread-rcp.bb       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-rcp.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-rcp.bb
index ed86a9b..1b19122 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-rcp.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-rcp.bb
@@ -7,4 +7,4 @@ EXTRA_OECMAKE += "-DCONF_FILE="prj.conf overlay-rcp.conf overlay-usb-nrf-br.conf
 # The overlay config and OpenThread itself imposes some specific requirements
 # towards the boards (e.g. flash layout and ieee802154 radio) so we need to
 # limit to known working machines here.
-COMPATIBLE_MACHINE = "(arduino-nano-33-ble)"
+COMPATIBLE_MACHINE = "(arduino-nano-33-ble|nrf52840dk-nrf52840)"
-- 
2.25.1


