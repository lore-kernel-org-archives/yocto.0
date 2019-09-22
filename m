Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4038E00D1C; Sun, 22 Sep 2019 07:58:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5823CE00AD5
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2019 07:58:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x8MEwBlr020743
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 22 Sep 2019 07:58:11 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Sun, 22 Sep 2019 07:58:10 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Sun, 22 Sep 2019 22:56:58 +0800
Message-ID: <1569164228-26934-6-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
References: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 5/15] openssh: add generation of HMAC checksums in pkg_postinst
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
X-List-Received-Date: Sun, 22 Sep 2019 14:58:12 -0000
Content-Type: text/plain

Refer https://src.fedoraproject.org/rpms/openssh/c/d93958db19129e0f4615865eab22fb36e1f4fb8a

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-connectivity/openssh/openssh_fips.inc | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/recipes-connectivity/openssh/openssh_fips.inc b/recipes-connectivity/openssh/openssh_fips.inc
index 99a3482..df84c39 100644
--- a/recipes-connectivity/openssh/openssh_fips.inc
+++ b/recipes-connectivity/openssh/openssh_fips.inc
@@ -6,3 +6,29 @@ DEPENDS += " \
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
+        ${@qemu_run_binary(d, '$D', '${bindir}/fipshmac')} \
+            -d $D${libdir}/fipscheck $D${bindir}/ssh.${BPN}
+    else
+        ${bindir}/fipshmac -d ${libdir}/fipscheck ${bindir}/ssh.${BPN}
+    fi
+}
+
+pkg_postinst_append_${PN}-sshd () {
+    if [ -n "$D" ]; then
+        ${@qemu_run_binary(d, '$D', '${bindir}/fipshmac')} \
+            -d $D${libdir}/fipscheck $D${sbindir}/sshd
+    else
+        ${bindir}/fipshmac -d ${libdir}/fipscheck ${sbindir}/sshd
+    fi
+}
+
+FILES_${PN} += "${libdir}/fipscheck"
-- 
2.7.4


