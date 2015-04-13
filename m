Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CACE6E009AA; Mon, 13 Apr 2015 02:32:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FB77E00963
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 02:32:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t3D9WFWt026408
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 02:32:16 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.224.2; Mon, 13 Apr 2015 02:32:18 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 13 Apr 2015 17:24:23 +0800
Message-ID: <1428917063-2713-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] tar: cleanup duplicate PACKAGECONFIG
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
X-List-Received-Date: Mon, 13 Apr 2015 09:32:17 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

The tar_1.28.bb has defined this:

PACKAGECONFIG[acl] = "--with-posix-acls, --without-posix-acls, acl,"

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-extended/tar/tar_%.bbappend | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/recipes-extended/tar/tar_%.bbappend b/recipes-extended/tar/tar_%.bbappend
index 54c8a90..53d381e 100644
--- a/recipes-extended/tar/tar_%.bbappend
+++ b/recipes-extended/tar/tar_%.bbappend
@@ -2,10 +2,4 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 inherit with-selinux
 
-
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)}"
-
-# configure has no acl enable/disable options!
-#
-PACKAGECONFIG[acl] = ",,acl,"
-
-- 
1.9.1


