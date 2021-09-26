Return-Path: <changqing.li@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7168EC433F5
	for <webhook@archiver.kernel.org>; Sun, 26 Sep 2021 01:33:59 +0000 (UTC)
Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web09.13825.1632620037835084395
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Sep 2021 18:33:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: changqing.li@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 18Q1XupS015593
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Sat, 25 Sep 2021 18:33:56 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sat, 25 Sep 2021 18:33:54 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Sat, 25 Sep 2021 18:33:54 -0700
From: <changqing.li@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [layerindex-web][PATCH] recipeparse.py: add BBLAYERS in bblayers.conf
Date: Sun, 26 Sep 2021 09:32:55 +0800
Message-ID: <20210926013255.43379-1-changqing.li@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 26 Sep 2021 01:33:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54858

From: Changqing Li <changqing.li@windriver.com>

since commit [97183e10f cookerdata: Show error for no BBLAYERS in
bblayers.conf], no BBLAYERS in bblayers.conf will cause layerindex
update failed with below error:

ERROR: Traceback (most recent call last):
File "update_layer.py", line 478, in main
(tinfoil, tempdir) = recipeparse.init_parser(settings, branch, bitbakepath, nocheckout=options.nocheckout, logger=logger)
File "/path/to/layerindex-web/layerindex/recipeparse.py", line 83, in init_parser
tinfoil = utils.setup_tinfoil(bitbakepath, enable_tracking, loglevel=logger.getEffectiveLevel())
File "/path/to/layerindex-web/layerindex/utils.py", line 206, in setup_tinfoil
tinfoil.prepare(config_only = True)
File "/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/tinfoil.py", line 413, in prepare
config_params.updateToServer(self.server_connection.connection, os.environ.copy())
File "/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/cookerdata.py", line 73, in updateToServer
ret, error = server.runCommand(["updateConfig", options, environment, sys.argv])
File "/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/server/process.py", line 410, in runCommand
raise bb.BBHandledException()
bb.BBHandledException

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 layerindex/recipeparse.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index 62c08e9..d4343b4 100644
--- a/layerindex/recipeparse.py
+++ b/layerindex/recipeparse.py
@@ -79,6 +79,7 @@ def init_parser(settings, branch, bitbakepath, enable_tracking=False, nocheckout
         if not classic:
             # We need this to avoid problems with AVAILABLE_LICENSES
             f.write('COREBASE = "%s"\n' % core_repodir)
+            f.write('BBLAYERS ?= "%s"\n' % core_layerdir)
         pass
 
     if logger:
-- 
2.17.1


