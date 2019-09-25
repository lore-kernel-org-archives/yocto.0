Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D534E00E12; Wed, 25 Sep 2019 00:26:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 528BBE00E1A
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 00:25:46 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x8P7P96N016435
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Sep 2019 00:25:20 -0700
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Wed, 25 Sep 2019 00:24:59 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Wed, 25 Sep 2019 15:24:02 +0800
Message-ID: <1569396253-36865-6-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569396253-36865-1-git-send-email-hongxu.jia@windriver.com>
References: <1569396253-36865-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH V2 5/16] openssh: add generation of HMAC checksums in pkg_postinst
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
X-List-Received-Date: Wed, 25 Sep 2019 07:26:03 -0000
Content-Type: text/plain

Refer https://src.fedoraproject.org/rpms/openssh/c/13fa787ecc35d6c9eea9e64c1f42f49e2ee978ce
(See __spec_install_post in openssh.spec for detail)

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-connectivity/openssh/openssh_fips.inc | 34 +++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/recipes-connectivity/openssh/openssh_fips.inc b/recipes-connectivity/openssh/openssh_fips.inc
index 99a3482..8f21264 100644
--- a/recipes-connectivity/openssh/openssh_fips.inc
+++ b/recipes-connectivity/openssh/openssh_fips.inc
@@ -6,3 +6,37 @@ DEPENDS += " \
 SRC_URI += " \
     file://0001-openssh-8.0p1-fips.patch \
 "
+
+do_install_append() {
+    install -d ${D}${libdir}/fipscheck
+}
+
+inherit qemu
+
+pkg_postinst_append_${PN}-ssh () {
+    if [ -n "$D" ]; then
+        if ${@bb.utils.contains('MACHINE_FEATURES', 'qemu-usermode', 'true','false', d)}; then
+            ${@qemu_run_binary(d, '$D', '${bindir}/fipshmac')} \
+                -d $D${libdir}/fipscheck $D${bindir}/ssh.${BPN}
+        else
+            $INTERCEPT_DIR/postinst_intercept delay_to_first_boot ${PKG} mlprefix=${MLPREFIX}
+        fi
+    else
+        ${bindir}/fipshmac -d ${libdir}/fipscheck ${bindir}/ssh.${BPN}
+    fi
+}
+
+pkg_postinst_append_${PN}-sshd () {
+    if [ -n "$D" ]; then
+        if ${@bb.utils.contains('MACHINE_FEATURES', 'qemu-usermode', 'true','false', d)}; then
+            ${@qemu_run_binary(d, '$D', '${bindir}/fipshmac')} \
+                -d $D${libdir}/fipscheck $D${sbindir}/sshd
+        else
+            $INTERCEPT_DIR/postinst_intercept delay_to_first_boot ${PKG} mlprefix=${MLPREFIX}
+        fi
+    else
+        ${bindir}/fipshmac -d ${libdir}/fipscheck ${sbindir}/sshd
+    fi
+}
+
+FILES_${PN} += "${libdir}/fipscheck"
-- 
2.7.4


