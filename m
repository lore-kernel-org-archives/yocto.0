Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E93AE0086F
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 21:35:31 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0G5ZUDI020789
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 21:35:30 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Wed, 15 Jan 2014 21:35:30 -0800
From: <wenzong.fan@windriver.com>
To: <Xin.Ouyang@windriver.com>, <mark.hatle@windriver.com>,
	<yocto@yoctoproject.org>
Date: Thu, 16 Jan 2014 00:35:26 -0500
Message-ID: <c2d3efaeebff3ece35a86e44722accd24becc6b5.1389850086.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1389850086.git.wenzong.fan@windriver.com>
References: <cover.1389850086.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/1] libselinux: migrate SRC_URI to 2.2.2
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
X-List-Received-Date: Thu, 16 Jan 2014 05:35:34 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../{libselinux_2.2.bb => libselinux_2.2.2.bb}     |    4 ++--
 recipes-security/selinux/selinux_20131030.inc      |    2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/selinux/{libselinux_2.2.bb => libselinux_2.2.2.bb} (74%)

diff --git a/recipes-security/selinux/libselinux_2.2.bb b/recipes-security/selinux/libselinux_2.2.2.bb
similarity index 74%
rename from recipes-security/selinux/libselinux_2.2.bb
rename to recipes-security/selinux/libselinux_2.2.2.bb
index 23bb9cb..d0a4e2e 100644
--- a/recipes-security/selinux/libselinux_2.2.bb
+++ b/recipes-security/selinux/libselinux_2.2.2.bb
@@ -5,8 +5,8 @@ include ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 
-SRC_URI[md5sum] = "d82beab880749a017f2737e6687fec30"
-SRC_URI[sha256sum] = "e9dc64216543a7283d786f623ac28e8867f8794138e7deba474a3aa8d02dce33"
+SRC_URI[md5sum] = "55026eb4654c4f732a27c191b39bebaf"
+SRC_URI[sha256sum] = "30ab363416806da907b86b97f1d31c252473e3200358bb1570f563c8312b5a3e"
 
 SRC_URI += "\
         file://libselinux-drop-Wno-unused-but-set-variable.patch \
diff --git a/recipes-security/selinux/selinux_20131030.inc b/recipes-security/selinux/selinux_20131030.inc
index 807a37c..8d09f28 100644
--- a/recipes-security/selinux/selinux_20131030.inc
+++ b/recipes-security/selinux/selinux_20131030.inc
@@ -3,7 +3,7 @@ SELINUX_RELEASE = "20131030"
 SRC_URI = "http://userspace.selinuxproject.org/releases/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
 
 PREFERRED_VERSION_checkpolicy = "2.2"
-PREFERRED_VERSION_libselinux = "2.2"
+PREFERRED_VERSION_libselinux = "2.2.2"
 PREFERRED_VERSION_libsemanage = "2.2"
 PREFERRED_VERSION_libsepol = "2.2"
 PREFERRED_VERSION_policycoreutils = "2.2.5"
-- 
1.7.9.5


