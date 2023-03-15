Return-Path: <thomas.perrot@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85B26C6FD1D
	for <webhook@archiver.kernel.org>; Wed, 15 Mar 2023 09:58:59 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web10.4022.1678874329699510373
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Mar 2023 02:58:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=dix/ZfQB;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: thomas.perrot@bootlin.com)
Received: (Authenticated sender: thomas.perrot@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 4F0DA20014;
	Wed, 15 Mar 2023 09:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1678874327;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=IzWip7an815Ma/0+h9fxEQOogry0I7pfoWdVo4GwjKU=;
	b=dix/ZfQBgpxIOYL0o3kGpfFQw5MmCGE9Pu6V+Y9C/ihKM+jIEBYfzhx55EWlfYe5Qam/lh
	pPwfq7yKCpw22Ze/Ae2wP04ygU1AOaPV4GPMJwi27vxaUyVKmnoZ2BB2GIphYuIkXBmpZ3
	ytR1NCrb0I6/mfybw5cAiNAZbbUEyD45kHsnGxK4FBDGuiySu+HRCBCAMbtFgdJ6VBwSpV
	iiiqSxbf2L5LlXaM3ypS+RKqMlG3hEaP5OXJ9XmYPqLGMfwOFkQYo/NKfzdt1VDYF8qyEs
	lwE4LNCAhu4dvF80udywTZVL6kcmjZ1g+Gnb6ihrlJAYaPiDJ64rXabfsOhTQA==
From: thomas.perrot@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: Hongxu.Jia@windriver.com,
	Thomas Perrot <thomas.perrot@bootlin.com>
Subject: [meta-tensorflow][PATCH] layer.conf: Update LAYERSERIES_COMPAT for mickledore
Date: Wed, 15 Mar 2023 10:58:36 +0100
Message-Id: <20230315095836.1736081-1-thomas.perrot@bootlin.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Mar 2023 09:58:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59430

From: Thomas Perrot <thomas.perrot@bootlin.com>

oe-core switched to mickedore [1]

[1] https://git.openembedded.org/openembedded-core/commit/?id=57239d66b933c4313cf331d35d13ec2d0661c38f

Signed-off-by: Thomas Perrot <thomas.perrot@bootlin.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index eba5ef2dbf79..20dfc8e46daa 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -11,7 +11,7 @@ BBFILE_PRIORITY_meta-tensorflow = "10"
 
 LAYERVERSION_meta-tensorflow = "1"
 
-LAYERSERIES_COMPAT_meta-tensorflow = "kirkstone langdale"
+LAYERSERIES_COMPAT_meta-tensorflow = "mickledore"
 
 LAYERDEPENDS_meta-tensorflow = " \
     core \
-- 
2.39.2


