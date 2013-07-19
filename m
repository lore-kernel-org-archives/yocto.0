Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19E9AE0140D
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 06:33:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Jul 2013 06:33:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,701,1367996400"; d="scan'208";a="348399339"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 19 Jul 2013 06:33:54 -0700
Received: from thunderbird.rb.intel.com (thunderbird.rb.intel.com
	[10.237.105.57])
	by linux.intel.com (Postfix) with ESMTP id 9A8F02C8001;
	Fri, 19 Jul 2013 06:33:52 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Fri, 19 Jul 2013 16:31:45 +0300
Message-Id: <1374240705-11529-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [yocto-autobuilder][PATCH] buildset-config: update remaining targets to layerversion
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
X-List-Received-Date: Fri, 19 Jul 2013 13:33:55 -0000

Update remaining targets to use the new layerversion check,
otherwise the old qemuimagetest will be used for RunSanityTests.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly-multilib.conf   | 2 +-
 buildset-config/nightly-qa-extras.conf  | 2 +-
 buildset-config/nightly-qa-systemd.conf | 2 +-
 buildset-config/nightly-x32.conf        | 3 +--
 4 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/buildset-config/nightly-multilib.conf b/buildset-config/nightly-multilib.conf
index cc01797..bf045a7 100644
--- a/buildset-config/nightly-multilib.conf
+++ b/buildset-config/nightly-multilib.conf
@@ -2,7 +2,7 @@
 builders: 'builder1'
 repos: [{'poky': 
             {'repourl':'git://git.yoctoproject.org/poky', 
-             'bbpriority':'1', 
+             'layerversion':'core',
              'branch':'master'}}, 
         {'meta-qt3': 
             {'repourl':'git://git.yoctoproject.org/meta-qt3', 
diff --git a/buildset-config/nightly-qa-extras.conf b/buildset-config/nightly-qa-extras.conf
index 23c955c..943d010 100644
--- a/buildset-config/nightly-qa-extras.conf
+++ b/buildset-config/nightly-qa-extras.conf
@@ -2,7 +2,7 @@
 builders: 'builder1'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
-             'bbpriority':'1',
+             'layerversion':'core',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config/nightly-qa-systemd.conf b/buildset-config/nightly-qa-systemd.conf
index 0467040..97f8a4a 100644
--- a/buildset-config/nightly-qa-systemd.conf
+++ b/buildset-config/nightly-qa-systemd.conf
@@ -2,7 +2,7 @@
 builders: 'builder1'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
-             'bbpriority':'1',
+             'layerversion':'core',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config/nightly-x32.conf b/buildset-config/nightly-x32.conf
index 636b1c3..2943ef6 100644
--- a/buildset-config/nightly-x32.conf
+++ b/buildset-config/nightly-x32.conf
@@ -2,11 +2,10 @@
 builders: 'builder1'
 repos: [{'poky': 
             {'repourl':'git://git.yoctoproject.org/poky', 
-             'bbpriority':'1', 
+             'layerversion':'core',
              'branch':'master'}}, 
         {'meta-qt3': 
             {'repourl':'git://git.yoctoproject.org/meta-qt3', 
-             'bbpriority':'2', 
              'branch':'master'}}] 
 steps: [{'SetDest':{}}, 
         {'CheckOutLayers': {}}, 
-- 
1.8.1.4


