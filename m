Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DECAE00ECA; Sun,  4 Mar 2018 18:03:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A28B3E00E31;
	Sun,  4 Mar 2018 18:03:15 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w2523EkW021371
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 4 Mar 2018 18:03:15 -0800 (PST)
Received: from pek-qchen1-d1.corp.ad.wrs.com (128.224.162.197) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Sun, 4 Mar 2018 18:02:43 -0800
From: Chen Qi <Qi.Chen@windriver.com>
To: <meta-intel@yoctoproject.org>, <yocto@yoctoproject.org>
Date: Mon, 5 Mar 2018 10:03:28 +0800
Message-ID: <1520215408-21854-1-git-send-email-Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-intel][PATCH] systemd-boot: fix bbappend file to suit latest version
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
X-List-Received-Date: Mon, 05 Mar 2018 02:03:16 -0000
Content-Type: text/plain

Fix the bbappend file to suit the latest systemd version.

As systemd has now dropped autotools support, using ninja
instead of make in do_compile.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 recipes-bsp/systemd-boot/systemd-boot_%.bbappend | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/systemd-boot/systemd-boot_%.bbappend b/recipes-bsp/systemd-boot/systemd-boot_%.bbappend
index 9e6cc16..46dd8a4 100644
--- a/recipes-bsp/systemd-boot/systemd-boot_%.bbappend
+++ b/recipes-bsp/systemd-boot/systemd-boot_%.bbappend
@@ -7,11 +7,11 @@ SRC_URI_append_intel-x86-common = " \
 PACKAGE_ARCH_intel-x86-common = "${INTEL_COMMON_PACKAGE_ARCH}"
 
 do_compile_append_intel-x86-common() {
-	oe_runmake linux${SYSTEMD_BOOT_EFI_ARCH}.efi.stub
+	ninja src/boot/efi/linux${SYSTEMD_BOOT_EFI_ARCH}.efi.stub
 }
 
 do_deploy_append_intel-x86-common() {
-	install ${B}/linux*.efi.stub ${DEPLOYDIR}
+	install ${B}/src/boot/efi/linux*.efi.stub ${DEPLOYDIR}
 }
 
 # includes rmc-boot.inc if rmc-boot is the EFI_PROVIDER
-- 
1.9.1


