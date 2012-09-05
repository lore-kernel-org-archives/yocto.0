Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DD12E01385
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 07:35:17 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2012 07:35:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,374,1344236400"; d="scan'208";a="218100736"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.155])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 07:35:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 15:34:58 +0100
Message-Id: <cover.1346854096.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [yocto-docs][PATCH 00/12] Documentation fixes
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
X-List-Received-Date: Wed, 05 Sep 2012 14:35:17 -0000

Documentation fixes for the recent package group changes as well
as a few other things I noticed along the way.


The following changes since commit 12f77236b602e9ec43e845c8cec060ad342af19c:

  documentation: Fixed links to BitBake User Manual (2012-09-04 12:05:21 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/doc-fixes-pg
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/doc-fixes-pg

Paul Eggleton (12):
  documentation/bsp-guide, dev-manual-bsp-appendix: remove references
    to task bbappend
  documentation/poky-ref-manual: fix for rename of task to packagegroup
  documentation/dev-manual: fix for package group changes
  documentation/poky-ref-manual: improve IMAGE_FEATURES reference
  documentation/poky-ref-manual: replace reference to old files
  documentation/poky-ref-manual: update the default value of PACKAGES
  documentation/poky-ref-manual: variable reference clarifications and
    fixes
  documentation/poky-ref-manual: add packagegroup.bbclass to classes
  documentation/poky-ref-manual: update undocumented classes list
  documentation/poky-ref-manual: update images reference section
  documentation/yocto-project-qs: adjust GUI component feature listing
  documentation/poky-ref-manual: remove references to Dates and
    Contacts

 documentation/bsp-guide/bsp.xml                    |   24 -------
 .../dev-manual/dev-manual-bsp-appendix.xml         |   29 --------
 .../dev-manual/dev-manual-common-tasks.xml         |   48 ++++++-------
 documentation/poky-ref-manual/ref-bitbake.xml      |    8 +--
 documentation/poky-ref-manual/ref-classes.xml      |   50 ++++++++++++-
 documentation/poky-ref-manual/ref-features.xml     |   28 +++++---
 documentation/poky-ref-manual/ref-images.xml       |   17 +++--
 documentation/poky-ref-manual/ref-variables.xml    |   75 +++++++++++++-------
 .../yocto-project-qs/yocto-project-qs.xml          |   10 +--
 9 files changed, 154 insertions(+), 135 deletions(-)

-- 
1.7.9.5


