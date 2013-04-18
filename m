Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04181E0140A
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 17:03:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Apr 2013 17:03:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,496,1363158000"; d="scan'208";a="324039565"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga002.fm.intel.com with ESMTP; 17 Apr 2013 17:03:55 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 17 Apr 2013 17:03:55 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.99]) with mapi id
	14.01.0438.000; Wed, 17 Apr 2013 17:03:54 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Atanas Gegov <atanas.gegov.oss@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [eclipse-poky][PATCHv3 00/10] Introducing a
	YoctoSDKAutotoolsProjectNature
Thread-Index: AQHOO2++4JGoRgSss0ejKlZiXuAkwZjbGT+g
Date: Thu, 18 Apr 2013 00:03:54 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6FDCA520@ORSMSX104.amr.corp.intel.com>
References: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
In-Reply-To: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [eclipse-poky][PATCHv3 00/10] Introducing a	YoctoSDKAutotoolsProjectNature
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
X-List-Received-Date: Thu, 18 Apr 2013 00:03:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky master.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Atanas Gegov
Sent: Wednesday, April 17, 2013 6:29 AM
To: yocto@yoctoproject.org
Subject: [yocto] [eclipse-poky][PATCHv3 00/10] Introducing a YoctoSDKAutoto=
olsProjectNature

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

this patch series does a refactoring in the project natures. It does not ad=
d new functionality. In detail, this means the following:

Initially, the org.yocto.sdk.ide plugin defined 2 natures:
1/ YoctoSDKProjectNature (every template project has this nature, strongly =
coupled with Autotools) 2/ YoctoSDKEmptyProjectNature (additional nature fo=
r empty projects)

With this change there are now 3 natures available:
1/ YoctoSDKProjectNature (the "basic" nature, every Yocto IDE project has t=
his nature) 2/ YoctoSDKAutotoolsProjectNature (requires YoctoSDKProjectNatu=
re, strongly coupled with Autotools, all existing template projects get it)=
 3/ YoctoSDKEmptyProjectNature (additional nature for empty projects, requi=
res YoctoSDKProjectNature)

These natures are organized in a class hierarchy with YoctoSDKProjectNature=
 as a base class.

All current templates are renamed as Autotools projects to reflect their pr=
oject type and nature.

Now it is possible to introduce new type of Yocto projects that for example=
 use CMake instead of Autotools. These projects still have the YoctoSDKProj=
ectNature which provides the right environment, the cross-development profi=
les, etc.

Cheers,
Atanas

P.S: This patch series apply on the current master "All the changes made to=
 the preference page should trigger revalidation [Yocto#4042]"
(92ed79af678b6d0157eff0d7f4634a6fdc057f86).

Atanas Gegov (10):
  plugins/sdk.ide: Prepared templates for autotools nature
  plugins/sdk.ide: Added a new YoctoSDKAutotoolsProjectNature
  plugins/sdk.ide: Added a check method for the global target profie
  plugins/sdk.ide: Switch to YoctoSDKAutotoolsProjectNature
  plugins/sdk.ide: Refactored project natures
  plugins/sdk.ide: Renamed existing project type
  plugins/sdk.ide: Renamed existing templates
  plugins/sdk.ide: Renamed the NewYoctoProjectPostProcess
  plugins/sdk.ide: Improved usage of strings in class
  plugins/sdk.ide: Extracted error message to YoctoSDKMessages

 .../OSGI-INF/l10n/bundle.properties                |    3 +-
 plugins/org.yocto.sdk.ide/plugin.xml               |   34 ++++-
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |   13 ++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |    3 +
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   63 +++++++++
 .../ide/natures/YoctoSDKEmptyProjectNature.java    |   33 +----
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |   75 -----------
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    6 +-
 .../NewYoctoAutotoolsProjectPostProcess.java       |   81 +++++++++++
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   85 +++++++-----
 .../sdk/ide/wizard/NewYoctoProjectPostProcess.java |   73 ----------
 .../EmptyCAutotoolsProject/template.properties     |   14 ++
 .../EmptyCAutotoolsProject/template.xml            |   16 +++
 .../EmptyCPPAutotoolsProject/template.properties   |   14 ++
 .../EmptyCPPAutotoolsProject/template.xml          |   15 +++
 .../EmptyCPPProject/template.properties            |   14 --
 .../projecttemplates/EmptyCPPProject/template.xml  |   15 ---
 .../EmptyCProject/template.properties              |   14 --
 .../projecttemplates/EmptyCProject/template.xml    |   16 ---
 .../HelloWorldCAutotoolsProject/template.xml       |   38 +++---
 .../HelloWorldCGTKAutotoolsProject/src/Basename.c  |   50 +++++++
 .../src/Basename.desktop.in.src                    |    9 ++
 .../HelloWorldCGTKAutotoolsProject/src/INSTALL     |    9 ++
 .../src/Makefile.am.src                            |    8 ++
 .../src/Makefile.am.top                            |    7 +
 .../HelloWorldCGTKAutotoolsProject/src/README      |   25 ++++
 .../HelloWorldCGTKAutotoolsProject/src/autogen.sh  |   10 ++
 .../src/configure.ac.top                           |   49 +++++++
 .../src/configure.ac.top.old                       |   37 +++++
 .../template.properties                            |   28 ++++
 .../HelloWorldCGTKAutotoolsProject/template.xml    |  141 ++++++++++++++++=
++++
 .../HelloWorldCGTKProject/src/Basename.c           |   50 -------
 .../src/Basename.desktop.in.src                    |    9 --
 .../HelloWorldCGTKProject/src/INSTALL              |    9 --
 .../HelloWorldCGTKProject/src/Makefile.am.src      |    8 --
 .../HelloWorldCGTKProject/src/Makefile.am.top      |    7 -
 .../HelloWorldCGTKProject/src/README               |   25 ----
 .../HelloWorldCGTKProject/src/autogen.sh           |   10 --
 .../HelloWorldCGTKProject/src/configure.ac.top     |   49 -------
 .../HelloWorldCGTKProject/src/configure.ac.top.old |   37 -----
 .../HelloWorldCGTKProject/template.properties      |   28 ----
 .../HelloWorldCGTKProject/template.xml             |  141 ----------------=
----
 .../HelloWorldCPPAutotoolsProject/template.xml     |   38 +++---
 43 files changed, 714 insertions(+), 695 deletions(-)  create mode 100644 =
plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsPr=
ojectNature.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/=
NewYoctoAutotoolsProjectPostProcess.java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/=
NewYoctoProjectPostProcess.java
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/Em=
ptyCAutotoolsProject/template.properties
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/Em=
ptyCAutotoolsProject/template.xml
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/Em=
ptyCPPAutotoolsProject/template.properties
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/Em=
ptyCPPAutotoolsProject/template.xml
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/Em=
ptyCPPProject/template.properties
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/Em=
ptyCPPProject/template.xml
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/Em=
ptyCProject/template.properties
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/Em=
ptyCProject/template.xml
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKAutotoolsProject/src/Basename.c
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKAutotoolsProject/src/Basename.desktop.in.src
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKAutotoolsProject/src/ChangeLog
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKAutotoolsProject/src/INSTALL
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKAutotoolsProject/src/Makefile.am.src
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKAutotoolsProject/src/Makefile.am.top
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKAutotoolsProject/src/NEWS
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKAutotoolsProject/src/README
 create mode 100755 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKAutotoolsProject/src/autogen.sh
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKAutotoolsProject/src/configure.ac.top
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKAutotoolsProject/src/configure.ac.top.old
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKAutotoolsProject/template.properties
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKAutotoolsProject/template.xml
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKProject/src/Basename.c
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKProject/src/Basename.desktop.in.src
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKProject/src/ChangeLog
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKProject/src/INSTALL
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKProject/src/Makefile.am.src
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKProject/src/Makefile.am.top
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKProject/src/NEWS
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKProject/src/README
 delete mode 100755 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKProject/src/autogen.sh
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKProject/src/configure.ac.top
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKProject/src/configure.ac.top.old
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKProject/template.properties
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/He=
lloWorldCGTKProject/template.xml

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

