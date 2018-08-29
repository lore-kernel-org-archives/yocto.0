Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 274B1E00939; Tue, 28 Aug 2018 23:05:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC3ECE00848
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 23:05:09 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7T658Ta019390
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 28 Aug 2018 23:05:08 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.408.0; Tue, 28 Aug 2018 23:05:07 -0700
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>, <Joe_MacDonald@mentor.com>
Date: Wed, 29 Aug 2018 14:05:06 +0800
Message-ID: <1535522706-114428-1-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] libselinux: fix usrmerge do_install
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
X-List-Received-Date: Wed, 29 Aug 2018 06:05:10 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

When usrmerge enabled in DISTRO_FEATURES,
the binary actually installed under ${base_sbindir},
so cannot remove ${D}${base_sbindir} when
usrmerge enabled.

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 recipes-security/selinux/libselinux.inc | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
index 51d0875..ae47b5a 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -34,7 +34,9 @@ do_compile_append() {
 do_install_append() {
     oe_runmake install-pywrap swigify \
             PYSITEDIR=${D}${libdir}/python${PYTHON_BASEVERSION}/site-packages
-    rm -rf ${D}${base_sbindir}
+    if ! ${@bb.utils.contains('DISTRO_FEATURES','usrmerge','true','false',d)}; then
+        rm -rf ${D}${base_sbindir}
+    fi
 }
 
 BBCLASSEXTEND = "native"
-- 
2.7.4


