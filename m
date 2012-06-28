Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED85BE01304
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 15:28:00 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Jun 2012 15:28:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="161987700"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.83])
	by azsmga001.ch.intel.com with ESMTP; 28 Jun 2012 15:28:00 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org, tom.zanussi@intel.com, nitin.a.kamble.com,
	kishore.k.bodke@intel.com
Date: Thu, 28 Jun 2012 15:17:21 -0700
Message-Id: <79d44540a20a3a7f6207a0b03dd8d54831f6fd41.1340920814.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1340920814.git.rahul.saxena@intel.com>
References: <cover.1340920814.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1340920814.git.rahul.saxena@intel.com>
References: <cover.1340920814.git.rahul.saxena@intel.com>
Subject: [PATCH 1/1] meta-cedartrail: add gstreamer-vaapi support
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
X-List-Received-Date: Thu, 28 Jun 2012 22:28:01 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

enable gstreamer with vaapi based hardware acceleration

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
---
 meta-cedartrail/conf/machine/cedartrail.conf |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index dbd7d95..4c676f4 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -7,8 +7,12 @@
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
+VA_FEATURES ?= "gst-va-intel va-intel"
+
 MACHINE_FEATURES += "pcbios efi"
 
+MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
+
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
            cdv-pvr-driver \
-- 
1.7.4.1


