Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B175E00D79; Sat,  9 Jul 2016 11:28:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 417F6E00D04
	for <yocto@yoctoproject.org>; Sat,  9 Jul 2016 11:28:37 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Jul 2016 11:28:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,337,1464678000"; d="scan'208";a="992033564"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga001.jf.intel.com with ESMTP; 09 Jul 2016 11:28:38 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat,  9 Jul 2016 11:29:00 -0700
Message-Id: <1468088943-27081-1-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [eclipse-poky][mars][PATCH 0/3] Update to Mars.2 release
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
X-List-Received-Date: Sat, 09 Jul 2016 18:28:41 -0000

Update the dependencies to the latest Mars.2 (4.5.2) release.
Fix broken installation of the plugin due to upstream moving
 deprecated rse.terminals plugin to a different update site.
While we're at it, do some additional cleanup.

Tim Orling (3):
  Update to Mars.2 and new TM 4.0 sites
  org.yocto.sdk.site: add TM 4.0 Updates site to category.xml
  Cleanup - drop all references to ADT and HOB

 .../org.yocto.bc.headless.build/build.properties   |  4 +--
 features/org.yocto.bc/feature.properties           |  4 +--
 features/org.yocto.bc/feature.xml                  |  2 +-
 .../org.yocto.doc.headless.build/build.properties  |  4 +--
 features/org.yocto.doc/feature.properties          |  2 +-
 features/org.yocto.doc/feature.xml                 |  2 +-
 .../org.yocto.sdk.headless.build/build.properties  |  4 +--
 .../org.yocto.sdk.headless.build/customTargets.xml |  2 +-
 features/org.yocto.sdk.site/category.xml           |  7 ++--
 features/org.yocto.sdk.site/site.xml               |  6 ++--
 features/org.yocto.sdk/feature.properties          |  6 ++--
 features/org.yocto.sdk/feature.xml                 |  9 ++---
 .../sourceTemplateFeature/feature.properties       |  6 ++--
 .../sourceTemplatePlugin/plugin.properties         |  6 ++--
 .../build.properties                               |  4 +--
 features/org.yocto.utils/feature.properties        |  4 +--
 features/org.yocto.utils/feature.xml               |  2 +-
 plugins/org.yocto.bc.ui/.classpath                 |  2 +-
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |  3 +-
 .../yocto/bc/ui/actions/LaunchToasterDialog.java   |  2 +-
 .../org/yocto/bc/ui/builder/BitbakeBuilder.java    |  2 +-
 .../bc/ui/builder/BitbakeCommanderNature.java      |  6 ++--
 plugins/org.yocto.cmake.managedbuilder/.classpath  |  2 +-
 .../.settings/org.eclipse.jdt.core.prefs           |  6 ++--
 .../META-INF/MANIFEST.MF                           |  4 +--
 .../OSGI-INF/l10n/bundle.properties                |  4 ++-
 plugins/org.yocto.doc.user/.classpath              |  2 +-
 plugins/org.yocto.doc.user/META-INF/MANIFEST.MF    |  4 +--
 plugins/org.yocto.remote.utils/.classpath          |  2 +-
 .../.settings/org.eclipse.jdt.core.prefs           |  6 ++--
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    | 10 +++---
 plugins/org.yocto.remote.utils/build.properties    |  2 +-
 plugins/org.yocto.sdk.ide.doc.user/.classpath      |  2 +-
 .../.settings/org.eclipse.jdt.core.prefs           |  6 ++--
 .../META-INF/MANIFEST.MF                           |  4 +--
 .../cheatsheets/createNewHelloWorldProject.xml     | 12 +++----
 plugins/org.yocto.sdk.ide/.classpath               |  2 +-
 .../.settings/org.eclipse.jdt.core.prefs           |  6 ++--
 plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF     |  4 +--
 .../OSGI-INF/l10n/bundle.properties                |  4 +--
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |  6 ++--
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  | 16 ++++-----
 .../src/org/yocto/sdk/ide/YoctoSDKPlugin.java      |  4 +--
 .../yocto/sdk/ide/preferences/LoggerConstants.java |  6 ++--
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |  2 +-
 plugins/org.yocto.sdk.remotetools/.classpath       |  2 +-
 .../.settings/org.eclipse.jdt.core.prefs           |  6 ++--
 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF | 11 +++---
 plugins/org.yocto.sdk.remotetools/plugin.xml       |  2 +-
 scripts/setup.sh                                   | 42 +++++++++++++++-------
 50 files changed, 144 insertions(+), 124 deletions(-)

-- 
2.7.4


