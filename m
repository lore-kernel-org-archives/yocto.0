Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AAC7E00EF0; Tue,  6 Feb 2018 23:12:49 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79314E00D5F
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 23:12:46 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w177CkG8026562
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 6 Feb 2018 23:12:46 -0800 (PST)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Tue, 6 Feb 2018 23:12:41 -0800
From: <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 7 Feb 2018 14:49:24 +0800
Message-ID: <20180207064925.2043-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.14.1
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/2] iproute2: remove workaround for selinux
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
X-List-Received-Date: Wed, 07 Feb 2018 07:12:49 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

After upgrade to 4.14.1, iproute2 changes it way to create configure output
file config.mk which is also renamed from 'Config'. With RSS, the workaround
for iproute2 is not needed any more.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 recipes-connectivity/iproute2/iproute2_%.bbappend  | 2 +-
 recipes-connectivity/iproute2/iproute2_selinux.inc | 5 -----
 2 files changed, 1 insertion(+), 6 deletions(-)
 delete mode 100644 recipes-connectivity/iproute2/iproute2_selinux.inc

diff --git a/recipes-connectivity/iproute2/iproute2_%.bbappend b/recipes-connectivity/iproute2/iproute2_%.bbappend
index 7719d3b..b01ad25 100644
--- a/recipes-connectivity/iproute2/iproute2_%.bbappend
+++ b/recipes-connectivity/iproute2/iproute2_%.bbappend
@@ -1 +1 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'with-selinux', '', d)}
diff --git a/recipes-connectivity/iproute2/iproute2_selinux.inc b/recipes-connectivity/iproute2/iproute2_selinux.inc
deleted file mode 100644
index b0a7ffe..0000000
--- a/recipes-connectivity/iproute2/iproute2_selinux.inc
+++ /dev/null
@@ -1,5 +0,0 @@
-inherit with-selinux
-
-do_configure_append() {
-	sed -i 's/\(HAVE_SELINUX:=\).*/\1y/' ${B}/Config
-}
-- 
2.11.0


