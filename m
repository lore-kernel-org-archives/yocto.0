Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F218E00320
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 08:31:01 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 08:31:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43313353"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.129])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 08:31:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 16:30:33 +0100
Message-Id: <cover.1314113115.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 00/14] Minor documentation updates for 1.1
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
X-List-Received-Date: Tue, 23 Aug 2011 15:31:01 -0000

A number of minor documentation fixes; please review for sanity prior
to merging, in particular I wasn't sure if the document titles were left
blank deliberately.

These changes are against Poky but might need to be merged into yocto-docs
first.

The following changes since commit edd8e1e8b974eb3f0f9f66c2207aadf43612350b:

  documentation/adt-manual/adt-command.xml: general edits. (2011-08-20 17:52:00 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib paule/docs
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/docs

Paul Eggleton (14):
  documentation: correct QT to Qt
  documentation: update bitbake --help output
  README.hardware: typo/capitalisation fixes
  documentation: typo, spelling & minor grammar fixes
  documentation: POKYMODE/POKYLIBC -> TCMODE/TCLIBC
  documentation: SITEINFO_ENDIANESS -> SITEINFO_ENDIANNESS
  documentation: improve LIC_FILES_CHKSUM documentation
  documentation: ensure all examples have LIC_FILES_CHKSUM
  documentation: update TERMCMD/TERMCMDRUN documentation
  documentation: update for directdisk/live image changes
  documentation: update BBFILE_* variable documentation
  documentation: set titles for all documents
  documentation: update documentation for SRCREV variable
  documentation: clarify specifying a specific package with -e

 README.hardware                                    |    6 +-
 documentation/adt-manual/adt-manual.xml            |    2 +-
 documentation/bsp-guide/bsp-guide.xml              |    2 +-
 documentation/bsp-guide/bsp.xml                    |    4 +-
 documentation/dev-manual/dev-manual.xml            |    2 +-
 documentation/poky-ref-manual/development.xml      |    4 +-
 .../examples/hello-autotools/hello_2.3.bb          |    1 +
 .../poky-ref-manual/examples/hello-single/hello.bb |    1 +
 .../examples/libxpm/libxpm_3.5.6.bb                |    1 +
 .../examples/mtd-makefile/mtd-utils_1.0.0.bb       |    2 +
 documentation/poky-ref-manual/extendpoky.xml       |   41 ++++++----
 documentation/poky-ref-manual/faq.xml              |   10 +-
 documentation/poky-ref-manual/introduction.xml     |    2 +-
 documentation/poky-ref-manual/poky-ref-manual.xml  |    2 +-
 documentation/poky-ref-manual/ref-bitbake.xml      |   34 +++++---
 documentation/poky-ref-manual/ref-classes.xml      |    8 +-
 documentation/poky-ref-manual/ref-features.xml     |    2 +-
 documentation/poky-ref-manual/ref-images.xml       |   64 ++------------
 documentation/poky-ref-manual/ref-structure.xml    |   10 +-
 documentation/poky-ref-manual/ref-variables.xml    |   90 +++++++++++++++-----
 documentation/poky-ref-manual/ref-varlocality.xml  |    4 +-
 documentation/poky-ref-manual/resources.xml        |    2 +-
 documentation/poky-ref-manual/usingpoky.xml        |    5 +-
 meta/recipes.txt                                   |    2 +-
 24 files changed, 160 insertions(+), 141 deletions(-)

-- 
1.7.4.1


