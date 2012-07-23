Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D09AE004A1
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 03:07:20 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Jul 2012 03:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="172433692"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by azsmga001.ch.intel.com with ESMTP; 24 Jul 2012 03:07:19 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com, tom.zanussi@intel.com
Date: Mon, 23 Jul 2012 03:06:14 -0700
Message-Id: <523a620810689486c624746c4a15acc7ebdd2120.1343037893.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
References: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1343037893.git.nitin.a.kamble@intel.com>
References: <cover.1343037893.git.nitin.a.kamble@intel.com>
Subject: [PATCH 5/6] crownbay: make v3.4 the default kernel
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
X-List-Received-Date: Tue, 24 Jul 2012 10:07:20 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf |    2 +-
 meta-crownbay/conf/machine/crownbay.conf        |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index af85b00..4c869ee 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -4,7 +4,7 @@
 #@DESCRIPTION: Machine configuration for Crown Bay systems, without Intel-proprietary graphics bits
 # i.e. E660 + EG20T
 
-PREFERRED_VERSION_linux-yocto ?= "3.2%"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
 
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index a39d037..7d5e597 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -4,7 +4,7 @@
 #@DESCRIPTION: Machine configuration for Crown Bay systems
 # i.e. E660 + EG20T
 
-PREFERRED_VERSION_linux-yocto ?= "3.2%"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
 
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
-- 
1.7.3.4


