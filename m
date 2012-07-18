Return-Path: <timo@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E8D1E00283
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 06:03:05 -0700 (PDT)
X-No-Relay: not in my network
X-No-Relay: not in my network
Received: from localhost (mail.bmw-carit.de [62.245.222.98])
	by h1954115.stratoserver.net (Postfix) with ESMTPSA id 2DD531D56079;
	Wed, 18 Jul 2012 15:03:03 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Wed, 18 Jul 2012 15:02:51 +0200
Message-Id: <cover.1342614895.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 0/8] Integrate yocto documentation into eclipse
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
X-List-Received-Date: Wed, 18 Jul 2012 13:03:05 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

the documentation of the yocto project can currently be viewed online
or as a separate pdf. When using the eclipse ide to develop software
on base of a yocto sysroot and toolchain it would be convenient to
access the relevant parts of the documentation from within the ide.

In order to achieve this, I've generated eclipse help from yocto's
documentation (adt-manual, yocto-project-qs). I have intergrated this
documentation in the ide and it can now be accessed through the
eclipse help center (Help -> Help Contents). Please let me know what
you think about it?

Yocto's documentation is licensed under the Creative Commons
Attribution-Share Alike 2.0 UK: England & Wales (CCA-SA), which is
incompatible to the Eclipse Public License 1.0. Thus I've created a
standalone feature to simply redistribute the documentation avoiding
licensing issues. Do you agree on the way this is structured?

Cheers,
  Timo

Timo Mueller (8):
  plugins/sdk.doc.user: Added plugin for the yocto project
    documentation
  plugins/sdk.doc.user: Added empty table of contents
  feature/sdk.doc: Added feature containing yocto documentation plugins
  feature/sdk.doc: Added org.yocto.sdk.doc.user plugin
  plugins/sdk.doc.user: Added yocto quick start guide
  feature/sdk: Added org.yocto.sdk.doc feature.
  features/sdk.site: Added eclipse help feature to update site
  plugins/sdk.doc.user: Added yocto adt manual

 features/org.yocto.sdk.doc/.project                |   17 +
 features/org.yocto.sdk.doc/build.properties        |    5 +
 features/org.yocto.sdk.doc/feature.properties      |  208 ++++++
 features/org.yocto.sdk.doc/feature.xml             |   40 ++
 features/org.yocto.sdk.doc/license.html            |  237 +++++++
 .../sourceTemplateFeature/feature.properties       |  208 ++++++
 .../sourceTemplateFeature/license.html             |  237 +++++++
 features/org.yocto.sdk.site/category.xml           |    6 +
 features/org.yocto.sdk.site/site.xml               |    3 +
 features/org.yocto.sdk/feature.xml                 |    5 +
 plugins/org.yocto.sdk.doc.user/.classpath          |    6 +
 plugins/org.yocto.sdk.doc.user/.project            |   28 +
 .../.settings/org.eclipse.jdt.core.prefs           |    8 +
 .../org.yocto.sdk.doc.user/META-INF/MANIFEST.MF    |    8 +
 .../OSGI-INF/l10n/bundle.properties                |    3 +
 plugins/org.yocto.sdk.doc.user/about.html          |   82 +++
 plugins/org.yocto.sdk.doc.user/adt-manual-toc.xml  |   61 ++
 plugins/org.yocto.sdk.doc.user/build.properties    |   14 +
 .../html/adt-manual/ch01.html                      |   90 +++
 .../html/adt-manual/ch01s02.html                   |  166 +++++
 .../html/adt-manual/ch02.html                      |  450 +++++++++++++
 .../html/adt-manual/ch02s02.html                   |   56 ++
 .../html/adt-manual/ch02s03.html                   |  182 ++++++
 .../html/adt-manual/ch03.html                      |   97 +++
 .../html/adt-manual/ch03s02.html                   |   78 +++
 .../html/adt-manual/ch04.html                      |  675 ++++++++++++++++++++
 .../html/adt-manual/ch04s02.html                   |   94 +++
 .../html/adt-manual/ch04s03.html                   |   77 +++
 .../html/adt-manual/ch04s04.html                   |   37 ++
 .../html/adt-manual/ch04s05.html                   |   65 ++
 .../html/adt-manual/ch04s06.html                   |  100 +++
 .../html/adt-manual/ch04s07.html                   |  161 +++++
 .../html/adt-manual/ch04s08.html                   |  184 ++++++
 .../html/adt-manual/ch05.html                      |  112 ++++
 .../html/adt-manual/ch05s02.html                   |   41 ++
 .../html/adt-manual/index.html                     |  260 ++++++++
 plugins/org.yocto.sdk.doc.user/html/book.css       |    1 +
 .../yocto-project-qs/figures/building-an-image.png |  Bin 0 -> 14891 bytes
 .../figures/using-a-pre-built-image.png            |  Bin 0 -> 12733 bytes
 .../yocto-project-qs/figures/yocto-environment.png |  Bin 0 -> 73095 bytes
 .../figures/yocto-project-transp.png               |  Bin 0 -> 8626 bytes
 .../html/yocto-project-qs/index.html               |  542 ++++++++++++++++
 plugins/org.yocto.sdk.doc.user/plugin.xml          |   19 +
 plugins/org.yocto.sdk.doc.user/toc.xml             |    9 +
 .../yocto-project-qs-toc.xml                       |   32 +
 45 files changed, 4704 insertions(+), 0 deletions(-)
 create mode 100644 features/org.yocto.sdk.doc/.project
 create mode 100644 features/org.yocto.sdk.doc/build.properties
 create mode 100644 features/org.yocto.sdk.doc/feature.properties
 create mode 100644 features/org.yocto.sdk.doc/feature.xml
 create mode 100644 features/org.yocto.sdk.doc/license.html
 create mode 100644 features/org.yocto.sdk.doc/sourceTemplateFeature/feature.properties
 create mode 100644 features/org.yocto.sdk.doc/sourceTemplateFeature/license.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/.classpath
 create mode 100644 plugins/org.yocto.sdk.doc.user/.project
 create mode 100644 plugins/org.yocto.sdk.doc.user/.settings/org.eclipse.jdt.core.prefs
 create mode 100644 plugins/org.yocto.sdk.doc.user/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.sdk.doc.user/OSGI-INF/l10n/bundle.properties
 create mode 100644 plugins/org.yocto.sdk.doc.user/about.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/adt-manual-toc.xml
 create mode 100644 plugins/org.yocto.sdk.doc.user/build.properties
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch01.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch01s02.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02s02.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch02s03.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch03.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch03s02.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s02.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s03.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s04.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s05.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s06.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s07.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch04s08.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch05.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/ch05s02.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/index.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/book.css
 create mode 100755 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/building-an-image.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/using-a-pre-built-image.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/yocto-environment.png
 create mode 100755 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/yocto-project-transp.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/index.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/plugin.xml
 create mode 100644 plugins/org.yocto.sdk.doc.user/toc.xml
 create mode 100644 plugins/org.yocto.sdk.doc.user/yocto-project-qs-toc.xml

-- 
1.7.7.6


