Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4FE5E00B58; Tue,  2 Apr 2019 00:43:54 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF9D4E00AD5
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 00:43:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x327hrnC028745
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 2 Apr 2019 00:43:53 -0700 (PDT)
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Tue, 2 Apr 2019 00:43:52 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Tue, 2 Apr 2019 15:36:04 +0800
Message-ID: <20190402073604.23446-2-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
In-Reply-To: <20190402073604.23446-1-kexin.hao@windriver.com>
References: <20190402073604.23446-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/2] meta-yocto-bsp: beaglebone: Enable the serial console for the WIC image
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
X-List-Received-Date: Tue, 02 Apr 2019 07:43:54 -0000
Content-Type: text/plain

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/wic/beaglebone-yocto.wks | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto-bsp/wic/beaglebone-yocto.wks b/meta-yocto-bsp/wic/beaglebone-yocto.wks
index b75f238df937..97bd480a0875 100644
--- a/meta-yocto-bsp/wic/beaglebone-yocto.wks
+++ b/meta-yocto-bsp/wic/beaglebone-yocto.wks
@@ -4,3 +4,4 @@
 
 part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4 --size 16 --sourceparams="loader=u-boot" --use-uuid
 part / --source rootfs --ondisk mmcblk --fstype=ext4 --label root --align 4 --use-uuid
+bootloader --append="console=ttyS0,115200"
-- 
2.14.4


