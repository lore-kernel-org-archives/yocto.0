Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2437F4C8007E
	for <yocto@yoctoproject.org>; Fri,  6 May 2011 07:45:32 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 May 2011 05:45:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,326,1301900400"; d="scan'208";a="638976579"
Received: from unknown (HELO helios) ([10.255.16.100])
	by orsmga002.jf.intel.com with SMTP; 06 May 2011 05:45:30 -0700
Received: by helios (sSMTP sendmail emulation); Fri, 06 May 2011 13:45:29 +0100
Message-Id: <cover.1304685476.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 6 May 2011 13:37:56 +0100
Date: Fri, 06 May 2011 13:45:29 +0100
To: yocto@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 0/1] Add emenlow pieces removed from oe-core
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
X-List-Received-Date: Fri, 06 May 2011 12:45:32 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

This adds back the emenlow-specific pieces recently removed from oe-core.

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (1):
  Add emenlow pieces removed from oe-core

 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../tasks/task-poky-sdk-gmae.bbappend              |    1 +
 .../task-poky-standalone-gmae-sdk-target.bbappend  |    1 +
 .../clutter/clutter-1.4_1.4.2.bbappend             |    4 ++++
 .../clutter/clutter-1.6_1.6.14.bbappend            |    4 ++++
 .../recipes-graphics/clutter/clutter_git.bbappend  |    4 ++++
 .../recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend     |    2 ++
 .../recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend     |    2 ++
 8 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 meta-emenlow/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-emenlow/recipes-gnome/tasks/task-poky-sdk-gmae.bbappend
 create mode 100644 meta-emenlow/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bbappend
 create mode 100644 meta-emenlow/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend
 create mode 100644 meta-emenlow/recipes-graphics/clutter/clutter-1.6_1.6.14.bbappend
 create mode 100644 meta-emenlow/recipes-graphics/clutter/clutter_git.bbappend
 create mode 100644 meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend
 create mode 100644 meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend

-- 
1.7.4.1


