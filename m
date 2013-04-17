Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f54.google.com (mail-bk0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 741A5E014B2
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:38 -0700 (PDT)
Received: by mail-bk0-f54.google.com with SMTP id q16so771344bkw.13
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=TUFjS0bRu4OM3CswVtO6wR4yG8SSSY/bjTt1ZiFXTW0=;
	b=C15509rEfkh4E+vof7owcBx207bWckCreGlC5OjjBze4RBSsGu5x2+ALAxkDzwaC3i
	nsLqXmBfaVv5Kr5WjcxTFRFfmhgr4vu/BfmcA9ZZN/PQdPWBJoFyf2GhUX6KmZE1A5sx
	DwcYyXo4S/pzA2vcsWo8LX/K8pR1beoslIej9StiFR4sEraHBB/U0OEowSn7VfFVA5Z1
	/WXQiywkkvHjIsbCNJQrxYB6YcdQvV19EXoDCQtbRUyoc5LpfCBFCQJd8IijBt4s5pXr
	41ZzDTlXPUL9moZfD+z4xgH15XsazSH+Kk3BtWZ5p1GSPfc1ZoTS7U3ggaPt/ZRSr+qL
	yUuA==
X-Received: by 10.205.13.194 with SMTP id pn2mr2289302bkb.76.1366205376858;
	Wed, 17 Apr 2013 06:29:36 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id gy3sm2111386bkc.16.2013.04.17.06.29.34
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 17 Apr 2013 06:29:35 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Apr 2013 15:29:15 +0200
Message-Id: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [eclipse-poky][PATCHv3 00/10] Introducing a YoctoSDKAutotoolsProjectNature
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
X-List-Received-Date: Wed, 17 Apr 2013 13:29:38 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

this patch series does a refactoring in the project natures. It does not add new
functionality. In detail, this means the following:

Initially, the org.yocto.sdk.ide plugin defined 2 natures:
1/ YoctoSDKProjectNature (every template project has this nature,
strongly coupled with Autotools)
2/ YoctoSDKEmptyProjectNature (additional nature for empty projects)

With this change there are now 3 natures available:
1/ YoctoSDKProjectNature (the "basic" nature,
every Yocto IDE project has this nature)
2/ YoctoSDKAutotoolsProjectNature (requires YoctoSDKProjectNature,
strongly coupled with Autotools, all existing template projects get it)
3/ YoctoSDKEmptyProjectNature (additional nature for empty projects,
requires YoctoSDKProjectNature)

These natures are organized in a class hierarchy with YoctoSDKProjectNature
as a base class.

All current templates are renamed as Autotools projects to reflect
their project type and nature.

Now it is possible to introduce new type of Yocto projects that
for example use CMake instead of Autotools. These projects still
have the YoctoSDKProjectNature which provides the right environment,
the cross-development profiles, etc.

Cheers,
Atanas

P.S: This patch series apply on the current master "All the changes made to the preference page should trigger revalidation [Yocto#4042]"
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
 .../HelloWorldCGTKAutotoolsProject/template.xml    |  141 ++++++++++++++++++++
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
 .../HelloWorldCGTKProject/template.xml             |  141 --------------------
 .../HelloWorldCPPAutotoolsProject/template.xml     |   38 +++---
 43 files changed, 714 insertions(+), 695 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoAutotoolsProjectPostProcess.java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectPostProcess.java
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCAutotoolsProject/template.properties
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCAutotoolsProject/template.xml
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPAutotoolsProject/template.properties
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPAutotoolsProject/template.xml
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPProject/template.properties
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCPPProject/template.xml
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCProject/template.properties
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/EmptyCProject/template.xml
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Basename.c
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Basename.desktop.in.src
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/ChangeLog
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/INSTALL
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Makefile.am.src
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/Makefile.am.top
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/NEWS
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/README
 create mode 100755 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/autogen.sh
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/configure.ac.top
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/src/configure.ac.top.old
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/template.properties
 create mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKAutotoolsProject/template.xml
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Basename.c
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Basename.desktop.in.src
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/ChangeLog
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/INSTALL
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Makefile.am.src
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/Makefile.am.top
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/NEWS
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/README
 delete mode 100755 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/autogen.sh
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/configure.ac.top
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/src/configure.ac.top.old
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.properties
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCGTKProject/template.xml

-- 
1.7.9.5


