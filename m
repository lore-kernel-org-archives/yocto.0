Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 118E4E013E4
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 08:29:50 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jun 2013 08:30:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,800,1363158000"; d="scan'208";a="347946823"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2013 08:29:46 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Jun 2013 18:07:40 +0300
Message-Id: <1370358468-20881-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [Refactor RFC 0/8] Merging of windows-build with master[patch-set2]
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
X-List-Received-Date: Tue, 04 Jun 2013 15:29:50 -0000

- second patch set for merging windows-build to master
- these patches apply on top of the first patch set(9)

Ioana Grigoropol (8):
  Redirect bitbake environment parsing to file & parse
  Use YoctoHostFile for storing OEFile(s)
  Remove unused checkReadOnlyParent method of OEFile
  Fix full path of OEFile
  Fix NullPointerException when detecting changed files
  Fix Hob launching on Linux host
  Enable edit&save of remote files
  Fix variables hoover

 .../src/org/yocto/bc/bitbake/BBRecipe.java         |    2 +-
 .../src/org/yocto/bc/bitbake/BBSession.java        |   73 +++--
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   14 +-
 .../bc/ui/builder/BitbakeCommanderNature.java      |    2 +-
 .../bc/ui/editors/bitbake/BBVariableTextHover.java |   12 +-
 .../editors/bitbake/BitBakeDocumentProvider.java   |   40 ++-
 .../bc/ui/editors/bitbake/BitBakeFileEditor.java   |    2 +-
 .../bitbake/BitBakeSourceViewerConfiguration.java  |    4 +
 .../src/org/yocto/bc/ui/filesystem/OEFile.java     |  286 +++++-------------
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   15 +-
 .../org/yocto/bc/ui/filesystem/OEIgnoreFile.java   |    7 +-
 .../src/org/yocto/bc/ui/model/YoctoHostFile.java   |  306 ++++++++++++++++++++
 12 files changed, 506 insertions(+), 257 deletions(-)
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java

-- 
1.7.9.5


