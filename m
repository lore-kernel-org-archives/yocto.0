Return-Path: <Hongzhi.Song@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 445EAE00D47; Wed, 29 May 2019 19:24:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40E8BE00D47
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 19:24:08 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x4U2O7Mo006837
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 19:24:07 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.439.0;
	Wed, 29 May 2019 19:24:07 -0700
From: "Hongzhi.Song" <hongzhi.song@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 29 May 2019 22:23:32 -0400
Message-ID: <1559183012-237328-1-git-send-email-hongzhi.song@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [PATCH] umip: remove umip bbappend
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
X-List-Received-Date: Thu, 30 May 2019 02:24:09 -0000
Content-Type: text/plain

umip has been removed, so its bbappend should be removed too.

Signed-off-by: Hongzhi.Song <hongzhi.song@windriver.com>
---
 meta-cgl-common/recipes-extended/umip/umip_%.bbappend | 1 -
 1 file changed, 1 deletion(-)
 delete mode 100644 meta-cgl-common/recipes-extended/umip/umip_%.bbappend

diff --git a/meta-cgl-common/recipes-extended/umip/umip_%.bbappend b/meta-cgl-common/recipes-extended/umip/umip_%.bbappend
deleted file mode 100644
index 2858472..0000000
--- a/meta-cgl-common/recipes-extended/umip/umip_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-PARALLEL_MAKE = ""
-- 
2.8.1


