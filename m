Return-Path: <liming.wang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0194BE01239
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 08:02:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7PF2iNF005895
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 25 Aug 2011 08:02:44 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.211) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 25 Aug 2011 08:02:43 -0700
From: Liming Wang <liming.wang@windriver.com>
To: <Bruce.Ashfield@windriver.com>
Date: Thu, 25 Aug 2011 22:45:29 +0800
Message-ID: <1314283529-20888-2-git-send-email-liming.wang@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1314283529-20888-1-git-send-email-liming.wang@windriver.com>
References: <1314283529-20888-1-git-send-email-liming.wang@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH RESEND v2 1/1] scripts/runqemu: disable unfs boot mode for qemuppc
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 25 Aug 2011 15:02:45 -0000
Content-Type: text/plain

Because unfs boot mode is unstable for qemuppc, disable
it temporarily.

Signed-off-by: Liming Wang <liming.wang@windriver.com>
---
 scripts/runqemu |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/scripts/runqemu b/scripts/runqemu
index ed8c05b..f6cc6f4 100755
--- a/scripts/runqemu
+++ b/scripts/runqemu
@@ -351,6 +351,12 @@ if [ -z "$FSTYPE" ]; then
         usage
     fi
 fi
+
+if [ "$FSTYPE" = "nfs" -a "$MACHINE" = "qemuppc" ]; then
+    echo "Error: usermode NFS boot is not available for qemuppc."
+    exit 1
+fi
+
 # FSTYPE is now set for all cases
 
 # Handle cases where a ROOTFS type is given instead of a filename, e.g.
-- 
1.7.0.4


