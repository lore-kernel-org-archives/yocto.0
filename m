Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 815E9E014AD
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 04:25:43 -0700 (PDT)
Received: by mail-wg0-f41.google.com with SMTP id y10so426841wgg.2
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 04:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=4imZzJOYaQbSpJcDWED2gkUWm3shdja3j4c/YsPajqQ=;
	b=lfecAixp5c6TxVW2Kv3OJL3u3Kr9hf5K6VudUgB56vS/5zfRjG3OhvKwZIyxtCQhKD
	8kQkdMwX2jLo9VsRQ5sd8LhLSUrYMERJcZ1056LldjVhPcSXnQQo8sFUXW47cVsYL06A
	iY3ZxcnlNyUfPwlgnEGLNNvVik5NFCcsQCuNOnYqpRPI1Sb9kJqFUjqftpAnO7UehpDm
	yiM+b8CXgp66hG91jEriRG8P8d4VBq3bSG9iySKZA4jZP6gKnva0J3GE5Vn/U9VGsaky
	wasKzUGELf4qWodj4yEwZuh3sKjMQ3kabb/+wpax4HeryetaPTW1Dy0q/bwIEXFO+o0z
	k+UQ==
X-Received: by 10.194.95.198 with SMTP id dm6mr10060065wjb.6.1365679542447;
	Thu, 11 Apr 2013 04:25:42 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id g4sm2785162wib.11.2013.04.11.04.25.40
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 11 Apr 2013 04:25:41 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Apr 2013 13:25:22 +0200
Message-Id: <1365679531-4518-1-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [eclipse-poky][PATCHv2 0/9] Introducing a YoctoSDKAutotoolsProjectNature
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
X-List-Received-Date: Thu, 11 Apr 2013 11:25:43 -0000

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

All current templates are renamed as Autotools projects to reflect
their project type and nature.
Now it is possible to introduce new type of Yocto projects that
for example use CMake instead of Autotools. These projects still
have the YoctoSDKProjectNature which provides the right environment,
the cross-development profiles, etc.

Cheers,
Atanas

P.S: This patch series apply on the current master "Fixed an issue for Invalid Project Name error message"
(78c77f8387c0a74a4f345b51edb5e86924a1e2e8).

Atanas Gegov (9):
  plugins/sdk.ide: Prepared templates for autotools nature
  plugins/sdk.ide: Added a new YoctoSDKAutotoolsProjectNature
  plugins/sdk.ide: Added a check method for the global target profie
  plugins/sdk.ide: Switch to YoctoSDKAutotoolsProjectNature
  plugins/sdk.ide: Renamed existing project type
  plugins/sdk.ide: Renamed existing templates
  plugins/sdk.ide: Renamed the NewYoctoProjectPostProcess
  plugins/sdk.ide: Improved usage of strings in class
  plugins/sdk.ide: Extracted error message to YoctoSDKMessages

 .../OSGI-INF/l10n/bundle.properties                |    3 +-
 plugins/org.yocto.sdk.ide/plugin.xml               |   34 ++++-
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |   13 ++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |    3 +
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   86 ++++++++++++
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |   70 ----------
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    6 +-
 .../NewYoctoAutotoolsProjectPostProcess.java       |   81 +++++++++++
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   82 ++++++-----
 .../sdk/ide/wizard/NewYoctoProjectPostProcess.java |   73 ----------
 .../EmptyCAutotoolsProject/template.properties     |   14 ++
 .../EmptyCAutotoolsProject/template.xml            |   17 +++
 .../EmptyCPPAutotoolsProject/template.properties   |   14 ++
 .../EmptyCPPAutotoolsProject/template.xml          |   16 +++
 .../EmptyCPPProject/template.properties            |   14 --
 .../projecttemplates/EmptyCPPProject/template.xml  |   15 ---
 .../EmptyCProject/template.properties              |   14 --
 .../projecttemplates/EmptyCProject/template.xml    |   16 ---
 .../HelloWorldCAutotoolsProject/template.xml       |    5 +-
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
 .../HelloWorldCGTKAutotoolsProject/template.xml    |  142 ++++++++++++++++++++
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
 .../HelloWorldCGTKProject/template.xml             |  141 -------------------
 .../HelloWorldCPPAutotoolsProject/template.xml     |    5 +-
 42 files changed, 706 insertions(+), 622 deletions(-)
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


