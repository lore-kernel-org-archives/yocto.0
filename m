Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AC48E00A39; Tue,  4 Sep 2018 17:18:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F01C0E00A54
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 17:18:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w850IZ8e016491
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2018 17:18:35 -0700
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 4 Sep 2018 17:18:33 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <mark.hatle@windriver.com>, 
	<yocto@yoctoproject.org>
Date: Wed, 5 Sep 2018 08:18:12 +0800
Message-ID: <1536106707-30781-2-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
References: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 01/16] selinux: uprev inc files to 2.8 (20180524)
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
X-List-Received-Date: Wed, 05 Sep 2018 00:18:39 -0000
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{selinux_20170804.inc => selinux_20180524.inc}       | 2 +-
 recipes-security/selinux/selinux_common.inc                      | 9 +++++----
 2 files changed, 6 insertions(+), 5 deletions(-)
 rename recipes-security/selinux/{selinux_20170804.inc => selinux_20180524.inc} (84%)

diff --git a/recipes-security/selinux/selinux_20170804.inc b/recipes-security/selinux/selinux_20180524.inc
similarity index 84%
rename from recipes-security/selinux/selinux_20170804.inc
rename to recipes-security/selinux/selinux_20180524.inc
index 1c11208..b36b333 100644
--- a/recipes-security/selinux/selinux_20170804.inc
+++ b/recipes-security/selinux/selinux_20180524.inc
@@ -1,4 +1,4 @@
-SELINUX_RELEASE = "20170804"
+SELINUX_RELEASE = "20180524"
 
 SRC_URI = "https://raw.githubusercontent.com/wiki/SELinuxProject/selinux/files/releases/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
 
diff --git a/recipes-security/selinux/selinux_common.inc b/recipes-security/selinux/selinux_common.inc
index e4c23a1..383f62d 100644
--- a/recipes-security/selinux/selinux_common.inc
+++ b/recipes-security/selinux/selinux_common.inc
@@ -9,8 +9,9 @@ do_compile() {
 do_install() {
     oe_runmake install \
             DESTDIR="${D}" \
-            PREFIX="${D}/${prefix}" \
-            INCLUDEDIR="${D}/${includedir}" \
-            LIBDIR="${D}/${libdir}" \
-            SHLIBDIR="${D}/${base_libdir}"
+            PREFIX="${prefix}" \
+            INCLUDEDIR="${includedir}" \
+            LIBDIR="${libdir}" \
+            SHLIBDIR="${base_libdir}" \
+            SYSTEMDDIR="${systemd_unitdir}"
 }
-- 
2.7.4


