Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD08FE00E4B; Wed, 13 Nov 2019 22:05:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44872E00E42
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 22:05:49 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xAE65foU026793
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 22:05:43 -0800 (PST)
Received: from 41ce8e763d5a.wrs.com (128.224.153.74) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Wed, 13 Nov 2019 22:05:35 -0800
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <pjtexier@koncepto.io>
Date: Thu, 14 Nov 2019 06:04:10 +0000
Message-ID: <20191114060410.37069-1-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] wic: add swap partition and set /root and /swap size
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
X-List-Received-Date: Thu, 14 Nov 2019 06:05:49 -0000
Content-Type: text/plain

- Add swap partition to workaround memory limitation

- Support to set /root and /swap size, 4G /root and 1G /swap by default

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 conf/machine/include/rpi-base.inc                           | 5 ++++-
 wic/{sdimage-raspberrypi.wks => sdimage-raspberrypi.wks.in} | 3 ++-
 2 files changed, 6 insertions(+), 2 deletions(-)
 rename wic/{sdimage-raspberrypi.wks => sdimage-raspberrypi.wks.in} (75%)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 36a8daf..de2f366 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -6,7 +6,10 @@ SOC_FAMILY = "rpi"
 include conf/machine/include/soc-family.inc
 
 IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
-WKS_FILE ?= "sdimage-raspberrypi.wks"
+
+PI_WKS_ROOT_SIZE ?= "--size=4096M --overhead-factor 1"
+PI_WKS_SWAP_SIZE ?= "--size=1024M --overhead-factor 1"
+WKS_FILE ?= "sdimage-raspberrypi.wks.in"
 
 XSERVER = " \
     xserver-xorg \
diff --git a/wic/sdimage-raspberrypi.wks b/wic/sdimage-raspberrypi.wks.in
similarity index 75%
rename from wic/sdimage-raspberrypi.wks
rename to wic/sdimage-raspberrypi.wks.in
index 01fbaea..81707c7 100644
--- a/wic/sdimage-raspberrypi.wks
+++ b/wic/sdimage-raspberrypi.wks.in
@@ -3,4 +3,5 @@
 # Raspberry Pi. Boot files are located in the first vfat partition.
 
 part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4096 --size 20
-part / --source rootfs --ondisk mmcblk0 --fstype=ext4 --label root --align 4096
+part / --source rootfs --ondisk mmcblk0 --fstype=ext4 --label root --align 4096 ${PI_WKS_ROOT_SIZE}
+part swap --ondisk mmcblk0 --size 44 --label swap --fstype=swap ${PI_WKS_SWAP_SIZE}
-- 
2.17.1


