Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E4B9E00DE5; Wed,  6 Dec 2017 23:38:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9DB7E00DBA
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 23:37:59 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vB77bxCI025480
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 6 Dec 2017 23:37:59 -0800 (PST)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 6 Dec 2017 23:37:58 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 7 Dec 2017 15:37:16 +0800
Message-ID: <5c81bb0d64e488d1a976925f2ae20dd0794d5543.1512630627.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1512630627.git.liezhi.yang@windriver.com>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 11/12] upgradehelper.py: print info when recipe is skipped to upgrade
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
X-List-Received-Date: Thu, 07 Dec 2017 07:38:06 -0000
Content-Type: text/plain

This makes debug easier.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 upgradehelper.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 3ad33ae..c099445 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -826,11 +826,11 @@ class UniverseUpdater(Updater):
                     pkgs_list.append((pn, next_ver, maintainer))
                 else:
                     if no_upgrade_reason:
-                        D(" Skip package %s (status = %s, current version = %s," \
+                        I(" Skip package %s (status = %s, current version = %s," \
                             " next version = %s, no upgrade reason = %s)" %
                             (pn, status, cur_ver, next_ver, no_upgrade_reason))
                     else:
-                        D(" Skip package %s (status = %s, current version = %s," \
+                        I(" Skip package %s (status = %s, current version = %s," \
                             " next version = %s)" %
                             (pn, status, cur_ver, next_ver))
         return pkgs_list
-- 
2.7.4


