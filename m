Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-21.0 required=3.0 tests=BAYES_00,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE384C433EF
	for <webhook@archiver.kernel.org>; Fri, 24 Sep 2021 06:40:46 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web09.4696.1632465644946310647
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 23:40:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="222125567"
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200";
   d="scan'208";a="222125567"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 23:40:44 -0700
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200";
   d="scan'208";a="475885567"
Received: from saininav-desk1.png.intel.com ([10.158.87.77])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 23:40:43 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 1/2] zephyr-qemuboot: fix parse build failure
Date: Fri, 24 Sep 2021 14:55:17 +0800
Message-Id: <20210924065518.13567-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Sep 2021 06:40:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54833

As OE-core explicitly have added depends for qemu-helper addto_recipe_sysroot task, which
breaks zephyr-qemuboot implementation of adding build dependencies
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=282d596b8cc81d650b6d20c6131fdc236bad2c20

ERROR: Error for meta-zephyr/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb:
do_bootconf_write[depends], dependency qemu-helper-native:do_addto_recipe_sysroot:do_addto_recipe_sysroot in
' qemu-helper-native:do_addto_recipe_sysroot:do_addto_recipe_sysroot qemu-helper-native:do_addto_recipe_sysroot:do_populate_sysroot' does not contain exactly one ':' character.
 Task 'depends' should be specified in the form 'packagename:task'
ERROR: Command execution failed: Exited with 1

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 classes/zephyr-qemuboot.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/zephyr-qemuboot.bbclass b/classes/zephyr-qemuboot.bbclass
index c268e9e..b45e6f6 100644
--- a/classes/zephyr-qemuboot.bbclass
+++ b/classes/zephyr-qemuboot.bbclass
@@ -48,7 +48,7 @@ python () {
         for dep in (d.getVar('EXTRA_IMAGEDEPENDS') or "").split():
         # Make sure we only add it for qemu
             if 'qemu-helper-native' in dep:
-                deps += " %s:%s" % (dep, task)
+                deps += " qemu-helper-native:%s" % (task)
         return deps
     d.appendVarFlag('do_bootconf_write', 'depends', extraimage_getdepends('do_addto_recipe_sysroot'))
     d.appendVarFlag('do_bootconf_write', 'depends', extraimage_getdepends('do_populate_sysroot'))
-- 
2.17.1


