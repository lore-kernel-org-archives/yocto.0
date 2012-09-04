Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD4A8E013CE
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 08:23:48 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Sep 2012 08:23:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,367,1344236400"; d="scan'208";a="217631917"
Received: from unknown (HELO localhost) ([10.255.13.26])
	by fmsmga002.fm.intel.com with ESMTP; 04 Sep 2012 08:23:43 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  4 Sep 2012 10:23:38 -0500
Message-Id: <16a7879b98352b70e8c17181912a26212d716c87.1346771837.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <6e74be58a9b03a774ab21ac72bca9b9d56a622d4.1346771837.git.tom.zanussi@intel.com>
References: <6e74be58a9b03a774ab21ac72bca9b9d56a622d4.1346771837.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1346771837.git.tom.zanussi@intel.com>
References: <cover.1346771837.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-emenlow: rename recipes-gnome bbappends
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
X-List-Received-Date: Tue, 04 Sep 2012 15:23:49 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The recipes these .bbappends correspond to were renamed, so rename
them here as well.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../{task-core-sdk-gmae.bbappend => packagegroup-core-sdk-gmae.bbappend}  | 0
 ...get.bbappend => packagegroup-core-standalone-gmae-sdk-target.bbappend} | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-emenlow/recipes-gnome/tasks/{task-core-sdk-gmae.bbappend => packagegroup-core-sdk-gmae.bbappend} (100%)
 rename meta-emenlow/recipes-gnome/tasks/{task-core-standalone-gmae-sdk-target.bbappend => packagegroup-core-standalone-gmae-sdk-target.bbappend} (100%)

diff --git a/meta-emenlow/recipes-gnome/tasks/task-core-sdk-gmae.bbappend b/meta-emenlow/recipes-gnome/tasks/packagegroup-core-sdk-gmae.bbappend
similarity index 100%
rename from meta-emenlow/recipes-gnome/tasks/task-core-sdk-gmae.bbappend
rename to meta-emenlow/recipes-gnome/tasks/packagegroup-core-sdk-gmae.bbappend
diff --git a/meta-emenlow/recipes-gnome/tasks/task-core-standalone-gmae-sdk-target.bbappend b/meta-emenlow/recipes-gnome/tasks/packagegroup-core-standalone-gmae-sdk-target.bbappend
similarity index 100%
rename from meta-emenlow/recipes-gnome/tasks/task-core-standalone-gmae-sdk-target.bbappend
rename to meta-emenlow/recipes-gnome/tasks/packagegroup-core-standalone-gmae-sdk-target.bbappend
-- 
1.7.11.4


