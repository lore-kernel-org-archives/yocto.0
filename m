Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 782B6E013D9
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 11:36:58 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Apr 2013 11:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,456,1363158000"; d="scan'208";a="321012438"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.202])
	by fmsmga002.fm.intel.com with ESMTP; 11 Apr 2013 11:36:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Apr 2013 19:36:35 +0100
Message-Id: <cover.1365704903.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: [yocto-docs][PATCH 00/29] Documentation fixes (cover letter only)
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
X-List-Received-Date: Thu, 11 Apr 2013 18:36:58 -0000

A set of documentation patches adding a number of variable definitions,
improvements to the classes reference and a number of other miscellaneous
fixes.


The following changes since commit 368055bc046277fe601ff3a64913044be0a15e6d:

  ref-manual: Updated the FILESEXTRAPATHS variable description. (2013-04-11 08:43:26 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/docs6
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/docs6

Paul Eggleton (29):
  ref-manual: add documentation for rm_work.bbclass
  ref-manual: add more undocumented classes
  ref-manual/faq: clarify that package management is optional
  ref-manual/faq: virtualisation not visualisation
  ref-manual/ref-variables: ensure values are quoted
  bsp-guide: fix reference to old netbase version
  ref-manual/ref-classes: add missing QA checks
  ref-manual/ref-classes: add note to insane.bbclass section on
    INSANE_SKIP
  ref-manual/ref-variables: add INSANE_SKIP
  ref-manual/ref-variables: add IMAGE_LINGUAS
  ref-manual/ref-variables: add RM_WORK_EXCLUDE
  ref-manual/ref-variables: add COMPATIBLE_HOST and touch up
    COMPATIBLE_MACHINE
  ref-manual/ref-variables: correct and extend RREPLACES entry
  ref-manual/ref-variables: add RSUGGESTS
  ref-manual/ref-variables: add RPROVIDES
  ref-manual/ref-variables: add PROVIDES
  ref-manual/ref-variables: specify the value for INHIBIT_PACKAGE_STRIP
  ref-manual/technical-details: remove outdated statement on
    BB_SIGNATURE_HANDLER
  ref-manual/ref-classes: minor typo fixes and clarifications
  ref-manual/ref-variables: add MODULE_TARBALL_DEPLOY
  ref-manual/ref-variables: add KERNEL_EXTRA_ARGS
  ref-manual/ref-variables: correct and extend DEFAULT_PREFERENCE entry
  ref-manual/ref-variables: add SYSROOT_PREPROCESS_FUNCS
  ref-manual/ref-variables: add SANITY_TESTED_DISTROS and
    NATIVELSBSTRING
  ref-manual/ref-variables: add SIGGEN_EXCLUDERECIPES_ABISAFE
  ref-manual/ref-variables: add SIGGEN_EXCLUDE_SAFE_RECIPE_DEPS
  ref-manual/ref-variables: clarify T definition
  ref-manual/ref-variables: add LOG_DIR
  ref-manual/ref-variables: add STAMPS_DIR and update STAMP entry

 documentation/bsp-guide/bsp.xml                |    2 +-
 documentation/ref-manual/faq.xml               |    5 +-
 documentation/ref-manual/migration.xml         |    4 +-
 documentation/ref-manual/ref-classes.xml       |   89 +++++-
 documentation/ref-manual/ref-variables.xml     |  357 ++++++++++++++++++++++--
 documentation/ref-manual/technical-details.xml |    2 -
 6 files changed, 428 insertions(+), 31 deletions(-)

-- 
1.7.10.4


