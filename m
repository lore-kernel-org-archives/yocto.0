Return-Path: <Holger.Behrens@windriver.com>
Received: from mail7.windriver.com (mail7.windriver.com [128.224.252.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ABE9E015E0
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2013 03:49:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail7.windriver.com (8.14.5/8.14.3) with ESMTP id r79AmsvE010427
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Aug 2013 06:48:55 -0400 (EDT)
Received: from ism-holger-l1.corp.ad.wrs.com (128.224.204.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Fri, 9 Aug 2013 03:48:54 -0700
From: Holger Behrens <holger.behrens@windriver.com>
To: <florin.sarbu@windriver.com>, <holger@windriver.com>
Date: Fri, 9 Aug 2013 12:48:43 +0200
Message-ID: <1376045330-17216-1-git-send-email-holger.behrens@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com, genivi-meta-ivi@lists.genivi.org,
	yocto@yoctoproject.org
Subject: [meta-ivi][PATCH 1/8] runqemu-internal: remove sound hardware for vexpressa9
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
X-List-Received-Date: Fri, 09 Aug 2013 10:49:04 -0000
Content-Type: text/plain

Signed-off-by: Holger Behrens <holger.behrens@windriver.com>
---
 scripts/runqemu-internal |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/runqemu-internal b/scripts/runqemu-internal
index ab7e8a8..97db06c 100755
--- a/scripts/runqemu-internal
+++ b/scripts/runqemu-internal
@@ -422,7 +422,7 @@ if [ "$MACHINE" = "vexpressa9" ]; then
     MACHINE_SUBTYPE=vexpress-a9
     QEMU_UI_OPTIONS="$QEMU_UI_OPTIONS"
     export QEMU_AUDIO_DRV="none"
-    SCRIPT_QEMU_OPT="$SCRIPT_QEMU_OPT -soundhw all "
+    #SCRIPT_QEMU_OPT="$SCRIPT_QEMU_OPT -serial stdio "
     if [ "$FSTYPE" = "tar.bz2" ]; then
 	KERNCMDLINE="root=/dev/mmcblk0p2 rw mem=1024M raid=noautodetect console=tty0 console=ttyAMA0,38400n8 rootwait vmalloc=256MB devtmpfs.mount=0"
 	QEMUOPTIONS="$QEMU_NETWORK_CMD -M $MACHINE_SUBTYPE -cpu cortex-a9 -sd $IMGNAME"
-- 
1.7.9.5


