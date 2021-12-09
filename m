Return-Path: <mingli.yu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AA2C433EF
	for <webhook@archiver.kernel.org>; Thu,  9 Dec 2021 03:03:13 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web12.6503.1639018992346408889
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 19:03:12 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=fail (domain: windriver.com, ip: 147.11.3.146, mailfrom: mingli.yu@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 1B933B4p024424
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Wed, 8 Dec 2021 19:03:11 -0800
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 1B933Apj007348
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Wed, 8 Dec 2021 19:03:10 -0800 (PST)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 8 Dec 2021 19:03:10 -0800
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Wed, 8 Dec 2021 19:03:09 -0800
From: <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-raspberrypi][PATCH] xserver-xorg: remove xshmfence configure
 option
Date: Thu, 9 Dec 2021 10:59:56 +0800
Message-ID: <20211209025956.41679-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Dec 2021 03:03:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55531

From: Mingli Yu <mingli.yu@windriver.com>

After the commit [1] introduced in openembedded-core layer,
some configure options is't carried over include xshmfence
option, so remove the xshmfence configure option to silence
the below warning.
  WARNING: xserver-xorg-2_21.1.1-r0 do_configure: QA Issue: xserver-xorg: invalid PACKAGECONFIG: xshmfence [invalid-packageconfig]

[1] https://git.openembedded.org/openembedded-core/commit/?id=e05abd87ee5d23750c641d0129d9c83db68ee2e8

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend b/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
index 25829c2..ee4812f 100644
--- a/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
+++ b/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
@@ -1,4 +1,4 @@
-OPENGL_PKGCONFIGS:rpi = "dri glx ${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'dri3 xshmfence glamor', '', d)}"
+OPENGL_PKGCONFIGS:rpi = "dri glx ${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'dri3 glamor', '', d)}"
 
 # when using userland graphic KHR/khrplatform.h is provided by userland but virtual/libgl is provided by mesa-gl where
 # we explicitly delete KHR/khrplatform.h since its already coming from userland package
-- 
2.17.1


