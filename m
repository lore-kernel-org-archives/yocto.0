Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C137EE0156A
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 06:10:04 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Jun 2013 06:09:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,814,1363158000"; d="scan'208";a="313209287"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by azsmga001.ch.intel.com with ESMTP; 06 Jun 2013 06:09:36 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Jun 2013 15:47:30 +0300
Message-Id: <1370522855-22772-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [RFC Refactor 0/5] Merging windows-build with master
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
X-List-Received-Date: Thu, 06 Jun 2013 13:10:04 -0000

- last batch of patches for merging windows-build with master (from the functionality point of view, from the refactoring pov, some import, whitespaces and annotations may be in order)
- this batch should apply on top of the last batch(21 patches)

Ioana Grigoropol (5):
  Remove unused ConsoleWriter
  Add implicit constructror for OEFileSystemContributor
  Refactor and clean-up of OptionsPage fields
  Refactor OptionsPage to use Remote Location box & validation
  Validate project name to check for invalid characters

 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    4 +-
 .../bc/ui/filesystem/OEFileSystemContributor.java  |    3 +
 .../yocto/bc/ui/wizards/install/InstallWizard.java |   33 ---
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |  295 ++++++++++++--------
 4 files changed, 192 insertions(+), 143 deletions(-)

-- 
1.7.9.5


