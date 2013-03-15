Return-Path: <Jackie.Huang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4B2AE01472
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 00:04:08 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2F748p4007933
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 00:04:08 -0700 (PDT)
Received: from pek-cc-pb05l.wrs.com (128.224.157.65) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Fri, 15 Mar 2013 00:04:07 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 15 Mar 2013 15:04:01 +0800
Message-ID: <1363331042-24480-1-git-send-email-jackie.huang@windriver.com>
X-Mailer: git-send-email 1.7.4.1
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/2] ustr: fix PN -> BPN in do_install for multilibs
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
X-List-Received-Date: Fri, 15 Mar 2013 07:04:09 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 recipes-extended/ustr/ustr_1.0.4.bb |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/recipes-extended/ustr/ustr_1.0.4.bb b/recipes-extended/ustr/ustr_1.0.4.bb
index 269e061..6651a73 100644
--- a/recipes-extended/ustr/ustr_1.0.4.bb
+++ b/recipes-extended/ustr/ustr_1.0.4.bb
@@ -4,7 +4,7 @@ DESCRIPTION = "Micro string library, very low overhead from plain strdup() (Ave.
 just include a single header file into your .c and start using it."
 
 SECTION = "base"
-PR = "r1"
+PR = "r2"
 LICENSE = "MIT | LGPLv2+ | BSD"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=c79c6e2ae13418d16d7dc82df960a1e7 \
 		    file://LICENSE_BSD;md5=ceb504b0b6471e76cc9cb32cfb150f3c \
@@ -43,11 +43,11 @@ do_install() {
 	oe_runmake install-multilib-linux  \
 		mlib=${SITEINFO_BITS} \
 		DESTDIR=${D} LDCONFIG=/bin/true
-	mkdir -p ${D}/${datadir}/doc/${PN}-${PV}
-	install ChangeLog ${D}/${datadir}/doc/${PN}-${PV}
-	install LICENSE* ${D}/${datadir}/doc/${PN}-${PV}
-	install README ${D}/${datadir}/doc/${PN}-${PV}
-	install NEWS ${D}/${datadir}/doc/${PN}-${PV}
+	mkdir -p ${D}/${datadir}/doc/${BPN}-${PV}
+	install ChangeLog ${D}/${datadir}/doc/${BPN}-${PV}
+	install LICENSE* ${D}/${datadir}/doc/${BPN}-${PV}
+	install README ${D}/${datadir}/doc/${BPN}-${PV}
+	install NEWS ${D}/${datadir}/doc/${BPN}-${PV}
 	mv ${D}/${docdir}/ustr-devel-${PV}/strdup\ vs.\ ustr.gnumeric \
 		${D}/${docdir}/ustr-devel-${PV}/strdup_vs._ustr.gnumeric
 }
-- 
1.7.4.1


