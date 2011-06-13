Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4886A4C800B3
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2011 09:35:44 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Jun 2011 07:35:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,359,1304319600"; d="scan'208";a="12903699"
Received: from unknown (HELO localhost) ([10.255.13.21])
	by orsmga002.jf.intel.com with ESMTP; 13 Jun 2011 07:35:43 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 13 Jun 2011 09:32:20 -0500
Message-Id: <cover.1307938815.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] meta-intel: add bbappends for systemtap
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
X-List-Received-Date: Mon, 13 Jun 2011 14:35:44 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Removing any old references to systemtap from meta means we need to add
it here.  It also adds systemtap support for the other, previously
uncovered meta-intel bsps.

The following changes since commit 01d1a545477cbc1b2a1da5b66edb52fd9e783206:
  Tom Zanussi (1):
        meta-intel: update kernel SRCREVs

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/systemtap-update
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/systemtap-update

Tom Zanussi (2):
  meta-emenlow: add systemtap bbappend
  meta-intel: add systemtap bbappends

 .../recipes-core/tasks/task-core-tools.bbappend    |    3 +++
 .../systemtap/systemtap_git.bbappend               |    1 +
 .../systemtap/systemtap_git.bbappend               |    1 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../systemtap/systemtap_git.bbappend               |    1 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../systemtap/systemtap_git.bbappend               |    1 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../systemtap/systemtap_git.bbappend               |    1 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../systemtap/systemtap_git.bbappend               |    1 +
 11 files changed, 17 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-crownbay/recipes-kernel/systemtap/systemtap_git.bbappend
 create mode 100644 meta-emenlow/recipes-kernel/systemtap/systemtap_git.bbappend
 create mode 100644 meta-fishriver/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-fishriver/recipes-kernel/systemtap/systemtap_git.bbappend
 create mode 100644 meta-jasperforest/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-jasperforest/recipes-kernel/systemtap/systemtap_git.bbappend
 create mode 100644 meta-n450/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-n450/recipes-kernel/systemtap/systemtap_git.bbappend
 create mode 100644 meta-sugarbay/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-sugarbay/recipes-kernel/systemtap/systemtap_git.bbappend


