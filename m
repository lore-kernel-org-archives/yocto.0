Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 730EA4C800C1
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2011 17:51:10 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 14 Jun 2011 15:51:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,366,1304319600"; d="scan'208";a="18241431"
Received: from unknown (HELO localhost) ([10.255.13.21])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2011 15:51:09 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue, 14 Jun 2011 17:50:58 -0500
Message-Id: <cover.1308091335.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-intel: add bbappends for systemtap
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
X-List-Received-Date: Tue, 14 Jun 2011 22:51:10 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Removing any old references to systemtap from meta means we need to add
it here.  It also adds systemtap support for the other, previously
uncovered meta-intel bsps.

v2: use RRECOMMENDS as suggested by Darren Hart.

Tom Zanussi (1):
  meta-intel: add systemtap bbappends

 .../recipes-core/tasks/task-core-tools.bbappend    |    3 +++
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 +-
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 6 files changed, 12 insertions(+), 1 deletions(-)
 create mode 100644 meta-crownbay/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-fishriver/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-jasperforest/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-n450/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-sugarbay/recipes-core/tasks/task-core-tools.bbappend


