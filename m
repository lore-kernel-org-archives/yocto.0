Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FEB5E003FA
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 00:54:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0Q8sN5D019546
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 00:54:23 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Sun, 26 Jan 2014 00:54:22 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Sun, 26 Jan 2014 03:54:15 -0500
Message-ID: <3a2ef0bff3d6174799b20f9aa10e730aefcc4716.1390725931.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1390725931.git.wenzong.fan@windriver.com>
References: <cover.1390725931.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/3] udev/init: sync to latest poky version ae819671
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
X-List-Received-Date: Sun, 26 Jan 2014 08:54:26 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Sync with the latest init file from poky as of 01262014:

    oe-core commit: ae819671489a22bfdda11210ff620f564aa9b24b

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-core/udev/udev/init |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-core/udev/udev/init b/recipes-core/udev/udev/init
index 29146ec..7194e8c 100644
--- a/recipes-core/udev/udev/init
+++ b/recipes-core/udev/udev/init
@@ -56,7 +56,9 @@ case "$1" in
     }
     [ -e /dev/pts ] || mkdir -m 0755 /dev/pts
     [ -e /dev/shm ] || mkdir -m 1777 /dev/shm
-    mount -a -t tmpfs 2>/dev/null
+    # the automount rule for udev needs /tmp directory available, as /tmp is a symlink
+    # to /var/tmp which in turn is a symlink to /var/volatile/tmp, we need to make sure
+    # /var/volatile/tmp directory to be available.
     mkdir -p /var/volatile/tmp
 
     # Cache handling.
-- 
1.7.9.5


