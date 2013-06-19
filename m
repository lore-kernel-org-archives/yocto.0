Return-Path: <noor_ahsan@mentor.com>
Received: from gemini.alm.mentorg.com (nat-lmt.mentorg.com [139.181.28.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87401E014E2
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 03:53:45 -0700 (PDT)
Received: from pkl-ahsann-ubuntu.mgc.mentorg.com ([137.202.157.70])
	by gemini.alm.mentorg.com (8.14.4/8.14.4) with ESMTP id r5JArYFb008145; 
	Wed, 19 Jun 2013 05:53:37 -0500
From: "Noor, Ahsan" <noor_ahsan@mentor.com>
To: holger.behrens@windriver.com, florin.sarbu@windriver.com
Date: Wed, 19 Jun 2013 15:53:31 +0500
Message-Id: <1371639211-3726-1-git-send-email-noor_ahsan@mentor.com>
X-Mailer: git-send-email 1.7.9.5
Cc: yocto@yoctoproject.org, Mikhail Durnev <mikhail_durnev@mentor.com>
Subject: [PATCH] ecryptfs-utils: Modify systemd service file to 'simple'.
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
X-List-Received-Date: Wed, 19 Jun 2013 10:53:47 -0000

From: Noor <noor_ahsan@mentor.com>

Signed-off-by: Mikhail Durnev <mikhail_durnev@mentor.com>
Signed-off-by: Noor Ahsan <noor_ahsan@mentor.com>
---
 .../ecryptfs-utils/ecryptfs-utils/ecryptfs.service |    4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.service b/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.service
index ba12aa3..52f3397 100644
--- a/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.service
+++ b/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.service
@@ -3,9 +3,7 @@ Description=A userspace daemon that runs as the user perform file operations und
 After=udev.service
 
 [Service]
-Type=oneshot
-ExecStart=/usr/bin/ecryptfsd
-RemainAfterExit=yes
+ExecStart=/usr/bin/ecryptfsd -f
 
 [Install]
 WantedBy=multi-user.target
-- 
1.7.9.5


