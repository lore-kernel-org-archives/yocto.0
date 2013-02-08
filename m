Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 15D8EE00515
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:24:45 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 1355040037;
	Fri,  8 Feb 2013 13:44:17 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:24:30 +0100
Message-Id: <cover.1360320932.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v5 00/12][eclipse-poky] Integrate yocto documentation into eclipse
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
X-List-Received-Date: Fri, 08 Feb 2013 13:24:45 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

v5: Incorporates changes resulting from the renaming of documentation
and adds the profile-manual. This patch set requires changes proposed
in "[PATCH][yocto-docs] Update eclipse help generation to support all
documents"

From RFC v4:
Hi,

the last proposal integrated the yocto documentation into the existing
doc plugin of the yocto ADT feature. As Jessica pointed out is does
not make sense to bundle all parts of the yocto documentation with the
ADT feature. As some parts of the documentation could also be helpful
with the BitBake Commander feature, we agreed to encapsulate the yocto
documentation into its own feature.

01..02: Fixing typos in build and site scripts
03..12: Adding the yocto documentation as a new feature
13: Temporary patch to use timo branch of docs project - DO NOT MERGE

From the last propsal:
<snip>
One major change in this patch series is that I
extended the plugin build system to integrate the generation into the
build process. Thus keeping the eclipse help and the official
documentation in sync is now automated.
</snip>

<snip>
the documentation of the yocto project can currently be viewed online
or as a separate pdf. When using the eclipse ide to develop software
on base of a yocto sysroot and toolchain it would be convenient to
access the relevant parts of the documentation from within the ide.
</snip>

<snip>
I have intergrated this
documentation in the ide and it can now be accessed through the
eclipse help center (Help -> Help Contents).
</snip>

Best regards
Timo

Timo Mueller (12):
  features/sdk.site: Fixed typo in category name
  Fixed typo in version variable name
  plugins/sdk.ide.doc.user: Add empty eclipse help
  plugins/sdk.ide.doc.user: Add about.html to prepare addition of yocto
    documentation
  features/org.yocto.doc: Add new feature containing yocto project
    documentation
  features/doc.headless.build: Added headless build for yocto.doc
    feature
  features/sdk.site: Added yocto.doc feature to update site
  scripts/build.sh: Added yocto.doc feature to build
  scripts/generate-doc.sh: Add script to handle eclipse help generation
  plugins/sdk.ide.doc.user: Add yocto documentation to the table of
    contents
  scripts/generate-doc.sh: Copy generated eclipse help into the
    user.doc plugin
  scripts/build.sh: Add documentation generation to the default build

 .../org.yocto.bc.headless.build/customTargets.xml  |   4 +-
 features/org.yocto.doc.headless.build/.project     |  11 +
 .../org.yocto.doc.headless.build/build.properties  | 262 +++++++++++++++++++++
 .../org.yocto.doc.headless.build/customTargets.xml | 212 +++++++++++++++++
 features/org.yocto.doc/.project                    |  17 ++
 features/org.yocto.doc/build.properties            |   3 +
 features/org.yocto.doc/feature.properties          | 163 +++++++++++++
 features/org.yocto.doc/feature.xml                 |  35 +++
 features/org.yocto.doc/license.html                | 107 +++++++++
 .../org.yocto.sdk.headless.build/customTargets.xml |   4 +-
 features/org.yocto.sdk.site/category.xml           |  10 +-
 features/org.yocto.sdk.site/site.xml               |  10 +-
 plugins/org.yocto.doc.user/.classpath              |   6 +
 plugins/org.yocto.doc.user/.project                |  28 +++
 plugins/org.yocto.doc.user/META-INF/MANIFEST.MF    |   8 +
 .../OSGI-INF/l10n/bundle.properties                |   3 +
 plugins/org.yocto.doc.user/about.html.in           | 189 +++++++++++++++
 plugins/org.yocto.doc.user/build.properties        |   9 +
 plugins/org.yocto.doc.user/html/book.css           |   1 +
 plugins/org.yocto.doc.user/plugin.xml              |  39 +++
 plugins/org.yocto.doc.user/toc.xml                 |  24 ++
 scripts/build.sh                                   |  18 +-
 scripts/generate-doc.sh                            |  87 +++++++
 23 files changed, 1238 insertions(+), 12 deletions(-)
 create mode 100644 features/org.yocto.doc.headless.build/.project
 create mode 100644 features/org.yocto.doc.headless.build/build.properties
 create mode 100644 features/org.yocto.doc.headless.build/customTargets.xml
 create mode 100644 features/org.yocto.doc/.project
 create mode 100644 features/org.yocto.doc/build.properties
 create mode 100644 features/org.yocto.doc/feature.properties
 create mode 100644 features/org.yocto.doc/feature.xml
 create mode 100644 features/org.yocto.doc/license.html
 create mode 100644 plugins/org.yocto.doc.user/.classpath
 create mode 100644 plugins/org.yocto.doc.user/.project
 create mode 100644 plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.doc.user/OSGI-INF/l10n/bundle.properties
 create mode 100644 plugins/org.yocto.doc.user/about.html.in
 create mode 100644 plugins/org.yocto.doc.user/build.properties
 create mode 100644 plugins/org.yocto.doc.user/html/book.css
 create mode 100644 plugins/org.yocto.doc.user/plugin.xml
 create mode 100644 plugins/org.yocto.doc.user/toc.xml
 create mode 100755 scripts/generate-doc.sh

-- 
1.7.11.7


