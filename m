Return-Path: <noor_ahsan@mentor.com>
Received: from gemini.alm.mentorg.com (nat-lmt.mentorg.com [139.181.28.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73A9CE01564
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 03:54:26 -0700 (PDT)
Received: from pkl-ahsann-ubuntu.mgc.mentorg.com ([137.202.157.70])
	by gemini.alm.mentorg.com (8.14.4/8.14.4) with ESMTP id r5JAsJnU008404; 
	Wed, 19 Jun 2013 05:54:20 -0500
From: "Noor, Ahsan" <noor_ahsan@mentor.com>
To: holger.behrens@windriver.com, florin.sarbu@windriver.com
Date: Wed, 19 Jun 2013 15:54:16 +0500
Message-Id: <1371639256-3760-1-git-send-email-noor_ahsan@mentor.com>
X-Mailer: git-send-email 1.7.9.5
Cc: yocto@yoctoproject.org
Subject: [PATCH] ecryptfs-utils: create symlinks for mount file in expected path
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
X-List-Received-Date: Wed, 19 Jun 2013 10:54:26 -0000

From: Noor <noor_ahsan@mentor.com>

* mounting ecryptfs drive was failing because it was looking for mount.ecryptfs
  binary in /sbin/ however in our file-system, it was present in /usr/sbin/. So,
  create symlinks of required binaries in /sbin/ as well

Signed-off-by: Noor Ahsan <noor_ahsan@mentor.com>
---
 .../ecryptfs-utils/ecryptfs-utils_100.bb           |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils_100.bb b/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils_100.bb
index e23f32c..c05cd84 100644
--- a/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils_100.bb
+++ b/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils_100.bb
@@ -40,4 +40,8 @@ do_install_append() {
         install -d ${D}${systemd_unitdir}/system/
         install -m 0644 ${WORKDIR}/ecryptfs.service ${D}${systemd_unitdir}/system
     fi
+
+    install -d ${D}${base_sbindir}
+    ln -sf ${sbindir}/mount.ecryptfs ${D}${base_sbindir}/
+    ln -sf ${sbindir}/umount.ecryptfs ${D}${base_sbindir}/
 }
-- 
1.7.9.5


