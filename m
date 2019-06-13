Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E715CE00D94; Thu, 13 Jun 2019 00:46:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73FECE00E1B
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 00:46:08 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x5D7k7hk019743
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 00:46:07 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.439.0; Thu, 13 Jun 2019 00:46:07 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 13 Jun 2019 15:46:04 +0800
Message-ID: <1560411964-388665-2-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560411964-388665-1-git-send-email-changqing.li@windriver.com>
References: <1560411964-388665-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [patchtest][PATCH 2/2] patchtest: fix linux-yocto version
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
X-List-Received-Date: Thu, 13 Jun 2019 07:46:11 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

4.9 is not avaiable currently, preferred version changed
to 5.0, also correct the bbappend name

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 .../linux/{linux-yocto_4.%.bbappend => linux-yocto_%.bbappend}       | 0
 scripts/create-guest-machine                                         | 5 +----
 2 files changed, 1 insertion(+), 4 deletions(-)
 rename meta-patchtest/recipes-kernel/linux/{linux-yocto_4.%.bbappend => linux-yocto_%.bbappend} (100%)

diff --git a/meta-patchtest/recipes-kernel/linux/linux-yocto_4.%.bbappend b/meta-patchtest/recipes-kernel/linux/linux-yocto_%.bbappend
similarity index 100%
rename from meta-patchtest/recipes-kernel/linux/linux-yocto_4.%.bbappend
rename to meta-patchtest/recipes-kernel/linux/linux-yocto_%.bbappend
diff --git a/scripts/create-guest-machine b/scripts/create-guest-machine
index 8dd6a2e..151d5c2 100755
--- a/scripts/create-guest-machine
+++ b/scripts/create-guest-machine
@@ -145,10 +145,7 @@ cat >> $POKY/build/conf/auto.conf << EOF
 $PTSMARK
 MACHINE = "$MACHINE"
 
-# The preferred kernel version in poky (4.10%, master) returns an error whilst
-# executing patchtest on guest. Changing the preferred version to 4.9% as it
-# is more suitable and does not present any errors.
-PREFERRED_VERSION_linux-yocto_qemux86-64 = "4.9%"
+PREFERRED_VERSION_linux-yocto_qemux86-64 = "5.0%"
 
 PACKAGE_CLASSES = "package_ipk"
 IMAGE_FSTYPES = "ext4"
-- 
2.7.4


