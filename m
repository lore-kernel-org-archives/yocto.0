Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C87F3E00344
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 08:23:38 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Sep 2012 08:23:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,367,1344236400"; d="scan'208";a="196565779"
Received: from unknown (HELO localhost) ([10.255.13.26])
	by orsmga002.jf.intel.com with ESMTP; 04 Sep 2012 08:23:37 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  4 Sep 2012 10:23:35 -0500
Message-Id: <cover.1346771837.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/2] meta-intel: task rename updates, v2
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
X-List-Received-Date: Tue, 04 Sep 2012 15:23:38 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds a few changes required to for the task rename patches
just pulled in.

v2: add emenlow gnome fixes

The following changes since commit 2a7a46cad31df8c8c7559d2d55c905ac23a56b65:

  meta-intel: use va-impl-intel MACHINE_FEATURE (2012-08-30 16:28:19 -0500)

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/task.bbappend.fixes
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/task.bbappend.fixes

Tom Zanussi (2):
  meta-intel: remove task-core-tools-profile.bbappend
  meta-emenlow: rename recipes-gnome bbappends

 meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend    | 3 ---
 meta-chiefriver/recipes-core/tasks/task-core-tools-profile.bbappend    | 2 --
 meta-crownbay/recipes-core/tasks/task-core-tools-profile.bbappend      | 3 ---
 meta-emenlow/recipes-core/tasks/task-core-tools-profile.bbappend       | 2 --
 ...task-core-sdk-gmae.bbappend => packagegroup-core-sdk-gmae.bbappend} | 0
 ....bbappend => packagegroup-core-standalone-gmae-sdk-target.bbappend} | 0
 meta-fishriver/recipes-core/tasks/task-core-tools-profile.bbappend     | 2 --
 meta-fri2/recipes-core/tasks/task-core-tools-profile.bbappend          | 3 ---
 meta-jasperforest/recipes-core/tasks/task-core-tools-profile.bbappend  | 2 --
 meta-n450/recipes-core/tasks/task-core-tools-profile.bbappend          | 2 --
 meta-romley/recipes-core/tasks/task-core-tools-profile.bbappend        | 2 --
 meta-sugarbay/recipes-core/tasks/task-core-tools-profile.bbappend      | 2 --
 12 files changed, 23 deletions(-)
 delete mode 100644 meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-chiefriver/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-crownbay/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-emenlow/recipes-core/tasks/task-core-tools-profile.bbappend
 rename meta-emenlow/recipes-gnome/tasks/{task-core-sdk-gmae.bbappend => packagegroup-core-sdk-gmae.bbappend} (100%)
 rename meta-emenlow/recipes-gnome/tasks/{task-core-standalone-gmae-sdk-target.bbappend => packagegroup-core-standalone-gmae-sdk-target.bbappend} (100%)
 delete mode 100644 meta-fishriver/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-fri2/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-jasperforest/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-n450/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-romley/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-sugarbay/recipes-core/tasks/task-core-tools-profile.bbappend

-- 
1.7.11.4


