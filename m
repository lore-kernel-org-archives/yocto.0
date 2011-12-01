Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2880E0059F
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 10:05:45 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Dec 2011 10:05:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="81842203"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by orsmga001.jf.intel.com with ESMTP; 01 Dec 2011 10:05:44 -0800
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com, kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Thu,  1 Dec 2011 12:05:48 -0600
Message-Id: <cover.1322762434.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/4] meta-intel: remove obsolete .bbappends and update READMEs
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
X-List-Received-Date: Thu, 01 Dec 2011 18:05:46 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset fixes some dangling .bbappend problems caused by an oe-core update
in the middle of the night, and adds some usability to READMES.

The following changes since commit f5b0682e5add5def4b59cdfa9daf52bfb1a96338:
  Richard Purdie (1):
        meta-jaspterforest: Sync with xserver-xorg version update

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/upstream-bbappend-borkage-fixups
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/upstream-bbappend-borkage-fixups

Tom Zanussi (4):
  meta-jasperforest: Remove xserver-xorg .bbappend.
  meta-intel: add Patches section to BSP READMEs
  meta-intel: point the top-level README to the BSP READMEs
  meta-romley: Remove xserver-xorg .bbappend.

 README                                             |    5 ++++-
 meta-crownbay/README                               |   11 +++++++++++
 meta-emenlow/README                                |   11 +++++++++++
 meta-fishriver/README                              |   11 +++++++++++
 meta-fri2/README                                   |   11 +++++++++++
 meta-jasperforest/README                           |   11 +++++++++++
 .../xorg-xserver/xserver-xorg_1.11.2.bbappend      |    1 -
 meta-n450/ReleaseNotes                             |   11 +++++++++++
 meta-romley/README                                 |   11 +++++++++++
 .../xorg-xserver/xserver-xorg_1.11.1.bbappend      |    1 -
 meta-sugarbay/README                               |   11 +++++++++++
 11 files changed, 92 insertions(+), 3 deletions(-)
 delete mode 100644 meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xorg_1.11.2.bbappend
 delete mode 100644 meta-romley/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend


