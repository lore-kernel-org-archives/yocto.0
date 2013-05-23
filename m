Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACF18E01481
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:01 -0700 (PDT)
Received: by mail-ea0-f180.google.com with SMTP id g10so1611909eak.11
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=rayFNvoGhRAsH1yWMcG0HgOEsX85kPvDud3veLocMoM=;
	b=gA/mcmxsd9PsNG7NgdWVcImx37qPTzGJez45pBEYlMFD3jNts8m7ZJ3+4IEKFLDXkg
	CsVbSqCZOIxhg/cYPSYC6uO5ZhKRVmvJbM+NJzwBztjS2NQa+7bzrpe2A1XYBkgC7owi
	MbvLZ9hnjf3QKDyVeKCXhB9VlICJGO1pCEQvf2t+lBq8eeBUpQF3yDnlh17T44noICrX
	SvAS8bFtoHuM59WOWLm3GydrWrLve+aTB56TKr8LjUuTnnhApDVUQvKyA0mh/e/kdS9I
	mVvcJwW025n07Rz7cOmcE5NKYq56m8ZB2xaPIRxBZHLBNSeICM24O/nhAXBtDDxtF/bk
	/ftQ==
X-Received: by 10.14.107.200 with SMTP id o48mr28999382eeg.35.1369298400302;
	Thu, 23 May 2013 01:40:00 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id c41sm11438848eeu.8.2013.05.23.01.39.58
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 May 2013 01:39:59 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 10:39:39 +0200
Message-Id: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [eclipse-poky][PATCH 00/13] Completed CMake integration in the Yocto IDE
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
X-List-Received-Date: Thu, 23 May 2013 08:40:02 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

this patch series adds a new plugin containing a CMake configure tool, a
toolchain and a project type for building CMake projects in the Yocto IDE. The
plugin also introduces Hello World templates for C and C++. With this patch
series the CMake integration is completed and the CMake projects can be built,
debugged etc. as already known from the Autotools-based projects.

Cheers,
Atanas

P.S: This patch series requires the already discussed patch series
"[eclipse-poky][RFCv2 0/7] Introducing a YoctoSDKCMakeProjectNature".

Atanas Gegov (13):
  plugins/cmake: Added an empty CMake integration plugin
  plugins/cmake: Defined CMake tool with options
  plugins/sdk.ide: Added a method to get project environment
  plugins/cmake: Preparing a configure Job
  plugins/cmake: Added run method to configure Job
  plugins/cmake: Added a Makefile generator
  plugins/cmake: Added the generation of toolchain.cmake
  plugins/cmake: Defined the building toolchain
  plugins/cmake: Added a new category for CMake projects
  plugins/cmake: Connect toolchain and new project category
  plugins/cmake: Added CMake template projects
  plugins/sdk.ide: Adapted RemoteDebugLauncher for CMake projects
  features/sdk: Added CMake plugin to sdk feature

 features/org.yocto.sdk/feature.xml                 |    6 +
 plugins/org.yocto.cmake.managedbuilder/.classpath  |    7 +
 plugins/org.yocto.cmake.managedbuilder/.project    |   28 ++
 .../.settings/org.eclipse.jdt.core.prefs           |    8 +
 .../META-INF/MANIFEST.MF                           |   16 ++
 .../OSGI-INF/l10n/bundle.properties                |   40 +++
 .../build.properties                               |    7 +
 plugins/org.yocto.cmake.managedbuilder/plugin.xml  |  283 ++++++++++++++++++++
 .../org/yocto/cmake/managedbuilder/Activator.java  |   50 ++++
 .../YoctoCMakeMakefileGenerator.java               |  281 +++++++++++++++++++
 .../cmake/managedbuilder/YoctoCMakeMessages.java   |   57 ++++
 .../managedbuilder/YoctoCMakeMessages.properties   |   27 ++
 .../managedbuilder/job/ExecuteConfigureJob.java    |  149 +++++++++++
 .../cmake/managedbuilder/util/ConsoleUtility.java  |   49 ++++
 .../cmake/managedbuilder/util/SystemProcess.java   |  118 ++++++++
 .../HelloWorldCCMakeProject/src/CMakeLists.txt     |   34 +++
 .../HelloWorldCCMakeProject/src/main.c             |   21 ++
 .../HelloWorldCCMakeProject/template.properties    |   31 +++
 .../HelloWorldCCMakeProject/template.xml           |   61 +++++
 .../HelloWorldCPPCMakeProject/src/CMakeLists.txt   |   34 +++
 .../HelloWorldCPPCMakeProject/src/main.cpp         |   21 ++
 .../HelloWorldCPPCMakeProject/template.properties  |   31 +++
 .../HelloWorldCPPCMakeProject/template.xml         |   61 +++++
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |   29 +-
 24 files changed, 1445 insertions(+), 4 deletions(-)
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/.classpath
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/.project
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/.settings/org.eclipse.jdt.core.prefs
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/build.properties
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/plugin.xml
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/Activator.java
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.java
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/ConsoleUtility.java
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/SystemProcess.java
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/src/CMakeLists.txt
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/src/main.c
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/template.properties
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/template.xml
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/src/CMakeLists.txt
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/src/main.cpp
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/template.properties
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/template.xml

-- 
1.7.9.5


