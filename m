Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94C72E006C2
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 14:52:36 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 May 2013 14:52:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,730,1363158000"; d="scan'208";a="307047885"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by azsmga001.ch.intel.com with ESMTP; 23 May 2013 14:52:34 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 23 May 2013 14:52:19 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.15]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.69]) with mapi id
	14.03.0123.003; Thu, 23 May 2013 14:50:09 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Atanas Gegov <atanas.gegov.oss@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [eclipse-poky][PATCH 00/13] Completed CMake
	integration in	the Yocto IDE
Thread-Index: AQHOV5FRfKUKQOG3fkaDHZ1d68QIZZkTTp6A
Date: Thu, 23 May 2013 21:50:09 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C32494@ORSMSX103.amr.corp.intel.com>
References: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
In-Reply-To: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [eclipse-poky][PATCH 00/13] Completed CMake integration in	the Yocto IDE
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
X-List-Received-Date: Thu, 23 May 2013 21:52:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Atanas,

Seems this patch series relies on the previous RFC patches: [yocto] [eclips=
e-poky][RFCv2 0/7] Introducing a YoctoSDKCMakeProjectNature.  Since they we=
re RFC, I didn't apply them and this patch series will report YoctoSDKCMake=
ProjectNature can't be resolved.  Can you send the YoctoSDKCMakeNature as p=
atches not RFC?

Thanks,
Jessica



-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Atanas Gegov
Sent: Thursday, May 23, 2013 1:40 AM
To: yocto@yoctoproject.org
Subject: [yocto] [eclipse-poky][PATCH 00/13] Completed CMake integration in=
 the Yocto IDE

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

this patch series adds a new plugin containing a CMake configure tool, a to=
olchain and a project type for building CMake projects in the Yocto IDE. Th=
e plugin also introduces Hello World templates for C and C++. With this pat=
ch series the CMake integration is completed and the CMake projects can be =
built, debugged etc. as already known from the Autotools-based projects.

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
 plugins/org.yocto.cmake.managedbuilder/plugin.xml  |  283 ++++++++++++++++=
++++
 .../org/yocto/cmake/managedbuilder/Activator.java  |   50 ++++
 .../YoctoCMakeMakefileGenerator.java               |  281 ++++++++++++++++=
+++
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
 24 files changed, 1445 insertions(+), 4 deletions(-)  create mode 100644 p=
lugins/org.yocto.cmake.managedbuilder/.classpath
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/.project
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/.settings/org.ec=
lipse.jdt.core.prefs
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/META-INF/MANIFES=
T.MF
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bu=
ndle.properties
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/build.properties
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/plugin.xml
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cm=
ake/managedbuilder/Activator.java
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cm=
ake/managedbuilder/YoctoCMakeMakefileGenerator.java
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cm=
ake/managedbuilder/YoctoCMakeMessages.java
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cm=
ake/managedbuilder/YoctoCMakeMessages.properties
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cm=
ake/managedbuilder/job/ExecuteConfigureJob.java
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cm=
ake/managedbuilder/util/ConsoleUtility.java
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cm=
ake/managedbuilder/util/SystemProcess.java
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projec=
ttemplates/HelloWorldCCMakeProject/src/CMakeLists.txt
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projec=
ttemplates/HelloWorldCCMakeProject/src/main.c
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projec=
ttemplates/HelloWorldCCMakeProject/template.properties
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projec=
ttemplates/HelloWorldCCMakeProject/template.xml
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projec=
ttemplates/HelloWorldCPPCMakeProject/src/CMakeLists.txt
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projec=
ttemplates/HelloWorldCPPCMakeProject/src/main.cpp
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projec=
ttemplates/HelloWorldCPPCMakeProject/template.properties
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/projec=
ttemplates/HelloWorldCPPCMakeProject/template.xml

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

