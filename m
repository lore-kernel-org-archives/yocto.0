Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A9BBE00B27; Fri, 30 Oct 2015 02:37:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C222E00AE9
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 02:37:51 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.15,520,1432569600"; d="scan'208";a="102478480"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 30 Oct 2015 17:39:57 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t9U9bBS8011429
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 17:37:11 +0800
Received: from localhost.localdomain (10.167.226.26) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Fri, 30 Oct 2015 17:37:45 +0800
From: Li xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Fri, 30 Oct 2015 17:37:39 +0800
Message-ID: <1446197859-1701-1-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [10.167.226.26]
Subject: [meta-security][PATCH] samhain: upgrade to 4.1.0
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
X-List-Received-Date: Fri, 30 Oct 2015 09:37:54 -0000
Content-Type: text/plain

From: Li Xin <lixin.fnst@cn.fujitsu.com>

Also fix an error when "samhain -t check" is executed.
The error is like this:
'ERROR: msg=<Record with bad version number in file signature database>,
subroutine=<sh_dbIO_getdataent>, path=<(null)>'

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 .../samhain/{samhain-client_4.0.0.bb => samhain-client_4.1.0.bb}    | 3 ++-
 .../samhain/{samhain-server_4.0.0.bb => samhain-server_4.1.0.bb}    | 0
 recipes-security/samhain/samhain.inc                                | 6 +++---
 3 files changed, 5 insertions(+), 4 deletions(-)
 rename recipes-security/samhain/{samhain-client_4.0.0.bb => samhain-client_4.1.0.bb} (79%)
 rename recipes-security/samhain/{samhain-server_4.0.0.bb => samhain-server_4.1.0.bb} (100%)

diff --git a/recipes-security/samhain/samhain-client_4.0.0.bb b/recipes-security/samhain/samhain-client_4.1.0.bb
similarity index 79%
rename from recipes-security/samhain/samhain-client_4.0.0.bb
rename to recipes-security/samhain/samhain-client_4.1.0.bb
index c671b48..bb47449 100644
--- a/recipes-security/samhain/samhain-client_4.0.0.bb
+++ b/recipes-security/samhain/samhain-client_4.1.0.bb
@@ -8,7 +8,8 @@ EXTRA_OECONF += " \
         --with-logserver=${SAMHAIN_SERVER} \
         --with-port=${SAMHAIN_PORT} \
         --with-config-file=/etc/samhainrc \
-        --with-data-file=/var/lib/samhain/samhain_file \
+        --with-data-file=/var/samhain/samhain.data \
+        --with-pid-file=/var/samhain/samhain.pid \
         "
 
 
diff --git a/recipes-security/samhain/samhain-server_4.0.0.bb b/recipes-security/samhain/samhain-server_4.1.0.bb
similarity index 100%
rename from recipes-security/samhain/samhain-server_4.0.0.bb
rename to recipes-security/samhain/samhain-server_4.1.0.bb
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index e33182f..dedcf76 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -8,9 +8,8 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
 	   file://${INITSCRIPT_NAME}.init \
 	   file://${INITSCRIPT_NAME}.default \
 	  "
-
-SRC_URI[md5sum] = "2144383cc5452b9b80c7e4e4c991ad4a"
-SRC_URI[sha256sum] = "5a841708f78c6d9b4731970fa39151dff366885de08ecddc382e8c45a2c1b4e2"
+SRC_URI[md5sum] = "fcb59c6c8a1d30cc6ffc21557a0046d3"
+SRC_URI[sha256sum] = "a8e10454782a7f3bb5f709dd05cee695ffbd052afc709668a3e7c4b629771189"
 
 S = "${WORKDIR}/samhain-${PV}"
 
@@ -87,4 +86,5 @@ do_install_append () {
 	install -d ${D}${docdir}/${PN}
 	cp -r docs/* ${D}${docdir}/${PN}
 	cp -r scripts ${D}${docdir}/${PN}
+        install -d -m 755 ${D}/var/samhain
 }
-- 
1.8.4.2


