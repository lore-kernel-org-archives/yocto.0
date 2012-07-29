Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3843CE01450
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 07:02:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jul 2012 07:02:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="190281214"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2012 07:01:57 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, tom.zanussi@intel.com, bruce.ashfield@windriver.com
Date: Sun, 29 Jul 2012 07:00:03 -0700
Message-Id: <3677b024c70c83898971c2ccd266c9175b61d2dd.1343570184.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cb97bb55ba60e1fa47e8a7f5c6393f97b9ad283f.1343570184.git.nitin.a.kamble@intel.com>
References: <cb97bb55ba60e1fa47e8a7f5c6393f97b9ad283f.1343570184.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1343570184.git.nitin.a.kamble@intel.com>
References: <cover.1343570184.git.nitin.a.kamble@intel.com>
Subject: [PATCH 4/4] crownbay: make v3.4 the default kernel
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
X-List-Received-Date: Mon, 30 Jul 2012 14:02:20 -0000

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


