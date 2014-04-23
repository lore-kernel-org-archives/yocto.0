Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1CBAE00716
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 00:42:11 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3N7gARo013239
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 00:42:10 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Wed, 23 Apr 2014 00:42:10 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 23 Apr 2014 03:42:04 -0400
Message-ID: <01d8fbd2392d48751e73ab9d55e11ce7bb5c49a6.1398238471.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1398238471.git.wenzong.fan@windriver.com>
References: <cover.1398238471.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/4] udev init: restorecon for /dev/shm, /dev/pts
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
X-List-Received-Date: Wed, 23 Apr 2014 07:42:11 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-core/udev/udev/init |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/udev/udev/init b/recipes-core/udev/udev/init
index 7194e8c..66359f2 100644
--- a/recipes-core/udev/udev/init
+++ b/recipes-core/udev/udev/init
@@ -114,7 +114,7 @@ case "$1" in
             udevadm settle
     fi
 
-    test ! -x /sbin/restorecon || /sbin/restorecon -F /dev
+    test ! -x /sbin/restorecon || /sbin/restorecon -F /dev /dev/shm /dev/pts
 
     ;;
   stop)
-- 
1.7.9.5


