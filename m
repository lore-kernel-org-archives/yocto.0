Return-Path: <Chong.Lu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BE2AE006F1; Tue, 15 Jul 2014 02:52:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D47AE00524
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 02:52:28 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s6F9qQpc005877
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 02:52:27 -0700 (PDT)
Received: from PKE-CLU1-D1.corp.ad.wrs.com (128.224.162.204) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.174.1; Tue, 15 Jul 2014 02:52:26 -0700
From: Chong Lu <Chong.Lu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 15 Jul 2014 17:52:24 +0800
Message-ID: <1405417945-24729-1-git-send-email-Chong.Lu@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/2] rpm: remove PR
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
X-List-Received-Date: Tue, 15 Jul 2014 09:52:31 -0000
Content-Type: text/plain

Remove PR, since oe-core has a new version.

Signed-off-by: Chong Lu <Chong.Lu@windriver.com>
---
 recipes-devtools/rpm/rpm_5.4.14.bbappend |    2 --
 1 file changed, 2 deletions(-)

diff --git a/recipes-devtools/rpm/rpm_5.4.14.bbappend b/recipes-devtools/rpm/rpm_5.4.14.bbappend
index f2a82e1..df5dcef 100644
--- a/recipes-devtools/rpm/rpm_5.4.14.bbappend
+++ b/recipes-devtools/rpm/rpm_5.4.14.bbappend
@@ -1,5 +1,3 @@
-PR .= ".3"
-
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 SRC_URI += "file://rpm-fix-build-bug.patch \
-- 
1.7.9.5


