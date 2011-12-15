Return-Path: <Zumeng.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEF01E013CC
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2011 17:02:38 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBF12cPH027393
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2011 17:02:38 -0800 (PST)
Received: from pek-yocto-build2.corp.ad.wrs.com (128.224.163.150) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 14 Dec 2011 17:02:38 -0800
From: Zumeng Chen <zumeng.chen@windriver.com>
To: <yocto@yoctoproject.org>, <Bruce.Ashfield@windriver.com>
Date: Thu, 15 Dec 2011 09:02:31 +0800
Message-ID: <1323910951-26916-1-git-send-email-zumeng.chen@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <4EE8B0C1.5010202@windriver.com>
References: <4EE8B0C1.5010202@windriver.com>
MIME-Version: 1.0
Subject: [V2 PATCH 1/1] remove usbgadget from routerstationpro
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
X-List-Received-Date: Thu, 15 Dec 2011 01:02:39 -0000
Content-Type: text/plain

  Since the target doesn't have the related requirement
  to use USB slave hardware supporting usb gadget, so
  remove it from MACHINE_FEATURES.

Signed-off-by: Zumeng.chen@windriver.com>
---
 meta-yocto/conf/machine/routerstationpro.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/machine/routerstationpro.conf b/meta-yocto/conf/machine/routerstationpro.conf
index 9338ca1..52124d9 100644
--- a/meta-yocto/conf/machine/routerstationpro.conf
+++ b/meta-yocto/conf/machine/routerstationpro.conf
@@ -5,7 +5,7 @@
 require conf/machine/include/tune-mips32.inc
 
 MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 \
-                    serial usbgadget"
+                    serial"
 
 KERNEL_IMAGETYPE = "vmlinux"
 KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
-- 
1.7.5.4


