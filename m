Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3B22E00E4C; Wed, 13 Nov 2019 23:31:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BA23E00E43
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 23:31:54 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xAE7Vjhq014420
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 23:31:46 -0800 (PST)
Received: from 41ce8e763d5a.wrs.com (128.224.153.74) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Wed, 13 Nov 2019 23:31:44 -0800
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <raj.khem@gmail.com>, <pjtexier@koncepto.io>
Date: Thu, 14 Nov 2019 07:30:18 +0000
Message-ID: <20191114073018.232746-1-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <9b25d589f66bb9a4a7850e089a5828b62ddb0bde.camel@gmail.com>
References: <9b25d589f66bb9a4a7850e089a5828b62ddb0bde.camel@gmail.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH V2] wic: support to set /root size and add extra partition
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
X-List-Received-Date: Thu, 14 Nov 2019 07:31:55 -0000
Content-Type: text/plain

- Support to add extra partition, such as add swap partition
  to workaround memory limitation

- Support to set /root size

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 conf/machine/include/rpi-base.inc                     | 11 ++++++++++-
 ...age-raspberrypi.wks => sdimage-raspberrypi.wks.in} |  3 ++-
 2 files changed, 12 insertions(+), 2 deletions(-)
 rename wic/{sdimage-raspberrypi.wks => sdimage-raspberrypi.wks.in} (85%)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index af1418d..9d0b688 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -6,7 +6,16 @@ SOC_FAMILY = "rpi"
 include conf/machine/include/soc-family.inc
 
 IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
-WKS_FILE ?= "sdimage-raspberrypi.wks"
+
+# Set size of /root partition, such as 4G
+# PI_WKS_ROOT_SIZE ?= "--size=4096M --overhead-factor 1"
+PI_WKS_ROOT_SIZE ?= ""
+
+# Add extra partition, such as 1G size /swap
+# PI_WKS_EXTRA_PARTTION = "part swap --ondisk mmcblk0 --size 44 --label swap --fstype=swap --size=1024M --overhead-factor 1"
+PI_WKS_EXTRA_PARTTION ?= ""
+
+WKS_FILE ?= "sdimage-raspberrypi.wks.in"
 
 XSERVER = " \
     xserver-xorg \
diff --git a/wic/sdimage-raspberrypi.wks b/wic/sdimage-raspberrypi.wks.in
similarity index 85%
rename from wic/sdimage-raspberrypi.wks
rename to wic/sdimage-raspberrypi.wks.in
index 01fbaea..743d757 100644
--- a/wic/sdimage-raspberrypi.wks
+++ b/wic/sdimage-raspberrypi.wks.in
@@ -3,4 +3,5 @@
 # Raspberry Pi. Boot files are located in the first vfat partition.
 
 part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4096 --size 20
-part / --source rootfs --ondisk mmcblk0 --fstype=ext4 --label root --align 4096
+part / --source rootfs --ondisk mmcblk0 --fstype=ext4 --label root --align 4096 ${PI_WKS_ROOT_SIZE}
+${PI_WKS_EXTRA_PARTTION}
-- 
2.17.1


