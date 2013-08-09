Return-Path: <Holger.Behrens@windriver.com>
Received: from mail7.windriver.com (mail7.windriver.com [128.224.252.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4EA2E015FC
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2013 03:49:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail7.windriver.com (8.14.5/8.14.3) with ESMTP id r79An6l6010436
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Aug 2013 06:49:07 -0400 (EDT)
Received: from ism-holger-l1.corp.ad.wrs.com (128.224.204.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Fri, 9 Aug 2013 03:49:06 -0700
From: Holger Behrens <holger.behrens@windriver.com>
To: <florin.sarbu@windriver.com>, <holger@windriver.com>
Date: Fri, 9 Aug 2013 12:48:48 +0200
Message-ID: <1376045330-17216-6-git-send-email-holger.behrens@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1376045330-17216-1-git-send-email-holger.behrens@windriver.com>
References: <1376045330-17216-1-git-send-email-holger.behrens@windriver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com, genivi-meta-ivi@lists.genivi.org,
	yocto@yoctoproject.org
Subject: [meta-ivi][PATCH 6/8] vexpressa9.conf: PREFERRED_PROVIDER_jpeg now set distro wide
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
X-List-Received-Date: Fri, 09 Aug 2013 10:49:11 -0000
Content-Type: text/plain

Signed-off-by: Holger Behrens <holger.behrens@windriver.com>
---
 meta-ivi-bsp/conf/machine/vexpressa9.conf |    3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-ivi-bsp/conf/machine/vexpressa9.conf b/meta-ivi-bsp/conf/machine/vexpressa9.conf
index 8d90e39..9d9d14d 100644
--- a/meta-ivi-bsp/conf/machine/vexpressa9.conf
+++ b/meta-ivi-bsp/conf/machine/vexpressa9.conf
@@ -28,9 +28,6 @@ SERIAL_CONSOLE = "115200 ttyO2"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "3.4%"
 
-PREFERRED_PROVIDER_jpeg = "jpeg"
-PREFERRED_PROVIDER_jpeg-native = "jpeg-native"
-
 KERNEL_IMAGETYPE = "uImage"
 
 UBOOT_MACHINE = "ca9x4_ct_vxp_config"
-- 
1.7.9.5


