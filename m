Return-Path: <qianl.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CEA8E008C3; Thu, 20 Nov 2014 00:44:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 033D0E007B9
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 00:44:10 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="43715544"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 20 Nov 2014 16:40:55 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id sAK8hrLw025174;
	Thu, 20 Nov 2014 16:43:53 +0800
Received: from Fedora.g08.fujitsu.local (10.167.226.40) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Thu, 20 Nov 2014 16:44:13 +0800
From: Qian Lei <qianl.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Thu, 20 Nov 2014 16:43:56 +0800
Message-ID: <1416473037-23326-1-git-send-email-qianl.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.40]
Cc: openembedded-devel@lists.openembedded.org
Subject: [meta-selinux][PATCH 1/2] ustr: Get source from official upstream instead of Fedora Project
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
X-List-Received-Date: Thu, 20 Nov 2014 08:44:20 -0000
Content-Type: text/plain

Official upstream is still OK, so we use it first

Signed-off-by: Qian Lei <qianl.fnst@cn.fujitsu.com>
---
 recipes-extended/ustr/ustr_1.0.4.bb | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/recipes-extended/ustr/ustr_1.0.4.bb b/recipes-extended/ustr/ustr_1.0.4.bb
index 6651a73..d1f3d93 100644
--- a/recipes-extended/ustr/ustr_1.0.4.bb
+++ b/recipes-extended/ustr/ustr_1.0.4.bb
@@ -11,11 +11,8 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=c79c6e2ae13418d16d7dc82df960a1e7 \
 		    file://LICENSE_LGPL;md5=d8045f3b8f929c1cb29a1e3fd737b499 \
 		    file://LICENSE_MIT;md5=c61e779b782608472bd87593c3c3916f"
 
-# Official upstream seems to be offline.. replace w/ a Fedora Project mirror.
-# http://www.and.org/ustr/1.0.4/ustr-1.0.4.tar.bz2 
-
 SRC_URI = "\
-    http://pkgs.fedoraproject.org/repo/pkgs/ustr/ustr-1.0.4.tar.bz2/93147d9f0c9765d4cd0f04f7e44bdfce/ustr-1.0.4.tar.bz2 \
+    http://www.and.org/ustr/${PV}/${PN}-${PV}.tar.bz2 \
     file://ustr-makefile-fix.patch;patch=1 \
     file://ustr-fix__va_copy-not-defined.patch;patch=2"
 SRC_URI[md5sum] = "93147d9f0c9765d4cd0f04f7e44bdfce"
-- 
1.8.3.1


