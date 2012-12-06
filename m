Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C685DE0144D
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 07:48:40 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id AAB58400A8;
	Thu,  6 Dec 2012 16:13:00 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 16:48:31 +0100
Message-Id: <cover.1354805521.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv3 0/7][eclipse-poky] Integrate yocto documentation into eclipse
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
X-List-Received-Date: Thu, 06 Dec 2012 15:48:41 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

since the last proposal some things have changed:
1. Eclipse help generation is now part of the yocto-docs project
(currently available in the origin/timo branch)
2. We agreed that the plugin should be licensed under the EPL v1.0
instead of having a separate documentation plugin licensed under the
CCA-SA 2.0 UK.

The last patch set was adding generated eclipse help files (html) to
the repository. One major change in this patch series is that I
extended the plugin build system to integrate the generation into the
build process. Thus keeping the eclipse help and the official
documentation in sync is now automated.
Also the eclipse help is now part of the user.doc plugin and no longer
contained in a separate plugin/feature.

Rational from the original patch:
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

Timo Mueller (7):
  plugins/sdk.ide.doc.user: Add empty eclipse help
  plugins/sdk.ide.doc.user: Add about.html to prepare addition of yocto
    documentation
  scripts/generate_doc.sh: Add script to handle eclipse help generation
  plugins/sdk.ide.doc.user: Add yocto documentation to the table of
    contents
  scripts/generat-doc.sh: Copy generated eclipse help into the user.doc
    plugin
  scripts/build.sh: Add documentation generation to the default build
  (TEMPORARY): Use origin/timo branch of yocto docs project

 .../META-INF/MANIFEST.MF                           |    3 +-
 plugins/org.yocto.sdk.ide.doc.user/about.html.in   |  166 ++++++++++++++++++++
 .../org.yocto.sdk.ide.doc.user/build.properties    |    9 +-
 plugins/org.yocto.sdk.ide.doc.user/html/book.css   |    1 +
 plugins/org.yocto.sdk.ide.doc.user/plugin.xml      |   31 ++++
 plugins/org.yocto.sdk.ide.doc.user/toc.xml         |   21 +++
 scripts/build.sh                                   |    7 +
 scripts/generate_doc.sh                            |   91 +++++++++++
 8 files changed, 326 insertions(+), 3 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/about.html.in
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/html/book.css
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/toc.xml
 create mode 100755 scripts/generate_doc.sh

-- 
1.7.7.6


