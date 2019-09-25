Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6C8BE00D8D; Wed, 25 Sep 2019 00:24:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 627C6E00D8A
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 00:24:57 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x8P7Ot4k004623
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Sep 2019 00:24:55 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Wed, 25 Sep 2019 00:24:54 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Wed, 25 Sep 2019 15:24:00 +0800
Message-ID: <1569396253-36865-4-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569396253-36865-1-git-send-email-hongxu.jia@windriver.com>
References: <1569396253-36865-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH V2 3/16] fipscheck: add generation of the checksums in pkg_postinst
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
X-List-Received-Date: Wed, 25 Sep 2019 07:24:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Refer https://pagure.io/fipscheck/c/489bc3ab3f73707e12b6c2644d80af5ff6fbbf70
(* fipscheck.spec.in: Add generation of the checksums in　__spec_install_post.)

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-support/fipscheck/fipscheck_1.5.0.bb | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/recipes-support/fipscheck/fipscheck_1.5.0.bb b/recipes-support/fipscheck/fipscheck_1.5.0.bb
index 68051d2..9faed9c 100644
--- a/recipes-support/fipscheck/fipscheck_1.5.0.bb
+++ b/recipes-support/fipscheck/fipscheck_1.5.0.bb
@@ -27,4 +27,26 @@ EXTRA_OECONF += " \
 EXTRA_OEMAKE += " \
     -I${STAGING_LIBDIR_NATIVE}/ssl/fips-2.0/include \
 "
+do_install_append() {
+    install -d ${D}${libdir}/fipscheck
+}
 
+inherit qemu
+
+pkg_postinst_${PN} () {
+    if [ -n "$D" ]; then
+        if ${@bb.utils.contains('MACHINE_FEATURES', 'qemu-usermode', 'true','false', d)}; then
+            ${@qemu_run_binary(d, '$D', '${bindir}/fipshmac')} \
+                -d $D${libdir}/fipscheck $D${bindir}/fipscheck $D${libdir}/libfipscheck.so.1.2.1 && \
+            ln -s libfipscheck.so.1.2.1.hmac $D${libdir}/fipscheck/libfipscheck.so.1.hmac
+        else
+            $INTERCEPT_DIR/postinst_intercept delay_to_first_boot ${PKG} mlprefix=${MLPREFIX}
+        fi
+    else
+        ${bindir}/fipshmac -d ${libdir}/fipscheck ${bindir}/fipscheck \
+            ${libdir}/libfipscheck.so.1.2.1 && \
+        ln -s libfipscheck.so.1.2.1.hmac ${libdir}/fipscheck/libfipscheck.so.1.hmac
+    fi
+}
+
+FILES_${PN} += "${libdir}/fipscheck"
-- 
2.7.4


