Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02C0FE00D15; Tue, 19 Mar 2019 01:48:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E351FE00D07
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 01:48:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x2J8m7PK010874
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 01:48:07 -0700 (PDT)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.439.0; Tue, 19 Mar 2019 01:48:06 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 19 Mar 2019 17:07:34 +0800
Message-ID: <1552986454-84810-1-git-send-email-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-anaconda][PATCH] python3-anaconda: Set the same COMPATIBLE_HOST as grub
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
X-List-Received-Date: Tue, 19 Mar 2019 08:48:09 -0000
Content-Type: text/plain

They RDEPENDS on grub, so set the same COMPATIBLE_HOST as grub.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 recipes-installer/anaconda/python3-anaconda_28.22.11.bb                | 3 +++
 .../packagegroups/packagegroup-anaconda-support.bb                     | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/recipes-installer/anaconda/python3-anaconda_28.22.11.bb b/recipes-installer/anaconda/python3-anaconda_28.22.11.bb
index 52eb99a..e9ae390 100755
--- a/recipes-installer/anaconda/python3-anaconda_28.22.11.bb
+++ b/recipes-installer/anaconda/python3-anaconda_28.22.11.bb
@@ -160,3 +160,6 @@ python __anonymous () {
         raise bb.parse.SkipPackage('Anaconda requires RPM packages to be the default in PACKAGE_CLASSES.')
 }
 
+COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|aarch64.*)-(linux.*|freebsd.*)'
+COMPATIBLE_HOST_armv7a = 'null'
+COMPATIBLE_HOST_armv7ve = 'null'
diff --git a/recipes-installersupport/packagegroups/packagegroup-anaconda-support.bb b/recipes-installersupport/packagegroups/packagegroup-anaconda-support.bb
index 3f3f41e..f834c52 100644
--- a/recipes-installersupport/packagegroups/packagegroup-anaconda-support.bb
+++ b/recipes-installersupport/packagegroups/packagegroup-anaconda-support.bb
@@ -27,3 +27,6 @@ RDEPENDS_${PN} = " \
     grub-efi \
 "
 
+COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|aarch64.*)-(linux.*|freebsd.*)'
+COMPATIBLE_HOST_armv7a = 'null'
+COMPATIBLE_HOST_armv7ve = 'null'
-- 
2.7.4


