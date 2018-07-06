Return-Path: <mohamad.noor.alim.hussin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30028E010F3; Fri,  6 Jul 2018 04:39:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17EA5E010D8
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 04:39:32 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Jul 2018 04:39:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,316,1526367600"; d="scan'208";a="70142747"
Received: from alim-desktop.png.intel.com ([172.30.199.42])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jul 2018 04:39:31 -0700
From: mohamad.noor.alim.hussin@intel.com
To: yocto@yoctoproject.org
Date: Fri,  6 Jul 2018 19:39:27 +0800
Message-Id: <1530877167-24119-1-git-send-email-mohamad.noor.alim.hussin@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: aaron.chun.yew.chan@intel.com
Subject: [PATCH] SRCREV_meta: reference to the IGB module on kernel 4.14
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
X-List-Received-Date: Fri, 06 Jul 2018 11:39:34 -0000

From: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>

yocto-kernel-cache
branch: yocto-4.14
commit	d64aec9793d558ff49993ff6076be6d4daf101c2

Signed-off-by: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>
---
 meta/recipes-kernel/linux/linux-yocto_4.14.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-kernel/linux/linux-yocto_4.14.bb b/meta/recipes-kernel/linux/linux-yocto_4.14.bb
index 0449213..d6b537e 100644
--- a/meta/recipes-kernel/linux/linux-yocto_4.14.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_4.14.bb
@@ -19,7 +19,7 @@ SRCREV_machine_qemux86 ?= "65d1c849534179bbfa494f77947f8be615e9871a"
 SRCREV_machine_qemux86-64 ?= "65d1c849534179bbfa494f77947f8be615e9871a"
 SRCREV_machine_qemumips64 ?= "59f70381cbde371e41206b7902390ae78558c310"
 SRCREV_machine ?= "65d1c849534179bbfa494f77947f8be615e9871a"
-SRCREV_meta ?= "94457657b8d621868672917d1c2631df4a4fadd8"
+SRCREV_meta ?= "d64aec9793d558ff49993ff6076be6d4daf101c2"
 
 SRC_URI = "git://git.yoctoproject.org/linux-yocto.git;name=machine;branch=${KBRANCH}; \
            git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=yocto-4.14;destsuffix=${KMETA}"
-- 
2.7.4


