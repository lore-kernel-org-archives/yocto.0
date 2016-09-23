Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76AB3E00CF2; Thu, 22 Sep 2016 23:48:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5270AE009C8
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 23:48:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u8N6lxSI014976
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 23:48:00 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 22 Sep 2016 23:47:59 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 23 Sep 2016 02:47:57 -0400
Message-ID: <1474613277-37436-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [meta-security][PATCH] paxctl: allow build of paxctl-native
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
X-List-Received-Date: Fri, 23 Sep 2016 06:48:05 -0000
Content-Type: text/plain

From: Joe Slater <jslater@windriver.com>

paxctl-native is needed to build paxtest.

Do not use the install target in Makefile for paxctl-native, it will
fail with error:

  install: cannot change ownership of '.../sbin/paxctl': \
  Operation not permitted

Signed-off-by: Joe Slater <jslater@windriver.com>
Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/paxctl/paxctl_0.9.bb | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/recipes-security/paxctl/paxctl_0.9.bb b/recipes-security/paxctl/paxctl_0.9.bb
index d69219f..fb87f10 100644
--- a/recipes-security/paxctl/paxctl_0.9.bb
+++ b/recipes-security/paxctl/paxctl_0.9.bb
@@ -18,3 +18,18 @@ EXTRA_OEMAKE = "CC='${CC}' DESTDIR='${D}'"
 do_install() {
 	oe_runmake install
 }
+
+# The install target in the Makefile will fail for paxctl-native with error:
+#   install -D --owner 0 --group 0 --mode a=rx paxctl .../sbin/paxctl
+#   install: cannot change ownership of '.../sbin/paxctl': \
+#   Operation not permitted
+# Drop '--owner 0 --group 0' to fix the issue.
+do_install_class-native() {
+	local PROG=paxctl
+	install -d ${D}${base_sbindir}
+	install -d ${D}${mandir}/man1
+	install --mode a=rx $PROG ${D}${base_sbindir}/$PROG
+	install --mode a=r $PROG.1 ${D}${mandir}/man1/$PROG.1
+}
+
+BBCLASSEXTEND = "native"
-- 
2.8.1


