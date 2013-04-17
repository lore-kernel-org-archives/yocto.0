Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f50.google.com (mail-bk0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C40FE014F7
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:46 -0700 (PDT)
Received: by mail-bk0-f50.google.com with SMTP id jg1so771924bkc.37
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=czn/boOrKXqebj32NObCPaCtnzK1t/WfdVMAIux7n/w=;
	b=CpRyrmvvz/rdTMih3ghm4Am/psV2hvnp6Xur2oPVIP2K2axUCPcUv/vH5mvkOzpHOg
	W0X621DWlaFn3pTVLO/b86Nni/lTA2eg6w/tYJv7yGCxYQnSpWX1wzao52lhz9w45avc
	HLmj7VvcsTx0L9kP1CNnhtWW2cDBR7d4jQdukguZHHW9Kvm/ccRtRTBLnbfX3MJL25Ip
	yCaDNZJlhLB6K+tkQJVMP1RBGgnm1tLnRcSz7yIqdhS0hXM06c/7eyVczKiQl0cnVW81
	rsgHyoEwkHGho1LbvN0tfwZxgLLS+d2qdvtVam7vJDVhSUmxVfgYoL5UNwtwXNr2BKHt
	c2Ng==
X-Received: by 10.204.170.12 with SMTP id b12mr2234237bkz.127.1366205385501;
	Wed, 17 Apr 2013 06:29:45 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id gy3sm2111386bkc.16.2013.04.17.06.29.44
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 17 Apr 2013 06:29:44 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Apr 2013 15:29:21 +0200
Message-Id: <1366205365-8843-7-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv3 06/10] plugins/sdk.ide: Renamed existing project type
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
X-List-Received-Date: Wed, 17 Apr 2013 13:29:46 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The existing project type is suitable only for
Autotools projects, as it is a subClass of an
Autotools project type. The name should reflect this.
---
 .../OSGI-INF/l10n/bundle.properties                |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
index 3d491fb..1a4e3c9 100644
--- a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
@@ -5,7 +5,7 @@ extension.name.1 = YoctoSDKAutotoolsNature
 command.name = ReconfigureYoctoProject
 command.label.0 = Change Yocto Project Settings
 command.mnemonic = C
-projectType.name.0 = Yocto Project ADT Project
+projectType.name.0 = Yocto Project ADT Autotools Project
 projectProperties.label.0 = Yocto Project Settings
 Bundle-Vendor = yoctoproject.org
 Bundle-Name = Yocto Plugin IDE
-- 
1.7.9.5


