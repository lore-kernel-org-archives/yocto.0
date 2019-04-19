Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07405E00AC5; Thu, 18 Apr 2019 19:46:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D34ECE004D8
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2019 19:46:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x3J2kYxr009276
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2019 19:46:34 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Thu, 18 Apr 2019 19:46:34 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 19 Apr 2019 10:46:32 +0800
Message-ID: <1555641992-26995-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH] refpolicy: update source checksums for refpolicy 20190201
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
X-List-Received-Date: Fri, 19 Apr 2019 02:46:37 -0000
Content-Type: text/plain

The previous md5sum and sha256sum are not correct.
See: https://github.com/SELinuxProject/refpolicy/releases/tag/RELEASE_2_20190201

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/refpolicy/refpolicy_2.20190201.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy_2.20190201.inc b/recipes-security/refpolicy/refpolicy_2.20190201.inc
index 822c0f3..78c6e74 100644
--- a/recipes-security/refpolicy/refpolicy_2.20190201.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20190201.inc
@@ -1,6 +1,6 @@
 SRC_URI = "https://github.com/SELinuxProject/refpolicy/releases/download/RELEASE_2_20190201/refpolicy-${PV}.tar.bz2"
-SRC_URI[md5sum] = "76a7a455289c9216ee0fbb8de71c9799"
-SRC_URI[sha256sum] = "5e4daee61d89dfdc8c7bf369f81c99845931e337916dc6401e301c5de57ea336"
+SRC_URI[md5sum] = "babb0d5ca2ae333631d25392b2b3ce8d"
+SRC_URI[sha256sum] = "ed620dc91c4e09eee6271b373f7c61a364a82ea57bd2dc86ca1f7075304e2843"
 
 FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-2.20190201:"
 
-- 
2.7.4


