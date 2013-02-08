Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 8905EE00515
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:21:39 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id EAC4D40037;
	Fri,  8 Feb 2013 13:41:09 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:21:17 +0100
Message-Id: <cover.1360314086.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 00/18][yocto-docs] Update eclipse help generation to support all documents
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
X-List-Received-Date: Fri, 08 Feb 2013 13:21:39 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

the generation of eclipse help files has been merged from the timo
branch to the master. Since the creation of the timo branch there have
been some changes to the master branch (e.g. new documentation,
renamed documentation).

This patch set does some cleanup for the renamed documentation and
adds eclipse help generation support to the new documentation.

01: Removes the 'the' from the document titles
02..04: Cleanup obsolete artifacts resulting from the merge
05..08: Add eclipse help generation for ref-manual
09..13: Add eclipse help generation for kernel-dev
14..18: Add eclipse help generation for profile-manual

Best regards,
Timo

Timo Mueller (18):
  documentation: Remove 'the' from title tags
  Makefile: Modify DOC filter for eclipse-generate target
  poky-ref-manual: Remove folder and eclipse artifacts
  ref-manual: Remove generated eclipse help
  .gitignore: Updated to ignore generated eclipse help of ref-manual
  Makefile: Remove duplicate parameters
  ref-manual: Added new customization file for eclipse help generation
  Makefile: logic to make all for ref-manual and cleanup
  kernel-dev: Move global parameters to customization file
  kernel-dev: Added Title tag
  .gitignore: Updated to ignore generated eclipse help of kernel-dev
  kernel-dev: Added new customization file for eclipse help generation
  Makefile: logic to make all for kernel-dev and cleanup
  profile-manual: Move global parameters to customization file
  profile-manual: Added Title tag
  .gitignore: Updated to ignore generated eclipse help of
    profile-manual
  profile-manual: Added new customization file for eclipse help
    generation
  Makefile: logic to make all for profile-manual and cleanup

 .gitignore                                         |    3 +
 documentation/Makefile                             |   53 +-
 documentation/adt-manual/adt-manual.xml            |    2 +-
 documentation/bsp-guide/bsp-guide.xml              |    2 +-
 documentation/dev-manual/dev-manual.xml            |    2 +-
 .../kernel-dev/kernel-dev-customization.xsl        |    9 +-
 .../kernel-dev-eclipse-customization.xsl           |   27 +
 documentation/kernel-dev/kernel-dev.xml            |    4 +-
 .../poky-ref-manual-eclipse-customization.xsl      |   27 -
 .../profile-manual-customization.xsl               |    9 +-
 .../profile-manual-eclipse-customization.xsl       |   27 +
 documentation/profile-manual/profile-manual.xml    |    4 +-
 .../poky-ref-manual/1.3-local-configuration.html   |   21 -
 .../eclipse/html/poky-ref-manual/1.3-recipes.html  |   29 -
 .../build-history-image-information.html           |   80 -
 .../build-history-package-information.html         |   58 -
 .../html/poky-ref-manual/build-overview.html       |   61 -
 .../building-an-image-using-gpl-components.html    |   23 -
 .../html/poky-ref-manual/centos-packages.html      |   69 -
 .../eclipse/html/poky-ref-manual/checksums.html    |  164 --
 .../eclipse/html/poky-ref-manual/debugging.html    |   43 -
 .../detailed-supported-distros.html                |   45 -
 .../enabling-and-disabling-build-history.html      |   62 -
 .../enabling-commercially-licensed-recipes.html    |   85 -
 .../examining-build-history-information.html       |   70 -
 .../eclipse/html/poky-ref-manual/faq.html          |  791 ------
 .../html/poky-ref-manual/fedora-packages.html      |   62 -
 .../poky-ref-manual/figures/buildhistory-web.png   |  Bin 49966 -> 0 bytes
 .../html/poky-ref-manual/figures/buildhistory.png  |  Bin 42062 -> 0 bytes
 .../html/poky-ref-manual/figures/poky-title.png    |  Bin 11592 -> 0 bytes
 .../future-development-and-limitations.html        |   33 -
 .../eclipse/html/poky-ref-manual/handbook.html     |   25 -
 .../eclipse/html/poky-ref-manual/index.html        |  327 ---
 .../eclipse/html/poky-ref-manual/index.xml         |    2 -
 .../html/poky-ref-manual/intro-getit-dev.html      |   26 -
 .../eclipse/html/poky-ref-manual/intro-getit.html  |   35 -
 .../html/poky-ref-manual/intro-manualoverview.html |   73 -
 .../html/poky-ref-manual/intro-requirements.html   |   23 -
 .../html/poky-ref-manual/intro-welcome.html        |   30 -
 .../eclipse/html/poky-ref-manual/intro.html        |   30 -
 .../poky-ref-manual/invalidating-shared-state.html |   53 -
 .../poky-ref-manual/license-flag-matching.html     |   91 -
 .../eclipse/html/poky-ref-manual/licenses.html     |   28 -
 .../html/poky-ref-manual/logging-with-bash.html    |   47 -
 .../html/poky-ref-manual/logging-with-python.html  |   45 -
 .../maintaining-build-output-quality.html          |   53 -
 .../migration-1.3-bblayers-conf.html               |   27 -
 .../migration-1.3-image-features.html              |   26 -
 .../poky-ref-manual/migration-1.3-nativesdk.html   |   25 -
 .../migration-1.3-proto=-in-src-uri.html           |   32 -
 .../migration-1.3-python-function-whitespace.html  |   29 -
 .../migration-1.3-removed-recipes.html             |   64 -
 .../migration-1.3-sstate-mirrors.html              |   36 -
 .../migration-1.3-task-recipes.html                |   39 -
 .../eclipse/html/poky-ref-manual/migration.html    |   31 -
 .../moving-to-the-yocto-project-1.3-release.html   |   20 -
 .../html/poky-ref-manual/opensuse-packages.html    |   60 -
 ...r-variables-related-to-commercial-licenses.html |   60 -
 .../html/poky-ref-manual/overall-architecture.html |   31 -
 .../poky-ref-manual/recipe-logging-mechanisms.html |   41 -
 .../poky-ref-manual/ref-bitbake-commandline.html   |   79 -
 .../poky-ref-manual/ref-bitbake-dependencies.html  |   34 -
 .../html/poky-ref-manual/ref-bitbake-fetchers.html |   43 -
 .../html/poky-ref-manual/ref-bitbake-parsing.html  |   93 -
 .../poky-ref-manual/ref-bitbake-providers.html     |   63 -
 .../html/poky-ref-manual/ref-bitbake-runtask.html  |   86 -
 .../html/poky-ref-manual/ref-bitbake-tasklist.html |   54 -
 .../eclipse/html/poky-ref-manual/ref-bitbake.html  |   48 -
 .../poky-ref-manual/ref-classes-autotools.html     |   52 -
 .../html/poky-ref-manual/ref-classes-base.html     |   28 -
 .../poky-ref-manual/ref-classes-binconfig.html     |   30 -
 .../html/poky-ref-manual/ref-classes-debian.html   |   22 -
 .../html/poky-ref-manual/ref-classes-devshell.html |   24 -
 .../poky-ref-manual/ref-classes-distutils.html     |   31 -
 .../poky-ref-manual/ref-classes-externalsrc.html   |   72 -
 .../html/poky-ref-manual/ref-classes-image.html    |   31 -
 .../html/poky-ref-manual/ref-classes-insane.html   |  105 -
 .../html/poky-ref-manual/ref-classes-kernel.html   |   36 -
 .../html/poky-ref-manual/ref-classes-others.html   |   24 -
 .../html/poky-ref-manual/ref-classes-package.html  |   73 -
 .../poky-ref-manual/ref-classes-packagegroup.html  |   33 -
 .../html/poky-ref-manual/ref-classes-perl.html     |   31 -
 .../poky-ref-manual/ref-classes-pkgconfig.html     |   27 -
 .../html/poky-ref-manual/ref-classes-sanity.html   |   25 -
 .../html/poky-ref-manual/ref-classes-siteinfo.html |   39 -
 .../ref-classes-src-distribute.html                |   43 -
 .../ref-classes-update-alternatives.html           |   48 -
 .../poky-ref-manual/ref-classes-update-rc.d.html   |   28 -
 .../html/poky-ref-manual/ref-classes-useradd.html  |   28 -
 .../eclipse/html/poky-ref-manual/ref-classes.html  |   61 -
 .../poky-ref-manual/ref-features-backfill.html     |   88 -
 .../html/poky-ref-manual/ref-features-distro.html  |   68 -
 .../html/poky-ref-manual/ref-features-image.html   |   73 -
 .../html/poky-ref-manual/ref-features-machine.html |   63 -
 .../eclipse/html/poky-ref-manual/ref-features.html |   60 -
 .../eclipse/html/poky-ref-manual/ref-images.html   |  137 -
 .../html/poky-ref-manual/ref-structure.html        |   98 -
 .../html/poky-ref-manual/ref-variables-glos.html   | 2800 --------------------
 .../ref-varlocality-config-distro.html             |   40 -
 .../ref-varlocality-config-local.html              |   42 -
 .../ref-varlocality-config-machine.html            |   41 -
 .../ref-varlocality-configuration.html             |   20 -
 .../ref-varlocality-recipe-build.html              |   33 -
 .../ref-varlocality-recipe-dependencies.html       |   33 -
 .../ref-varlocality-recipe-paths.html              |   29 -
 .../ref-varlocality-recipe-required.html           |   30 -
 .../poky-ref-manual/ref-varlocality-recipes.html   |   20 -
 .../html/poky-ref-manual/ref-varlocality.html      |   41 -
 ...d-packages-for-the-host-development-system.html |   22 -
 .../html/poky-ref-manual/resources-bugtracker.html |   20 -
 .../poky-ref-manual/resources-contributions.html   |   23 -
 .../html/poky-ref-manual/resources-intro.html      |   23 -
 .../html/poky-ref-manual/resources-irc.html        |   25 -
 .../html/poky-ref-manual/resources-links.html      |   42 -
 .../poky-ref-manual/resources-mailinglist.html     |   39 -
 .../eclipse/html/poky-ref-manual/resources.html    |   27 -
 .../html/poky-ref-manual/shared-state-cache.html   |   60 -
 .../eclipse/html/poky-ref-manual/shared-state.html |  134 -
 .../poky-ref-manual/structure-basic-top-level.html |   20 -
 .../structure-build-conf-bblayers.conf.html        |   23 -
 .../structure-build-conf-local.conf.html           |   37 -
 .../structure-build-conf-sanity_info.html          |   20 -
 .../poky-ref-manual/structure-build-downloads.html |   23 -
 .../structure-build-pseudodone.html                |   21 -
 .../structure-build-sstate-cache.html              |   23 -
 .../structure-build-tmp-buildstats.html            |   20 -
 .../poky-ref-manual/structure-build-tmp-cache.html |   22 -
 .../structure-build-tmp-deploy-deb.html            |   22 -
 .../structure-build-tmp-deploy-images.html         |   44 -
 .../structure-build-tmp-deploy-ipk.html            |   20 -
 .../structure-build-tmp-deploy-licenses.html       |   23 -
 .../structure-build-tmp-deploy-rpm.html            |   22 -
 .../structure-build-tmp-deploy.html                |   20 -
 .../poky-ref-manual/structure-build-tmp-log.html   |   24 -
 .../structure-build-tmp-pkgdata.html               |   21 -
 .../structure-build-tmp-stamps.html                |   24 -
 .../structure-build-tmp-sysroots.html              |   24 -
 .../poky-ref-manual/structure-build-tmp-work.html  |   52 -
 .../html/poky-ref-manual/structure-build-tmp.html  |   26 -
 .../html/poky-ref-manual/structure-build.html      |   15 -
 .../poky-ref-manual/structure-core-bitbake.html    |   40 -
 .../html/poky-ref-manual/structure-core-build.html |   33 -
 .../structure-core-meta-yocto-bsp.html             |   21 -
 .../poky-ref-manual/structure-core-meta-yocto.html |   21 -
 .../html/poky-ref-manual/structure-core-meta.html  |   23 -
 .../poky-ref-manual/structure-core-script.html     |   53 -
 .../poky-ref-manual/structure-core-scripts.html    |   28 -
 .../html/poky-ref-manual/structure-core.html       |   14 -
 .../poky-ref-manual/structure-meta-classes.html    |   30 -
 .../structure-meta-conf-distro.html                |   25 -
 .../structure-meta-conf-machine.html               |   25 -
 .../html/poky-ref-manual/structure-meta-conf.html  |   27 -
 .../html/poky-ref-manual/structure-meta-hob.html   |   22 -
 .../structure-meta-recipes-bsp.html                |   21 -
 .../structure-meta-recipes-connectivity.html       |   20 -
 .../structure-meta-recipes-core.html               |   21 -
 .../structure-meta-recipes-devtools.html           |   21 -
 .../structure-meta-recipes-extended.html           |   23 -
 .../structure-meta-recipes-gnome.html              |   20 -
 .../structure-meta-recipes-graphics.html           |   20 -
 .../structure-meta-recipes-kernel.html             |   21 -
 .../structure-meta-recipes-multimedia.html         |   20 -
 .../poky-ref-manual/structure-meta-recipes-qt.html |   20 -
 .../poky-ref-manual/structure-meta-recipes-rt.html |   21 -
 .../structure-meta-recipes-sato.html               |   21 -
 .../structure-meta-recipes-support.html            |   21 -
 .../structure-meta-recipes-txt.html                |   20 -
 .../html/poky-ref-manual/structure-meta-site.html  |   23 -
 .../poky-ref-manual/structure-meta-skeleton.html   |   20 -
 .../html/poky-ref-manual/structure-meta.html       |   21 -
 .../eclipse/html/poky-ref-manual/support.html      |   34 -
 .../html/poky-ref-manual/technical-details.html    |   50 -
 .../html/poky-ref-manual/tips-and-tricks.html      |   22 -
 .../html/poky-ref-manual/ubuntu-packages.html      |   60 -
 ...erstanding-what-the-build-history-contains.html |   25 -
 ...d-history-to-gather-image-information-only.html |   34 -
 .../html/poky-ref-manual/using-x32-right-now.html  |   70 -
 ...oky-LIC_FILES_CHKSUM-explanation-of-syntax.html |   58 -
 .../html/poky-ref-manual/usingpoky-build.html      |   24 -
 .../usingpoky-components-bitbake.html              |   66 -
 .../usingpoky-components-classes.html              |   24 -
 .../usingpoky-components-configuration.html        |   24 -
 .../usingpoky-components-metadata.html             |   29 -
 .../html/poky-ref-manual/usingpoky-components.html |   52 -
 .../usingpoky-configuring-LIC_FILES_CHKSUM.html    |   23 -
 .../usingpoky-debugging-bitbake.html               |   30 -
 .../usingpoky-debugging-buildfile.html             |   24 -
 .../usingpoky-debugging-dependencies.html          |   26 -
 .../usingpoky-debugging-others.html                |   34 -
 .../usingpoky-debugging-taskfailures.html          |   27 -
 .../usingpoky-debugging-taskrunning.html           |   68 -
 .../usingpoky-debugging-variables.html             |   22 -
 .../html/poky-ref-manual/usingpoky-debugging.html  |   26 -
 .../html/poky-ref-manual/usingpoky-install.html    |   28 -
 .../usingpoky-specifying-LIC_FILES_CHKSUM.html     |   57 -
 .../eclipse/html/poky-ref-manual/usingpoky.html    |   48 -
 .../eclipse/html/poky-ref-manual/x32.html          |   35 -
 .../ref-manual/eclipse/poky-ref-manual-toc.xml     |  217 --
 .../ref-manual-eclipse-customization.xsl           |   27 +
 documentation/ref-manual/ref-manual.xml            |    2 +-
 .../yocto-project-qs/yocto-project-qs.xml          |    2 +-
 201 files changed, 131 insertions(+), 11195 deletions(-)
 create mode 100644 documentation/kernel-dev/kernel-dev-eclipse-customization.xsl
 delete mode 100644 documentation/poky-ref-manual/poky-ref-manual-eclipse-customization.xsl
 create mode 100644 documentation/profile-manual/profile-manual-eclipse-customization.xsl
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/1.3-local-configuration.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/1.3-recipes.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/build-history-image-information.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/build-history-package-information.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/build-overview.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/building-an-image-using-gpl-components.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/centos-packages.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/checksums.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/debugging.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/detailed-supported-distros.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/enabling-and-disabling-build-history.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/enabling-commercially-licensed-recipes.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/examining-build-history-information.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/faq.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/fedora-packages.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/figures/buildhistory-web.png
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/figures/buildhistory.png
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/figures/poky-title.png
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/future-development-and-limitations.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/handbook.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/index.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/index.xml
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/intro-getit-dev.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/intro-getit.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/intro-manualoverview.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/intro-requirements.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/intro-welcome.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/intro.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/invalidating-shared-state.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/license-flag-matching.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/licenses.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/logging-with-bash.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/logging-with-python.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/maintaining-build-output-quality.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-bblayers-conf.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-image-features.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-nativesdk.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-proto=-in-src-uri.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-python-function-whitespace.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-removed-recipes.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-sstate-mirrors.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-task-recipes.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/migration.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/moving-to-the-yocto-project-1.3-release.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/opensuse-packages.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/other-variables-related-to-commercial-licenses.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/overall-architecture.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/recipe-logging-mechanisms.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-commandline.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-dependencies.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-fetchers.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-parsing.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-providers.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-runtask.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-tasklist.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-autotools.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-base.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-binconfig.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-debian.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-devshell.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-distutils.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-externalsrc.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-image.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-insane.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-kernel.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-others.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-package.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-packagegroup.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-perl.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-pkgconfig.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-sanity.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-siteinfo.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-src-distribute.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-update-alternatives.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-update-rc.d.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-useradd.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-backfill.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-distro.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-image.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-machine.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-images.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-structure.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-variables-glos.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-config-distro.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-config-local.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-config-machine.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-configuration.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-build.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-dependencies.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-paths.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-required.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipes.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/required-packages-for-the-host-development-system.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/resources-bugtracker.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/resources-contributions.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/resources-intro.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/resources-irc.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/resources-links.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/resources-mailinglist.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/resources.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/shared-state-cache.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/shared-state.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-basic-top-level.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-conf-bblayers.conf.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-conf-local.conf.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-conf-sanity_info.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-downloads.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-pseudodone.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-sstate-cache.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-buildstats.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-cache.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-deb.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-images.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-ipk.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-licenses.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-rpm.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-log.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-pkgdata.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-stamps.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-sysroots.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-work.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-bitbake.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-build.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-meta-yocto-bsp.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-meta-yocto.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-meta.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-script.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-scripts.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-classes.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-conf-distro.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-conf-machine.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-conf.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-hob.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-bsp.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-connectivity.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-core.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-devtools.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-extended.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-gnome.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-graphics.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-kernel.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-multimedia.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-qt.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-rt.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-sato.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-support.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-txt.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-site.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-skeleton.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/support.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/technical-details.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/tips-and-tricks.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/ubuntu-packages.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/understanding-what-the-build-history-contains.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/using-build-history-to-gather-image-information-only.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/using-x32-right-now.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-build.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-bitbake.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-classes.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-configuration.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-metadata.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-configuring-LIC_FILES_CHKSUM.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-bitbake.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-buildfile.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-dependencies.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-others.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-taskfailures.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-taskrunning.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-variables.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-install.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-specifying-LIC_FILES_CHKSUM.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky.html
 delete mode 100644 documentation/ref-manual/eclipse/html/poky-ref-manual/x32.html
 delete mode 100644 documentation/ref-manual/eclipse/poky-ref-manual-toc.xml
 create mode 100644 documentation/ref-manual/ref-manual-eclipse-customization.xsl

-- 
1.7.11.7


