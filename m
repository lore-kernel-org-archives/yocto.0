Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0338EE008C4
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 17:38:21 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s091cMYu017834
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 8 Jan 2014 17:38:22 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Wed, 8 Jan 2014 17:38:21 -0800
From: <wenzong.fan@windriver.com>
To: <xin.ouyang@windriver.com>, <mark.hatle@windriver.com>,
	<yocto@yoctoproject.org>
Date: Wed, 8 Jan 2014 20:38:07 -0500
Message-ID: <22eab0bb2323ac997ad258d960eb635db4b6df73.1389171235.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1389171235.git.wenzong.fan@windriver.com>
References: <cover.1389171235.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 02/10] checkpolicy: migrate SRC_URI to 2.2
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
X-List-Received-Date: Thu, 09 Jan 2014 01:38:22 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/checkpolicy_2.2.bb |    6 +++---
 recipes-security/selinux/checkpolicy_git.bb |    2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-security/selinux/checkpolicy_2.2.bb b/recipes-security/selinux/checkpolicy_2.2.bb
index 198de31..8388e0f 100644
--- a/recipes-security/selinux/checkpolicy_2.2.bb
+++ b/recipes-security/selinux/checkpolicy_2.2.bb
@@ -1,9 +1,9 @@
 PR = "r0"
 
-include selinux_20130423.inc
+include selinux_20131030.inc
 include ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
-SRC_URI[md5sum] = "b82c55a95855611b67ac99c7e8f48552"
-SRC_URI[sha256sum] = "e6a0ac539b74859b4262b317eb90d9914deb15e7aa509659f47724d50fe2ecc6"
+SRC_URI[md5sum] = "9662eaa1163de67cf3d392b58d262552"
+SRC_URI[sha256sum] = "9ff6698f4d4cb59c9c916e348187d533ada4107f90c253ef7304905934e9adf8"
diff --git a/recipes-security/selinux/checkpolicy_git.bb b/recipes-security/selinux/checkpolicy_git.bb
index bd59001..bf6250d 100644
--- a/recipes-security/selinux/checkpolicy_git.bb
+++ b/recipes-security/selinux/checkpolicy_git.bb
@@ -1,5 +1,5 @@
 PR = "r0"
-PV = "2.1.12+git${SRCPV}"
+PV = "2.2+git${SRCPV}"
 
 include selinux_git.inc
 include ${BPN}.inc
-- 
1.7.9.5


