Return-Path: <aalonso@secretlab.ca>
Received: from mail-qy0-f196.google.com (mail-qy0-f196.google.com
	[209.85.216.196])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8A624C80AAD
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2011 17:18:34 -0600 (CST)
Received: by mail-qy0-f196.google.com with SMTP id 35so718717qyk.11
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2011 15:18:34 -0800 (PST)
Received: by 10.229.248.198 with SMTP id mh6mr5998351qcb.5.1299021514770;
	Tue, 01 Mar 2011 15:18:34 -0800 (PST)
Received: from localhost.localdomain
	(adsl-99-36-28-120.dsl.emhril.sbcglobal.net [99.36.28.120])
	by mx.google.com with ESMTPS id g32sm4410854qck.46.2011.03.01.15.18.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 01 Mar 2011 15:18:34 -0800 (PST)
From: Adrian Alonso <aalonso@secretlab.ca>
To: yocto@yoctoproject.org
Date: Tue,  1 Mar 2011 17:18:32 -0600
Message-Id: <f11082c21c3b8653636ffa590999ef9a483a7590.1299015730.git.aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.4
In-Reply-To: <cover.1299015730.git.aalonso@secretlab.ca>
References: <cover.1299015730.git.aalonso@secretlab.ca>
Subject: [PATCH 4/5] openssl: Fix files search path
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 Mar 2011 23:18:35 -0000

* Fix FILESPATH, recipe not finding layer patch
  rename PN to files

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 ...enssl-linux-gnueabi-powerpc-configuration.patch |    0
 .../openssl/openssl_0.9.8p.bbappend                |    5 ++---
 2 files changed, 2 insertions(+), 3 deletions(-)
 rename recipes-connectivity/openssl/{openssl-0.9.8p => files}/openssl-linux-gnueabi-powerpc-configuration.patch (100%)

diff --git a/recipes-connectivity/openssl/openssl-0.9.8p/openssl-linux-gnueabi-powerpc-configuration.patch b/recipes-connectivity/openssl/files/openssl-linux-gnueabi-powerpc-configuration.patch
similarity index 100%
rename from recipes-connectivity/openssl/openssl-0.9.8p/openssl-linux-gnueabi-powerpc-configuration.patch
rename to recipes-connectivity/openssl/files/openssl-linux-gnueabi-powerpc-configuration.patch
diff --git a/recipes-connectivity/openssl/openssl_0.9.8p.bbappend b/recipes-connectivity/openssl/openssl_0.9.8p.bbappend
index 381f31c..91f7a85 100644
--- a/recipes-connectivity/openssl/openssl_0.9.8p.bbappend
+++ b/recipes-connectivity/openssl/openssl_0.9.8p.bbappend
@@ -1,5 +1,4 @@
 THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/files"], d)}:"
 
-SRC_URI_append += "file://openssl-linux-gnueabi-powerpc-configuration.patch \
-                  "
+SRC_URI_append += "file://openssl-linux-gnueabi-powerpc-configuration.patch"
-- 
1.7.4


