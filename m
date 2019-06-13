Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0CE6E00D9D; Thu, 13 Jun 2019 00:45:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49E9CE00D63
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 00:45:58 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5D7jcCO010384
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 00:45:48 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.439.0; Thu, 13 Jun 2019 00:45:27 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 13 Jun 2019 15:45:25 +0800
Message-ID: <1560411926-231994-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [PATCH 1/2] patchtest: fix virtio-9p-pci is not a valid device
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
X-List-Received-Date: Thu, 13 Jun 2019 07:45:59 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

fix error during runqemu:
test_mount: 'virtio-9p-pci' is not a valid device model name

recipe qemu has been splited into qemu/qemu-native/qemu-sytem-native

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 meta-patchtest/recipes-devtools/qemu/qemu-system-native_%.bbappend | 1 +
 meta-patchtest/recipes-devtools/qemu/qemu_%.bbappend               | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)
 create mode 100644 meta-patchtest/recipes-devtools/qemu/qemu-system-native_%.bbappend
 delete mode 100644 meta-patchtest/recipes-devtools/qemu/qemu_%.bbappend

diff --git a/meta-patchtest/recipes-devtools/qemu/qemu-system-native_%.bbappend b/meta-patchtest/recipes-devtools/qemu/qemu-system-native_%.bbappend
new file mode 100644
index 0000000..a91ccb7
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/qemu/qemu-system-native_%.bbappend
@@ -0,0 +1 @@
+PACKAGECONFIG_append = " virtfs"
diff --git a/meta-patchtest/recipes-devtools/qemu/qemu_%.bbappend b/meta-patchtest/recipes-devtools/qemu/qemu_%.bbappend
deleted file mode 100644
index 3ad9f03..0000000
--- a/meta-patchtest/recipes-devtools/qemu/qemu_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-PACKAGECONFIG_append_pn-qemu-native = " virtfs"
-- 
2.7.4


