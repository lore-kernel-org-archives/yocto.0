Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8222E008E0
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 17:38:30 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s091cVHu017843
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 8 Jan 2014 17:38:31 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Wed, 8 Jan 2014 17:38:29 -0800
From: <wenzong.fan@windriver.com>
To: <xin.ouyang@windriver.com>, <mark.hatle@windriver.com>,
	<yocto@yoctoproject.org>
Date: Wed, 8 Jan 2014 20:38:12 -0500
Message-ID: <918a65c7c0156627c1a271458392b7baaa5699ca.1389171235.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1389171235.git.wenzong.fan@windriver.com>
References: <cover.1389171235.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 07/10] sepolgen: migrate SRC_URI to 1.2.1
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
X-List-Received-Date: Thu, 09 Jan 2014 01:38:30 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/sepolgen_1.2.1.bb |    6 +++---
 recipes-security/selinux/sepolgen_git.bb   |    2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-security/selinux/sepolgen_1.2.1.bb b/recipes-security/selinux/sepolgen_1.2.1.bb
index a132727..eb1065a 100644
--- a/recipes-security/selinux/sepolgen_1.2.1.bb
+++ b/recipes-security/selinux/sepolgen_1.2.1.bb
@@ -1,9 +1,9 @@
 PR = "r0"
 
-include selinux_20130423.inc
+include selinux_20131030.inc
 include ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
-SRC_URI[md5sum] = "505a8b70eb110b770119e6560d183216"
-SRC_URI[sha256sum] = "8a1c6d3a78c9b6ad3555c74def555f65a62950bf21c111c585bfc382fec3a645"
+SRC_URI[md5sum] = "ce662a83188bc3a9b40c15792fcaf2c8"
+SRC_URI[sha256sum] = "438c246bdc6b3cf1b12116831f4c601aaae6e93decb007dddab212a3c88781b0"
diff --git a/recipes-security/selinux/sepolgen_git.bb b/recipes-security/selinux/sepolgen_git.bb
index 710019d..95c3491 100644
--- a/recipes-security/selinux/sepolgen_git.bb
+++ b/recipes-security/selinux/sepolgen_git.bb
@@ -1,5 +1,5 @@
 PR = "r0"
-PV = "1.1.9+git${SRCPV}"
+PV = "1.2.1+git${SRCPV}"
 
 include selinux_git.inc
 include ${BPN}.inc
-- 
1.7.9.5


