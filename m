Return-Path: <philip.balister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42169E0086E; Mon, 13 Feb 2017 16:21:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24123E00754
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 16:21:10 -0800 (PST)
Received: by mail-qt0-f193.google.com with SMTP id s58so15564927qtc.2
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 16:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id;
	bh=6gTPN1BCRv94Wxwh96zdUPwfaL0UEI+c3QARV8j3bR8=;
	b=i8EgkC82/XuAuFa3nQxLwUDlXZejkr2uE29UraFc7m8TLFW9NuBErOsTJJetsTf3LU
	KYERp4n8ecSf09BnGFZzETCcXiMHViUQd7zwrp62RSiHCao7kadDevn6cOzCiPslthwu
	/OCon+88QsibBlyE50iHQx4gGPF4Wfs8P4ezjUFOJRVPdSJDuWU3PMgv9lifLYReuND3
	nEx/ufQnt1ESlEnN54fPqrwi2ZEETnJ1Gs8bDZHXXg2osmdHPMay5hIhTEnTGozNQean
	Rz8UnbTBL5BbFrUK0aAFcfjO1WOXUeyCJHtiFYtEiz27fjC2o+qLflWmJCGkvBacWQ8o
	bctQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=6gTPN1BCRv94Wxwh96zdUPwfaL0UEI+c3QARV8j3bR8=;
	b=B02Dn4RcPn08kXK7lQhknEsOgZaNcc2fyY2rB/sZiRlufl52KsaSqovr7E3e/IF68c
	1pRigg4S00ixASZ2mXqk0zPv4PF2KCkoA2OIiTFkuXSVuHqtjDLoI5GTH6RI5PZgS58E
	KGaQ1uSBcbRhTOTWHLs0xaHHhjtrUGcZ9w+6IewldE+kC2tLZkOYTqM9ZeRcoKdZjhxt
	3Mquk7bu8MrwKJMOTPNnSgHJiIFwDnnjRfJCwSqxCFJaI8Zq+R3fomyY3B0hu+W+ynMw
	6Yy0ubmDiRWkzfJcmkYH6S3YrszHEiUdjulSJkUJzyf2BcC/kjIrI4G+lBvmtxELvU8w
	8//A==
X-Gm-Message-State: AMke39nPFnxjhOVsxlkiM5nzbvSFIHAVi5pXLaPtr5nVMtbTzdPGM7hCom213nhsFqHxxQ==
X-Received: by 10.55.20.77 with SMTP id e74mr8936385qkh.71.1487031669982;
	Mon, 13 Feb 2017 16:21:09 -0800 (PST)
Received: from thuvia.localdomain (pool-108-4-175-67.ronkva.east.verizon.net.
	[108.4.175.67]) by smtp.gmail.com with ESMTPSA id
	m12sm8503548qtm.45.2017.02.13.16.21.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 13 Feb 2017 16:21:08 -0800 (PST)
Sender: Philip Balister <philip.balister@gmail.com>
From: Philip Balister <philip@balister.org>
To: yocto@yoctoproject.org
Date: Mon, 13 Feb 2017 19:21:02 -0500
Message-Id: <1487031662-21508-1-git-send-email-philip@balister.org>
X-Mailer: git-send-email 2.7.4
Subject: [meta-qt4][PATCH] python-pyqt: Update to version 4.12.
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
X-List-Received-Date: Tue, 14 Feb 2017 00:21:14 -0000

When openembedded-core added sip-4.19, PyQt-4.11.3 stopped
compiling. Updating to 4.12 resolved the issue.

The source file only contains one license file that is GPL3 now.

Signed-off-by: Philip Balister <philip@balister.org>
---
 .../{python-pyqt_4.11.3.bb => python-pyqt_4.12.bb}       | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)
 rename recipes-qt4/recipes-python/{python-pyqt_4.11.3.bb => python-pyqt_4.12.bb} (74%)

diff --git a/recipes-qt4/recipes-python/python-pyqt_4.11.3.bb b/recipes-qt4/recipes-python/python-pyqt_4.12.bb
similarity index 74%
rename from recipes-qt4/recipes-python/python-pyqt_4.11.3.bb
rename to recipes-qt4/recipes-python/python-pyqt_4.12.bb
index cfddee8..d180658 100644
--- a/recipes-qt4/recipes-python/python-pyqt_4.11.3.bb
+++ b/recipes-qt4/recipes-python/python-pyqt_4.12.bb
@@ -2,23 +2,19 @@ SUMMARY = "Python Qt4 Bindings"
 AUTHOR = "Phil Thomson @ riverbank.co.uk"
 HOMEPAGE = "http://riverbankcomputing.co.uk"
 SECTION = "devel/python"
-LICENSE = "GPLv2 & GPLv3 & GPL_EXCEPTION"
+LICENSE = "GPLv3"
 LIC_FILES_CHKSUM = "\
-    file://GPL_EXCEPTION.TXT;md5=b73b0be471db679533dc94781c14af58 \
-    file://GPL_EXCEPTION_ADDENDUM.TXT;md5=c1e04ec2aa0911061005a801abf81e40 \
-    file://OPENSOURCE-NOTICE.TXT;md5=6ad9123620cc04a22c394753ad4767d7 \
-    file://LICENSE.GPL2;md5=577ff65f6653562af318bfc3944b1f20 \
-    file://LICENSE.GPL3;md5=feee51612c3c1191a1d5f41156fa2c75 \
+    file://LICENSE;md5=8bce67d3de90b75ae6e185c5c2ea1604 \
 "
 DEPENDS = "sip sip-native qt4-x11-free python"
 
 SRC_URI = "\
-    ${SOURCEFORGE_MIRROR}/pyqt/PyQt-x11-gpl-${PV}.tar.gz \
+    https://sourceforge.net/projects/pyqt/files/PyQt4/PyQt-4.12/PyQt4_gpl_x11-${PV}.tar.gz \
 "
-SRC_URI[md5sum] = "997c3e443165a89a559e0d96b061bf70"
-SRC_URI[sha256sum] = "853780dcdbe2e6ba785d703d059b096e1fc49369d3e8d41a060be874b8745686"
+SRC_URI[md5sum] = "eb8c338f2d8842aa7655e8e1aa840bed"
+SRC_URI[sha256sum] = "3c1d4b55314adb3e1132de8fc2a92eed216d37e58aceed41294dbca210ca88db"
 
-S = "${WORKDIR}/PyQt-x11-gpl-${PV}"
+S = "${WORKDIR}/PyQt4_gpl_x11-${PV}"
 
 PARALLEL_MAKE = ""
 
-- 
2.7.4


