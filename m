Return-Path: <schitrod@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0FBEB64D9
	for <webhook@archiver.kernel.org>; Sun,  2 Jul 2023 17:47:36 +0000 (UTC)
Received: from rcdn-iport-6.cisco.com (rcdn-iport-6.cisco.com [173.37.86.77])
 by mx.groups.io with SMTP id smtpd.web10.10518.1688320054208859896
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jul 2023 10:47:34 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: cisco.com, ip: 173.37.86.77, mailfrom: schitrod@cisco.com)
X-IPAS-Result: =?us-ascii?q?A0AjAABQt6FkmJBdJa1aFgcBAQEBCQESAQUFAYF7CAELA?=
 =?us-ascii?q?YMnVUBHjG6MUZpggg0BAQENAQE5CwQBAYsRAiU0CQ4BAgQBAQEBAwIDAQEBA?=
 =?us-ascii?q?QEBAwEBBQEBAQIBBwQUAQEBAgIfGQUOECeFaA2GPQEpHSYKUgIJRIJ+AYInA?=
 =?us-ascii?q?QMxAxGuKQUCFoEBg1YFrgoKGSgNbROBUoFCAYRII4JyhEKDH4IvJxuCDYJRg?=
 =?us-ascii?q?i2BBQGBGkIEGIIThXUEjhyFYAUCMoITiWUSPwYQCw4dAiA/KhcuOGY3ZgEqJ?=
 =?us-ascii?q?AECKQIJAhEhHw8YLQENBkcIXQEMHisDGQ8cCQM6DxAuAg0MAgJECwtJGjpiK?=
 =?us-ascii?q?mwBBoExAgIRCB0BFBQGIAsCAgEUBwIRAScmBxIECQ4DBwMXAg4FJTMBEAwCB?=
 =?us-ascii?q?hsHBC8UEgYJBQICAg0RCxMlBhMBKxIHFwECEwEjCRMVEi8EXAICAgKBDwsBF?=
 =?us-ascii?q?TYCD2QEFQofAloCAgICCg8wFQQCCBGBASaBMAkkAgIwBjYbDwICDyw5gXJAA?=
 =?us-ascii?q?QgXEjRTNQFCAwMCIAMJAwcFSQIJAyMPAwsYDAE/DAcKLDUUFAcGJAcXAxIJD?=
 =?us-ascii?q?QRFFhdjATUNgScEDAQCAQUYIAQEBaF+A4MngQ8rIIIMPJJMgxqOG58/cJAQj?=
 =?us-ascii?q?xOFcRozhVekAZgijV+DdJE5WimEBgIEBgUCFjWBLjqBSQsHcIEBgjYJSRkPj?=
 =?us-ascii?q?jeFXIJagQyKNCQxAjkCBwsBAQMJi0gBAQ?=
IronPort-Data: A9a23:gUtVZKzt6sGAyD8iNBt6t+ctxirEfRIJ4+MujC+fZmUNrF6WrkUGx
 2dKWGGDPPiOMDD3c49waY+x9klSvMOBytVjQFBl+VhgHilAwSbn6Xt1DatR0we6dJCroJdPt
 p1GAjX4BJloCCea/H9BC5C5xZVG/fngqoHUVqicY0ideSc+EH160U07wbZg6mJVqYHR7z2l6
 IuaT/L3YDdJ6xYsWo7Dw/vewP/HlK2aVAIw5jTSV9gS1LPtvyV94KYkGE2EByCQrr+4sQKNb
 72rILmRpgs19vq2Yz+vuu6TnkYiGtY+MeUS45Zbc/DKv/RMmsA9+vkKaKAMc18MsSemxokg+
 tZyn7aJEgh8a8UgmMxFO/VZOzt1MasD87jdLD3v98eS1EbBNXDrxp2CDmlvYtZeobkxUDoIr
 KBEQNwORkjra+ae27m7S/V2gcgLJ8jwN4RZsXZlpd3cJaZ/G8iYGf6TjTNe9DRon+tOGfaFX
 pAASSVlRj/FfjFJBkhCXfrSm8/x1iWgLFW0smm9tK08/2/7yA1qzKOrId3eZtuSX8JXk02E4
 GXc8AzRGRgcNtWOxD+P/36gi+PUkAv0XYsTEPuz8fsCqHia3HASDls0XF2gqNG2j0e/X5RUL
 El8x8Y1hbI5+EruRd7nUljo5nWFpRUbHdFXFoXW9T1h1IKL0lrDFnIcFQRTR4V/5f01ehYA7
 wSGyoaB6SNUjJWZTneU97GxpDy0ODQIIWJqWcPiZVZZizUEiNxt5i8jXuqPA4bu0YKoQWCYL
 ySi6Xlh1+9K3Kbnwo3ipQif6w9AsKQlWeLc2+k6dniu4gU8b4m/asn4r1Pa9v1Hao2eSzFtX
 UToeeDAtIji7rnUxERhpdnh+pnytp5p1xWA2zZS82EJrWjFxpJaVdk4DMtCDEloKN0YXjTif
 VXevwhcjLcKYiv6N/QpOd7pV5h1pUQFKTgDfq2FBjapSsYpHDJrAAk1DaJt9zm3yRN1wf1X1
 WmzKJ/yUB729piLPBLvF7tCjtfHNwg1xHjYQtjg3g+73L+FDEN5up9bWGZimtsRtfveyC2Mq
 o43H5LTl313DrakCgGJqtF7ELz/BSVhbXwAg5YJJrfrz8sPMDxJNsI9Npt6INA4wf0Ixr2Sl
 px/M2cBoGfCabT8AV3iQhhehHnHBP6TcVpT0fQQAGuV
IronPort-HdrOrdr: A9a23:ZPs/e65G/StDMKTZ9APXwMPXdLJyesId70hD6qm+c3Nom6uj5q
 WTdZsgtCMc5Ax9ZJhCo6HjBED/exPhHPdOiOF7V4tKNzOJhILHFu1fBPPZsl7d8+mUzJ876U
 +mGJIObOHNMQ==
X-Talos-CUID: =?us-ascii?q?9a23=3AT3969Gg4dGFCHPwJ7r0iatCQOTJuLUyBlmfKOxS?=
 =?us-ascii?q?CG0kwEeynSmC60po/nJ87?=
X-Talos-MUID: 9a23:NUn9JQY0NiegEeBTtGf1rzFmNJxRub2OF0onupAbl8+4Knkl
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.01,176,1684800000"; 
   d="scan'208";a="81203231"
Received: from rcdn-core-8.cisco.com ([173.37.93.144])
  by rcdn-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA; 02 Jul 2023 17:47:33 +0000
Received: from sjc-ads-7310.cisco.com (sjc-ads-7310.cisco.com [10.30.220.95])
	by rcdn-core-8.cisco.com (8.15.2/8.15.2) with ESMTPS id 362HlW9d030283
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Sun, 2 Jul 2023 17:47:33 GMT
Received: by sjc-ads-7310.cisco.com (Postfix, from userid 1812315)
	id AE690CC1251; Sun,  2 Jul 2023 10:47:32 -0700 (PDT)
From: sanjayembeddedse@gmail.com
To: yocto@lists.yoctoproject.org
Cc: Martin.Jansa@gmail.com, Sanjay Chitroda <sanjayembeddedse@gmail.com>
Subject: [meta-security][PATCH] *.patch: fix CVE and Signed-off-by tag
Date: Sun,  2 Jul 2023 10:47:04 -0700
Message-Id: <20230702174704.58235-1-sanjayembeddedse@gmail.com>
X-Mailer: git-send-email 2.35.6
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Outbound-SMTP-Client: 10.30.220.95, sjc-ads-7310.cisco.com
X-Outbound-Node: rcdn-core-8.cisco.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Jul 2023 17:47:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60489

From: Sanjay Chitroda <sanjayembeddedse@gmail.com>

* as reported by openembedded-core/scripts/contrib/patchreview.py -v .

Missing Signed-off-by tag (./recipes-scanners/clamav/files/oe_cmake_fixup.patch)
Missing CVE tag (./recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch)

Signed-off-by: Sanjay Chitroda <sanjayembeddedse@gmail.com>
---
 recipes-scanners/clamav/files/oe_cmake_fixup.patch            | 2 +-
 .../ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch   | 4 +++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/recipes-scanners/clamav/files/oe_cmake_fixup.patch b/recipes-scanners/clamav/files/oe_cmake_fixup.patch
index c9c88b9..692be72 100644
--- a/recipes-scanners/clamav/files/oe_cmake_fixup.patch
+++ b/recipes-scanners/clamav/files/oe_cmake_fixup.patch
@@ -3,7 +3,7 @@ Issue with rpath including /usr/lib and crosscompile checkes causing oe configur
 Use oe's cmake rpath framework and exclude some of the cmake checks that fail in our env
 
 Upstream-Status: Inappropriate [configuration]
-Singed-off-by: Armin Kuster <akuster808@gmail.com>
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
 Index: git/CMakeLists.txt
 ===================================================================
diff --git a/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
index a457d79..02105f5 100644
--- a/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
+++ b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
@@ -14,9 +14,11 @@ the patch comes from:
 https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2016-6224
 https://bazaar.launchpad.net/~ecryptfs/ecryptfs/trunk/revision/882
 
-Upstream-Status: Backport
+CVE: CVE-2016-6224
+Upstream-Status: Backport [https://bazaar.launchpad.net/~ecryptfs/ecryptfs/trunk/revision/882]
 
 Signed-off-by: Li Zhou <li.zhou@windriver.com>
+Signed-off-by: Sanjay Chitroda <sanjayembeddedse@gmail.com>
 ---
  ChangeLog                     |  9 +++++++++
  src/utils/ecryptfs-setup-swap | 10 ++++++++--
-- 
2.35.6


