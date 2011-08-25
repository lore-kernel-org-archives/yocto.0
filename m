Return-Path: <liming.wang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 541C0E01236
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 02:01:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7P91R6m011276
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 25 Aug 2011 02:01:27 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.211) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 25 Aug 2011 02:01:27 -0700
From: Liming Wang <liming.wang@windriver.com>
To: <Bruce.Ashfield@windriver.com>
Date: Thu, 25 Aug 2011 16:44:51 +0800
Message-ID: <1314261891-5311-2-git-send-email-liming.wang@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1314261891-5311-1-git-send-email-liming.wang@windriver.com>
References: <1314261891-5311-1-git-send-email-liming.wang@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: [PATCH 1/1] scripts/runqemu: disable unfs boot mode for qemuppc
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
X-List-Received-Date: Thu, 25 Aug 2011 09:01:28 -0000
Content-Type: text/plain

Because unfs boot mode is unstable for qemuppc, disable
it temporarily.

Signed-off-by: Liming Wang <liming.wang@windriver.com>
---
 scripts/runqemu |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/scripts/runqemu b/scripts/runqemu
index ed8c05b..10da6c9 100755
--- a/scripts/runqemu
+++ b/scripts/runqemu
@@ -351,6 +351,12 @@ if [ -z "$FSTYPE" ]; then
         usage
     fi
 fi
+
+if [ "$FSTYPE" = "nfs" -a "$MACHINE" = "qemuppc" ]; then
+    echo "Error: NFS boot mode is unstable for qemuppc, please don't use it now"
+    exit 1
+fi
+
 # FSTYPE is now set for all cases
 
 # Handle cases where a ROOTFS type is given instead of a filename, e.g.
-- 
1.7.0.4


