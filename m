Return-Path: <Jackie.Huang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3838E0147A
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 00:04:13 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2F74DNC020671
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 00:04:13 -0700 (PDT)
Received: from pek-cc-pb05l.wrs.com (128.224.157.65) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Fri, 15 Mar 2013 00:04:12 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 15 Mar 2013 15:04:02 +0800
Message-ID: <1363331042-24480-2-git-send-email-jackie.huang@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <1363331042-24480-1-git-send-email-jackie.huang@windriver.com>
References: <1363331042-24480-1-git-send-email-jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/2] python-ipy: fix PN -> BPN in do_install for multilibs
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
X-List-Received-Date: Fri, 15 Mar 2013 07:04:14 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 recipes-devtools/python/python-ipy_0.75.bb |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-devtools/python/python-ipy_0.75.bb b/recipes-devtools/python/python-ipy_0.75.bb
index 9ccb6bc..68c38b9 100644
--- a/recipes-devtools/python/python-ipy_0.75.bb
+++ b/recipes-devtools/python/python-ipy_0.75.bb
@@ -9,7 +9,7 @@ DEPENDS = "python"
 LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ebc0028ff5cdaf7796604875027dcd55"
 
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "http://pypi.python.org/packages/source/I/IPy/IPy-${PV}.tar.gz"
 
@@ -29,6 +29,6 @@ export STAGING_LIBDIR
 BBCLASSEXTEND = "native"
 
 do_install_append() {
-	install -d ${D}/${datadir}/doc/${PN}-${PV}
-	install AUTHORS COPYING ChangeLog PKG-INFO README ${D}/${datadir}/doc/${PN}-${PV}
+	install -d ${D}/${datadir}/doc/${BPN}-${PV}
+	install AUTHORS COPYING ChangeLog PKG-INFO README ${D}/${datadir}/doc/${BPN}-${PV}
 }
-- 
1.7.4.1


