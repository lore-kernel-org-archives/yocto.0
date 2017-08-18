Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22997E00B67; Fri, 18 Aug 2017 02:29:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B2B7E00B67
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 02:29:48 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v7I9Tkm6013679
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 18 Aug 2017 02:29:47 -0700
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 18 Aug 2017 02:29:46 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <richard.purdie@linuxfoundation.org>
Date: Fri, 18 Aug 2017 05:29:41 -0400
Message-ID: <f59e4332cdceadd45c678750ebaa04570266f764.1503048463.git.hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <cover.1503048463.git.hongxu.jia@windriver.com>
References: <cover.1503048463.git.hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/3] Revert "layer.conf: Remove mc from packagegroup-core-full-cmdline-utils"
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
X-List-Received-Date: Fri, 18 Aug 2017 09:29:51 -0000
Content-Type: text/plain

This reverts commit 73a8f9df9f4b5e0d87605962c3bd8dcbaef28aea.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 conf/layer.conf | 2 --
 1 file changed, 2 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 5c373a8..f5601bb 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -13,5 +13,3 @@ BBFILE_PRIORITY_gplv2 = "1"
 LAYERVERSION_gplv2 = "1"
 
 LAYERDEPENDS_gplv2 = "core"
-
-RDEPENDS_packagegroup-core-full-cmdline-utils_remove_pn-packagegroup-core-full-cmdline = "mc mc-fish mc-helpers mc-helpers-perl"
-- 
2.8.1


