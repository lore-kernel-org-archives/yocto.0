Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 8685AE004FE
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:21:39 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 9046C40238;
	Fri,  8 Feb 2013 13:41:10 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:21:21 +0100
Message-Id: <bb79645732f611720419085288300b2ac9a84cad.1360314086.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <abcbb4bad59de14a85decfce6537f580d795a5b8.1360314086.git.timo.mueller@bmw-carit.de>
References: <cover.1360314086.git.timo.mueller@bmw-carit.de>
	<7393f8a857c5434755f958d7c558debc904634a5.1360314086.git.timo.mueller@bmw-carit.de>
	<184ca006bc27634a3b6ae74e7c1cd8e6d8b420f2.1360314086.git.timo.mueller@bmw-carit.de>
	<abcbb4bad59de14a85decfce6537f580d795a5b8.1360314086.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360314086.git.timo.mueller@bmw-carit.de>
References: <cover.1360314086.git.timo.mueller@bmw-carit.de>
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 04/18] ref-manual: Remove generated eclipse help
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
X-List-Received-Date: Fri, 08 Feb 2013 13:21:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Timo Mueller <timo.mueller@bmw-carit.de>


Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
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
 186 files changed, 11126 deletions(-)
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

diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/1.3-local-configuration.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/1.3-local-configuration.html
deleted file mode 100644
index d4a9f08..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/1.3-local-configuration.html
+++ /dev/null
@@ -1,21 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>4.1.1. Local Configuration</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="moving-to-the-yocto-project-1.3-release.html" title="4.1. Moving to the Yocto Project 1.3 Release">
-<link rel="prev" href="moving-to-the-yocto-project-1.3-release.html" title="4.1. Moving to the Yocto Project 1.3 Release">
-<link rel="next" href="migration-1.3-sstate-mirrors.html" title="4.1.1.1. SSTATE_MIRRORS">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.1. Local Configuration">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="1.3-local-configuration"></a>4.1.1. Local Configuration</h3></div></div></div>
-<p>
-            Differences include changes for 
-            <a class="link" href="ref-variables-glos.html#var-SSTATE_MIRRORS" title="SSTATE_MIRRORS"><code class="filename">SSTATE_MIRRORS</code></a>
-            and <code class="filename">bblayers.conf</code>.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/1.3-recipes.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/1.3-recipes.html
deleted file mode 100644
index 6996694..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/1.3-recipes.html
+++ /dev/null
@@ -1,29 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>4.1.2. Recipes</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="moving-to-the-yocto-project-1.3-release.html" title="4.1. Moving to the Yocto Project 1.3 Release">
-<link rel="prev" href="migration-1.3-bblayers-conf.html" title="4.1.1.2. bblayers.conf">
-<link rel="next" href="migration-1.3-python-function-whitespace.html" title="4.1.2.1. Python Function Whitespace">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.2. Recipes">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="1.3-recipes"></a>4.1.2. Recipes</h3></div></div></div>
-<p>
-            Differences include changes for the following:
-            </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p>Python function whitespace</p></li>
-<li class="listitem"><p><code class="filename">proto=</code> in <code class="filename">SRC_URI</code></p></li>
-<li class="listitem"><p><code class="filename">nativesdk</code></p></li>
-<li class="listitem"><p>Task recipes</p></li>
-<li class="listitem"><p><code class="filename">IMAGE_FEATURES</code></p></li>
-<li class="listitem"><p>Removed recipes</p></li>
-</ul></div>
-<p>
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/build-history-image-information.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/build-history-image-information.html
deleted file mode 100644
index f1b0f9e..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/build-history-image-information.html
+++ /dev/null
@@ -1,80 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.4.2.2. Build History Image Information</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="understanding-what-the-build-history-contains.html" title="2.4.2. Understanding What the Build History Contains">
-<link rel="prev" href="build-history-package-information.html" title="2.4.2.1. Build History Package Information">
-<link rel="next" href="using-build-history-to-gather-image-information-only.html" title="2.4.2.3. Using Build History to Gather Image Information Only">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.4.2.2. Build History Image Information">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="build-history-image-information"></a>2.4.2.2. Build History Image Information</h4></div></div></div>
-<p>
-                The files produced for each image are as follows:
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em>build-id:</em></span>
-                        Human-readable information about the build configuration 
-                        and metadata source revisions.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>*.dot:</em></span>
-                        Dependency graphs for the image that are 
-                        compatible with <code class="filename">graphviz</code>.
-                        </p></li>
-<li class="listitem"><p><span class="emphasis"><em>files-in-image.txt:</em></span>
- 	                    A list of files in the image with permissions, 
-                        owner, group, size, and symlink information.
-                        </p></li>
-<li class="listitem"><p><span class="emphasis"><em>image-info.txt:</em></span>
-                        A text file containing name-value pairs with information 
-                        about the image.
-                        See the following listing example for more information.
-                        </p></li>
-<li class="listitem"><p><span class="emphasis"><em>installed-package-names.txt:</em></span>
-                        A list of installed packages by name only.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>installed-package-sizes.txt:</em></span>
-                        A list of installed packages ordered by size.
-                        </p></li>
-<li class="listitem"><p><span class="emphasis"><em>installed-packages.txt:</em></span>
-                        A list of installed packages with fuill package
-                        filenames.</p></li>
-</ul></div>
-<p>
-                </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-                    Installed package information is able to be gathered and
-                    produced even if package management is disabled for the final 
-                    image.
-                </div>
-<p>
-            </p>
-<p>
-                Here is an example of <code class="filename">image-info.txt</code>:
-                </p>
-<pre class="literallayout">
-     DISTRO = poky
-     DISTRO_VERSION = 1.1+snapshot-20120207
-     USER_CLASSES = image-mklibs image-prelink
-     IMAGE_CLASSES = image_types
-     IMAGE_FEATURES = debug-tweaks x11-base apps-x11-core \
-        package-management ssh-server-dropbear package-management
-     IMAGE_LINGUAS = en-us en-gb
-     IMAGE_INSTALL = task-core-boot task-base-extended
-     BAD_RECOMMENDATIONS = 
-     ROOTFS_POSTPROCESS_COMMAND = buildhistory_get_image_installed ;   rootfs_update_timestamp ;  
-     IMAGE_POSTPROCESS_COMMAND = buildhistory_get_imageinfo ; 
-     IMAGESIZE = 171816
-                </pre>
-<p>
-                Other than <code class="filename">IMAGESIZE</code>, which is the
-                total size of the files in the image in Kbytes, the 
-                name-value pairs are variables that may have influenced the 
-                content of the image. 
-                This information is often useful when you are trying to determine
-                why a change in the package or file listings has occurred.
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/build-history-package-information.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/build-history-package-information.html
deleted file mode 100644
index 370481d..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/build-history-package-information.html
+++ /dev/null
@@ -1,58 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.4.2.1. Build History Package Information</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="understanding-what-the-build-history-contains.html" title="2.4.2. Understanding What the Build History Contains">
-<link rel="prev" href="understanding-what-the-build-history-contains.html" title="2.4.2. Understanding What the Build History Contains">
-<link rel="next" href="build-history-image-information.html" title="2.4.2.2. Build History Image Information">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.4.2.1. Build History Package Information">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="build-history-package-information"></a>2.4.2.1. Build History Package Information</h4></div></div></div>
-<p>
-                The history for each package contains a text file that has
-                name-value pairs with information about the package. 
-                For example, <code class="filename">buildhistory/packages/core2-poky-linux/busybox/busybox/latest</code>
-                contains the following:
-                </p>
-<pre class="literallayout">
-     PV = 1.19.3
-     PR = r3
-     RDEPENDS = update-rc.d eglibc (&gt;= 2.13)
-     RRECOMMENDS = busybox-syslog busybox-udhcpc
-     PKGSIZE = 564701
-     FILES = /usr/bin/* /usr/sbin/* /usr/libexec/* /usr/lib/lib*.so.* \
-        /etc /com /var /bin/* /sbin/* /lib/*.so.* /usr/share/busybox \
-        /usr/lib/busybox/* /usr/share/pixmaps /usr/share/applications \ 
-        /usr/share/idl /usr/share/omf /usr/share/sounds /usr/lib/bonobo/servers
-     FILELIST = /etc/busybox.links /etc/init.d/hwclock.sh /bin/busybox /bin/sh
-                </pre>
-<p>
-                Most of these name-value pairs corresponds to variables used 
-                to produce the package.
-                The exceptions are <code class="filename">FILELIST</code>, which is the 
-                actual list of files in the package, and 
-                <code class="filename">PKGSIZE</code>, which is the total size of files 
-                in the package in bytes.
-            </p>
-<p>
-                There is also a file corresponding to the recipe from which the 
-                package came (e.g.  
-                <code class="filename">buildhistory/packages/core2-poky-linux/busybox/latest</code>):
-                </p>
-<pre class="literallayout">
-     PV = 1.19.3
-     PR = r3
-     DEPENDS = virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs \
-        virtual/libc update-rc.d-native
-     PACKAGES = busybox-httpd busybox-udhcpd busybox-udhcpc busybox-syslog \
-        busybox-mdev busybox-dbg busybox busybox-doc busybox-dev \
-        busybox-staticdev busybox-locale
-                </pre>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/build-overview.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/build-overview.html
deleted file mode 100644
index 4ee4185..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/build-overview.html
+++ /dev/null
@@ -1,61 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.1.1. Build Overview</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-build.html" title="2.1. Running a Build">
-<link rel="prev" href="usingpoky-build.html" title="2.1. Running a Build">
-<link rel="next" href="building-an-image-using-gpl-components.html" title="2.1.2. Building an Image Using GPL Components">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.1.1. Build Overview">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="build-overview"></a>2.1.1. Build Overview</h3></div></div></div>
-<p>
-            The first thing you need to do is set up the OpenEmbedded build environment by sourcing
-            the <a class="link" href="structure-core-script.html" title="5.1.10. oe-init-build-env">environment setup script</a> as follows:
-            </p>
-<pre class="literallayout">
-     $ source oe-init-build-env [build_dir]
-            </pre>
-<p>
-        </p>
-<p>
-            The <code class="filename">build_dir</code> is optional and specifies the directory the 
-            OpenEmbedded build system uses for the build - 
-            the <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>.
-            If you do not specify a Build Directory it defaults to <code class="filename">build</code>
-            in your current working directory.
-            A common practice is to use a different Build Directory for different targets. 
-            For example, <code class="filename">~/build/x86</code> for a <code class="filename">qemux86</code>
-            target, and <code class="filename">~/build/arm</code> for a <code class="filename">qemuarm</code> target.
-            See <a class="link" href="structure-core-script.html" title="5.1.10. oe-init-build-env">oe-init-build-env</a>
-            for more information on this script.
-        </p>
-<p>
-            Once the build environment is set up, you can build a target using:
-            </p>
-<pre class="literallayout">
-     $ bitbake &lt;target&gt;
-            </pre>
-<p>
-        </p>
-<p>
-            The <code class="filename">target</code> is the name of the recipe you want to build. 
-            Common targets are the images in <code class="filename">meta/recipes-core/images</code>,
-            <code class="filename">/meta/recipes-sato/images</code>, etc. all found in the 
-            <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>.
-            Or, the target can be the name of a recipe for a specific piece of software such as 
-            <span class="application">busybox</span>. 
-            For more details about the images the OpenEmbedded build system supports, see the 
-            "<a class="link" href="ref-images.html" title="Chapter 8. Images">Images</a>" chapter.
-        </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-            Building an image without GNU General Public License Version 3 (GPLv3) components
-            is only supported for minimal and base images.
-            See the "<a class="link" href="ref-images.html" title="Chapter 8. Images">Images</a>" chapter for more information.
-        </div>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/building-an-image-using-gpl-components.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/building-an-image-using-gpl-components.html
deleted file mode 100644
index 12073d5..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/building-an-image-using-gpl-components.html
+++ /dev/null
@@ -1,23 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.1.2. Building an Image Using GPL Components</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-build.html" title="2.1. Running a Build">
-<link rel="prev" href="build-overview.html" title="2.1.1. Build Overview">
-<link rel="next" href="usingpoky-install.html" title="2.2. Installing and Using the Result">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.1.2. Building an Image Using GPL Components">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="building-an-image-using-gpl-components"></a>2.1.2. Building an Image Using GPL Components</h3></div></div></div>
-<p>
-            When building an image using GPL components, you need to maintain your original 
-            settings and not switch back and forth applying different versions of the GNU
-            General Public License.  
-            If you rebuild using different versions of GPL, dependency errors might occur
-            due to some components not being rebuilt.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/centos-packages.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/centos-packages.html
deleted file mode 100644
index 05463bc..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/centos-packages.html
+++ /dev/null
@@ -1,69 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>1.3.2.4. CentOS Packages</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="required-packages-for-the-host-development-system.html" title="1.3.2. Required Packages for the Host Development System">
-<link rel="prev" href="opensuse-packages.html" title="1.3.2.3. OpenSUSE Packages">
-<link rel="next" href="intro-getit.html" title="1.4. Obtaining the Yocto Project">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.3.2.4. CentOS Packages">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="centos-packages"></a>1.3.2.4. CentOS Packages</h4></div></div></div>
-<p>
-                The following list shows the required packages by function
-                given a supported CentOS Linux distribution:
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem">
-<p><span class="emphasis"><em>Essentials:</em></span>
-                        Packages needed to build an image for a headless 
-                        system:
-                        </p>
-<pre class="literallayout">
-     $ sudo yum -y install gawk make wget tar bzip2 gzip python unzip perl patch \
-     diffutils diffstat git cpp gcc gcc-c++ glibc-devel texinfo chrpath
-                        </pre>
-</li>
-<li class="listitem">
-<p><span class="emphasis"><em>Graphical Extras:</em></span>
-                        Packages recommended if the host system has graphics support:
-                        </p>
-<pre class="literallayout">
-     $ sudo yum -y install SDL-devel xterm
-                        </pre>
-</li>
-<li class="listitem">
-<p><span class="emphasis"><em>Documentation:</em></span>
-                        Packages needed if you are going to build out the 
-                        Yocto Project documentation manuals:
-                        </p>
-<pre class="literallayout">
-     $ sudo yum -y install make docbook-style-dsssl docbook-style-xsl \
-     docbook-dtds docbook-utils fop libxslt
-                        </pre>
-</li>
-<li class="listitem">
-<p><span class="emphasis"><em>ADT Installer Extras:</em></span>
-                        Packages needed if you are going to be using the 
-                        <a class="link" href="../adt-manual/using-the-adt-installer.html" target="_self">Application Development Toolkit (ADT) Installer</a>:
-                        </p>
-<pre class="literallayout">
-     $ sudo yum -y install autoconf automake libtool glib2-devel
-                        </pre>
-</li>
-</ul></div>
-<p>
-                </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>Depending on the CentOS version you are using, other requirements 
-                    and dependencies might exist. 
-                    For details, you should look at the CentOS sections on the 
-                    <a class="ulink" href="https://wiki.yoctoproject.org/wiki/Poky/GettingStarted/Dependencies" target="_self">Poky/GettingStarted/Dependencies</a>
-                    wiki page.</div>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/checksums.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/checksums.html
deleted file mode 100644
index 5dccce9..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/checksums.html
+++ /dev/null
@@ -1,164 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.2.2. Checksums (Signatures)</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="shared-state-cache.html" title="3.2. Shared State Cache">
-<link rel="prev" href="overall-architecture.html" title="3.2.1. Overall Architecture">
-<link rel="next" href="shared-state.html" title="3.2.3. Shared State">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2.2. Checksums (Signatures)">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="checksums"></a>3.2.2. Checksums (Signatures)</h3></div></div></div>
-<p>
-            The shared state code uses a checksum, which is a unique signature of a task's 
-            inputs, to determine if a task needs to be run again. 
-            Because it is a change in a task's inputs that triggers a rerun, the process
-            needs to detect all the inputs to a given task. 
-            For shell tasks, this turns out to be fairly easy because
-            the build process generates a "run" shell script for each task and 
-            it is possible to create a checksum that gives you a good idea of when 
-            the task's data changes.
-        </p>
-<p>
-            To complicate the problem, there are things that should not be included in 
-            the checksum. 
-            First, there is the actual specific build path of a given task - 
-            the <code class="filename">WORKDIR</code>. 
-            It does not matter if the working directory changes because it should not 
-            affect the output for target packages.
-            Also, the build process has the objective of making native/cross packages relocatable. 
-            The checksum therefore needs to exclude <code class="filename">WORKDIR</code>.
-            The simplistic approach for excluding the working directory is to set 
-            <code class="filename">WORKDIR</code> to some fixed value and create the checksum
-            for the "run" script. 
-        </p>
-<p>
-            Another problem results from the "run" scripts containing functions that 
-            might or might not get called.  
-            The incremental build solution contains code that figures out dependencies 
-            between shell functions.
-            This code is used to prune the "run" scripts down to the minimum set, 
-            thereby alleviating this problem and making the "run" scripts much more 
-            readable as a bonus.
-        </p>
-<p>
-            So far we have solutions for shell scripts.
-            What about python tasks?
-            The same approach applies even though these tasks are more difficult.
-            The process needs to figure out what variables a python function accesses 
-            and what functions it calls.
-            Again, the incremental build solution contains code that first figures out 
-            the variable and function dependencies, and then creates a checksum for the data 
-            used as the input to the task.
-        </p>
-<p>
-            Like the <code class="filename">WORKDIR</code> case, situations exist where dependencies 
-            should be ignored.
-            For these cases, you can instruct the build process to ignore a dependency
-            by using a line like the following:
-            </p>
-<pre class="literallayout">
-     PACKAGE_ARCHS[vardepsexclude] = "MACHINE"
-            </pre>
-<p>
-            This example ensures that the <code class="filename">PACKAGE_ARCHS</code> variable does not 
-            depend on the value of <code class="filename">MACHINE</code>, even if it does reference it.
-        </p>
-<p>
-            Equally, there are cases where we need to add dependencies BitBake is not able to find.
-            You can accomplish this by using a line like the following:
-            </p>
-<pre class="literallayout">
-      PACKAGE_ARCHS[vardeps] = "MACHINE"
-            </pre>
-<p>
-            This example explicitly adds the <code class="filename">MACHINE</code> variable as a 
-            dependency for <code class="filename">PACKAGE_ARCHS</code>.
-        </p>
-<p> 
-            Consider a case with inline python, for example, where BitBake is not
-            able to figure out dependencies. 
-            When running in debug mode (i.e. using <code class="filename">-DDD</code>), BitBake 
-            produces output when it discovers something for which it cannot figure out
-            dependencies. 
-            The Yocto Project team has currently not managed to cover those dependencies 
-            in detail and is aware of the need to fix this situation.
-        </p>
-<p>
-            Thus far, this section has limited discussion to the direct inputs into a task.
-            Information based on direct inputs is referred to as the "basehash" in the
-            code. 
-            However, there is still the question of a task's indirect inputs - the
-            things that were already built and present in the Build Directory. 
-            The checksum (or signature) for a particular task needs to add the hashes 
-            of all the tasks on which the particular task depends. 
-            Choosing which dependencies to add is a policy decision. 
-            However, the effect is to generate a master checksum that combines the basehash 
-            and the hashes of the task's dependencies.
-        </p>
-<p>
-            At the code level, there are a variety of ways both the basehash and the
-            dependent task hashes can be influenced. 
-            Within the BitBake configuration file, we can give BitBake some extra information 
-            to help it construct the basehash.
-            The following statements effectively result in a list of global variable
-            dependency excludes - variables never included in any checksum:
-            </p>
-<pre class="literallayout">
-  BB_HASHBASE_WHITELIST ?= "TMPDIR FILE PATH PWD BB_TASKHASH BBPATH"
-  BB_HASHBASE_WHITELIST += "DL_DIR SSTATE_DIR THISDIR FILESEXTRAPATHS"
-  BB_HASHBASE_WHITELIST += "FILE_DIRNAME HOME LOGNAME SHELL TERM USER"
-  BB_HASHBASE_WHITELIST += "FILESPATH USERNAME STAGING_DIR_HOST STAGING_DIR_TARGET"
-            </pre>
-<p>
-            The previous example actually excludes 
-            <a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR"><code class="filename">WORKDIR</code></a>
-            since it is actually constructed as a path within 
-            <a class="link" href="ref-variables-glos.html#var-TMPDIR" title="TMPDIR"><code class="filename">TMPDIR</code></a>, which is on 
-            the whitelist. 
-        </p>
-<p>
-            The rules for deciding which hashes of dependent tasks to include through
-            dependency chains are more complex and are generally accomplished with a 
-            python function. 
-            The code in <code class="filename">meta/lib/oe/sstatesig.py</code> shows two examples
-            of this and also illustrates how you can insert your own policy into the system 
-            if so desired.
-            This file defines the two basic signature generators <code class="filename">OE-Core</code>
-            uses:  "OEBasic" and "OEBasicHash". 
-            By default, there is a dummy "noop" signature handler enabled in BitBake. 
-            This means that behavior is unchanged from previous versions. 
-            <code class="filename">OE-Core</code> uses the "OEBasic" signature handler by default
-            through this setting in the <code class="filename">bitbake.conf</code> file:
-            </p>
-<pre class="literallayout">
-  BB_SIGNATURE_HANDLER ?= "OEBasic"
-            </pre>
-<p>
-            The "OEBasicHash" <code class="filename">BB_SIGNATURE_HANDLER</code> is the same as the 
-            "OEBasic" version but adds the task hash to the stamp files. 
-            This results in any metadata change that changes the task hash, automatically 
-            causing the task to be run again. 
-            This removes the need to bump <a class="link" href="ref-variables-glos.html#var-PR" title="PR"><code class="filename">PR</code></a>
-            values and changes to metadata automatically ripple across the build. 
-            Currently, this behavior is not the default behavior for <code class="filename">OE-Core</code>
-            but is the default in <code class="filename">poky</code>.
-        </p>
-<p>
-            It is also worth noting that the end result of these signature generators is to
-            make some dependency and hash information available to the build. 
-            This information includes:
-            </p>
-<pre class="literallayout">
-  BB_BASEHASH_task-&lt;taskname&gt; - the base hashes for each task in the recipe
-  BB_BASEHASH_&lt;filename:taskname&gt; - the base hashes for each dependent task
-  BBHASHDEPS_&lt;filename:taskname&gt; - The task dependencies for each task
-  BB_TASKHASH - the hash of the currently running task
-            </pre>
-<p>
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/debugging.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/debugging.html
deleted file mode 100644
index 80a19f9..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/debugging.html
+++ /dev/null
@@ -1,43 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.2.4.1. Debugging</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="tips-and-tricks.html" title="3.2.4. Tips and Tricks">
-<link rel="prev" href="tips-and-tricks.html" title="3.2.4. Tips and Tricks">
-<link rel="next" href="invalidating-shared-state.html" title="3.2.4.2. Invalidating Shared State">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2.4.1. Debugging">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="debugging"></a>3.2.4.1. Debugging</h4></div></div></div>
-<p>
-                When things go wrong, debugging needs to be straightforward. 
-                Because of this, the Yocto Project team included strong debugging
-                tools:
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p>Whenever a shared state package is written out, so is a
-                        corresponding <code class="filename">.siginfo</code> file. 
-                        This practice results in a pickled python database of all
-                        the metadata that went into creating the hash for a given shared state
-                        package.</p></li>
-<li class="listitem"><p>If BitBake is run with the <code class="filename">--dump-signatures</code>
-                        (or <code class="filename">-S</code>) option, BitBake dumps out 
-                        <code class="filename">.siginfo</code> files in
-                        the stamp directory for every task it would have executed instead of
-                        building the specified target package.</p></li>
-<li class="listitem"><p>There is a <code class="filename">bitbake-diffsigs</code> command that
-                        can process these <code class="filename">.siginfo</code> files. 
-                        If one file is specified, it will dump out the dependency
-                        information in the file. 
-                        If two files are specified, it will compare the two files and dump out 
-                        the differences between the two.
-                        This allows the question of "What changed between X and Y?" to be
-                        answered easily.</p></li>
-</ul></div>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/detailed-supported-distros.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/detailed-supported-distros.html
deleted file mode 100644
index 6222ae5..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/detailed-supported-distros.html
+++ /dev/null
@@ -1,45 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>1.3.1. Supported Linux Distributions</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="intro-requirements.html" title="1.3. System Requirements">
-<link rel="prev" href="intro-requirements.html" title="1.3. System Requirements">
-<link rel="next" href="required-packages-for-the-host-development-system.html" title="1.3.2. Required Packages for the Host Development System">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.3.1. Supported Linux Distributions">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="detailed-supported-distros"></a>1.3.1. Supported Linux Distributions</h3></div></div></div>
-<p>
-            Currently, the Yocto Project is supported on the following distributions:
-            </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p>Ubuntu 10.04.4 LTS</p></li>
-<li class="listitem"><p>Ubuntu 11.10</p></li>
-<li class="listitem"><p>Ubuntu 12.04.1 LTS</p></li>
-<li class="listitem"><p>Ubuntu 12.04.1 LTS</p></li>
-<li class="listitem"><p>Ubuntu 12.10</p></li>
-<li class="listitem"><p>Fedora release 16 (Verne)</p></li>
-<li class="listitem"><p>Fedora release 17 (Beefy Miracle)</p></li>
-<li class="listitem"><p>Fedora release 18 (Spherical Cow)</p></li>
-<li class="listitem"><p>CentOS release 5.6 (Final)</p></li>
-<li class="listitem"><p>CentOS release 5.7 (Final)</p></li>
-<li class="listitem"><p>CentOS release 5.8 (Final)</p></li>
-<li class="listitem"><p>CentOS release 6.3 (Final)</p></li>
-<li class="listitem"><p>Debian GNU/Linux 6.0.6 (squeeze)</p></li>
-<li class="listitem"><p>openSUSE 11.4</p></li>
-<li class="listitem"><p>openSUSE 12.1</p></li>
-<li class="listitem"><p>openSUSE 12.2</p></li>
-</ul></div>
-<p>
-        </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-            For additional information on distributions that support the 
-            Yocto Project, see the 
-            <a class="ulink" href="https://wiki.yoctoproject.org/wiki/Distribution_Support" target="_self">Distribution Support</a> wiki page.
-        </div>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/enabling-and-disabling-build-history.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/enabling-and-disabling-build-history.html
deleted file mode 100644
index 06be8f5..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/enabling-and-disabling-build-history.html
+++ /dev/null
@@ -1,62 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.4.1. Enabling and Disabling Build History</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="maintaining-build-output-quality.html" title="2.4. Maintaining Build Output Quality">
-<link rel="prev" href="maintaining-build-output-quality.html" title="2.4. Maintaining Build Output Quality">
-<link rel="next" href="understanding-what-the-build-history-contains.html" title="2.4.2. Understanding What the Build History Contains">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.4.1. Enabling and Disabling Build History">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="enabling-and-disabling-build-history"></a>2.4.1. Enabling and Disabling Build History</h3></div></div></div>
-<p>
-            Build history is disabled by default.
-            To enable it, add the following statements to the end of your 
-            <code class="filename">conf/local.conf</code> file found in the 
-            <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>:
-            </p>
-<pre class="literallayout">
-     INHERIT += "buildhistory"
-     BUILDHISTORY_COMMIT = "1"
-            </pre>
-<p>
-            Enabling build history as previously described 
-            causes the build process to collect build
-            output information and commit it to a local 
-            <a class="link" href="../dev-manual/git.html" target="_self">Git</a> repository.
-            </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-                Enabling build history increases your build times slightly, 
-                particularly for images, and increases the amount of disk
-                space used during the build.
-            </div>
-<p> 
-        </p>
-<p>
-            You can disable build history by removing the previous statements
-            from your <code class="filename">conf/local.conf</code> file.
-            However, you should realize that enabling and disabling 
-            build history in this manner can change the 
-            <code class="filename">do_package</code> task checksums, which if you 
-            are using the OEBasicHash signature generator (the default 
-            for many current distro configurations including
-            <code class="filename">DISTRO = "poky"</code> and 
-            <code class="filename">DISTRO = ""</code>) will result in the packaging 
-            tasks being re-run during the subsequent build.
-        </p>
-<p>
-            To disable the build history functionality without causing the 
-            packaging tasks to be re-run, add just this statement to your 
-            <code class="filename">conf/local.conf</code> file:               
-            </p>
-<pre class="literallayout">
-     BUILDHISTORY_FEATURES = ""
-            </pre>
-<p>
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/enabling-commercially-licensed-recipes.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/enabling-commercially-licensed-recipes.html
deleted file mode 100644
index 9ecf3cc..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/enabling-commercially-licensed-recipes.html
+++ /dev/null
@@ -1,85 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.4.2. Enabling Commercially Licensed Recipes</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="licenses.html" title="3.4. Licenses">
-<link rel="prev" href="usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax.html" title="3.4.1.2. Explanation of Syntax">
-<link rel="next" href="license-flag-matching.html" title="3.4.2.1. License Flag Matching">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.2. Enabling Commercially Licensed Recipes">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="enabling-commercially-licensed-recipes"></a>3.4.2. Enabling Commercially Licensed Recipes</h3></div></div></div>
-<p>
-            By default, the OpenEmbedded build system disables
-            components that have commercial or other special licensing
-            requirements.  
-            Such requirements are defined on a
-            recipe-by-recipe basis through the <code class="filename">LICENSE_FLAGS</code> variable
-            definition in the affected recipe.  
-            For instance, the
-            <code class="filename">$HOME/poky/meta/recipes-multimedia/gstreamer/gst-plugins-ugly</code>
-            recipe contains the following statement:
-            </p>
-<pre class="literallayout">
-     LICENSE_FLAGS = "commercial"
-            </pre>
-<p>
-            Here is a slightly more complicated example that contains both an
-            explicit recipe name and version (after variable expansion):
-            </p>
-<pre class="literallayout">
-     LICENSE_FLAGS = "license_${PN}_${PV}"
-            </pre>
-<p>
-	        In order for a component restricted by a <code class="filename">LICENSE_FLAGS</code>
-	        definition to be enabled and included in an image, it
-	        needs to have a matching entry in the global
-	        <code class="filename">LICENSE_FLAGS_WHITELIST</code> variable, which is a variable
-	        typically defined in your <code class="filename">local.conf</code> file.  
-            For example, to enable
-	        the <code class="filename">$HOME/poky/meta/recipes-multimedia/gstreamer/gst-plugins-ugly</code>
-	        package, you could add either the string
-	        "commercial_gst-plugins-ugly" or the more general string
-	        "commercial" to <code class="filename">LICENSE_FLAGS_WHITELIST</code>.
-            See the
-            "<a class="link" href="license-flag-matching.html" title="3.4.2.1. License Flag Matching">License Flag Matching</a>" section
-            for a full explanation of how <code class="filename">LICENSE_FLAGS</code> matching works.
-            Here is the example:
-            </p>
-<pre class="literallayout">
-     LICENSE_FLAGS_WHITELIST = "commercial_gst-plugins-ugly"
-            </pre>
-<p>
-	        Likewise, to additionally enable the package built from the recipe containing
-	        <code class="filename">LICENSE_FLAGS = "license_${PN}_${PV}"</code>, and assuming
-	        that the actual recipe name was <code class="filename">emgd_1.10.bb</code>,
-	        the following string would enable that package as well as
-	        the original <code class="filename">gst-plugins-ugly</code> package:
-            </p>
-<pre class="literallayout">
-     LICENSE_FLAGS_WHITELIST = "commercial_gst-plugins-ugly license_emgd_1.10"
-            </pre>
-<p>
-	        As a convenience, you do not need to specify the complete license string
-	        in the whitelist for every package.
-            you can use an abbreviated form, which consists
-	        of just the first portion or portions of the license string before
-	        the initial underscore character or characters.
-            A partial string will match
-	        any license that contains the given string as the first
-	        portion of its license.  
-            For example, the following
-	        whitelist string will also match both of the packages
-	        previously mentioned as well as any other packages that have
-	        licenses starting with "commercial" or "license".
-            </p>
-<pre class="literallayout">
-     LICENSE_FLAGS_WHITELIST = "commercial license"
-            </pre>
-<p>
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/examining-build-history-information.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/examining-build-history-information.html
deleted file mode 100644
index 0fa3f74..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/examining-build-history-information.html
+++ /dev/null
@@ -1,70 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.4.2.4. Examining Build History Information</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="understanding-what-the-build-history-contains.html" title="2.4.2. Understanding What the Build History Contains">
-<link rel="prev" href="using-build-history-to-gather-image-information-only.html" title="2.4.2.3. Using Build History to Gather Image Information Only">
-<link rel="next" href="technical-details.html" title="Chapter 3. Technical Details">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.4.2.4. Examining Build History Information">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="examining-build-history-information"></a>2.4.2.4. Examining Build History Information</h4></div></div></div>
-<p>
-                You can examine build history output from the command line or 
-                from a web interface.
-            </p>
-<p>
-                To see any changes that have occurred (assuming you have 
-                <code class="filename">BUILDHISTORY_COMMIT = "1"</code>), you can simply 
-                use any Git command that allows you to view the history of 
-                a repository. 
-                Here is one method:
-                </p>
-<pre class="literallayout">
-      $ git log -p 
-                </pre>
-<p>
-                You need to realize, however, that this method does show 
-                changes that are not significant (e.g. a package's size 
-                changing by a few bytes).
-            </p>
-<p>
-                A command-line tool called <code class="filename">buildhistory-diff</code>
-                does exist though that queries the Git repository and prints just 
-                the differences that might be significant in human-readable form. 
-                Here is an example:
-                </p>
-<pre class="literallayout">
-     $ ~/poky/poky/scripts/buildhistory-diff . HEAD^
-     Changes to images/qemux86_64/eglibc/core-image-minimal (files-in-image.txt):
-        /etc/anotherpkg.conf was added
-        /sbin/anotherpkg was added
-        * (installed-package-names.txt):
-        *   anotherpkg was added
-     Changes to images/qemux86_64/eglibc/core-image-minimal (installed-package-names.txt):
-        anotherpkg was added
-     packages/qemux86_64-poky-linux/v86d: PACKAGES: added "v86d-extras"
-        * PR changed from "r0" to "r1"
-        * PV changed from "0.1.10" to "0.1.12"
-     packages/qemux86_64-poky-linux/v86d/v86d: PKGSIZE changed from 110579 to 144381 (+30%)
-        * PR changed from "r0" to "r1"
-        * PV changed from "0.1.10" to "0.1.12"
-                </pre>
-<p>
-            </p>
-<p>
-                To see changes to the build history using a web interface, follow    
-                the instruction in the <code class="filename">README</code> file here.
-                <a class="ulink" href="http://git.yoctoproject.org/cgit/cgit.cgi/buildhistory-web/" target="_self">http://git.yoctoproject.org/cgit/cgit.cgi/buildhistory-web/</a>.
-            </p>
-<p>
-                Here is a sample screenshot of the interface:
-                </p>
-<table border="0" summary="manufactured viewport for HTML img" cellspacing="0" cellpadding="0" width="130%"><tr><td align="center"><img src="figures/buildhistory-web.png" align="middle" height="468"></td></tr></table>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/faq.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/faq.html
deleted file mode 100644
index 8b8cafb..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/faq.html
+++ /dev/null
@@ -1,791 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>Chapter 12. FAQ</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="prev" href="ref-varlocality-recipe-build.html" title="11.2.4. Extra Build Information">
-<link rel="next" href="resources.html" title="Chapter 13. Contributing to the Yocto Project">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 12. FAQ">
-<div class="titlepage"><div><div><h2 class="title">
-<a name="faq"></a>Chapter 12. FAQ</h2></div></div></div>
-<div class="qandaset" title="Frequently Asked Questions">
-<a name="idm1966160"></a><dl>
-<dt>12.1. <a href="faq.html#idm1965696">
-                How does Poky differ from OpenEmbedded?
-            </a>
-</dt>
-<dt>12.2. <a href="faq.html#idm1961792">
-                I only have Python 2.4 or 2.5 but BitBake requires Python 2.6 or 2.7.
-                Can I still use the Yocto Project?
-            </a>
-</dt>
-<dt>12.3. <a href="faq.html#idm2605168">
-                How can you claim Poky / OpenEmbedded-Core is stable?
-            </a>
-</dt>
-<dt>12.4. <a href="faq.html#idm3232752">
-                How do I get support for my board added to the Yocto Project?
-            </a>
-</dt>
-<dt>12.5. <a href="faq.html#idm3230416">
-                Are there any products built using the OpenEmbedded build system?
-            </a>
-</dt>
-<dt>12.6. <a href="faq.html#idm3227696">
-                What does the OpenEmbedded build system produce as output?
-            </a>
-</dt>
-<dt>12.7. <a href="faq.html#idm5359408">
-                How do I add my package to the Yocto Project?
-            </a>
-</dt>
-<dt>12.8. <a href="faq.html#idm5357680">
-                Do I have to reflash my entire board with a new Yocto Project image when recompiling 
-                a package?
-            </a>
-</dt>
-<dt>12.9. <a href="faq.html#idm5354224">
-                What is GNOME Mobile and what is the difference between GNOME Mobile and GNOME?
-            </a>
-</dt>
-<dt>12.10. <a href="faq.html#idm2088960">
-                I see the error 'chmod: XXXXX new permissions are r-xrwxrwx, not r-xr-xr-x'.
-                What is wrong?
-            </a>
-</dt>
-<dt>12.11. <a href="faq.html#idm2085168">
-                How do I make the Yocto Project work in RHEL/CentOS?
-            </a>
-</dt>
-<dt>12.12. <a href="faq.html#idm3829808">
-                I see lots of 404 responses for files on 
-                http://www.yoctoproject.org/sources/*. Is something wrong?
-            </a>
-</dt>
-<dt>12.13. <a href="faq.html#idm3827408">
-                I have machine-specific data in a package for one machine only but the package is 
-                being marked as machine-specific in all cases, how do I prevent this?
-            </a>
-</dt>
-<dt>12.14. <a href="faq.html#idm5331776">
-                I'm behind a firewall and need to use a proxy server. How do I do that?
-            </a>
-</dt>
-<dt>12.15. <a href="faq.html#idm1524432">
-                What&#8217;s the difference between foo and foo-native?
-            </a>
-</dt>
-<dt>12.16. <a href="faq.html#idm1520336">
-                I'm seeing random build failures. Help?!
-            </a>
-</dt>
-<dt>12.17. <a href="faq.html#idm4636672">
-                What do we need to ship for license compliance?
-            </a>
-</dt>
-<dt>12.18. <a href="faq.html#idm4635216">
-                How do I disable the cursor on my touchscreen device?
-            </a>
-</dt>
-<dt>12.19. <a href="faq.html#idm4631744">
-                How do I make sure connected network interfaces are brought up by default?
-            </a>
-</dt>
-<dt>12.20. <a href="faq.html#idm3888832">
-                How do I create images with more free space?
-            </a>
-</dt>
-<dt>12.21. <a href="faq.html#idm619504">
-                Why don't you support directories with spaces in the pathnames?
-            </a>
-</dt>
-<dt>12.22. <a href="faq.html#idm617456">
-                How do I use an external toolchain?
-            </a>
-</dt>
-<dt>12.23. <a href="faq.html#idm4577168">
-                How does the OpenEmbedded build system obtain source code and will it work behind my 
-                firewall or proxy server?
-            </a>
-</dt>
-<dt>12.24. <a href="faq.html#idm3953616">
-                Can I get rid of build output so I can start over?
-            </a>
-</dt>
-</dl>
-<table border="0" width="100%" summary="Q and A Set">
-<col align="left" width="1%">
-<col>
-<tbody>
-<tr class="question" title="12.1.">
-<td align="left" valign="top">
-<a name="idm1965696"></a><a name="idm1965568"></a><p><b>12.1.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                How does Poky differ from <a class="ulink" href="http://www.openembedded.org" target="_self">OpenEmbedded</a>?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top"><p>
-                The term "Poky" refers to the specific reference build system that
-                the Yocto Project provides.
-                Poky is based on <a class="link" href="../dev-manual/oe-core.html" target="_self">OE-Core</a>
-                and BitBake.
-                Thus, the generic term used here for the build system is
-                the "OpenEmbedded build system."
-                Development in the Yocto Project using Poky is closely tied to OpenEmbedded, with 
-                changes always being merged to OE-Core or BitBake first before being pulled back
-                into Poky.
-                This practice benefits both projects immediately.
-                For a fuller description of the term "Poky", see the 
-                <a class="link" href="../dev-manual/poky.html" target="_self">poky</a> term in the Yocto Project
-                Development Manual.
-            </p></td>
-</tr>
-<tr class="question" title="12.2.">
-<td align="left" valign="top">
-<a name="idm1961792"></a><a name="idm1961664"></a><p><b>12.2.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                I only have Python 2.4 or 2.5 but BitBake requires Python 2.6 or 2.7.
-                Can I still use the Yocto Project?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top">
-<p>
-                You can use a stand-alone tarball to provide Python 2.6.
-                You can find pre-built 32 and 64-bit versions of Python 2.6 at the following locations:
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><a class="ulink" href="http://downloads.yoctoproject.org/releases/miscsupport/python-nativesdk-standalone-i686.tar.bz2" target="_self">32-bit tarball</a></p></li>
-<li class="listitem"><p><a class="ulink" href="http://downloads.yoctoproject.org/releases/miscsupport/python-nativesdk-standalone-x86_64.tar.bz2" target="_self">64-bit tarball</a></p></li>
-</ul></div>
-<p>
-            </p>
-<p>
-                These tarballs are self-contained with all required libraries and should work 
-                on most Linux systems.  
-                To use the tarballs extract them into the root 
-                directory and run the appropriate command:
-                </p>
-<pre class="literallayout">
-     $ export PATH=/opt/poky/sysroots/i586-pokysdk-linux/usr/bin/:$PATH
-     $ export PATH=/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/:$PATH
-                </pre>
-<p>
-            </p>
-<p>
-                Once you run the command, BitBake uses Python 2.6.
-            </p>
-</td>
-</tr>
-<tr class="question" title="12.3.">
-<td align="left" valign="top">
-<a name="idm2605168"></a><a name="idm2605040"></a><p><b>12.3.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                How can you claim Poky / OpenEmbedded-Core is stable?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top">
-<p>
-                There are three areas that help with stability;
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p>The Yocto Project team keeps 
-                        <a class="link" href="../dev-manual/oe-core.html" target="_self">OE-Core</a> small
-                        and focused, containing around 830 recipes as opposed to the thousands
-                        available in other OpenEmbedded community layers.
-                        Keeping it small makes it easy to test and maintain.</p></li>
-<li class="listitem"><p>The Yocto Project team runs manual and automated tests 
-                        using a small, fixed set of reference hardware as well as emulated
-                        targets.</p></li>
-<li class="listitem"><p>The Yocto Project uses an an autobuilder,
-                        which provides continuous build and integration tests.</p></li>
-</ul></div>
-<p>
-            </p>
-</td>
-</tr>
-<tr class="question" title="12.4.">
-<td align="left" valign="top">
-<a name="idm3232752"></a><a name="idm3232624"></a><p><b>12.4.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                How do I get support for my board added to the Yocto Project?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top">
-<p>
-                Support for an additional board is added by creating a BSP layer for it.
-                For more information on how to create a BSP layer, see the
-                <a class="link" href="../bsp-guide/index.html" target="_self">Yocto Project Board Support Package (BSP) Developer's Guide</a>.
-            </p>
-<p>
-                Usually, if the board is not completely exotic, adding support in 
-                the Yocto Project is fairly straightforward.
-            </p>
-</td>
-</tr>
-<tr class="question" title="12.5.">
-<td align="left" valign="top">
-<a name="idm3230416"></a><a name="idm3230288"></a><p><b>12.5.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                Are there any products built using the OpenEmbedded build system?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top"><p>
-                The software running on the <a class="ulink" href="http://vernier.com/labquest/" target="_self">Vernier LabQuest</a>
-                is built using the OpenEmbedded build system.  
-                See the <a class="ulink" href="http://www.vernier.com/products/interfaces/labq/" target="_self">Vernier LabQuest</a>
-                website for more information.
-                There are a number of pre-production devices using the OpenEmbedded build system 
-                and the Yocto Project team
-                announces them as soon as they are released.
-            </p></td>
-</tr>
-<tr class="question" title="12.6.">
-<td align="left" valign="top">
-<a name="idm3227696"></a><a name="idm3227568"></a><p><b>12.6.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                What does the OpenEmbedded build system produce as output?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top"><p>
-                Because the same set of recipes can be used to create output of various formats, the 
-                output of an OpenEmbedded build depends on how it was started. 
-                Usually, the output is a flashable image ready for the target device.
-            </p></td>
-</tr>
-<tr class="question" title="12.7.">
-<td align="left" valign="top">
-<a name="idm5359408"></a><a name="idm5359280"></a><p><b>12.7.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                How do I add my package to the Yocto Project?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top"><p>
-                To add a package, you need to create a BitBake recipe.
-                For information on how to add a package, see the section
-                "<a class="link" href="../dev-manual/usingpoky-extend-addpkg.html" target="_self">Adding a Package</a>" 
-                in the Yocto Project Development Manual.
-            </p></td>
-</tr>
-<tr class="question" title="12.8.">
-<td align="left" valign="top">
-<a name="idm5357680"></a><a name="idm5357552"></a><p><b>12.8.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                Do I have to reflash my entire board with a new Yocto Project image when recompiling 
-                a package?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top"><p>
-                The OpenEmbedded build system can build packages in various formats such as
-                <code class="filename">ipk</code> for <code class="filename">opkg</code>, 
-                Debian package (<code class="filename">.deb</code>), or RPM. 
-                The packages can then be upgraded using the package tools on the device, much like 
-                on a desktop distribution such as Ubuntu or Fedora.
-            </p></td>
-</tr>
-<tr class="question" title="12.9.">
-<td align="left" valign="top">
-<a name="idm5354224"></a><a name="idm5354096"></a><p><b>12.9.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                What is GNOME Mobile and what is the difference between GNOME Mobile and GNOME?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top"><p>
-                GNOME Mobile is a subset of the <a class="ulink" href="http://www.gnome.org" target="_self">GNOME</a> 
-                platform targeted at mobile and embedded devices. 
-                The the main difference between GNOME Mobile and standard GNOME is that 
-                desktop-orientated libraries have been removed, along with deprecated libraries, 
-                creating a much smaller footprint. 
-            </p></td>
-</tr>
-<tr class="question" title="12.10.">
-<td align="left" valign="top">
-<a name="idm2088960"></a><a name="idm2088832"></a><p><b>12.10.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                I see the error '<code class="filename">chmod: XXXXX new permissions are r-xrwxrwx, not r-xr-xr-x</code>'.
-                What is wrong?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top"><p>
-                You are probably running the build on an NTFS filesystem. 
-                Use <code class="filename">ext2</code>, <code class="filename">ext3</code>, or <code class="filename">ext4</code> instead.
-            </p></td>
-</tr>
-<tr class="question" title="12.11.">
-<td align="left" valign="top">
-<a name="idm2085168"></a><a name="idm2085040"></a><p><b>12.11.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                How do I make the Yocto Project work in RHEL/CentOS?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top">
-<p>
-                To get the Yocto Project working under RHEL/CentOS 5.1 you need to first 
-                install some required packages. 
-                The standard CentOS packages needed are:
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p>"Development tools" (selected during installation)</p></li>
-<li class="listitem"><p><code class="filename">texi2html</code></p></li>
-<li class="listitem"><p><code class="filename">compat-gcc-34</code></p></li>
-</ul></div>
-<p>
-                On top of these, you need the following external packages:
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><code class="filename">python-sqlite2</code> from 
-                        <a class="ulink" href="http://dag.wieers.com/rpm/packages/python-sqlite2/" target="_self">DAG repository</a>
-                        </p></li>
-<li class="listitem"><p><code class="filename">help2man</code> from 
-                        <a class="ulink" href="http://centos.karan.org/el4/extras/stable/x86_64/RPMS/repodata/repoview/help2man-0-1.33.1-2.html" target="_self">Karan repository</a></p></li>
-</ul></div>
-<p>
-            </p>
-<p>
-                Once these packages are installed, the OpenEmbedded build system will be able 
-                to build standard images.
-                However, there might be a problem with the QEMU emulator segfaulting. 
-                You can either disable the generation of binary locales by setting 
-                <code class="filename"><a class="link" href="ref-variables-glos.html#var-ENABLE_BINARY_LOCALE_GENERATION" title="ENABLE_BINARY_LOCALE_GENERATION">ENABLE_BINARY_LOCALE_GENERATION</a>
-                </code> to "0" or by removing the <code class="filename">linux-2.6-execshield.patch</code>
-                from the kernel and rebuilding it since that is the patch that causes the problems with QEMU.
-            </p>
-</td>
-</tr>
-<tr class="question" title="12.12.">
-<td align="left" valign="top">
-<a name="idm3829808"></a><a name="idm3829680"></a><p><b>12.12.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                I see lots of 404 responses for files on 
-                <code class="filename">http://www.yoctoproject.org/sources/*</code>. Is something wrong?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top"><p>
-                Nothing is wrong.
-                The OpenEmbedded build system checks any configured source mirrors before downloading 
-                from the upstream sources. 
-                The build system does this searching for both source archives and 
-                pre-checked out versions of SCM managed software. 
-                These checks help in large installations because it can reduce load on the SCM servers 
-                themselves. 
-                The address above is one of the default mirrors configured into the 
-                build system.
-                Consequently, if an upstream source disappears, the team 
-                can place sources there so builds continue to work.
-            </p></td>
-</tr>
-<tr class="question" title="12.13.">
-<td align="left" valign="top">
-<a name="idm3827408"></a><a name="idm3827280"></a><p><b>12.13.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                I have machine-specific data in a package for one machine only but the package is 
-                being marked as machine-specific in all cases, how do I prevent this?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top"><p>
-                Set <code class="filename"><a class="link" href="ref-variables-glos.html#var-SRC_URI_OVERRIDES_PACKAGE_ARCH" title="SRC_URI_OVERRIDES_PACKAGE_ARCH">SRC_URI_OVERRIDES_PACKAGE_ARCH</a>
-                </code> = "0" in the <code class="filename">.bb</code> file but make sure the package is 
-                manually marked as 
-                machine-specific in the case that needs it. 
-                The code that handles <code class="filename">SRC_URI_OVERRIDES_PACKAGE_ARCH</code> is in <code class="filename">base.bbclass</code>.
-            </p></td>
-</tr>
-<tr class="question" title="12.14.">
-<td align="left" valign="top">
-<a name="idm5331776"></a><a name="idm5331648"></a><p><b>12.14.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                I'm behind a firewall and need to use a proxy server. How do I do that?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top">
-<p>
-                Most source fetching by the OpenEmbedded build system is done by <code class="filename">wget</code>
-                and you therefore need to specify the proxy settings in a 
-                <code class="filename">.wgetrc</code> file in your home directory. 
-                Example settings in that file would be 
-                </p>
-<pre class="literallayout">
-     http_proxy = http://proxy.yoyodyne.com:18023/
-     ftp_proxy = http://proxy.yoyodyne.com:18023/
-                </pre>
-<p>
-                The Yocto Project also includes a <code class="filename">site.conf.sample</code>
-                file that shows how to configure CVS and Git proxy servers
-                if needed.
-            </p>
-</td>
-</tr>
-<tr class="question" title="12.15.">
-<td align="left" valign="top">
-<a name="idm1524432"></a><a name="idm1524304"></a><p><b>12.15.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                What&#8217;s the difference between <code class="filename">foo</code> and <code class="filename">foo-native</code>?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top"><p>
-                The <code class="filename">*-native</code> targets are designed to run on the system 
-                being used for the build.
-                These are usually tools that are needed to assist the build in some way such as 
-                <code class="filename">quilt-native</code>, which is used to apply patches. 
-                The non-native version is the one that runs on the target device.
-            </p></td>
-</tr>
-<tr class="question" title="12.16.">
-<td align="left" valign="top">
-<a name="idm1520336"></a><a name="idm1520208"></a><p><b>12.16.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                I'm seeing random build failures. Help?!
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top"><p>
-                If the same build is failing in totally different and random ways,
-                the most likely explanation is that either the hardware you're running the 
-                build on has some problem, or, if you are running the build under virtualisation, 
-                the virtualisation probably has bugs. 
-                The OpenEmbedded build system processes a massive amount of data causing lots of network, disk and 
-                CPU activity and is sensitive to even single bit failures in any of these areas. 
-                True random failures have always been traced back to hardware or virtualisation issues.
-            </p></td>
-</tr>
-<tr class="question" title="12.17.">
-<td align="left" valign="top">
-<a name="idm4636672"></a><a name="idm4636544"></a><p><b>12.17.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                What do we need to ship for license compliance?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top"><p>
-                This is a difficult question and you need to consult your lawyer for the answer
-                for your specific case.
-                It is worth bearing in mind that for GPL compliance there needs to be enough
-                information shipped to allow someone else to rebuild the same end result 
-                you are shipping. 
-                This means sharing the source code, any patches applied to it, and also any
-                configuration information about how that package was configured and built.
-            </p></td>
-</tr>
-<tr class="question" title="12.18.">
-<td align="left" valign="top">
-<a name="idm4635216"></a><a name="idm4635088"></a><p><b>12.18.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                How do I disable the cursor on my touchscreen device?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top">
-<p>
-                You need to create a form factor file as described in the
-                "<a class="link" href="../bsp-guide/bsp-filelayout-misc-recipes.html" target="_self">Miscellaneous Recipe Files</a>"
-                section and set the <code class="filename">HAVE_TOUCHSCREEN</code> variable equal to one as follows:
-                </p>
-<pre class="literallayout">
-     HAVE_TOUCHSCREEN=1
-                </pre>
-<p>
-            </p>
-</td>
-</tr>
-<tr class="question" title="12.19.">
-<td align="left" valign="top">
-<a name="idm4631744"></a><a name="idm4631616"></a><p><b>12.19.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                How do I make sure connected network interfaces are brought up by default?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top">
-<p>
-                The default interfaces file provided by the netbase recipe does not 
-                automatically bring up network interfaces. 
-                Therefore, you will need to add a BSP-specific netbase that includes an interfaces 
-                file.
-                See the "<a class="link" href="../bsp-guide/bsp-filelayout-misc-recipes.html" target="_self">Miscellaneous Recipe Files</a>"
-                section for information on creating these types of miscellaneous recipe files.
-            </p>
-<p>
-                For example, add the following files to your layer:
-                </p>
-<pre class="literallayout">
-     meta-MACHINE/recipes-bsp/netbase/netbase/MACHINE/interfaces
-     meta-MACHINE/recipes-bsp/netbase/netbase_5.0.bbappend
-                </pre>
-<p>
-            </p>
-</td>
-</tr>
-<tr class="question" title="12.20.">
-<td align="left" valign="top">
-<a name="idm3888832"></a><a name="idm3888704"></a><p><b>12.20.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                How do I create images with more free space?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top">
-<p>
-                Images are created to be 1.2 times the size of the populated root filesystem. 
-                To modify this ratio so that there is more free space available, you need to 
-                set the configuration value <code class="filename">IMAGE_OVERHEAD_FACTOR</code>.  
-                For example, setting <code class="filename">IMAGE_OVERHEAD_FACTOR</code> to 1.5 sets 
-                the image size ratio to one and a half times the size of the populated 
-                root filesystem.
-                </p>
-<pre class="literallayout">
-     IMAGE_OVERHEAD_FACTOR = "1.5"
-                </pre>
-<p>
-            </p>
-</td>
-</tr>
-<tr class="question" title="12.21.">
-<td align="left" valign="top">
-<a name="idm619504"></a><a name="idm619376"></a><p><b>12.21.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                Why don't you support directories with spaces in the pathnames?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top"><p>
-                The Yocto Project team has tried to do this before but too many of the tools 
-                the OpenEmbedded build system depends on such as <code class="filename">autoconf</code> 
-                break when they find spaces in pathnames.  
-                Until that situation changes, the team will not support spaces in pathnames.
-            </p></td>
-</tr>
-<tr class="question" title="12.22.">
-<td align="left" valign="top">
-<a name="idm617456"></a><a name="idm617328"></a><p><b>12.22.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                How do I use an external toolchain?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top">
-<p>
-                The toolchain configuration is very flexible and customizable.
-                It is primarily controlled with the 
-                <code class="filename"><a class="link" href="ref-variables-glos.html#var-TCMODE" title="TCMODE">TCMODE</a></code> variable.
-                This variable controls which <code class="filename">tcmode-*.inc</code> file to include 
-                from the <code class="filename">meta/conf/distro/include</code> directory within the 
-                <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.
-            </p>
-<p>
-                The default value of <code class="filename">TCMODE</code> is "default"
-                (i.e. <code class="filename">tcmode-default.inc</code>).
-                However, other patterns are accepted.
-                In particular, "external-*" refers to external toolchains of which there are some
-                basic examples included in the OpenEmbedded Core (<code class="filename">meta</code>).
-                You can use your own custom toolchain definition in your own layer 
-                (or as defined in the <code class="filename">local.conf</code> file) at the location 
-                <code class="filename">conf/distro/include/tcmode-*.inc</code>.
-            </p>
-<p>
-                In addition to the toolchain configuration, you also need a corresponding toolchain recipe file.
-                This recipe file needs to package up any pre-built objects in the toolchain such as 
-                <code class="filename">libgcc</code>, <code class="filename">libstdcc++</code>, 
-                any locales, and <code class="filename">libc</code>.
-                An example is the <code class="filename">external-sourcery-toolchain.bb</code>, which is located
-                in <code class="filename">meta/recipes-core/meta/</code> within the source directory.
-            </p>
-</td>
-</tr>
-<tr class="question" title="12.23.">
-<td align="left" valign="top">
-<a name="idm4577168"></a><a name="idm5139136"></a><p><b>12.23.</b></p>
-</td>
-<td align="left" valign="top"><p><a name="how-does-the-yocto-project-obtain-source-code-and-will-it-work-behind-my-firewall-or-proxy-server"></a>
-                How does the OpenEmbedded build system obtain source code and will it work behind my 
-                firewall or proxy server?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top">
-<p>
-                The way the build system obtains source code is highly configurable.
-                You can setup the build system to get source code in most environments if
-                HTTP transport is available.
-            </p>
-<p>
-                When the build system searches for source code, it first tries the local download directory.
-                If that location fails, Poky tries PREMIRRORS, the upstream source, 
-                and then MIRRORS in that order.
-            </p>
-<p>
-                By default, the OpenEmbedded build system uses the Yocto Project source PREMIRRORS 
-                for SCM-based sources, 
-                upstreams for normal tarballs, and then falls back to a number of other mirrors 
-                including the Yocto Project source mirror if those fail.
-            </p>
-<p>
-                As an example, you could add a specific server for Poky to attempt before any
-                others by adding something like the following to the <code class="filename">local.conf</code>
-                configuration file:
-                </p>
-<pre class="literallayout">
-     PREMIRRORS_prepend = "\
-     git://.*/.* http://www.yoctoproject.org/sources/ \n \
-     ftp://.*/.* http://www.yoctoproject.org/sources/ \n \
-     http://.*/.* http://www.yoctoproject.org/sources/ \n \
-     https://.*/.* http://www.yoctoproject.org/sources/ \n"
-                </pre>
-<p>
-            </p>
-<p>
-                These changes cause Poky to intercept Git, FTP, HTTP, and HTTPS
-                requests and direct them to the <code class="filename">http://</code> sources mirror.
-                You can use <code class="filename">file://</code> URLs to point to local directories 
-                or network shares as well.
-            </p>
-<p>
-                Aside from the previous technique, these options also exist:
-                </p>
-<pre class="literallayout">
-     BB_NO_NETWORK = "1"
-                </pre>
-<p>
-                 This statement tells BitBake to throw an error instead of trying to access the 
-                 Internet.
-                 This technique is useful if you want to ensure code builds only from local sources.
-             </p>
-<p>
-                 Here is another technique:
-                 </p>
-<pre class="literallayout">
-     BB_FETCH_PREMIRRORONLY = "1"
-                 </pre>
-<p>
-                 This statement limits Poky to pulling source from the PREMIRRORS only.
-                 Again, this technique is useful for reproducing builds.
-             </p>
-<p>
-                 Here is another technique:
-                 </p>
-<pre class="literallayout">
-     BB_GENERATE_MIRROR_TARBALLS = "1"
-                 </pre>
-<p>
-                 This statement tells Poky to generate mirror tarballs.
-                 This technique is useful if you want to create a mirror server.
-                 If not, however, the technique can simply waste time during the build.
-             </p>
-<p>
-                 Finally, consider an example where you are behind an HTTP-only firewall.
-                 You could make the following changes to the <code class="filename">local.conf</code>
-                 configuration file as long as the PREMIRROR server is up to date:
-                 </p>
-<pre class="literallayout">
-     PREMIRRORS_prepend = "\
-     ftp://.*/.* http://www.yoctoproject.org/sources/ \n \
-     http://.*/.* http://www.yoctoproject.org/sources/ \n \
-     https://.*/.* http://www.yoctoproject.org/sources/ \n"
-     BB_FETCH_PREMIRRORONLY = "1" 
-                 </pre>
-<p>
-                 These changes would cause Poky to successfully fetch source over HTTP and 
-                 any network accesses to anything other than the PREMIRROR would fail.
-             </p>
-<p>
-                 The build system also honors the standard shell environment variables 
-                 <code class="filename">http_proxy</code>, <code class="filename">ftp_proxy</code>, 
-                 <code class="filename">https_proxy</code>, and <code class="filename">all_proxy</code>
-                 to redirect requests through proxy servers.
-             </p>
-</td>
-</tr>
-<tr class="question" title="12.24.">
-<td align="left" valign="top">
-<a name="idm3953616"></a><a name="idm3685632"></a><p><b>12.24.</b></p>
-</td>
-<td align="left" valign="top"><p>
-                Can I get rid of build output so I can start over?
-            </p></td>
-</tr>
-<tr class="answer">
-<td align="left" valign="top"></td>
-<td align="left" valign="top">
-<p>
-                Yes - you can easily do this.
-                When you use BitBake to build an image, all the build output goes into the 
-                directory created when you source the <code class="filename">oe-init-build-env</code>
-                setup file.
-                By default, this <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a> 
-                is named <code class="filename">build</code> but can be named
-                anything you want.
-            </p>
-<p>
-                Within the build directory is the <code class="filename">tmp</code> directory. 
-                To remove all the build output yet preserve any source code or downloaded files
-                from previous builds, simply remove the <code class="filename">tmp</code> directory.
-            </p>
-</td>
-</tr>
-</tbody>
-</table>
-</div>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/fedora-packages.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/fedora-packages.html
deleted file mode 100644
index d1dc7d1..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/fedora-packages.html
+++ /dev/null
@@ -1,62 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>1.3.2.2. Fedora Packages</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="required-packages-for-the-host-development-system.html" title="1.3.2. Required Packages for the Host Development System">
-<link rel="prev" href="ubuntu-packages.html" title="1.3.2.1. Ubuntu">
-<link rel="next" href="opensuse-packages.html" title="1.3.2.3. OpenSUSE Packages">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.3.2.2. Fedora Packages">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="fedora-packages"></a>1.3.2.2. Fedora Packages</h4></div></div></div>
-<p>
-                The following list shows the required packages by function
-                given a supported Fedora Linux distribution:
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem">
-<p><span class="emphasis"><em>Essentials:</em></span>
-                        Packages needed to build an image for a headless 
-                        system:
-                        </p>
-<pre class="literallayout">
-     $ sudo yum install gawk make wget tar bzip2 gzip python unzip perl patch \
-     diffutils diffstat git cpp gcc gcc-c++ eglibc-devel texinfo chrpath \
-     ccache
-                        </pre>
-</li>
-<li class="listitem">
-<p><span class="emphasis"><em>Graphical Extras:</em></span>
-                        Packages recommended if the host system has graphics support:
-                        </p>
-<pre class="literallayout">
-     $ sudo yum install SDL-devel xterm
-                        </pre>
-</li>
-<li class="listitem">
-<p><span class="emphasis"><em>Documentation:</em></span>
-                        Packages needed if you are going to build out the 
-                        Yocto Project documentation manuals:
-                        </p>
-<pre class="literallayout">
-     $ sudo yum install make docbook-style-dsssl docbook-style-xsl \
-     docbook-dtds docbook-utils fop libxslt
-                        </pre>
-</li>
-<li class="listitem">
-<p><span class="emphasis"><em>ADT Installer Extras:</em></span>
-                        Packages needed if you are going to be using the 
-                        <a class="link" href="../adt-manual/using-the-adt-installer.html" target="_self">Application Development Toolkit (ADT) Installer</a>:
-                        </p>
-<pre class="literallayout">
-     $ sudo yum install autoconf automake libtool glib2-devel
-                        </pre>
-</li>
-</ul></div>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/figures/buildhistory-web.png b/documentation/ref-manual/eclipse/html/poky-ref-manual/figures/buildhistory-web.png
deleted file mode 100644
index f6db86c9772e1eb45dbaf4d8d1f4a18c908cec8c..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 49966
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
HxRCz^<`2)w

diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/figures/buildhistory.png b/documentation/ref-manual/eclipse/html/poky-ref-manual/figures/buildhistory.png
deleted file mode 100644
index 614b8ee2e41cbd4533ddf97249e8f4f18686a108..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 42062
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
KE>}kX!~X!DjxE#x

diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/figures/poky-title.png b/documentation/ref-manual/eclipse/html/poky-ref-manual/figures/poky-title.png
deleted file mode 100644
index 2893d84620d74e5c3318c03fbb44bcf60853ae44..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 11592
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
URVo1e^fQLCyt-Vuj7i}C0Q1NVsQ>@~

diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/future-development-and-limitations.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/future-development-and-limitations.html
deleted file mode 100644
index cd09ff8..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/future-development-and-limitations.html
+++ /dev/null
@@ -1,33 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.3.2. Future Development and Limitations</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="x32.html" title="3.3. x32">
-<link rel="prev" href="support.html" title="3.3.1. Support">
-<link rel="next" href="using-x32-right-now.html" title="3.3.3. Using x32 Right Now">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.3.2. Future Development and Limitations">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="future-development-and-limitations"></a>3.3.2. Future Development and Limitations</h3></div></div></div>
-<p>
-            As of this Yocto Project release, the x32 psABI kernel and library interfaces 
-            specifications are not finalized.
-        </p>
-<p>
-            Future Plans for the x32 psABI in the Yocto Project include the following:
-            </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p>Enhance and fix the few remaining recipes so they  
-                    work with and support x32 toolchains.</p></li>
-<li class="listitem"><p>Enhance RPM Package Manager (RPM) support for x32 binaries.</p></li>
-<li class="listitem"><p>Support larger images.</p></li>
-<li class="listitem"><p>Integrate x32 recipes, toolchain, and kernel changes from 
-                    <code class="filename">experimental/meta-x32</code> into OE-core.</p></li>
-</ul></div>
-<p>
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/handbook.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/handbook.html
deleted file mode 100644
index 9588191..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/handbook.html
+++ /dev/null
@@ -1,25 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.1.3. documentation</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-core.html" title="5.1. Top level core components">
-<link rel="prev" href="structure-core-build.html" title="5.1.2. build/">
-<link rel="next" href="structure-core-meta.html" title="5.1.4. meta/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.1.3. documentation">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="handbook"></a>5.1.3. <code class="filename">documentation</code>
-</h3></div></div></div>
-<p>
-            This directory holds the source for the Yocto Project documentation
-            as well as templates and tools that allow you to generate PDF and HTML
-            versions of the manuals.  
-            Each manual is contained in a sub-folder.  
-            For example, the files for this manual reside in 
-            <code class="filename">poky-ref-manual</code>.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/index.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/index.html
deleted file mode 100644
index 70ef005..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/index.html
+++ /dev/null
@@ -1,327 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>The Yocto Project Reference Manual</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="next" href="intro.html" title="Chapter 1. Introduction">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div lang="en" class="book" title="The Yocto Project Reference Manual">
-<div class="titlepage">
-<div>
-<div><h1 class="title">
-<a name="poky-ref-manual"></a>
-            The Yocto Project Reference Manual
-        </h1></div>
-<div><div class="authorgroup">
-            <div class="author">
-<h3 class="author">
-<span class="firstname">Richard</span> <span class="surname">Purdie</span>
-</h3>
-<div class="affiliation">
-                    <span class="orgname">Linux Foundation<br></span>
-                </div>
-<code class="email">&lt;<a class="email" href="mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt;</code>
-</div>
-
-        </div></div>
-<div><p class="copyright">Copyright © 2010-2013 Linux Foundation</p></div>
-<div><div class="legalnotice" title="Legal Notice">
-<a name="idm3374608"></a>
-      <p>
-        Permission is granted to copy, distribute and/or modify this document under 
-        the terms of the <a class="ulink" href="http://creativecommons.org/licenses/by-sa/2.0/uk/" target="_self">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</a> as published by Creative Commons.
-      </p>
-      <div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-          Due to production processes, there could be differences between the Yocto Project
-          documentation bundled in the release tarball and the
-          <a class="link" href="../poky-ref-manual/index.html" target="_self">Yocto Project Reference Manual</a> on
-          the <a class="ulink" href="http://www.yoctoproject.org" target="_self">Yocto Project</a> website.
-          For the latest version of this manual, see the manual on the website.
-      </div>
-    </div></div>
-<div><div class="revhistory"><table border="1" width="100%" summary="Revision history">
-<tr><th align="left" valign="top" colspan="2"><b>Revision History</b></th></tr>
-            <tr>
-<td align="left">Revision 4.0+git</td>
-<td align="left">24 November 2010</td>
-</tr>
-<tr><td align="left" colspan="2">Released with the Yocto Project 0.9 Release</td></tr>
-            <tr>
-<td align="left">Revision 1.0</td>
-<td align="left">6 April 2011</td>
-</tr>
-<tr><td align="left" colspan="2">Released with the Yocto Project 1.0 Release.</td></tr>
-            <tr>
-<td align="left">Revision 1.0.1</td>
-<td align="left">23 May 2011</td>
-</tr>
-<tr><td align="left" colspan="2">Released with the Yocto Project 1.0.1 Release.</td></tr>
-            <tr>
-<td align="left">Revision 1.1</td>
-<td align="left">6 October 2011</td>
-</tr>
-<tr><td align="left" colspan="2">Released with the Yocto Project 1.1 Release.</td></tr>
-            <tr>
-<td align="left">Revision 1.2</td>
-<td align="left">April 2012</td>
-</tr>
-<tr><td align="left" colspan="2">Released with the Yocto Project 1.2 Release.</td></tr>
-            <tr>
-<td align="left">Revision 1.3</td>
-<td align="left">October 2012</td>
-</tr>
-<tr><td align="left" colspan="2">Released with the Yocto Project 1.3 Release.</td></tr>
-            <tr>
-<td align="left">Revision 1.4</td>
-<td align="left">Sometime in 2013</td>
-</tr>
-<tr><td align="left" colspan="2">Released with the Yocto Project 1.4 Release.</td></tr>
-        </table></div></div>
-</div>
-<hr>
-</div>
-<div class="toc">
-<p><b>Table of Contents</b></p>
-<dl>
-<dt><span class="chapter"><a href="intro.html">1. Introduction</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="intro-welcome.html">1.1. Introduction</a></span></dt>
-<dt><span class="section"><a href="intro-manualoverview.html">1.2. Documentation Overview</a></span></dt>
-<dt><span class="section"><a href="intro-requirements.html">1.3. System Requirements</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="detailed-supported-distros.html">1.3.1. Supported Linux Distributions</a></span></dt>
-<dt><span class="section"><a href="required-packages-for-the-host-development-system.html">1.3.2. Required Packages for the Host Development System</a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="intro-getit.html">1.4. Obtaining the Yocto Project</a></span></dt>
-<dt><span class="section"><a href="intro-getit-dev.html">1.5. Development Checkouts</a></span></dt>
-</dl></dd>
-<dt><span class="chapter"><a href="usingpoky.html">2. Using the Yocto Project</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="usingpoky-build.html">2.1. Running a Build</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="build-overview.html">2.1.1. Build Overview</a></span></dt>
-<dt><span class="section"><a href="building-an-image-using-gpl-components.html">2.1.2. Building an Image Using GPL Components</a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="usingpoky-install.html">2.2. Installing and Using the Result</a></span></dt>
-<dt><span class="section"><a href="usingpoky-debugging.html">2.3. Debugging Build Failures</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="usingpoky-debugging-taskfailures.html">2.3.1. Task Failures</a></span></dt>
-<dt><span class="section"><a href="usingpoky-debugging-taskrunning.html">2.3.2. Running Specific Tasks</a></span></dt>
-<dt><span class="section"><a href="usingpoky-debugging-dependencies.html">2.3.3. Dependency Graphs</a></span></dt>
-<dt><span class="section"><a href="usingpoky-debugging-bitbake.html">2.3.4. General BitBake Problems</a></span></dt>
-<dt><span class="section"><a href="usingpoky-debugging-buildfile.html">2.3.5. Building with No Dependencies</a></span></dt>
-<dt><span class="section"><a href="usingpoky-debugging-variables.html">2.3.6. Variables</a></span></dt>
-<dt><span class="section"><a href="recipe-logging-mechanisms.html">2.3.7. Recipe Logging Mechanisms</a></span></dt>
-<dt><span class="section"><a href="usingpoky-debugging-others.html">2.3.8. Other Tips</a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="maintaining-build-output-quality.html">2.4. Maintaining Build Output Quality</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="enabling-and-disabling-build-history.html">2.4.1. Enabling and Disabling Build History</a></span></dt>
-<dt><span class="section"><a href="understanding-what-the-build-history-contains.html">2.4.2. Understanding What the Build History Contains</a></span></dt>
-</dl></dd>
-</dl></dd>
-<dt><span class="chapter"><a href="technical-details.html">3. Technical Details</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="usingpoky-components.html">3.1. Yocto Project Components</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="usingpoky-components-bitbake.html">3.1.1. BitBake</a></span></dt>
-<dt><span class="section"><a href="usingpoky-components-metadata.html">3.1.2. Metadata (Recipes)</a></span></dt>
-<dt><span class="section"><a href="usingpoky-components-classes.html">3.1.3. Classes</a></span></dt>
-<dt><span class="section"><a href="usingpoky-components-configuration.html">3.1.4. Configuration</a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="shared-state-cache.html">3.2. Shared State Cache</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="overall-architecture.html">3.2.1. Overall Architecture</a></span></dt>
-<dt><span class="section"><a href="checksums.html">3.2.2. Checksums (Signatures)</a></span></dt>
-<dt><span class="section"><a href="shared-state.html">3.2.3. Shared State</a></span></dt>
-<dt><span class="section"><a href="tips-and-tricks.html">3.2.4. Tips and Tricks</a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="x32.html">3.3. x32</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="support.html">3.3.1. Support</a></span></dt>
-<dt><span class="section"><a href="future-development-and-limitations.html">3.3.2. Future Development and Limitations</a></span></dt>
-<dt><span class="section"><a href="using-x32-right-now.html">3.3.3. Using x32 Right Now</a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="licenses.html">3.4. Licenses</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="usingpoky-configuring-LIC_FILES_CHKSUM.html">3.4.1. Tracking License Changes</a></span></dt>
-<dt><span class="section"><a href="enabling-commercially-licensed-recipes.html">3.4.2. Enabling Commercially Licensed Recipes</a></span></dt>
-</dl></dd>
-</dl></dd>
-<dt><span class="chapter"><a href="migration.html">4. Migrating to a Newer Yocto Project Release</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="moving-to-the-yocto-project-1.3-release.html">4.1. Moving to the Yocto Project 1.3 Release</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="1.3-local-configuration.html">4.1.1. Local Configuration</a></span></dt>
-<dt><span class="section"><a href="1.3-recipes.html">4.1.2. Recipes</a></span></dt>
-</dl></dd>
-</dl></dd>
-<dt><span class="chapter"><a href="ref-structure.html">5. Source Directory Structure</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="structure-core.html">5.1. Top level core components</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="structure-core-bitbake.html">5.1.1. <code class="filename">bitbake/</code></a></span></dt>
-<dt><span class="section"><a href="structure-core-build.html">5.1.2. <code class="filename">build/</code></a></span></dt>
-<dt><span class="section"><a href="handbook.html">5.1.3. <code class="filename">documentation</code></a></span></dt>
-<dt><span class="section"><a href="structure-core-meta.html">5.1.4. <code class="filename">meta/</code></a></span></dt>
-<dt><span class="section"><a href="structure-core-meta-yocto.html">5.1.5. <code class="filename">meta-yocto/</code></a></span></dt>
-<dt><span class="section"><a href="structure-core-meta-yocto-bsp.html">5.1.6. <code class="filename">meta-yocto-bsp/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-hob.html">5.1.7. <code class="filename">meta-hob/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-skeleton.html">5.1.8. <code class="filename">meta-skeleton/</code></a></span></dt>
-<dt><span class="section"><a href="structure-core-scripts.html">5.1.9. <code class="filename">scripts/</code></a></span></dt>
-<dt><span class="section"><a href="structure-core-script.html">5.1.10. <code class="filename">oe-init-build-env</code></a></span></dt>
-<dt><span class="section"><a href="structure-basic-top-level.html">5.1.11. <code class="filename">LICENSE, README, and README.hardware</code></a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="structure-build.html">5.2. The Build Directory - <code class="filename">build/</code></a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="structure-build-pseudodone.html">5.2.1. <code class="filename">build/pseudodone</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-conf-local.conf.html">5.2.2. <code class="filename">build/conf/local.conf</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-conf-bblayers.conf.html">5.2.3. <code class="filename">build/conf/bblayers.conf</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-conf-sanity_info.html">5.2.4. <code class="filename">build/conf/sanity_info</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-downloads.html">5.2.5. <code class="filename">build/downloads/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-sstate-cache.html">5.2.6. <code class="filename">build/sstate-cache/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp.html">5.2.7. <code class="filename">build/tmp/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-buildstats.html">5.2.8. <code class="filename">build/tmp/buildstats/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-cache.html">5.2.9. <code class="filename">build/tmp/cache/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-deploy.html">5.2.10. <code class="filename">build/tmp/deploy/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-deploy-deb.html">5.2.11. <code class="filename">build/tmp/deploy/deb/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-deploy-rpm.html">5.2.12. <code class="filename">build/tmp/deploy/rpm/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-deploy-licenses.html">5.2.13. <code class="filename">build/tmp/deploy/licenses/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-deploy-images.html">5.2.14. <code class="filename">build/tmp/deploy/images/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-deploy-ipk.html">5.2.15. <code class="filename">build/tmp/deploy/ipk/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-sysroots.html">5.2.16. <code class="filename">build/tmp/sysroots/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-stamps.html">5.2.17. <code class="filename">build/tmp/stamps/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-log.html">5.2.18. <code class="filename">build/tmp/log/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-pkgdata.html">5.2.19. <code class="filename">build/tmp/pkgdata/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-work.html">5.2.20. <code class="filename">build/tmp/work/</code></a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="structure-meta.html">5.3. The Metadata - <code class="filename">meta/</code></a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="structure-meta-classes.html">5.3.1. <code class="filename">meta/classes/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-conf.html">5.3.2. <code class="filename">meta/conf/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-conf-machine.html">5.3.3. <code class="filename">meta/conf/machine/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-conf-distro.html">5.3.4. <code class="filename">meta/conf/distro/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-bsp.html">5.3.5. <code class="filename">meta/recipes-bsp/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-connectivity.html">5.3.6. <code class="filename">meta/recipes-connectivity/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-core.html">5.3.7. <code class="filename">meta/recipes-core/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-devtools.html">5.3.8. <code class="filename">meta/recipes-devtools/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-extended.html">5.3.9. <code class="filename">meta/recipes-extended/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-gnome.html">5.3.10. <code class="filename">meta/recipes-gnome/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-graphics.html">5.3.11. <code class="filename">meta/recipes-graphics/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-kernel.html">5.3.12. <code class="filename">meta/recipes-kernel/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-multimedia.html">5.3.13. <code class="filename">meta/recipes-multimedia/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-qt.html">5.3.14. <code class="filename">meta/recipes-qt/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-rt.html">5.3.15. <code class="filename">meta/recipes-rt/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-sato.html">5.3.16. <code class="filename">meta/recipes-sato/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-support.html">5.3.17. <code class="filename">meta/recipes-support/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-site.html">5.3.18. <code class="filename">meta/site/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-txt.html">5.3.19. <code class="filename">meta/recipes.txt</code></a></span></dt>
-</dl></dd>
-</dl></dd>
-<dt><span class="chapter"><a href="ref-bitbake.html">6. BitBake</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="ref-bitbake-parsing.html">6.1. Parsing</a></span></dt>
-<dt><span class="section"><a href="ref-bitbake-providers.html">6.2. Preferences and Providers</a></span></dt>
-<dt><span class="section"><a href="ref-bitbake-dependencies.html">6.3. Dependencies</a></span></dt>
-<dt><span class="section"><a href="ref-bitbake-tasklist.html">6.4. The Task List</a></span></dt>
-<dt><span class="section"><a href="ref-bitbake-runtask.html">6.5. Running a Task</a></span></dt>
-<dt><span class="section"><a href="ref-bitbake-commandline.html">6.6. BitBake Command Line</a></span></dt>
-<dt><span class="section"><a href="ref-bitbake-fetchers.html">6.7. Fetchers</a></span></dt>
-</dl></dd>
-<dt><span class="chapter"><a href="ref-classes.html">7. Classes</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="ref-classes-base.html">7.1. The base class - <code class="filename">base.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-autotools.html">7.2. Autotooled Packages - <code class="filename">autotools.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-update-alternatives.html">7.3. Alternatives - <code class="filename">update-alternatives.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-update-rc.d.html">7.4. Initscripts - <code class="filename">update-rc.d.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-binconfig.html">7.5. Binary config scripts - <code class="filename">binconfig.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-debian.html">7.6. Debian renaming - <code class="filename">debian.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-pkgconfig.html">7.7. Pkg-config - <code class="filename">pkgconfig.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-src-distribute.html">7.8. Distribution of sources - <code class="filename">src_distribute_local.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-perl.html">7.9. Perl modules - <code class="filename">cpan.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-distutils.html">7.10. Python extensions - <code class="filename">distutils.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-devshell.html">7.11. Developer Shell - <code class="filename">devshell.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-packagegroup.html">7.12. Package Groups - <code class="filename">packagegroup.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-package.html">7.13. Packaging - <code class="filename">package*.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-kernel.html">7.14. Building kernels - <code class="filename">kernel.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-image.html">7.15. Creating images - <code class="filename">image.bbclass</code> and <code class="filename">rootfs*.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-sanity.html">7.16. Host System sanity checks - <code class="filename">sanity.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-insane.html">7.17. Generated output quality assurance checks - <code class="filename">insane.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-siteinfo.html">7.18. Autotools configuration data cache - <code class="filename">siteinfo.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-useradd.html">7.19. Adding Users - <code class="filename">useradd.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-externalsrc.html">7.20. Using External Source - <code class="filename">externalsrc.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-others.html">7.21. Other Classes</a></span></dt>
-</dl></dd>
-<dt><span class="chapter"><a href="ref-images.html">8. Images</a></span></dt>
-<dt><span class="chapter"><a href="ref-features.html">9. Reference: Features</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="ref-features-distro.html">9.1. Distro</a></span></dt>
-<dt><span class="section"><a href="ref-features-machine.html">9.2. Machine</a></span></dt>
-<dt><span class="section"><a href="ref-features-image.html">9.3. Images</a></span></dt>
-<dt><span class="section"><a href="ref-features-backfill.html">9.4. Feature Backfilling</a></span></dt>
-</dl></dd>
-<dt><span class="chapter"><a href="ref-variables-glos.html">10. Variables Glossary</a></span></dt>
-<dd><dl><dt><span class="glossary"><a href="ref-variables-glos.html#ref-variables-glossary">Glossary</a></span></dt></dl></dd>
-<dt><span class="chapter"><a href="ref-varlocality.html">11. Variable Context</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="ref-varlocality-configuration.html">11.1. Configuration</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="ref-varlocality-config-distro.html">11.1.1. Distribution (Distro)</a></span></dt>
-<dt><span class="section"><a href="ref-varlocality-config-machine.html">11.1.2. Machine</a></span></dt>
-<dt><span class="section"><a href="ref-varlocality-config-local.html">11.1.3. Local</a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="ref-varlocality-recipes.html">11.2. Recipes</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="ref-varlocality-recipe-required.html">11.2.1. Required</a></span></dt>
-<dt><span class="section"><a href="ref-varlocality-recipe-dependencies.html">11.2.2. Dependencies</a></span></dt>
-<dt><span class="section"><a href="ref-varlocality-recipe-paths.html">11.2.3. Paths</a></span></dt>
-<dt><span class="section"><a href="ref-varlocality-recipe-build.html">11.2.4. Extra Build Information</a></span></dt>
-</dl></dd>
-</dl></dd>
-<dt><span class="chapter"><a href="faq.html">12. FAQ</a></span></dt>
-<dt><span class="chapter"><a href="resources.html">13. Contributing to the Yocto Project</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="resources-intro.html">13.1. Introduction</a></span></dt>
-<dt><span class="section"><a href="resources-bugtracker.html">13.2. Tracking Bugs</a></span></dt>
-<dt><span class="section"><a href="resources-mailinglist.html">13.3. Mailing lists</a></span></dt>
-<dt><span class="section"><a href="resources-irc.html">13.4. Internet Relay Chat (IRC)</a></span></dt>
-<dt><span class="section"><a href="resources-links.html">13.5. Links</a></span></dt>
-<dt><span class="section"><a href="resources-contributions.html">13.6. Contributions</a></span></dt>
-</dl></dd>
-</dl>
-</div>
-    
-
-    
-
-    
-
-    
-
-    
-
-    
-
-    
-
-    
-
-    
-
-    
-
-    
-
-    
-
-    
-
-    
-
-
-
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/index.xml b/documentation/ref-manual/eclipse/html/poky-ref-manual/index.xml
deleted file mode 100644
index 9edb4b9..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/index.xml
+++ /dev/null
@@ -1,2 +0,0 @@
-<?xml version="1.0" encoding="utf-8" standalone="no"?>
-<index/>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/intro-getit-dev.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/intro-getit-dev.html
deleted file mode 100644
index 0a25903..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/intro-getit-dev.html
+++ /dev/null
@@ -1,26 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>1.5. Development Checkouts</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="intro.html" title="Chapter 1. Introduction">
-<link rel="prev" href="intro-getit.html" title="1.4. Obtaining the Yocto Project">
-<link rel="next" href="usingpoky.html" title="Chapter 2. Using the Yocto Project">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.5. Development Checkouts">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="intro-getit-dev"></a>1.5. Development Checkouts</h2></div></div></div>
-<p>
-        Development using the Yocto Project requires a local 
-        <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>. 
-        You can set up the source directory by downloading a Yocto Project release tarball and unpacking it,  
-        or by cloning a copy of the upstream
-        <a class="link" href="../dev-manual/poky.html" target="_self">Poky</a> Git repository.
-        For information on both these methods, see the
-        "<a class="link" href="../dev-manual/getting-setup.html" target="_self">Getting Setup</a>" 
-        section in the Yocto Project Development Manual.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/intro-getit.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/intro-getit.html
deleted file mode 100644
index 56fa85f..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/intro-getit.html
+++ /dev/null
@@ -1,35 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>1.4. Obtaining the Yocto Project</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="intro.html" title="Chapter 1. Introduction">
-<link rel="prev" href="centos-packages.html" title="1.3.2.4. CentOS Packages">
-<link rel="next" href="intro-getit-dev.html" title="1.5. Development Checkouts">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.4. Obtaining the Yocto Project">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="intro-getit"></a>1.4. Obtaining the Yocto Project</h2></div></div></div>
-<p>
-        The Yocto Project development team makes the Yocto Project available through a number 
-        of methods:
-        </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em>Releases:</em></span> Stable, tested releases are available through 
-                <a class="ulink" href="http://downloads.yoctoproject.org/releases/yocto/" target="_self">http://downloads.yoctoproject.org/releases/yocto/</a>.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>Nightly Builds:</em></span> These releases are available at
-                <a class="ulink" href="http://autobuilder.yoctoproject.org/nightly" target="_self">http://autobuilder.yoctoproject.org/nightly</a>.  
-                These builds include Yocto Project releases, meta-toolchain tarball installation scripts, and 
-                experimental builds.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>Yocto Project Website:</em></span> You can find releases
-                of the Yocto Project and supported BSPs at the
-                <a class="ulink" href="http://www.yoctoproject.org" target="_self">Yocto Project website</a>.
-                Along with these downloads, you can find lots of other information at this site.  
-                </p></li>
-</ul></div>
-<p>
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/intro-manualoverview.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/intro-manualoverview.html
deleted file mode 100644
index 7f8e368..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/intro-manualoverview.html
+++ /dev/null
@@ -1,73 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>1.2. Documentation Overview</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="intro.html" title="Chapter 1. Introduction">
-<link rel="prev" href="intro-welcome.html" title="1.1. Introduction">
-<link rel="next" href="intro-requirements.html" title="1.3. System Requirements">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.2. Documentation Overview">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="intro-manualoverview"></a>1.2. Documentation Overview</h2></div></div></div>
-<p>
-        This reference manual consists of the following:
-        </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em>
-                <a class="link" href="usingpoky.html" title="Chapter 2. Using the Yocto Project">Using the Yocto Project</a>:</em></span> This chapter
-                provides an overview of the components that make up the Yocto Project 
-                followed by information about debugging images created in the Yocto Project.
-                </p></li>
-<li class="listitem"><p><span class="emphasis"><em>
-                <a class="link" href="technical-details.html" title="Chapter 3. Technical Details">Technical Details</a>:</em></span> 
-                This chapter describes fundamental Yocto Project components as well as an explanation
-                behind how the Yocto Project uses shared state (sstate) cache to speed build time.
-                </p></li>
-<li class="listitem"><p><span class="emphasis"><em>
-                <a class="link" href="ref-structure.html" title="Chapter 5. Source Directory Structure">Directory Structure</a>:</em></span> 
-                This chapter describes the 
-                <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a> created
-                either by unpacking a released Yocto Project tarball on your host development system, 
-                or by cloning the upstream 
-                <a class="link" href="../dev-manual/poky.html" target="_self">Poky</a> Git repository.
-                </p></li>
-<li class="listitem"><p><span class="emphasis"><em>
-                <a class="link" href="ref-bitbake.html" title="Chapter 6. BitBake">BitBake</a>:</em></span> 
-                This chapter provides an overview of the BitBake tool and its role within 
-                the Yocto Project.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>
-                <a class="link" href="ref-classes.html" title="Chapter 7. Classes">Classes</a>:</em></span> 
-                This chapter describes the classes used in the Yocto Project.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>
-                <a class="link" href="ref-images.html" title="Chapter 8. Images">Images</a>:</em></span> 
-                This chapter describes the standard images that the Yocto Project supports.
-                </p></li>
-<li class="listitem"><p><span class="emphasis"><em>
-                <a class="link" href="ref-features.html" title="Chapter 9. Reference: Features">Features</a>:</em></span> 
-                This chapter describes mechanisms for creating distribution, machine, and image 
-                features during the build process using the OpenEmbedded build system.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>
-                <a class="link" href="ref-variables-glos.html" title="Chapter 10. Variables Glossary">Variables Glossary</a>:</em></span> 
-                This chapter presents most variables used by the OpenEmbedded build system, which
-                using BitBake.
-                Entries describe the function of the variable and how to apply them.
-                </p></li>
-<li class="listitem"><p><span class="emphasis"><em>
-                <a class="link" href="ref-varlocality.html" title="Chapter 11. Variable Context">Variable Context</a>:</em></span> 
-                This chapter provides variable locality or context.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>
-                <a class="link" href="faq.html" title="Chapter 12. FAQ">FAQ</a>:</em></span> 
-                This chapter provides answers for commonly asked questions in the Yocto Project
-                development environment.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>
-                <a class="link" href="resources.html" title="Chapter 13. Contributing to the Yocto Project">Contributing to the Yocto Project</a>:</em></span> 
-                This chapter provides guidance on how you can contribute back to the Yocto 
-                Project.</p></li>
-</ul></div>
-<p>
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/intro-requirements.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/intro-requirements.html
deleted file mode 100644
index 3cab8ac..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/intro-requirements.html
+++ /dev/null
@@ -1,23 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>1.3. System Requirements</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="intro.html" title="Chapter 1. Introduction">
-<link rel="prev" href="intro-manualoverview.html" title="1.2. Documentation Overview">
-<link rel="next" href="detailed-supported-distros.html" title="1.3.1. Supported Linux Distributions">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.3. System Requirements">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="intro-requirements"></a>1.3. System Requirements</h2></div></div></div>
-<p>
-        For general Yocto Project system requirements, see the
-        "<a class="link" href="../yocto-project-qs/yp-resources.html" target="_self">What You Need and How You Get It</a>" section 
-        in the Yocto Project Quick Start.
-        The remainder of this section provides details on system requirements
-        not covered in the Yocto Project Quick Start.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/intro-welcome.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/intro-welcome.html
deleted file mode 100644
index 378b87f..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/intro-welcome.html
+++ /dev/null
@@ -1,30 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>1.1. Introduction</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="intro.html" title="Chapter 1. Introduction">
-<link rel="prev" href="intro.html" title="Chapter 1. Introduction">
-<link rel="next" href="intro-manualoverview.html" title="1.2. Documentation Overview">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.1. Introduction">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="intro-welcome"></a>1.1. Introduction</h2></div></div></div>
-<p>
-        This manual provides reference information for the current release of the Yocto Project.
-        The Yocto Project is an open-source collaboration project focused on embedded Linux
-        developers.
-        Amongst other things, the Yocto Project uses the OpenEmbedded build system, which 
-        is based on the Poky project, to construct complete Linux images.
-        You can find complete introductory and getting started information on the Yocto Project
-        by reading the 
-        <a class="link" href="../yocto-project-qs/index.html" target="_self">Yocto Project Quick Start</a>.
-        For task-based information using the Yocto Project, see the
-        <a class="link" href="../dev-manual/index.html" target="_self">Yocto Project Development Manual</a>.
-        You can also find lots of information on the Yocto Project on the 
-        <a class="ulink" href="http://www.yoctoproject.org" target="_self">Yocto Project website</a>.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/intro.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/intro.html
deleted file mode 100644
index 1ff7cdc..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/intro.html
+++ /dev/null
@@ -1,30 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>Chapter 1. Introduction</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="prev" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="next" href="intro-welcome.html" title="1.1. Introduction">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 1. Introduction">
-<div class="titlepage"><div><div><h2 class="title">
-<a name="intro"></a>Chapter 1. Introduction</h2></div></div></div>
-<div class="toc">
-<p><b>Table of Contents</b></p>
-<dl>
-<dt><span class="section"><a href="intro-welcome.html">1.1. Introduction</a></span></dt>
-<dt><span class="section"><a href="intro-manualoverview.html">1.2. Documentation Overview</a></span></dt>
-<dt><span class="section"><a href="intro-requirements.html">1.3. System Requirements</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="detailed-supported-distros.html">1.3.1. Supported Linux Distributions</a></span></dt>
-<dt><span class="section"><a href="required-packages-for-the-host-development-system.html">1.3.2. Required Packages for the Host Development System</a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="intro-getit.html">1.4. Obtaining the Yocto Project</a></span></dt>
-<dt><span class="section"><a href="intro-getit-dev.html">1.5. Development Checkouts</a></span></dt>
-</dl>
-</div>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/invalidating-shared-state.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/invalidating-shared-state.html
deleted file mode 100644
index 425f179..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/invalidating-shared-state.html
+++ /dev/null
@@ -1,53 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.2.4.2. Invalidating Shared State</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="tips-and-tricks.html" title="3.2.4. Tips and Tricks">
-<link rel="prev" href="debugging.html" title="3.2.4.1. Debugging">
-<link rel="next" href="x32.html" title="3.3. x32">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2.4.2. Invalidating Shared State">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="invalidating-shared-state"></a>3.2.4.2. Invalidating Shared State</h4></div></div></div>
-<p>
-                The shared state code uses checksums and shared state
-                cache to avoid unnecessarily rebuilding tasks.
-                As with all schemes, this one has some drawbacks.
-                It is possible that you could make implicit changes that are not factored 
-                into the checksum calculation, but do affect a task's output. 
-                A good example is perhaps when a tool changes its output.
-                Let's say that the output of <code class="filename">rpmdeps</code> needed to change.
-                The result of the change should be that all the "package", "package_write_rpm",
-                and "package_deploy-rpm" shared state cache items would become invalid.
-                But, because this is a change that is external to the code and therefore implicit,
-                the associated shared state cache items do not become invalidated.
-                In this case, the build process would use the cached items rather than running the 
-                task again. 
-                Obviously, these types of implicit changes can cause problems.
-            </p>
-<p>
-                To avoid these problems during the build, you need to understand the effects of any
-                change you make.
-                Note that any changes you make directly to a function automatically are factored into 
-                the checksum calculation and thus, will invalidate the associated area of sstate cache.
-                You need to be aware of any implicit changes that are not obvious changes to the 
-                code and could affect the output of a given task. 
-                Once you are aware of such a change, you can take steps to invalidate the cache 
-                and force the task to run. 
-                The step to take is as simple as changing a function's comments in the source code. 
-                For example, to invalidate package shared state files, change the comment statements
-                of <code class="filename">do_package</code> or the comments of one of the functions it calls.
-                The change is purely cosmetic, but it causes the checksum to be recalculated and  
-                forces the task to be run again.
-            </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-                For an example of a commit that makes a cosmetic change to invalidate 
-                a shared state, see this
-                <a class="ulink" href="http://git.yoctoproject.org/cgit.cgi/poky/commit/meta/classes/package.bbclass?id=737f8bbb4f27b4837047cb9b4fbfe01dfde36d54" target="_self">commit</a>.
-            </div>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/license-flag-matching.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/license-flag-matching.html
deleted file mode 100644
index 8909689..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/license-flag-matching.html
+++ /dev/null
@@ -1,91 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.4.2.1. License Flag Matching</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="enabling-commercially-licensed-recipes.html" title="3.4.2. Enabling Commercially Licensed Recipes">
-<link rel="prev" href="enabling-commercially-licensed-recipes.html" title="3.4.2. Enabling Commercially Licensed Recipes">
-<link rel="next" href="other-variables-related-to-commercial-licenses.html" title="3.4.2.2. Other Variables Related to Commercial Licenses">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.2.1. License Flag Matching">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="license-flag-matching"></a>3.4.2.1. License Flag Matching</h4></div></div></div>
-<p>
-		        The definition of 'matching' in reference to a
-		        recipe's <code class="filename">LICENSE_FLAGS</code> setting is simple.
-                However, some things exist that you should know about in order to
-                correctly and effectively use it.
-            </p>
-<p>
-                Before a flag
-                defined by a particular recipe is tested against the
-                contents of the <code class="filename">LICENSE_FLAGS_WHITELIST</code> variable, the
-                string <code class="filename">_${PN}</code> (with 
-                <a class="link" href="ref-variables-glos.html#var-PN" title="PN"><code class="filename">PN</code></a> expanded of course) is
-                appended to the flag, thus automatically making each
-                <code class="filename">LICENSE_FLAGS</code> value recipe-specific.
-                That string is
-                then matched against the whitelist.
-                So if you specify <code class="filename">LICENSE_FLAGS = "commercial"</code> in recipe
-		        "foo" for example, the string <code class="filename">"commercial_foo"</code>
-                would normally be what is specified in the whitelist in order for it to
-                match.
-            </p>
-<p>
-                You can broaden the match by
-                putting any "_"-separated beginning subset of a
-                <code class="filename">LICENSE_FLAGS</code> flag in the whitelist, which will also
-                match.  
-                For example, simply specifying "commercial" in
-                the whitelist would match any expanded <code class="filename">LICENSE_FLAGS</code>
-                definition starting with "commercial" such as
-                "commercial_foo" and "commercial_bar", which are the
-                strings that would be automatically generated for
-                hypothetical "foo" and "bar" recipes assuming those
-                recipes had simply specified the following:
-                </p>
-<pre class="literallayout">
-     LICENSE_FLAGS = "commercial"
-                </pre>
-<p>
-            </p>
-<p>
-                Broadening the match allows for a range of specificity for the items
-                in the whitelist, from more general to perfectly
-                specific.  
-                So you have the choice of exhaustively
-                enumerating each license flag in the whitelist to
-                allow only those specific recipes into the image, or
-                of using a more general string to pick up anything
-                matching just the first component or components of the specified
-                string.
-            </p>
-<p>
-                This scheme works even if the flag already
-                has <code class="filename">_${PN}</code> appended - the extra <code class="filename">_${PN}</code> is
-                redundant, but does not affect the outcome.  
-                For example, a license flag of "commercial_1.2_foo" would
-                turn into "commercial_1.2_foo_foo" and would match
-                both the general "commercial" and the specific
-                "commercial_1.2_foo", as expected.
-                The flag would also match
-                "commercial_1.2_foo_foo" and "commercial_1.2", which
-                does not make much sense regarding use in the whitelist.
-            </p>
-<p>  
-                For a versioned string, you could instead specify
-                "commercial_foo_1.2", which would turn into
-                "commercial_foo_1.2_foo".
-                And, as expected, this flag allows
-                you to pick up this package along with
-                anything else "commercial" when you specify "commercial"
-                in the whitelist.
-                Or, the flag allows you to pick up this package along with anything "commercial_foo"
-                regardless of version when you use "commercial_foo" in the whitelist.
-                Finally, you can be completely specific about the package and version and specify
-                "commercial_foo_1.2" package and version.
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/licenses.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/licenses.html
deleted file mode 100644
index 3af03e9..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/licenses.html
+++ /dev/null
@@ -1,28 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.4. Licenses</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="technical-details.html" title="Chapter 3. Technical Details">
-<link rel="prev" href="using-x32-right-now.html" title="3.3.3. Using x32 Right Now">
-<link rel="next" href="usingpoky-configuring-LIC_FILES_CHKSUM.html" title="3.4.1. Tracking License Changes">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4. Licenses">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="licenses"></a>3.4. Licenses</h2></div></div></div>
-<p>
-        This section describes the mechanism by which the OpenEmbedded build system 
-        tracks changes to licensing text.
-        The section also describes how to enable commercially licensed recipes, 
-        which by default are disabled.
-    </p>
-<p>
-        For information that can help you maintain compliance with various open 
-        source licensing during the lifecycle of the product, see the 
-        "<a class="link" href="../dev-manual/maintaining-open-source-license-compliance-during-your-products-lifecycle.html" target="_self">Maintaining Open Source License Compliance During Your Project's Lifecycle</a>" section
-        in the Yocto Project Development Manual.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/logging-with-bash.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/logging-with-bash.html
deleted file mode 100644
index 3cea310..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/logging-with-bash.html
+++ /dev/null
@@ -1,47 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.3.7.2. Logging With Bash</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="recipe-logging-mechanisms.html" title="2.3.7. Recipe Logging Mechanisms">
-<link rel="prev" href="logging-with-python.html" title="2.3.7.1. Logging With Python">
-<link rel="next" href="usingpoky-debugging-others.html" title="2.3.8. Other Tips">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.7.2. Logging With Bash">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="logging-with-bash"></a>2.3.7.2. Logging With Bash</h4></div></div></div>
-<p>
-                When creating recipes using Bash and inserting code that handles build
-                logs you have the same goals - informative with minimal console output. 
-                The syntax you use for recipes written in Bash is similar to that of 
-                recipes written in Python described in the previous section.
-            </p>
-<p>
-                Following is an example written in Bash.
-                The code logs the progress of the <code class="filename">do_my_function</code> function.
-                </p>
-<pre class="literallayout">
-     do_my_function() {
-         bbdebug 2 "Running do_my_function"
-         if [ exceptional_condition ]; then
-             bbnote "Hit exceptional_condition"
-         fi
-         bbdebug 2  "Got to point xyz"
-         if [ warning_trigger ]; then
-             bbwarn "Detected warning_trigger, this might cause a problem later."
-         fi
-         if [ recoverable_error ]; then
-             bberror "Hit recoverable_error, correcting"
-         fi
-         if [ fatal_error ]; then
-             bbfatal "fatal_error detected"
-         fi
-         bbdebug 2 "Completed do_my_function"
-     }
-                </pre>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/logging-with-python.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/logging-with-python.html
deleted file mode 100644
index e57b647..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/logging-with-python.html
+++ /dev/null
@@ -1,45 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.3.7.1. Logging With Python</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="recipe-logging-mechanisms.html" title="2.3.7. Recipe Logging Mechanisms">
-<link rel="prev" href="recipe-logging-mechanisms.html" title="2.3.7. Recipe Logging Mechanisms">
-<link rel="next" href="logging-with-bash.html" title="2.3.7.2. Logging With Bash">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.7.1. Logging With Python">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="logging-with-python"></a>2.3.7.1. Logging With Python</h4></div></div></div>
-<p>
-                When creating recipes using Python and inserting code that handles build logs
-                keep in mind the goal is to have informative logs while keeping the console as 
-                "silent" as possible. 
-                Also, if you want status messages in the log use the "debug" loglevel.
-            </p>
-<p>
-                Following is an example written in Python.
-                The code handles logging for a function that determines the number of tasks 
-                needed to be run:
-                </p>
-<pre class="literallayout">
-     python do_listtasks() {
-         bb.debug(2, "Starting to figure out the task list")
-         if noteworthy_condition:
-             bb.note("There are 47 tasks to run")
-         bb.debug(2, "Got to point xyz")
-         if warning_trigger:
-             bb.warn("Detected warning_trigger, this might be a problem later.")
-         if recoverable_error:
-             bb.error("Hit recoverable_error, you really need to fix this!")
-         if fatal_error:
-             bb.fatal("fatal_error detected, unable to print the task list")
-         bb.plain("The tasks present are abc")
-         bb.debug(2, "Finished figuring out the tasklist")
-     }
-                </pre>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/maintaining-build-output-quality.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/maintaining-build-output-quality.html
deleted file mode 100644
index f0896e6..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/maintaining-build-output-quality.html
+++ /dev/null
@@ -1,53 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.4. Maintaining Build Output Quality</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky.html" title="Chapter 2. Using the Yocto Project">
-<link rel="prev" href="usingpoky-debugging-others.html" title="2.3.8. Other Tips">
-<link rel="next" href="enabling-and-disabling-build-history.html" title="2.4.1. Enabling and Disabling Build History">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.4. Maintaining Build Output Quality">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="maintaining-build-output-quality"></a>2.4. Maintaining Build Output Quality</h2></div></div></div>
-<p>
-        A build's quality can be influenced by many things.
-        For example, if you upgrade a recipe to use a new version of an upstream software 
-        package or you experiment with some new configuration options, subtle changes
-        can occur that you might not detect until later. 
-        Consider the case where your recipe is using a newer version of an upstream package.
-        In this case, a new version of a piece of software might introduce an optional 
-        dependency on another library, which is auto-detected.
-        If that library has already been built when the software is building, 
-        then the software will link to the built library and that library will be pulled 
-        into your image along with the new software even if you did not want the 
-        library.
-    </p>
-<p>
-        The <code class="filename">buildhistory</code> class exists to help you maintain
-        the quality of your build output.
-        You can use the class to highlight unexpected and possibly unwanted 
-        changes in the build output.
-        When you enable build history it records information about the contents of 
-        each package and image and then commits that information to a local Git 
-        repository where you can examine the information.
-    </p>
-<p>
-        The remainder of this section describes the following:
-        </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p>How you can enable and disable
-               build history</p></li>
-<li class="listitem"><p>How to understand what the build history contains
-               </p></li>
-<li class="listitem"><p>How to limit the information used for build history
-               </p></li>
-<li class="listitem"><p>How to examine the build history from both a 
-               command-line and web interface</p></li>
-</ul></div>
-<p>
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-bblayers-conf.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-bblayers-conf.html
deleted file mode 100644
index 50cd0ca..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-bblayers-conf.html
+++ /dev/null
@@ -1,27 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>4.1.1.2. bblayers.conf</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="1.3-local-configuration.html" title="4.1.1. Local Configuration">
-<link rel="prev" href="migration-1.3-sstate-mirrors.html" title="4.1.1.1. SSTATE_MIRRORS">
-<link rel="next" href="1.3-recipes.html" title="4.1.2. Recipes">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.1.2. bblayers.conf">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="migration-1.3-bblayers-conf"></a>4.1.1.2. bblayers.conf</h4></div></div></div>
-<p>
-                The <code class="filename">meta-yocto</code> layer has been split into 
-                two parts: <code class="filename">meta-yocto</code> and 
-                <code class="filename">meta-yocto-bsp</code>, corresponding to the 
-                Poky reference distro configuration and the reference
-                hardware Board Support Packages (BSPs), respectively. 
-                When running BitBake or Hob for the first time after upgrading, 
-                your <code class="filename">conf/bblayers.conf</code> file will be 
-                updated to handle this change and you will be asked to 
-                re-run/restart for the changes to take effect.
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-image-features.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-image-features.html
deleted file mode 100644
index 48ef697..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-image-features.html
+++ /dev/null
@@ -1,26 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>4.1.2.5. IMAGE_FEATURES</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="1.3-recipes.html" title="4.1.2. Recipes">
-<link rel="prev" href="migration-1.3-task-recipes.html" title="4.1.2.4. Task Recipes">
-<link rel="next" href="migration-1.3-removed-recipes.html" title="4.1.2.6. Removed Recipes">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.2.5. IMAGE_FEATURES">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="migration-1.3-image-features"></a>4.1.2.5. IMAGE_FEATURES</h4></div></div></div>
-<p>
-                Image recipes that previously included "apps-console-core" 
-                in <a class="link" href="ref-variables-glos.html#var-IMAGE_FEATURES" title="IMAGE_FEATURES"><code class="filename">IMAGE_FEATURES</code></a>
-                should now include "splash" instead to enable the boot-up 
-                splash screen.
-                Retaining "apps-console-core" will still include the splash 
-                screen generates a warning.
-                The "apps-x11-core" and "apps-x11-games" 
-                <code class="filename">IMAGE_FEATURES</code> features have been removed.
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-nativesdk.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-nativesdk.html
deleted file mode 100644
index b20f610..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-nativesdk.html
+++ /dev/null
@@ -1,25 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>4.1.2.3. nativesdk</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="1.3-recipes.html" title="4.1.2. Recipes">
-<link rel="prev" href="migration-1.3-proto=-in-src-uri.html" title="4.1.2.2. proto= in SRC_URI">
-<link rel="next" href="migration-1.3-task-recipes.html" title="4.1.2.4. Task Recipes">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.2.3. nativesdk">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="migration-1.3-nativesdk"></a>4.1.2.3. nativesdk</h4></div></div></div>
-<p>
-                The suffix <code class="filename">nativesdk</code> is now implemented
-                as a prefix, which simplifies a lot of the packaging code for 
-                <code class="filename">nativesdk</code> recipes. 
-                All custom <code class="filename">nativesdk</code> recipes and any 
-                references need to be updated to use 
-                <code class="filename">nativesdk-*</code> instead of 
-                <code class="filename">*-nativesdk</code>.
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-proto=-in-src-uri.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-proto=-in-src-uri.html
deleted file mode 100644
index 85702b8..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-proto=-in-src-uri.html
+++ /dev/null
@@ -1,32 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>4.1.2.2. proto= in SRC_URI</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="1.3-recipes.html" title="4.1.2. Recipes">
-<link rel="prev" href="migration-1.3-python-function-whitespace.html" title="4.1.2.1. Python Function Whitespace">
-<link rel="next" href="migration-1.3-nativesdk.html" title="4.1.2.3. nativesdk">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.2.2. proto= in SRC_URI">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="migration-1.3-proto=-in-src-uri"></a>4.1.2.2. proto= in SRC_URI</h4></div></div></div>
-<p>
-                Any use of <code class="filename">proto=</code> in 
-                <a class="link" href="ref-variables-glos.html#var-SRC_URI" title="SRC_URI"><code class="filename">SRC_URI</code></a>
-                needs to be changed to <code class="filename">protocol=</code>.
-                In particular, this applies to the following URIs:
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><code class="filename">svn://</code></p></li>
-<li class="listitem"><p><code class="filename">bzr://</code></p></li>
-<li class="listitem"><p><code class="filename">hg://</code></p></li>
-<li class="listitem"><p><code class="filename">osc://</code></p></li>
-</ul></div>
-<p>
-                Other URIs were already using <code class="filename">protocol=</code>.
-                This change improves consistency.
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-python-function-whitespace.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-python-function-whitespace.html
deleted file mode 100644
index 7b74059..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-python-function-whitespace.html
+++ /dev/null
@@ -1,29 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>4.1.2.1. Python Function Whitespace</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="1.3-recipes.html" title="4.1.2. Recipes">
-<link rel="prev" href="1.3-recipes.html" title="4.1.2. Recipes">
-<link rel="next" href="migration-1.3-proto=-in-src-uri.html" title="4.1.2.2. proto= in SRC_URI">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.2.1. Python Function Whitespace">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="migration-1.3-python-function-whitespace"></a>4.1.2.1. Python Function Whitespace</h4></div></div></div>
-<p>
-                All Python functions must now use four spaces for indentation. 
-                Previously, an inconsistent mix of spaces and tabs existed,
-                which made extending these functions using 
-                <code class="filename">_append</code> or <code class="filename">_prepend</code>
-                complicated given that Python treats whitespace as 
-                syntactically significant. 
-                If you are defining or extending any Python functions (e.g.
-                <code class="filename">populate_packages</code>, <code class="filename">do_unpack</code>,
-                <code class="filename">do_patch</code> and so forth) in custom recipes
-                or classes, you need to ensure you are using consistent 
-                four-space indentation.
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-removed-recipes.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-removed-recipes.html
deleted file mode 100644
index ff8a213..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-removed-recipes.html
+++ /dev/null
@@ -1,64 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>4.1.2.6. Removed Recipes</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="1.3-recipes.html" title="4.1.2. Recipes">
-<link rel="prev" href="migration-1.3-image-features.html" title="4.1.2.5. IMAGE_FEATURES">
-<link rel="next" href="ref-structure.html" title="Chapter 5. Source Directory Structure">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.2.6. Removed Recipes">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="migration-1.3-removed-recipes"></a>4.1.2.6. Removed Recipes</h4></div></div></div>
-<p>
-                The following recipes have been removed. 
-                For most of them, it is unlikely that you would have any 
-                references to them in your own metadata.
-                However, you should check your metadata against this list to be sure:
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">libx11-trim</code></em></span>: 
-                        Replaced by <code class="filename">libx11</code>, which has a negligible 
-                        size difference with modern Xorg.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">xserver-xorg-lite</code></em></span>: 
-                        Use <code class="filename">xserver-xorg</code>, which has a negligible 
-                        size difference when DRI and GLX modules are not installed.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">xserver-kdrive</code></em></span>: 
-                        Effectively unmaintained for many years.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">mesa-xlib</code></em></span>: 
-                        No longer serves any purpose.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">galago</code></em></span>: 
-                        Replaced by telepathy.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">gail</code></em></span>: 
-                        Functionality was integrated into GTK+ 2.13.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">eggdbus</code></em></span>: 
-                        No longer needed.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">gcc-*-intermediate</code></em></span>: 
-                        The build has been restructured to avoid the need for 
-                        this step.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">libgsmd</code></em></span>: 
-                        Unmaintained for many years.
-                        Functionality now provided by 
-                        <code class="filename">ofono</code> instead.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>contacts, dates, tasks, eds-tools</em></span>: 
-                        Largely unmaintained PIM application suite.
-                        It has been moved to <code class="filename">meta-gnome</code>
-                        in <code class="filename">meta-openembedded</code>.</p></li>
-</ul></div>
-<p>
-                In addition to the previously listed changes, the 
-                <code class="filename">meta-demoapps</code> directory has also been removed
-                because the recipes in it were not being maintained and many 
-                had become obsolete or broken.
-                Additionally, these recipes were not parsed in the default configuration.
-                Many of these recipes are already provided in an updated and 
-                maintained form within OpenEmbedded community layers such as 
-                <code class="filename">meta-oe</code> and <code class="filename">meta-gnome</code>.
-                For the remainder, you can now find them in the 
-                <code class="filename">meta-extras</code> repository, which is in the 
-                Yocto Project source repositories.
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-sstate-mirrors.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-sstate-mirrors.html
deleted file mode 100644
index b2f7906..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-sstate-mirrors.html
+++ /dev/null
@@ -1,36 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>4.1.1.1. SSTATE_MIRRORS</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="1.3-local-configuration.html" title="4.1.1. Local Configuration">
-<link rel="prev" href="1.3-local-configuration.html" title="4.1.1. Local Configuration">
-<link rel="next" href="migration-1.3-bblayers-conf.html" title="4.1.1.2. bblayers.conf">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.1.1. SSTATE_MIRRORS">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="migration-1.3-sstate-mirrors"></a>4.1.1.1. SSTATE_MIRRORS</h4></div></div></div>
-<p>
-                The shared state cache (sstate-cache) as pointed to by 
-                <a class="link" href="ref-variables-glos.html#var-SSTATE_DIR" title="SSTATE_DIR"><code class="filename">SSTATE_DIR</code></a> by default 
-                now has two-character subdirectories to prevent there being an issue with too 
-                many files in the same directory.
-                Also, native sstate-cache packages will go into a subdirectory named using 
-                the distro ID string. 
-                If you copy the newly structured sstate-cache to a mirror location 
-                (either local or remote) and then point to it in 
-                <a class="link" href="ref-variables-glos.html#var-SSTATE_MIRRORS" title="SSTATE_MIRRORS"><code class="filename">SSTATE_MIRRORS</code></a>,
-                you need to append "PATH" to the end of the mirror URL so that 
-                the path used by BitBake before the mirror substitution is 
-                appended to the path used to access the mirror. 
-                Here is an example:
-                </p>
-<pre class="literallayout">
-     SSTATE_MIRRORS = "file://.* http://someserver.tld/share/sstate/PATH"
-                </pre>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-task-recipes.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-task-recipes.html
deleted file mode 100644
index 1d93d89..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration-1.3-task-recipes.html
+++ /dev/null
@@ -1,39 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>4.1.2.4. Task Recipes</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="1.3-recipes.html" title="4.1.2. Recipes">
-<link rel="prev" href="migration-1.3-nativesdk.html" title="4.1.2.3. nativesdk">
-<link rel="next" href="migration-1.3-image-features.html" title="4.1.2.5. IMAGE_FEATURES">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.2.4. Task Recipes">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="migration-1.3-task-recipes"></a>4.1.2.4. Task Recipes</h4></div></div></div>
-<p>
-                "Task" recipes are now known as "Package groups" and have 
-                been renamed from <code class="filename">task-*.bb</code> to 
-                <code class="filename">packagegroup-*.bb</code>. 
-                Existing references to the previous <code class="filename">task-*</code>
-                names should work in most cases as there is an automatic 
-                upgrade path for most packages.
-                However, you should update references in your own recipes and 
-                configurations as they could be removed in future releases. 
-                You should also rename any custom <code class="filename">task-*</code>
-                recipes to <code class="filename">packagegroup-*</code>, and change 
-                them to inherit <code class="filename">packagegroup</code> instead of 
-                <code class="filename">task</code>, as well as taking the opportunity 
-                to remove anything now handled by 
-                <code class="filename">packagegroup.bbclass</code>, such as providing
-                <code class="filename">-dev</code> and <code class="filename">-dbg</code>
-                packages, setting 
-                <a class="link" href="ref-variables-glos.html#var-LIC_FILES_CHKSUM" title="LIC_FILES_CHKSUM"><code class="filename">LIC_FILES_CHKSUM</code></a>, 
-                and so forth.
-                See the 
-                "<a class="link" href="ref-classes-packagegroup.html" title="7.12. Package Groups - packagegroup.bbclass">Package Groups - packagegroup.bbclass</a>"
-                section for further details.
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/migration.html
deleted file mode 100644
index f7bb138..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/migration.html
+++ /dev/null
@@ -1,31 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>Chapter 4. Migrating to a Newer Yocto Project Release</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="prev" href="other-variables-related-to-commercial-licenses.html" title="3.4.2.2. Other Variables Related to Commercial Licenses">
-<link rel="next" href="moving-to-the-yocto-project-1.3-release.html" title="4.1. Moving to the Yocto Project 1.3 Release">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 4. Migrating to a Newer Yocto Project Release">
-<div class="titlepage"><div><div><h2 class="title">
-<a name="migration"></a>Chapter 4. Migrating to a Newer Yocto Project Release</h2></div></div></div>
-<div class="toc">
-<p><b>Table of Contents</b></p>
-<dl>
-<dt><span class="section"><a href="moving-to-the-yocto-project-1.3-release.html">4.1. Moving to the Yocto Project 1.3 Release</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="1.3-local-configuration.html">4.1.1. Local Configuration</a></span></dt>
-<dt><span class="section"><a href="1.3-recipes.html">4.1.2. Recipes</a></span></dt>
-</dl></dd>
-</dl>
-</div>
-<p>
-        This chapter provides information you can use to migrate work to a 
-        newer Yocto Project release.  You can find the same information in the 
-        release notes for a given release.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/moving-to-the-yocto-project-1.3-release.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/moving-to-the-yocto-project-1.3-release.html
deleted file mode 100644
index 8afa731..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/moving-to-the-yocto-project-1.3-release.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>4.1. Moving to the Yocto Project 1.3 Release</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="migration.html" title="Chapter 4. Migrating to a Newer Yocto Project Release">
-<link rel="prev" href="migration.html" title="Chapter 4. Migrating to a Newer Yocto Project Release">
-<link rel="next" href="1.3-local-configuration.html" title="4.1.1. Local Configuration">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1. Moving to the Yocto Project 1.3 Release">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="moving-to-the-yocto-project-1.3-release"></a>4.1. Moving to the Yocto Project 1.3 Release</h2></div></div></div>
-<p>
-        This section provides migration information for moving to the 
-        Yocto Project 1.3 Release.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/opensuse-packages.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/opensuse-packages.html
deleted file mode 100644
index 16a1860..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/opensuse-packages.html
+++ /dev/null
@@ -1,60 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>1.3.2.3. OpenSUSE Packages</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="required-packages-for-the-host-development-system.html" title="1.3.2. Required Packages for the Host Development System">
-<link rel="prev" href="fedora-packages.html" title="1.3.2.2. Fedora Packages">
-<link rel="next" href="centos-packages.html" title="1.3.2.4. CentOS Packages">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.3.2.3. OpenSUSE Packages">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="opensuse-packages"></a>1.3.2.3. OpenSUSE Packages</h4></div></div></div>
-<p>
-                The following list shows the required packages by function
-                given a supported OpenSUSE Linux distribution:
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem">
-<p><span class="emphasis"><em>Essentials:</em></span>
-                        Packages needed to build an image for a headless 
-                        system:
-                        </p>
-<pre class="literallayout">
-     $ sudo zypper install python gcc gcc-c++ git chrpath make wget python-xml \
-     diffstat texinfo python-curses
-                        </pre>
-</li>
-<li class="listitem">
-<p><span class="emphasis"><em>Graphical Extras:</em></span>
-                        Packages recommended if the host system has graphics support:
-                        </p>
-<pre class="literallayout">
-     $ sudo zypper install libSDL-devel xterm
-                        </pre>
-</li>
-<li class="listitem">
-<p><span class="emphasis"><em>Documentation:</em></span>
-                        Packages needed if you are going to build out the 
-                        Yocto Project documentation manuals:
-                        </p>
-<pre class="literallayout">
-     $ sudo zypper install make fop xsltproc
-                        </pre>
-</li>
-<li class="listitem">
-<p><span class="emphasis"><em>ADT Installer Extras:</em></span>
-                        Packages needed if you are going to be using the 
-                        <a class="link" href="../adt-manual/using-the-adt-installer.html" target="_self">Application Development Toolkit (ADT) Installer</a>:
-                        </p>
-<pre class="literallayout">
-     $ sudo zypper install autoconf automake libtool glib2-devel
-                        </pre>
-</li>
-</ul></div>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/other-variables-related-to-commercial-licenses.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/other-variables-related-to-commercial-licenses.html
deleted file mode 100644
index 31b096e..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/other-variables-related-to-commercial-licenses.html
+++ /dev/null
@@ -1,60 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.4.2.2. Other Variables Related to Commercial Licenses</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="enabling-commercially-licensed-recipes.html" title="3.4.2. Enabling Commercially Licensed Recipes">
-<link rel="prev" href="license-flag-matching.html" title="3.4.2.1. License Flag Matching">
-<link rel="next" href="migration.html" title="Chapter 4. Migrating to a Newer Yocto Project Release">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.2.2. Other Variables Related to Commercial Licenses">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="other-variables-related-to-commercial-licenses"></a>3.4.2.2. Other Variables Related to Commercial Licenses</h4></div></div></div>
-<p>
-                Other helpful variables related to commercial
-                license handling exist and are defined in the
-                <code class="filename">$HOME/poky/meta/conf/distro/include/default-distrovars.inc</code> file:
-                </p>
-<pre class="literallayout">
-     COMMERCIAL_AUDIO_PLUGINS ?= ""
-     COMMERCIAL_VIDEO_PLUGINS ?= ""
-     COMMERCIAL_QT = ""
-                </pre>
-<p>
-                If you want to enable these components, you can do so by making sure you have
-                the following statements in your <code class="filename">local.conf</code> configuration file:
-                </p>
-<pre class="literallayout">
-     COMMERCIAL_AUDIO_PLUGINS = "gst-plugins-ugly-mad \
-        gst-plugins-ugly-mpegaudioparse"
-     COMMERCIAL_VIDEO_PLUGINS = "gst-plugins-ugly-mpeg2dec \
-        gst-plugins-ugly-mpegstream gst-plugins-bad-mpegvideoparse"
-     COMMERCIAL_QT ?= "qmmp"
-     LICENSE_FLAGS_WHITELIST = "commercial_gst-plugins-ugly commercial_gst-plugins-bad commercial_qmmp"
-                </pre>
-<p>
-                Of course, you could also create a matching whitelist
-                for those components using the more general "commercial"
-                in the whitelist, but that would also enable all the
-                other packages with <code class="filename">LICENSE_FLAGS</code> containing
-                "commercial", which you may or may not want:
-                </p>
-<pre class="literallayout">
-     LICENSE_FLAGS_WHITELIST = "commercial"
-                </pre>
-<p>
-            </p>
-<p>
-                Specifying audio and video plug-ins as part of the 
-                <code class="filename">COMMERCIAL_AUDIO_PLUGINS</code> and 
-                <code class="filename">COMMERCIAL_VIDEO_PLUGINS</code> statements
-                or commercial qt components as part of
-                the <code class="filename">COMMERCIAL_QT</code> statement (along
-                with the enabling <code class="filename">LICENSE_FLAGS_WHITELIST</code>) includes the
-                plug-ins or components into built images, thus adding
-                support for media formats or components.
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/overall-architecture.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/overall-architecture.html
deleted file mode 100644
index 89a6979..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/overall-architecture.html
+++ /dev/null
@@ -1,31 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.2.1. Overall Architecture</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="shared-state-cache.html" title="3.2. Shared State Cache">
-<link rel="prev" href="shared-state-cache.html" title="3.2. Shared State Cache">
-<link rel="next" href="checksums.html" title="3.2.2. Checksums (Signatures)">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2.1. Overall Architecture">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="overall-architecture"></a>3.2.1. Overall Architecture</h3></div></div></div>
-<p>
-            When determining what parts of the system need to be built, BitBake 
-            uses a per-task basis and does not use a per-recipe basis.
-            You might wonder why using a per-task basis is preferred over a per-recipe basis.
-            To help explain, consider having the IPK packaging backend enabled and then switching to DEB. 
-            In this case, <code class="filename">do_install</code> and <code class="filename">do_package</code>
-            output are still valid.
-            However, with a per-recipe approach, the build would not include the 
-            <code class="filename">.deb</code> files.        
-            Consequently, you would have to invalidate the whole build and rerun it. 
-            Rerunning everything is not the best situation.
-            Also in this case, the core must be "taught" much about specific tasks. 
-            This methodology does not scale well and does not allow users to easily add new tasks 
-            in layers or as external recipes without touching the packaged-staging core.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/recipe-logging-mechanisms.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/recipe-logging-mechanisms.html
deleted file mode 100644
index add1017..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/recipe-logging-mechanisms.html
+++ /dev/null
@@ -1,41 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.3.7. Recipe Logging Mechanisms</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
-<link rel="prev" href="usingpoky-debugging-variables.html" title="2.3.6. Variables">
-<link rel="next" href="logging-with-python.html" title="2.3.7.1. Logging With Python">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.7. Recipe Logging Mechanisms">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="recipe-logging-mechanisms"></a>2.3.7. Recipe Logging Mechanisms</h3></div></div></div>
-<p>
-            Best practices exist while writing recipes that both log build progress and 
-            act on build conditions such as warnings and errors. 
-            Both Python and Bash language bindings exist for the logging mechanism:
-            </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em>Python:</em></span> For Python functions, BitBake
-                    supports several loglevels: <code class="filename">bb.fatal</code>, 
-                    <code class="filename">bb.error</code>, <code class="filename">bb.warn</code>,
-                    <code class="filename">bb.note</code>, <code class="filename">bb.plain</code>,
-                    and <code class="filename">bb.debug</code>.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>Bash:</em></span> For Bash functions, the same set 
-                    of loglevels exist and are accessed with a similar syntax:
-                    <code class="filename">bbfatal</code>, <code class="filename">bberror</code>, 
-                    <code class="filename">bbwarn</code>, <code class="filename">bbnote</code>, 
-                    <code class="filename">bbplain</code>, and <code class="filename">bbdebug</code>.</p></li>
-</ul></div>
-<p>
-        </p>
-<p>
-            For guidance on how logging is handled in both Python and Bash recipes, see the 
-            <code class="filename">logging.bbclass</code> file in the 
-            <code class="filename">meta/classes</code> folder of the 
-            <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-commandline.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-commandline.html
deleted file mode 100644
index 34c8394..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-commandline.html
+++ /dev/null
@@ -1,79 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>6.6. BitBake Command Line</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-bitbake.html" title="Chapter 6. BitBake">
-<link rel="prev" href="ref-bitbake-runtask.html" title="6.5. Running a Task">
-<link rel="next" href="ref-bitbake-fetchers.html" title="6.7. Fetchers">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.6. BitBake Command Line">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-bitbake-commandline"></a>6.6. BitBake Command Line</h2></div></div></div>
-<p>
-            Following is the BitBake help output:
-        </p>
-<pre class="screen">
-$ bitbake --help
-Usage: bitbake [options] [package ...]
-
-Executes the specified task (default is 'build') for a given set of BitBake files.
-It expects that BBFILES is defined, which is a space separated list of files to
-be executed.  BBFILES does support wildcards.
-Default BBFILES are the .bb files in the current directory.
-
-Options:
-  --version             show program's version number and exit
-  -h, --help            show this help message and exit
-  -b BUILDFILE, --buildfile=BUILDFILE
-                        execute the task against this .bb file, rather than a
-                        package from BBFILES. Does not handle any
-                        dependencies.
-  -k, --continue        continue as much as possible after an error. While the
-                        target that failed, and those that depend on it,
-                        cannot be remade, the other dependencies of these
-                        targets can be processed all the same.
-  -a, --tryaltconfigs   continue with builds by trying to use alternative
-                        providers where possible.
-  -f, --force           force run of specified cmd, regardless of stamp status
-  -c CMD, --cmd=CMD     Specify task to execute. Note that this only executes
-                        the specified task for the providee and the packages
-                        it depends on, i.e. 'compile' does not implicitly call
-                        stage for the dependencies (IOW: use only if you know
-                        what you are doing). Depending on the base.bbclass a
-                        listtasks tasks is defined and will show available
-                        tasks
-  -r PREFILE, --read=PREFILE
-                        read the specified file before bitbake.conf
-  -R POSTFILE, --postread=POSTFILE
-                        read the specified file after bitbake.conf
-  -v, --verbose         output more chit-chat to the terminal
-  -D, --debug           Increase the debug level. You can specify this more
-                        than once.
-  -n, --dry-run         don't execute, just go through the motions
-  -S, --dump-signatures
-                        don't execute, just dump out the signature
-                        construction information
-  -p, --parse-only      quit after parsing the BB files (developers only)
-  -s, --show-versions   show current and preferred versions of all packages
-  -e, --environment     show the global or per-package environment (this is
-                        what used to be bbread)
-  -g, --graphviz        emit the dependency trees of the specified packages in
-                        the dot syntax
-  -I EXTRA_ASSUME_PROVIDED, --ignore-deps=EXTRA_ASSUME_PROVIDED
-                        Assume these dependencies don't exist and are already
-                        provided (equivalent to ASSUME_PROVIDED). Useful to
-                        make dependency graphs more appealing
-  -l DEBUG_DOMAINS, --log-domains=DEBUG_DOMAINS
-                        Show debug logging for the specified logging domains
-  -P, --profile         profile the command and print a report
-  -u UI, --ui=UI        userinterface to use
-  -t SERVERTYPE, --servertype=SERVERTYPE
-                        Choose which server to use, none, process or xmlrpc
-  --revisions-changed   Set the exit code depending on whether upstream
-                        floating revisions have changed or not
-        </pre>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-dependencies.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-dependencies.html
deleted file mode 100644
index e7106ca..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-dependencies.html
+++ /dev/null
@@ -1,34 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>6.3. Dependencies</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-bitbake.html" title="Chapter 6. BitBake">
-<link rel="prev" href="ref-bitbake-providers.html" title="6.2. Preferences and Providers">
-<link rel="next" href="ref-bitbake-tasklist.html" title="6.4. The Task List">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.3. Dependencies">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-bitbake-dependencies"></a>6.3. Dependencies</h2></div></div></div>
-<p>
-            Each target BitBake builds consists of multiple tasks such as 
-            <code class="filename">fetch</code>, <code class="filename">unpack</code>, 
-            <code class="filename">patch</code>, <code class="filename">configure</code>, 
-            and <code class="filename">compile</code>. 
-            For best performance on multi-core systems, BitBake considers each task as an independent 
-            entity with its own set of dependencies. 
-        </p>
-<p>
-            Dependencies are defined through several variables.
-            You can find information about variables BitBake uses in the BitBake documentation,
-            which is found in the <code class="filename">bitbake/doc/manual</code> directory within the
-            <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>. 
-            At a basic level, it is sufficient to know that BitBake uses the 
-            <code class="filename"><a class="link" href="ref-variables-glos.html#var-DEPENDS" title="DEPENDS">DEPENDS</a></code> and 
-            <code class="filename"><a class="link" href="ref-variables-glos.html#var-RDEPENDS" title="RDEPENDS">RDEPENDS</a></code> variables when 
-            calculating dependencies. 
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-fetchers.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-fetchers.html
deleted file mode 100644
index e1bda8b..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-fetchers.html
+++ /dev/null
@@ -1,43 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>6.7. Fetchers</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-bitbake.html" title="Chapter 6. BitBake">
-<link rel="prev" href="ref-bitbake-commandline.html" title="6.6. BitBake Command Line">
-<link rel="next" href="ref-classes.html" title="Chapter 7. Classes">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.7. Fetchers">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-bitbake-fetchers"></a>6.7. Fetchers</h2></div></div></div>
-<p>
-            BitBake also contains a set of "fetcher" modules that allow 
-            retrieval of source code from various types of sources. 
-            For example, BitBake can get source code from a disk with the metadata, from websites, 
-            from remote shell accounts or from Source Code Management (SCM) systems 
-            like <code class="filename">cvs/subversion/git</code>. 
-        </p>
-<p>
-            Fetchers are usually triggered by entries in 
-            <code class="filename"><a class="link" href="ref-variables-glos.html#var-SRC_URI" title="SRC_URI">SRC_URI</a></code>. 
-            You can find information about the options and formats of entries for specific 
-            fetchers in the BitBake manual located in the 
-            <code class="filename">bitbake/doc/manual</code> directory of the 
-            <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>.
-        </p>
-<p>
-            One useful feature for certain Source Code Manager (SCM) fetchers is the ability to 
-            "auto-update" when the upstream SCM changes version. 
-            Since this ability requires certain functionality from the SCM, not all
-            systems support it.
-            Currently Subversion, Bazaar and to a limited extent, Git support the ability to "auto-update". 
-            This feature works using the <code class="filename"><a class="link" href="ref-variables-glos.html#var-SRCREV" title="SRCREV">SRCREV</a></code> 
-            variable. 
-            See the 
-            "<a class="link" href="../dev-manual/platdev-appdev-srcrev.html" target="_self">Using an External SCM</a>" section 
-            in the Yocto Project Development Manual for more information.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-parsing.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-parsing.html
deleted file mode 100644
index c86621e..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-parsing.html
+++ /dev/null
@@ -1,93 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>6.1. Parsing</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-bitbake.html" title="Chapter 6. BitBake">
-<link rel="prev" href="ref-bitbake.html" title="Chapter 6. BitBake">
-<link rel="next" href="ref-bitbake-providers.html" title="6.2. Preferences and Providers">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.1. Parsing">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-bitbake-parsing"></a>6.1. Parsing</h2></div></div></div>
-<p>
-            BitBake parses configuration files, classes, and <code class="filename">.bb</code> files. 
-        </p>
-<p>
-            The first thing BitBake does is look for the <code class="filename">bitbake.conf</code> file.
-            This file resides in the 
-            <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>
-            within the <code class="filename">meta/conf/</code> directory.
-            BitBake finds it by examining its 
-            <a class="link" href="ref-variables-glos.html#var-BBPATH" title="BBPATH"><code class="filename">BBPATH</code></a> environment 
-            variable and looking for the <code class="filename">meta/conf/</code> 
-            directory.
-        </p>
-<p>
-            The <code class="filename">bitbake.conf</code> file lists other configuration 
-            files to include from a <code class="filename">conf/</code> 
-            directory below the directories listed in <code class="filename">BBPATH</code>. 
-            In general, the most important configuration file from a user's perspective 
-            is <code class="filename">local.conf</code>, which contains a user's customized 
-            settings for the OpenEmbedded build environment. 
-            Other notable configuration files are the distribution 
-            configuration file (set by the 
-            <code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO" title="DISTRO">DISTRO</a></code> variable) 
-            and the machine configuration file 
-            (set by the 
-            <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE" title="MACHINE">MACHINE</a></code> variable).  
-            The <code class="filename">DISTRO</code> and <code class="filename">MACHINE</code> BitBake environment 
-            variables are both usually set in 
-            the <code class="filename">local.conf</code> file. 
-            Valid distribution 
-            configuration files are available in the <code class="filename">meta/conf/distro/</code> directory 
-            and valid machine configuration 
-            files in the <code class="filename">meta/conf/machine/</code> directory. 
-            Within the <code class="filename">meta/conf/machine/include/</code> 
-            directory are various <code class="filename">tune-*.inc</code> configuration files that provide common 
-            "tuning" settings specific to and shared between particular architectures and machines.
-        </p>
-<p>
-            After the parsing of the configuration files, some standard classes are included. 
-            The <code class="filename">base.bbclass</code> file is always included.
-            Other classes that are specified in the configuration using the 
-            <code class="filename"><a class="link" href="ref-variables-glos.html#var-INHERIT" title="INHERIT">INHERIT</a></code>
-            variable are also included. 
-            Class files are searched for in a <code class="filename">classes</code> subdirectory 
-            under the paths in <code class="filename">BBPATH</code> in the same way as
-            configuration files.
-        </p>
-<p>
-            After classes are included, the variable 
-            <code class="filename"><a class="link" href="ref-variables-glos.html#var-BBFILES" title="BBFILES">BBFILES</a></code> 
-            is set, usually in
-            <code class="filename">local.conf</code>, and defines the list of places to search for 
-            <code class="filename">.bb</code> files. 
-            By default, the <code class="filename">BBFILES</code> variable specifies the 
-            <code class="filename">meta/recipes-*/</code> directory within Poky. 
-            Adding extra content to <code class="filename">BBFILES</code> is best achieved through the use of 
-            BitBake layers as described in the 
-            "<a class="link" href="../dev-manual/understanding-and-creating-layers.html" target="_self">Understanding and 
-            Creating Layers</a>" section of the Yocto Project Development Manual.
-        </p>
-<p>
-            BitBake parses each <code class="filename">.bb</code> file in <code class="filename">BBFILES</code> and 
-            stores the values of various variables.  
-            In summary, for each <code class="filename">.bb</code> 
-            file the configuration plus the base class of variables are set, followed 
-            by the data in the <code class="filename">.bb</code> file 
-            itself, followed by any inherit commands that
-            <code class="filename">.bb</code> file might contain.
-        </p>
-<p>
-            Because parsing <code class="filename">.bb</code> files is a time 
-            consuming process, a cache is kept to speed up subsequent parsing. 
-            This cache is invalid if the timestamp of the <code class="filename">.bb</code> 
-            file itself changes, or if the timestamps of any of the include, 
-            configuration or class files the <code class="filename">.bb</code>
-            file depends on changes.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-providers.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-providers.html
deleted file mode 100644
index 37d34a0..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-providers.html
+++ /dev/null
@@ -1,63 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>6.2. Preferences and Providers</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-bitbake.html" title="Chapter 6. BitBake">
-<link rel="prev" href="ref-bitbake-parsing.html" title="6.1. Parsing">
-<link rel="next" href="ref-bitbake-dependencies.html" title="6.3. Dependencies">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.2. Preferences and Providers">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-bitbake-providers"></a>6.2. Preferences and Providers</h2></div></div></div>
-<p>
-            Once all the <code class="filename">.bb</code> files have been 
-            parsed, BitBake starts to build the target (<code class="filename">core-image-sato</code>
-            in the previous section's example) and looks for providers of that target.
-            Once a provider is selected, BitBake resolves all the dependencies for  
-            the target. 
-            In the case of <code class="filename">core-image-sato</code>, it would lead to 
-            <code class="filename">packagegroup-core-x11-sato</code>, 
-            which in turn leads to recipes like <code class="filename">matchbox-terminal</code>, 
-            <code class="filename">pcmanfm</code> and <code class="filename">gthumb</code>.
-            These recipes in turn depend on <code class="filename">eglibc</code> and the toolchain.
-        </p>
-<p>
-            Sometimes a target might have multiple providers.
-            A common example is "virtual/kernel", which is provided by each kernel package. 
-            Each machine often selects the best kernel provider by using a line similar to the 
-            following in the machine configuration file:
-        </p>
-<pre class="literallayout">
-     PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
-        </pre>
-<p>
-            The default <code class="filename"><a class="link" href="ref-variables-glos.html#var-PREFERRED_PROVIDER" title="PREFERRED_PROVIDER">PREFERRED_PROVIDER</a></code> 
-            is the provider with the same name as the target.
-        </p>
-<p>
-            Understanding how providers are chosen is made complicated by the fact
-            that multiple versions might exist. 
-            BitBake defaults to the highest version of a provider.
-            Version comparisons are made using the same method as Debian. 
-            You can use the
-            <code class="filename"><a class="link" href="ref-variables-glos.html#var-PREFERRED_VERSION" title="PREFERRED_VERSION">PREFERRED_VERSION</a></code>
-            variable to specify a particular version (usually in the distro configuration).
-            You can influence the order by using the 
-            <code class="filename"><a class="link" href="ref-variables-glos.html#var-DEFAULT_PREFERENCE" title="DEFAULT_PREFERENCE">DEFAULT_PREFERENCE</a></code> 
-            variable. 
-            By default, files have a preference of "0". 
-            Setting the <code class="filename">DEFAULT_PREFERENCE</code> to "-1" makes the 
-            package unlikely to be used unless it is explicitly referenced.
-            Setting the <code class="filename">DEFAULT_PREFERENCE</code> to "1" makes it likely the package is used. 
-            <code class="filename">PREFERRED_VERSION</code> overrides any <code class="filename">DEFAULT_PREFERENCE</code> setting.
-            <code class="filename">DEFAULT_PREFERENCE</code> is often used to mark newer and more experimental package
-            versions until they have undergone sufficient testing to be considered stable.
-        </p>
-<p>
-            In summary, BitBake has created a list of providers, which is prioritized, for each target.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-runtask.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-runtask.html
deleted file mode 100644
index f653e30..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-runtask.html
+++ /dev/null
@@ -1,86 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>6.5. Running a Task</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-bitbake.html" title="Chapter 6. BitBake">
-<link rel="prev" href="ref-bitbake-tasklist.html" title="6.4. The Task List">
-<link rel="next" href="ref-bitbake-commandline.html" title="6.6. BitBake Command Line">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.5. Running a Task">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-bitbake-runtask"></a>6.5. Running a Task</h2></div></div></div>
-<p>
-            Tasks can either be a shell task or a Python task.
-            For shell tasks, BitBake writes a shell script to 
-            <code class="filename">${WORKDIR}/temp/run.do_taskname.pid</code> and then executes the script. 
-            The generated shell script contains all the exported variables, and the shell functions 
-            with all variables expanded. 
-            Output from the shell script goes to the file <code class="filename">${WORKDIR}/temp/log.do_taskname.pid</code>.
-            Looking at the expanded shell functions in the run file and the output in the log files 
-            is a useful debugging technique.
-        </p>
-<p>
-            For Python tasks, BitBake executes the task internally and logs information to the 
-            controlling terminal. 
-            Future versions of BitBake will write the functions to files similar to the way 
-            shell tasks are handled.
-            Logging will be handled in way similar to shell tasks as well.
-        </p>
-<p>
-            Once all the tasks have been completed BitBake exits.
-        </p>
-<p>
-            When running a task, BitBake tightly controls the execution environment 
-            of the build tasks to make sure unwanted contamination from the build machine
-            cannot influence the build. 
-            Consequently, if you do want something to get passed into the build 
-            task's environment, you must take a few steps:
-            </p>
-<div class="orderedlist"><ol class="orderedlist" type="1">
-<li class="listitem">
-<p>Tell BitBake to load what you want from the environment
-                    into the data store. 
-                    You can do so through the <code class="filename">BB_ENV_EXTRAWHITE</code>
-                    variable.
-                    For example, assume you want to prevent the build system from 
-                    accessing your <code class="filename">$HOME/.ccache</code> directory.
-                    The following command tells BitBake to load 
-                    <code class="filename">CCACHE_DIR</code> from the environment into the data
-                    store:
-                    </p>
-<pre class="literallayout">
-     export BB_ENV_EXTRAWHITE="$BB_ENV_EXTRAWHITE CCACHE_DIR" 
-                    </pre>
-</li>
-<li class="listitem">
-<p>Tell BitBake to export what you have loaded into the 
-                    environment store to the task environment of every running task.
-                    Loading something from the environment into the data store
-                    (previous step) only makes it available in the datastore. 
-                    To export it to the task environment of every running task,
-                    use a command similar to the following in your 
-                    <code class="filename">local.conf</code> or distro configuration file:
-                    </p>
-<pre class="literallayout">
-     export CCACHE_DIR
-                    </pre>
-</li>
-</ol></div>
-<p>
-        </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-            A side effect of the previous steps is that BitBake records the variable
-            as a dependency of the build process in things like the shared state
-            checksums. 
-            If doing so results in unnecessary rebuilds of tasks, you can whitelist the 
-            variable so that the shared state code ignores the dependency when it creates
-            checksums.
-            For information on this process, see the <code class="filename">BB_HASHBASE_WHITELIST</code>
-            example in the "<a class="link" href="checksums.html" title="3.2.2. Checksums (Signatures)">Checksums (Signatures)</a>" section.
-        </div>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-tasklist.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-tasklist.html
deleted file mode 100644
index fedbcca..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake-tasklist.html
+++ /dev/null
@@ -1,54 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>6.4. The Task List</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-bitbake.html" title="Chapter 6. BitBake">
-<link rel="prev" href="ref-bitbake-dependencies.html" title="6.3. Dependencies">
-<link rel="next" href="ref-bitbake-runtask.html" title="6.5. Running a Task">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.4. The Task List">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-bitbake-tasklist"></a>6.4. The Task List</h2></div></div></div>
-<p>
-            Based on the generated list of providers and the dependency information, 
-            BitBake can now calculate exactly what tasks it needs to run and in what 
-            order it needs to run them. 
-            The build now starts with BitBake forking off threads up to the limit set in the 
-            <code class="filename"><a class="link" href="ref-variables-glos.html#var-BB_NUMBER_THREADS" title="BB_NUMBER_THREADS">BB_NUMBER_THREADS</a></code> variable.
-            BitBake continues to fork threads as long as there are tasks ready to run,
-            those tasks have all their dependencies met, and the thread threshold has not been 
-            exceeded.
-        </p>
-<p>
-            It is worth noting that you can greatly speed up the build time by properly setting 
-            the <code class="filename">BB_NUMBER_THREADS</code> variable.  
-            See the
-            "<a class="link" href="../yocto-project-qs/building-image.html" target="_self">Building an Image</a>"
-            section in the Yocto Project Quick Start for more information.
-        </p>
-<p>
-            As each task completes, a timestamp is written to the directory specified by the 
-            <code class="filename"><a class="link" href="ref-variables-glos.html#var-STAMP" title="STAMP">STAMP</a></code> variable (usually
-            <code class="filename">build/tmp/stamps/*/</code>). 
-            On subsequent runs, BitBake looks at the <code class="filename">/build/tmp/stamps</code>
-            directory and does not rerun
-            tasks that are already completed unless a timestamp is found to be invalid. 
-            Currently, invalid timestamps are only considered on a per 
-            <code class="filename">.bb</code> file basis.
-            So, for example, if the configure stamp has a timestamp greater than the 
-            compile timestamp for a given target, then the compile task would rerun.
-            Running the compile task again, however, has no effect on other providers 
-            that depend on that target. 
-            This behavior could change or become configurable in future versions of BitBake. 
-        </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-            Some tasks are marked as "nostamp" tasks.
-            No timestamp file is created when these tasks are run.
-            Consequently, "nostamp" tasks are always rerun.
-        </div>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake.html
deleted file mode 100644
index c724158..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-bitbake.html
+++ /dev/null
@@ -1,48 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>Chapter 6. BitBake</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="prev" href="structure-meta-recipes-txt.html" title="5.3.19. meta/recipes.txt">
-<link rel="next" href="ref-bitbake-parsing.html" title="6.1. Parsing">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 6. BitBake">
-<div class="titlepage"><div><div><h2 class="title">
-<a name="ref-bitbake"></a>Chapter 6. BitBake</h2></div></div></div>
-<div class="toc">
-<p><b>Table of Contents</b></p>
-<dl>
-<dt><span class="section"><a href="ref-bitbake-parsing.html">6.1. Parsing</a></span></dt>
-<dt><span class="section"><a href="ref-bitbake-providers.html">6.2. Preferences and Providers</a></span></dt>
-<dt><span class="section"><a href="ref-bitbake-dependencies.html">6.3. Dependencies</a></span></dt>
-<dt><span class="section"><a href="ref-bitbake-tasklist.html">6.4. The Task List</a></span></dt>
-<dt><span class="section"><a href="ref-bitbake-runtask.html">6.5. Running a Task</a></span></dt>
-<dt><span class="section"><a href="ref-bitbake-commandline.html">6.6. BitBake Command Line</a></span></dt>
-<dt><span class="section"><a href="ref-bitbake-fetchers.html">6.7. Fetchers</a></span></dt>
-</dl>
-</div>
-<p>
-        BitBake is a program written in Python that interprets the metadata used by the OpenEmbedded
-        build system.
-        At some point, developers wonder what actually happens when you enter:
-        </p>
-<pre class="literallayout">
-     $ bitbake core-image-sato
-        </pre>
-<p>
-    </p>
-<p>
-        This chapter provides an overview of what happens behind the scenes from BitBake's perspective.
-    </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-        BitBake strives to be a generic "task" executor that is capable of handling complex dependency relationships. 
-        As such, it has no real knowledge of what the tasks being executed actually do. 
-        BitBake just considers a list of tasks with dependencies and handles metadata 
-        that consists of variables in a certain format that get passed to the tasks.
-    </div>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-autotools.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-autotools.html
deleted file mode 100644
index 36ae47a..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-autotools.html
+++ /dev/null
@@ -1,52 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.2. Autotooled Packages - autotools.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-base.html" title="7.1. The base class - base.bbclass">
-<link rel="next" href="ref-classes-update-alternatives.html" title="7.3. Alternatives - update-alternatives.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.2. Autotooled Packages - autotools.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-autotools"></a>7.2. Autotooled Packages - <code class="filename">autotools.bbclass</code>
-</h2></div></div></div>
-<p>
-        Autotools (<code class="filename">autoconf</code>, <code class="filename">automake</code>, 
-        and <code class="filename">libtool</code>) bring standardization. 
-        This class defines a set of tasks (configure, compile etc.) that 
-        work for all Autotooled packages.  
-        It should usually be enough to define a few standard variables 
-        and then simply <code class="filename">inherit autotools</code>.
-        This class can also work with software that emulates Autotools.
-        For more information, see the  
-        "<a class="link" href="../dev-manual/usingpoky-extend-addpkg-autotools.html" target="_self">Autotooled Package</a>"
-        section in the Yocto Project Development Manual.
-    </p>
-<p>
-        It's useful to have some idea of how the tasks defined by this class work
-        and what they do behind the scenes.
-        </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><code class="filename">do_configure</code> &#8208; regenerates the 
-                configure script (using <code class="filename">autoreconf</code>) and then launches it 
-                with a standard set of arguments used during cross-compilation. 
-                You can pass additional parameters to <code class="filename">configure</code> through the 
-                <code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_OECONF" title="EXTRA_OECONF">EXTRA_OECONF</a></code> variable.
-                </p></li>
-<li class="listitem"><p><code class="filename">do_compile</code> &#8208; runs <code class="filename">make</code> with 
-                arguments that specify the compiler and linker. 
-                You can pass additional arguments through 
-                the <code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_OEMAKE" title="EXTRA_OEMAKE">EXTRA_OEMAKE</a></code> variable.
-                </p></li>
-<li class="listitem"><p><code class="filename">do_install</code> &#8208; runs <code class="filename">make install</code> 
-                and passes a DESTDIR option, which takes its value from the standard 
-                <code class="filename"><a class="link" href="ref-variables-glos.html#var-DESTDIR" title="DESTDIR">DESTDIR</a></code> variable.
-                </p></li>
-</ul></div>
-<p>
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-base.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-base.html
deleted file mode 100644
index a10285b..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-base.html
+++ /dev/null
@@ -1,28 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.1. The base class - base.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="next" href="ref-classes-autotools.html" title="7.2. Autotooled Packages - autotools.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.1. The base class - base.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-base"></a>7.1. The base class - <code class="filename">base.bbclass</code>
-</h2></div></div></div>
-<p>
-        The base class is special in that every <code class="filename">.bb</code> 
-        file inherits it automatically. 
-        This class contains definitions for standard basic 
-        tasks such as fetching, unpacking, configuring (empty by default), compiling 
-        (runs any <code class="filename">Makefile</code> present), installing (empty by default) and packaging 
-        (empty by default). 
-        These classes are often overridden or extended by other classes 
-        such as <code class="filename">autotools.bbclass</code> or <code class="filename">package.bbclass</code>. 
-        The class also contains some commonly used functions such as <code class="filename">oe_runmake</code>.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-binconfig.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-binconfig.html
deleted file mode 100644
index bbf035e..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-binconfig.html
+++ /dev/null
@@ -1,30 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.5. Binary config scripts - binconfig.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-update-rc.d.html" title="7.4. Initscripts - update-rc.d.bbclass">
-<link rel="next" href="ref-classes-debian.html" title="7.6. Debian renaming - debian.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.5. Binary config scripts - binconfig.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-binconfig"></a>7.5. Binary config scripts - <code class="filename">binconfig.bbclass</code>
-</h2></div></div></div>
-<p>
-        Before <code class="filename">pkg-config</code> had become widespread, libraries shipped shell
-        scripts to give information about the libraries and include paths needed 
-        to build software (usually named <code class="filename">LIBNAME-config</code>).
-        This class assists any recipe using such scripts.
-    </p>
-<p>
-        During staging, BitBake installs such scripts into the
-        <code class="filename">sysroots/</code> directory. 
-        BitBake also changes all paths to point into the <code class="filename">sysroots/</code>
-        directory so all builds that use the script will use the correct 
-        directories for the cross compiling layout.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-debian.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-debian.html
deleted file mode 100644
index 9d37cbb..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-debian.html
+++ /dev/null
@@ -1,22 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.6. Debian renaming - debian.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-binconfig.html" title="7.5. Binary config scripts - binconfig.bbclass">
-<link rel="next" href="ref-classes-pkgconfig.html" title="7.7. Pkg-config - pkgconfig.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.6. Debian renaming - debian.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-debian"></a>7.6. Debian renaming - <code class="filename">debian.bbclass</code>
-</h2></div></div></div>
-<p>
-        This class renames packages so that they follow the Debian naming
-        policy (i.e. <code class="filename">eglibc</code> becomes <code class="filename">libc6</code>
-        and <code class="filename">eglibc-devel</code> becomes <code class="filename">libc6-dev</code>.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-devshell.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-devshell.html
deleted file mode 100644
index cbbcc4c..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-devshell.html
+++ /dev/null
@@ -1,24 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.11. Developer Shell - devshell.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-distutils.html" title="7.10. Python extensions - distutils.bbclass">
-<link rel="next" href="ref-classes-packagegroup.html" title="7.12. Package Groups - packagegroup.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.11. Developer Shell - devshell.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-devshell"></a>7.11. Developer Shell - <code class="filename">devshell.bbclass</code>
-</h2></div></div></div>
-<p>
-        This class adds the <code class="filename">devshell</code> task. 
-        Distribution policy dictates whether to include this class.
-        See the 
-        "<a class="link" href="../dev-manual/platdev-appdev-devshell.html" target="_self">Using a Development Shell</a>" section 
-        in the Yocto Project Development Manual for more information about using <code class="filename">devshell</code>.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-distutils.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-distutils.html
deleted file mode 100644
index d176cb8..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-distutils.html
+++ /dev/null
@@ -1,31 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.10. Python extensions - distutils.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-perl.html" title="7.9. Perl modules - cpan.bbclass">
-<link rel="next" href="ref-classes-devshell.html" title="7.11. Developer Shell - devshell.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.10. Python extensions - distutils.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-distutils"></a>7.10. Python extensions - <code class="filename">distutils.bbclass</code>
-</h2></div></div></div>
-<p>
-        Recipes for Python extensions are simple.
-        These recipes usually only need to point to the source's archive and then inherit
-        the proper <code class="filename">.bbclass</code> file.
-        Building is split into two methods dependling on which method the module authors used.
-    </p>
-<p>
-        Extensions that use an Autotools-based build system require Autotools and 
-        <code class="filename">distutils</code>-based <code class="filename">.bbclasse</code> files in their recipes.
-    </p>
-<p>
-        Extensions that use <code class="filename">distutils</code>-based build systems require 
-        <code class="filename">distutils.bbclass</code> in their recipes.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-externalsrc.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-externalsrc.html
deleted file mode 100644
index ead3708..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-externalsrc.html
+++ /dev/null
@@ -1,72 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.20. Using External Source - externalsrc.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-useradd.html" title="7.19. Adding Users - useradd.bbclass">
-<link rel="next" href="ref-classes-others.html" title="7.21. Other Classes">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.20. Using External Source - externalsrc.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-externalsrc"></a>7.20. Using External Source - <code class="filename">externalsrc.bbclass</code>
-</h2></div></div></div>
-<p>
-        You can use this class to build software from source code that is external to the 
-        OpenEmbedded build system.  
-        In other words, your source code resides in an external tree outside of the Yocto Project.
-        Building software from an external source tree means that the normal fetch, unpack, and 
-        patch process is not used.
-    </p>
-<p>
-        To use the class, you need to define the 
-        <a class="link" href="ref-variables-glos.html#var-S" title="S"><code class="filename">S</code></a> variable to point to the directory that contains the source files. 
-        You also need to have your recipe inherit the <code class="filename">externalsrc.bbclass</code> class.
-    </p>
-<p>
-        This class expects the source code to support recipe builds that use the 
-        <a class="link" href="ref-variables-glos.html#var-B" title="B"><code class="filename">B</code></a> variable to point to the directory in 
-        which the OpenEmbedded build system places the generated objects built from the recipes.
-        By default, the <code class="filename">B</code> directory is set to the following, which is separate from the 
-        Source Directory (<code class="filename">S</code>):
-        </p>
-<pre class="literallayout">
-     ${WORKDIR}/${BPN}-{PV}/
-        </pre>
-<p>
-        See the glossary entries for the
-        <a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR"><code class="filename">WORKDIR</code></a>, 
-        <a class="link" href="ref-variables-glos.html#var-BPN" title="BPN"><code class="filename">BPN</code></a>, 
-        <a class="link" href="ref-variables-glos.html#var-PV" title="PV"><code class="filename">PV</code></a>,
-        <a class="link" href="ref-variables-glos.html#var-S" title="S"><code class="filename">S</code></a>, and 
-        <a class="link" href="ref-variables-glos.html#var-B" title="B"><code class="filename">B</code></a> for more information.
-    </p>
-<p>
-        You can build object files in the external tree by setting the
-        <code class="filename">B</code> variable equal to <code class="filename">"${S}"</code>.
-        However, this practice does not work well if you use the source for more than one variant
-        (i.e., "natives" such as <code class="filename">quilt-native</code>, 
-        or "crosses" such as <code class="filename">gcc-cross</code>).
-        So, be sure there are no "native", "cross", or "multilib" variants of the recipe.
-    </p>
-<p>
-        If you do want to build different variants of a recipe, you can use the 
-        <a class="link" href="ref-variables-glos.html#var-BBCLASSEXTEND" title="BBCLASSEXTEND"><code class="filename">BBCLASSEXTEND</code></a> variable. 
-        When you do, the <a class="link" href="ref-variables-glos.html#var-B" title="B"><code class="filename">B</code></a> variable must support the 
-        recipe's ability to build variants in different working directories.
-        Most autotools-based recipes support separating these directories.
-        The OpenEmbedded build system defaults to using separate directories for <code class="filename">gcc</code>
-        and some kernel recipes.
-        Alternatively, you can make sure that separate recipes exist that each 
-        use the <code class="filename">BBCLASSEXTEND</code> variable to build each variant.
-        The separate recipes can inherit a single target recipe.
-    </p>
-<p>
-        For information on how to use this class, see the 
-        "<a class="link" href="../dev-manual/building-software-from-an-external-source.html" target="_self">Building
-        Software from an External Source</a>" section in the Yocto Project Development Manual.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-image.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-image.html
deleted file mode 100644
index a8453e9..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-image.html
+++ /dev/null
@@ -1,31 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.15. Creating images - image.bbclass and rootfs*.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-kernel.html" title="7.14. Building kernels - kernel.bbclass">
-<link rel="next" href="ref-classes-sanity.html" title="7.16. Host System sanity checks - sanity.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.15. Creating images - image.bbclass and rootfs*.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-image"></a>7.15. Creating images - <code class="filename">image.bbclass</code> and <code class="filename">rootfs*.bbclass</code>
-</h2></div></div></div>
-<p>
-        These classes add support for creating images in several formats. 
-        First, the root filesystem is created from packages using
-        one of the <code class="filename">rootfs_*.bbclass</code> 
-        files (depending on the package format used) and then the image is created.
-    </p>
-<p>
-        The <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_FSTYPES" title="IMAGE_FSTYPES">IMAGE_FSTYPES</a></code>
-        variable controls the types of images to generate.
-    </p>
-<p>        
-        The <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_INSTALL" title="IMAGE_INSTALL">IMAGE_INSTALL</a></code>
-        variable controls the list of packages to install into the image.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-insane.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-insane.html
deleted file mode 100644
index 1cdf589..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-insane.html
+++ /dev/null
@@ -1,105 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.17. Generated output quality assurance checks - insane.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-sanity.html" title="7.16. Host System sanity checks - sanity.bbclass">
-<link rel="next" href="ref-classes-siteinfo.html" title="7.18. Autotools configuration data cache - siteinfo.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.17. Generated output quality assurance checks - insane.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-insane"></a>7.17. Generated output quality assurance checks - <code class="filename">insane.bbclass</code>
-</h2></div></div></div>
-<p>
-        This class adds a step to the package generation process that sanity checks the
-        packages generated by the OpenEmbedded build system.
-        A range of checks are performed that check the build's output
-        for common problems that show up during runtime.
-        Distribution policy usually dictates whether to include this class.
-    </p>
-<p>
-        You can configure the sanity checks so that specific test failures either raise a warning or 
-        an error message.  
-        Typically, failures for new tests generate a warning.
-        Subsequent failures for the same test would then generate an error message 
-        once the metadata is in a known and good condition.
-        You use the <code class="filename">WARN_QA</code> variable to specify tests for which you 
-        want to generate a warning message on failure.
-        You use the <code class="filename">ERROR_QA</code> variable to specify tests for which you 
-        want to generate an error message on failure.
-    </p>
-<p>
-        The following list shows the tests you can list with the <code class="filename">WARN_QA</code>
-        and <code class="filename">ERROR_QA</code> variables:
-        </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">ldflags:</code></em></span>
-                Ensures that the binaries were linked with the 
-                <code class="filename">LDFLAGS</code> options provided by the build system. 
-                If this test fails, check that the <code class="filename">LDFLAGS</code> variable
-                is being passed to the linker command.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">useless-rpaths:</code></em></span>
-                Checks for dynamic library load paths (rpaths) in the binaries that 
-                by default on a standard system are searched by the linker (e.g.
-                <code class="filename">/lib</code> and <code class="filename">/usr/lib</code>). 
-                While these paths will not cause any breakage, they do waste space and 
-                are unnecessary.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">rpaths:</code></em></span>
-                Checks for rpaths in the binaries that contain build system paths such
-                as <code class="filename">TMPDIR</code>.
-                If this test fails, bad <code class="filename">-rpath</code> options are being 
-                passed to the linker commands and your binaries have potential security 
-                issues.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">dev-so:</code></em></span>
-                Checks that the <code class="filename">.so</code> symbolic links are in the 
-                <code class="filename">-dev</code> package and not in any of the other packages. 
-                In general, these symlinks are only useful for development purposes.
-                Thus, the <code class="filename">-dev</code> package is the correct location for
-                them. 
-                Some very rare cases do exist for dynamically loaded modules where 
-                these symlinks are needed instead in the main package.
-                </p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">debug-files:</code></em></span>
-                Checks for <code class="filename">.debug</code> directories in anything but the 
-                <code class="filename">-dbg</code> package. 
-                The debug files should all be in the <code class="filename">-dbg</code> package.
-                Thus, anything packaged elsewhere is incorrect packaging.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">arch:</code></em></span>
-                Checks the Executable and Linkable Format (ELF) type, bit size and endianness 
-                of any binaries to ensure it matches the target architecture. 
-                This test fails if any binaries don't match the type since there would be an 
-                incompatibility. 
-                Sometimes software, like bootloaders, might need to bypass this check.
-                </p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">debug-deps:</code></em></span>
-                Checks that <code class="filename">-dbg</code> packages only depend on other
-                <code class="filename">-dbg</code> packages and not on any other types of packages,
-                which would cause a packaging bug.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">dev-deps:</code></em></span>
-                Checks that <code class="filename">-dev</code> packages only depend on other 
-                <code class="filename">-dev</code> packages and not on any other types of packages,
-                which would be a packaging bug.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">pkgconfig:</code></em></span>
-                Checks <code class="filename">.pc</code> files for any 
-                <code class="filename">TMPDIR/WORKDIR</code> paths. 
-                Any <code class="filename">.pc</code> file containing these paths is incorrect 
-                since <code class="filename">pkg-config</code> itself adds the correct sysroot prefix 
-                when the files are accessed.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">la:</code></em></span>
-                Checks <code class="filename">.la</code> files for any <code class="filename">TMPDIR</code>
-                paths. 
-                Any <code class="filename">.la</code> file continaing these paths is incorrect since 
-                <code class="filename">libtool</code> adds the correct sysroot prefix when using the 
-                files automatically itself.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">desktop:</code></em></span>
-                Runs the <code class="filename">desktop-file-validate</code> program against any 
-                <code class="filename">.desktop</code> files to validate their contents against 
-                the specification for <code class="filename">.desktop</code> files.</p></li>
-</ul></div>
-<p>
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-kernel.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-kernel.html
deleted file mode 100644
index 72afff8..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-kernel.html
+++ /dev/null
@@ -1,36 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.14. Building kernels - kernel.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-package.html" title="7.13. Packaging - package*.bbclass">
-<link rel="next" href="ref-classes-image.html" title="7.15. Creating images - image.bbclass and rootfs*.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.14. Building kernels - kernel.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-kernel"></a>7.14. Building kernels - <code class="filename">kernel.bbclass</code>
-</h2></div></div></div>
-<p>
-        This class handles building Linux kernels. 
-        The class contains code to build all kernel trees. 
-        All needed headers are staged into the
-        <code class="filename"><a class="link" href="ref-variables-glos.html#var-STAGING_KERNEL_DIR" title="STAGING_KERNEL_DIR">STAGING_KERNEL_DIR</a></code>
-        directory to allow out-of-tree module builds using <code class="filename">module.bbclass</code>.
-    </p>
-<p>
-        This means that each built kernel module is packaged separately and inter-module 
-        dependencies are created by parsing the <code class="filename">modinfo</code> output. 
-        If all modules are required, then installing the <code class="filename">kernel-modules</code>
-        package installs all packages with modules and various other kernel packages 
-        such as <code class="filename">kernel-vmlinux</code>.
-    </p>
-<p>
-        Various other classes are used by the kernel and module classes internally including 
-        <code class="filename">kernel-arch.bbclass</code>, <code class="filename">module_strip.bbclass</code>, 
-        <code class="filename">module-base.bbclass</code>, and <code class="filename">linux-kernel-base.bbclass</code>.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-others.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-others.html
deleted file mode 100644
index cafdb13..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-others.html
+++ /dev/null
@@ -1,24 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.21. Other Classes</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-externalsrc.html" title="7.20. Using External Source - externalsrc.bbclass">
-<link rel="next" href="ref-images.html" title="Chapter 8. Images">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.21. Other Classes">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-others"></a>7.21. Other Classes</h2></div></div></div>
-<p>
-        Thus far, this chapter has discussed only the most useful and important 
-        classes.
-        However, other classes exist within the <code class="filename">meta/classes</code> directory 
-        in the <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>.
-        You can examine the <code class="filename">.bbclass</code> files directly for more 
-        information. 
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-package.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-package.html
deleted file mode 100644
index eb43660..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-package.html
+++ /dev/null
@@ -1,73 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.13. Packaging - package*.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-packagegroup.html" title="7.12. Package Groups - packagegroup.bbclass">
-<link rel="next" href="ref-classes-kernel.html" title="7.14. Building kernels - kernel.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.13. Packaging - package*.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-package"></a>7.13. Packaging - <code class="filename">package*.bbclass</code>
-</h2></div></div></div>
-<p>
-        The packaging classes add support for generating packages from a build's
-        output. 
-        The core generic functionality is in <code class="filename">package.bbclass</code>.
-        The code specific to particular package types is contained in various sub-classes such as
-        <code class="filename">package_deb.bbclass</code>, <code class="filename">package_ipk.bbclass</code>,
-        and <code class="filename">package_rpm.bbclass</code>. 
-        Most users will want one or more of these classes.
-    </p>
-<p>
-        You can control the list of resulting package formats by using the 
-        <code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGE_CLASSES" title="PACKAGE_CLASSES">PACKAGE_CLASSES</a></code> 
-        variable defined in the <code class="filename">local.conf</code> configuration file, 
-        which is located in the <code class="filename">conf</code> folder of the 
-        <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>. 
-        When defining the variable, you can specify one or more package types.
-        Since images are generated from packages, a packaging class is 
-        needed to enable image generation.
-        The first class listed in this variable is used for image generation. 
-    </p>
-<p>
-        The package class you choose can affect build-time performance and has space
-        ramifications.
-        In general, building a package with RPM takes about thirty percent more time as 
-        compared to using IPK to build the same or similar package.
-        This comparison takes into account a complete build of the package with all 
-        dependencies previously built.
-        The reason for this discrepancy is because the RPM package manager creates and 
-        processes more metadata than the IPK package manager.
-        Consequently, you might consider setting <code class="filename">PACKAGE_CLASSES</code>
-        to "package_ipk" if you are building smaller systems.
-    </p>
-<p>
-        Keep in mind, however, that RPM starts to provide more abilities than IPK due to 
-        the fact that it processes more metadata.
-        For example, this information includes individual file types, file checksum generation
-        and evaluation on install, sparse file support, conflict detection and resolution
-        for multilib systems, ACID style upgrade, and repackaging abilities for rollbacks.
-    </p>
-<p>
-        Another consideration for packages built using the RPM package manager is space.
-        For smaller systems, the extra space used for the Berkley Database and the amount 
-        of metadata can affect your ability to do on-device upgrades.
-    </p>
-<p>
-        You can find additional information on the effects of the package class at these 
-        two Yocto Project mailing list links:
-        </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><a class="ulink" href="http://lists.yoctoproject.org/pipermail/poky/2011-May/006362.html" target="_self">
-                https://lists.yoctoproject.org/pipermail/poky/2011-May/006362.html</a></p></li>
-<li class="listitem"><p><a class="ulink" href="http://lists.yoctoproject.org/pipermail/poky/2011-May/006363.html" target="_self">
-                https://lists.yoctoproject.org/pipermail/poky/2011-May/006363.html</a></p></li>
-</ul></div>
-<p>
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-packagegroup.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-packagegroup.html
deleted file mode 100644
index 9694433..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-packagegroup.html
+++ /dev/null
@@ -1,33 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.12. Package Groups - packagegroup.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-devshell.html" title="7.11. Developer Shell - devshell.bbclass">
-<link rel="next" href="ref-classes-package.html" title="7.13. Packaging - package*.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.12. Package Groups - packagegroup.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-packagegroup"></a>7.12. Package Groups - <code class="filename">packagegroup.bbclass</code>
-</h2></div></div></div>
-<p>
-        This class sets default values appropriate for package group recipes (such as 
-        <code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGES" title="PACKAGES">PACKAGES</a></code>, 
-        <code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGE_ARCH" title="PACKAGE_ARCH">PACKAGE_ARCH</a></code>, 
-        <code class="filename"><a class="link" href="ref-variables-glos.html#var-ALLOW_EMPTY" title="ALLOW_EMPTY">ALLOW_EMPTY</a></code>, 
-        and so forth. 
-        It is highly recommended that all package group recipes inherit this class.
-    </p>
-<p>
-        For information on how to use this class, see the 
-        "<a class="link" href="../dev-manual/usingpoky-extend-customimage-customtasks.html" target="_self">Customizing Images Using Custom Package Tasks</a>" 
-        section in the Yocto Project Development Manual.
-    </p>
-<p>
-        Previously, this class was named <code class="filename">task.bbclass</code>.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-perl.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-perl.html
deleted file mode 100644
index b4be9b4..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-perl.html
+++ /dev/null
@@ -1,31 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.9. Perl modules - cpan.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-src-distribute.html" title="7.8. Distribution of sources - src_distribute_local.bbclass">
-<link rel="next" href="ref-classes-distutils.html" title="7.10. Python extensions - distutils.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.9. Perl modules - cpan.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-perl"></a>7.9. Perl modules - <code class="filename">cpan.bbclass</code>
-</h2></div></div></div>
-<p>
-        Recipes for Perl modules are simple.
-        These recipes usually only need to point to the source's archive and then inherit the 
-        proper <code class="filename">.bbclass</code> file.
-        Building is split into two methods depending on which method the module authors used.
-    </p>
-<p>
-        Modules that use old <code class="filename">Makefile.PL</code>-based build system require
-        <code class="filename">cpan.bbclass</code> in their recipes.
-    </p>
-<p>
-        Modules that use <code class="filename">Build.PL</code>-based build system require
-        using <code class="filename">cpan_build.bbclass</code> in their recipes.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-pkgconfig.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-pkgconfig.html
deleted file mode 100644
index 09566fd..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-pkgconfig.html
+++ /dev/null
@@ -1,27 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.7. Pkg-config - pkgconfig.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-debian.html" title="7.6. Debian renaming - debian.bbclass">
-<link rel="next" href="ref-classes-src-distribute.html" title="7.8. Distribution of sources - src_distribute_local.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.7. Pkg-config - pkgconfig.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-pkgconfig"></a>7.7. Pkg-config - <code class="filename">pkgconfig.bbclass</code>
-</h2></div></div></div>
-<p>
-        <code class="filename">pkg-config</code> brought standardization and this class aims to make its
-        integration smooth for all libraries that make use of it.
-    </p>
-<p>
-        During staging, BitBake installs <code class="filename">pkg-config</code> data into the
-        <code class="filename">sysroots/</code> directory. 
-        By making use of sysroot functionality within <code class="filename">pkg-config</code>,
-        this class no longer has to manipulate the files.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-sanity.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-sanity.html
deleted file mode 100644
index 0e3a19a..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-sanity.html
+++ /dev/null
@@ -1,25 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.16. Host System sanity checks - sanity.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-image.html" title="7.15. Creating images - image.bbclass and rootfs*.bbclass">
-<link rel="next" href="ref-classes-insane.html" title="7.17. Generated output quality assurance checks - insane.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.16. Host System sanity checks - sanity.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-sanity"></a>7.16. Host System sanity checks - <code class="filename">sanity.bbclass</code>
-</h2></div></div></div>
-<p>
-        This class checks to see if prerequisite software is present so that 
-        users can be notified of potential problems that might affect their build. 
-        The class also performs basic user configuration checks from 
-        the <code class="filename">local.conf</code> configuration file to
-        prevent common mistakes that cause build failures. 
-        Distribution policy usually determines whether to include this class.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-siteinfo.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-siteinfo.html
deleted file mode 100644
index 878794d..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-siteinfo.html
+++ /dev/null
@@ -1,39 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.18. Autotools configuration data cache - siteinfo.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-insane.html" title="7.17. Generated output quality assurance checks - insane.bbclass">
-<link rel="next" href="ref-classes-useradd.html" title="7.19. Adding Users - useradd.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.18. Autotools configuration data cache - siteinfo.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-siteinfo"></a>7.18. Autotools configuration data cache - <code class="filename">siteinfo.bbclass</code>
-</h2></div></div></div>
-<p>
-        Autotools can require tests that must execute on the target hardware.
-        Since this is not possible in general when cross compiling, site information is
-        used to provide cached test results so these tests can be skipped over but
-        still make the correct values available.
-        The <code class="filename"><a class="link" href="structure-meta-site.html" title="5.3.18. meta/site/">meta/site directory</a></code>
-        contains test results sorted into different categories such as architecture, endianness, and
-        the <code class="filename">libc</code> used. 
-        Site information provides a list of files containing data relevant to 
-        the current build in the 
-        <code class="filename"><a class="link" href="ref-variables-glos.html#var-CONFIG_SITE" title="CONFIG_SITE">CONFIG_SITE</a></code> variable 
-        that Autotools automatically picks up.
-    </p>
-<p>
-        The class also provides variables like 
-        <code class="filename"><a class="link" href="ref-variables-glos.html#var-SITEINFO_ENDIANNESS" title="SITEINFO_ENDIANNESS">SITEINFO_ENDIANNESS</a></code> 
-        and <code class="filename"><a class="link" href="ref-variables-glos.html#var-SITEINFO_BITS" title="SITEINFO_BITS">SITEINFO_BITS</a></code> 
-        that can be used elsewhere in the metadata.
-    </p>
-<p>
-        Because this class is included from <code class="filename">base.bbclass</code>, it is always active.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-src-distribute.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-src-distribute.html
deleted file mode 100644
index a1bbb8b..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-src-distribute.html
+++ /dev/null
@@ -1,43 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.8. Distribution of sources - src_distribute_local.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-pkgconfig.html" title="7.7. Pkg-config - pkgconfig.bbclass">
-<link rel="next" href="ref-classes-perl.html" title="7.9. Perl modules - cpan.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.8. Distribution of sources - src_distribute_local.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-src-distribute"></a>7.8. Distribution of sources - <code class="filename">src_distribute_local.bbclass</code>
-</h2></div></div></div>
-<p>
-        Many software licenses require that source files be provided along with the binaries.
-        To simplify this process, two classes were created:
-        <code class="filename">src_distribute.bbclass</code> and 
-        <code class="filename">src_distribute_local.bbclass</code>.
-    </p>
-<p>
-        The results of these classes are <code class="filename">tmp/deploy/source/</code> 
-        subdirs with sources sorted by 
-        <code class="filename"><a class="link" href="ref-variables-glos.html#var-LICENSE" title="LICENSE">LICENSE</a></code> field. 
-        If recipes list few licenses (or have entries like "Bitstream Vera"),
-        the source archive is placed in each license directory.
-    </p>
-<p>
-        This class operates using three modes:
-        </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em>copy:</em></span> Copies the files to the 
-                distribute directory.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>symlink:</em></span> Symlinks the files to the 
-                distribute directory.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>move+symlink:</em></span> Moves the files into 
-                the distribute directory and then symlinks them back.</p></li>
-</ul></div>
-<p>
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-update-alternatives.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-update-alternatives.html
deleted file mode 100644
index cb6dfac..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-update-alternatives.html
+++ /dev/null
@@ -1,48 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.3. Alternatives - update-alternatives.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-autotools.html" title="7.2. Autotooled Packages - autotools.bbclass">
-<link rel="next" href="ref-classes-update-rc.d.html" title="7.4. Initscripts - update-rc.d.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.3. Alternatives - update-alternatives.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-update-alternatives"></a>7.3. Alternatives - <code class="filename">update-alternatives.bbclass</code>
-</h2></div></div></div>
-<p>
-        Several programs can fulfill the same or similar function and be installed with the same name. 
-        For example, the <code class="filename">ar</code> command is available from the 
-        <code class="filename">busybox</code>, <code class="filename">binutils</code> and 
-        <code class="filename">elfutils</code> packages. 
-        The <code class="filename">update-alternatives.bbclass</code> class handles renaming the 
-        binaries so that multiple packages can be installed without conflicts. 
-        The <code class="filename">ar</code> command still works regardless of which packages are installed
-        or subsequently removed. 
-        The class renames the conflicting binary in each package and symlinks the highest 
-        priority binary during installation or removal of packages.
-    </p>
-<p>
-        Four variables control this class:
-        </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><code class="filename">ALTERNATIVE_NAME</code> &#8208; The name of the 
-                binary that is replaced (<code class="filename">ar</code> in this example).</p></li>
-<li class="listitem"><p><code class="filename">ALTERNATIVE_LINK</code> &#8208; The path to 
-                the resulting binary (<code class="filename">/bin/ar</code> in this example).</p></li>
-<li class="listitem"><p><code class="filename">ALTERNATIVE_PATH</code> &#8208; The path to the 
-                real binary (<code class="filename">/usr/bin/ar.binutils</code> in this example).</p></li>
-<li class="listitem"><p><code class="filename">ALTERNATIVE_PRIORITY</code> &#8208; The priority of 
-                the binary. 
-                The version with the most features should have the highest priority.</p></li>
-</ul></div>
-<p>
-    </p>
-<p>
-	Currently, the OpenEmbedded build system supports only one binary per package.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-update-rc.d.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-update-rc.d.html
deleted file mode 100644
index 7ab1688..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-update-rc.d.html
+++ /dev/null
@@ -1,28 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.4. Initscripts - update-rc.d.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-update-alternatives.html" title="7.3. Alternatives - update-alternatives.bbclass">
-<link rel="next" href="ref-classes-binconfig.html" title="7.5. Binary config scripts - binconfig.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.4. Initscripts - update-rc.d.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-update-rc.d"></a>7.4. Initscripts - <code class="filename">update-rc.d.bbclass</code>
-</h2></div></div></div>
-<p>
-        This class uses <code class="filename">update-rc.d</code> to safely install an 
-        initialization script on behalf of the package. 
-        The OpenEmbedded build system takes care of details such as making sure the script is stopped before 
-        a package is removed and started when the package is installed. 
-        Three variables control this class: 
-        <code class="filename"><a class="link" href="ref-variables-glos.html#var-INITSCRIPT_PACKAGES" title="INITSCRIPT_PACKAGES">INITSCRIPT_PACKAGES</a></code>, 
-        <code class="filename"><a class="link" href="ref-variables-glos.html#var-INITSCRIPT_NAME" title="INITSCRIPT_NAME">INITSCRIPT_NAME</a></code> and
-        <code class="filename"><a class="link" href="ref-variables-glos.html#var-INITSCRIPT_PARAMS" title="INITSCRIPT_PARAMS">INITSCRIPT_PARAMS</a></code>.
-        See the variable links for details.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-useradd.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-useradd.html
deleted file mode 100644
index cc78211..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes-useradd.html
+++ /dev/null
@@ -1,28 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>7.19. Adding Users - useradd.bbclass</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-classes.html" title="Chapter 7. Classes">
-<link rel="prev" href="ref-classes-siteinfo.html" title="7.18. Autotools configuration data cache - siteinfo.bbclass">
-<link rel="next" href="ref-classes-externalsrc.html" title="7.20. Using External Source - externalsrc.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="7.19. Adding Users - useradd.bbclass">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-classes-useradd"></a>7.19. Adding Users - <code class="filename">useradd.bbclass</code>
-</h2></div></div></div>
-<p>
-        If you have packages that install files that are owned by custom users or groups, 
-        you can use this class to specify those packages and associate the users and groups
-        with those packages.
-        The <code class="filename">meta-skeleton/recipes-skeleton/useradd/useradd-example.bb</code> 
-        recipe in the <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>
-        provides a simple exmample that shows how to add three 
-        users and groups to two packages.
-        See the <code class="filename">useradd-example.bb</code> for more information on how to 
-        use this class.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes.html
deleted file mode 100644
index 35cc535..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-classes.html
+++ /dev/null
@@ -1,61 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>Chapter 7. Classes</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="prev" href="ref-bitbake-fetchers.html" title="6.7. Fetchers">
-<link rel="next" href="ref-classes-base.html" title="7.1. The base class - base.bbclass">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 7. Classes">
-<div class="titlepage"><div><div><h2 class="title">
-<a name="ref-classes"></a>Chapter 7. Classes</h2></div></div></div>
-<div class="toc">
-<p><b>Table of Contents</b></p>
-<dl>
-<dt><span class="section"><a href="ref-classes-base.html">7.1. The base class - <code class="filename">base.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-autotools.html">7.2. Autotooled Packages - <code class="filename">autotools.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-update-alternatives.html">7.3. Alternatives - <code class="filename">update-alternatives.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-update-rc.d.html">7.4. Initscripts - <code class="filename">update-rc.d.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-binconfig.html">7.5. Binary config scripts - <code class="filename">binconfig.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-debian.html">7.6. Debian renaming - <code class="filename">debian.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-pkgconfig.html">7.7. Pkg-config - <code class="filename">pkgconfig.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-src-distribute.html">7.8. Distribution of sources - <code class="filename">src_distribute_local.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-perl.html">7.9. Perl modules - <code class="filename">cpan.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-distutils.html">7.10. Python extensions - <code class="filename">distutils.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-devshell.html">7.11. Developer Shell - <code class="filename">devshell.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-packagegroup.html">7.12. Package Groups - <code class="filename">packagegroup.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-package.html">7.13. Packaging - <code class="filename">package*.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-kernel.html">7.14. Building kernels - <code class="filename">kernel.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-image.html">7.15. Creating images - <code class="filename">image.bbclass</code> and <code class="filename">rootfs*.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-sanity.html">7.16. Host System sanity checks - <code class="filename">sanity.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-insane.html">7.17. Generated output quality assurance checks - <code class="filename">insane.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-siteinfo.html">7.18. Autotools configuration data cache - <code class="filename">siteinfo.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-useradd.html">7.19. Adding Users - <code class="filename">useradd.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-externalsrc.html">7.20. Using External Source - <code class="filename">externalsrc.bbclass</code></a></span></dt>
-<dt><span class="section"><a href="ref-classes-others.html">7.21. Other Classes</a></span></dt>
-</dl>
-</div>
-<p>
-    Class files are used to abstract common functionality and share it amongst multiple 
-    <code class="filename">.bb</code> files. 
-    Any metadata usually found in a <code class="filename">.bb</code> file can also be placed in a class 
-    file. 
-    Class files are identified by the extension <code class="filename">.bbclass</code> and are usually placed 
-    in a <code class="filename">classes/</code> directory beneath the 
-    <code class="filename">meta*/</code> directory found in the 
-    <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>.
-    Class files can also be pointed to by BUILDDIR (e.g. <code class="filename">build/</code>)in the same way as
-    <code class="filename">.conf</code> files in the <code class="filename">conf</code> directory. 
-    Class files are searched for in <a class="link" href="ref-variables-glos.html#var-BBPATH" title="BBPATH"><code class="filename">BBPATH</code></a>
-    using the same method by which <code class="filename">.conf</code> files are searched.
-</p>
-<p>
-    In most cases inheriting the class is enough to enable its features, although 
-    for some classes you might need to set variables or override some of the 
-    default behaviour.
-</p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-backfill.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-backfill.html
deleted file mode 100644
index 0ad90df..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-backfill.html
+++ /dev/null
@@ -1,88 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>9.4. Feature Backfilling</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-features.html" title="Chapter 9. Reference: Features">
-<link rel="prev" href="ref-features-image.html" title="9.3. Images">
-<link rel="next" href="ref-variables-glos.html" title="Chapter 10. Variables Glossary">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="9.4. Feature Backfilling">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-features-backfill"></a>9.4. Feature Backfilling</h2></div></div></div>
-<p>
-            Sometimes it is necessary in the OpenEmbedded build system to extend
-            <a class="link" href="ref-variables-glos.html#var-MACHINE_FEATURES" title="MACHINE_FEATURES"><code class="filename">MACHINE_FEATURES</code></a>
-            or <a class="link" href="ref-variables-glos.html#var-DISTRO_FEATURES" title="DISTRO_FEATURES"><code class="filename">DISTRO_FEATURES</code></a>
-            to control functionality that was previously enabled and not able 
-            to be disabled. 
-            For these cases, we need to add an
-            additional feature item to appear in one of these variables, 
-            but we do not want to force developers who have existing values 
-            of the variables in their configuration to add the new feature 
-            in order to retain the same overall level of functionality. 
-            Thus, the OpenEmbedded build system has a mechanism to
-            automatically "backfill" these added features into existing 
-            distro or machine configurations. 
-            You can see the list of features for which this is done by
-            finding the 
-            <a class="link" href="ref-variables-glos.html#var-DISTRO_FEATURES_BACKFILL" title="DISTRO_FEATURES_BACKFILL"><code class="filename">DISTRO_FEATURES_BACKFILL</code></a>
-            and <a class="link" href="ref-variables-glos.html#var-MACHINE_FEATURES_BACKFILL" title="MACHINE_FEATURES_BACKFILL"><code class="filename">MACHINE_FEATURES_BACKFILL</code></a>
-            variables in the <code class="filename">meta/conf/bitbake.conf</code> file.
-        </p>
-<p>
-            Because such features are backfilled by default into all 
-            configurations as described in the previous paragraph, developers 
-            who wish to disable the new features need to be able to selectively 
-            prevent the backfilling from occurring.
-            They can do this by adding the undesired feature or features to the
-            <a class="link" href="ref-variables-glos.html#var-DISTRO_FEATURES_BACKFILL_CONSIDERED" title="DISTRO_FEATURES_BACKFILL_CONSIDERED"><code class="filename">DISTRO_FEATURES_BACKFILL_CONSIDERED</code></a> 
-            or <a class="link" href="ref-variables-glos.html#var-MACHINE_FEATURES_BACKFILL_CONSIDERED" title="MACHINE_FEATURES_BACKFILL_CONSIDERED"><code class="filename">MACHINE_FEATURES_BACKFILL_CONSIDERED</code></a>
-            variables for distro features and machine features respectively.
-        </p>
-<p>
-            Here are two examples to help illustrate feature backfilling:
-            </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em>The "pulseaudio" distro feature option</em></span>: 
-                    Previously, PulseAudio support was enabled within the Qt and 
-                    GStreamer frameworks.
-                    Because of this, the feature is backfilled and thus 
-                    enabled for all distros through the 
-                    <code class="filename">DISTRO_FEATURES_BACKFILL</code>
-                    variable in the <code class="filename">meta/conf/bitbake.conf</code> file.
-                    However, your distro needs to disable the feature.
-                    You can disable the feature without affecting 
-                    other existing distro configurations that need PulseAudio support
-                    by adding "pulseaudio" to
-                    <code class="filename">DISTRO_FEATURES_BACKFILL_CONSIDERED</code>
-                    in your distro's <code class="filename">.conf</code> file.
-                    Adding the feature to this variable when it also
-                    exists in the <code class="filename">DISTRO_FEATURES_BACKFILL</code>
-                    variable prevents the build system from adding the feature to 
-                    your configuration's <code class="filename">DISTRO_FEATURES</code>, effectively disabling
-                    the feature for that particular distro.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>The "rtc" machine feature option</em></span>: 
-                    Previously, real time clock (RTC) support was enabled for all 
-                    target devices.
-                    Because of this, the feature is backfilled and thus enabled
-                    for all machines through the <code class="filename">MACHINE_FEATURES_BACKFILL</code>
-                    variable in the <code class="filename">meta/conf/bitbake.conf</code> file.
-                    However, your target device does not have this capability.
-                    You can disable RTC support for your device without 
-                    affecting other machines that need RTC support 
-                    by adding the feature to your machine's 
-                    <code class="filename">MACHINE_FEATURES_BACKFILL_CONSIDERED</code>
-                    list in the machine's <code class="filename">.conf</code> file.
-                    Adding the feature to this variable when it also
-                    exists in the <code class="filename">MACHINE_FEATURES_BACKFILL</code>
-                    variable prevents the build system from adding the feature to 
-                    your configuration's <code class="filename">MACHINE_FEATURES</code>, effectively 
-                    disabling RTC support for that particular machine.</p></li>
-</ul></div>
-<p>
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-distro.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-distro.html
deleted file mode 100644
index d261858..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-distro.html
+++ /dev/null
@@ -1,68 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>9.1. Distro</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-features.html" title="Chapter 9. Reference: Features">
-<link rel="prev" href="ref-features.html" title="Chapter 9. Reference: Features">
-<link rel="next" href="ref-features-machine.html" title="9.2. Machine">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="9.1. Distro">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-features-distro"></a>9.1. Distro</h2></div></div></div>
-<p>
-            The items below are features you can use with  
-            <a class="link" href="ref-variables-glos.html#var-DISTRO_FEATURES" title="DISTRO_FEATURES"><code class="filename">DISTRO_FEATURES</code></a>.
-            Features do not have a one-to-one correspondence to packages, and they can 
-            go beyond simply controlling the installation of a package or packages. 
-            Sometimes a feature can influence how certain recipes are built.
-            For example, a feature might determine whether a particular configure option 
-            is specified within <code class="filename">do_configure</code> for a particular
-            recipe.
-        </p>
-<p>
-            This list only represents features as shipped with the Yocto Project metadata:
-            </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em>alsa:</em></span> ALSA support will be included (OSS compatibility 
-                    kernel modules will be installed if available).</p></li>
-<li class="listitem"><p><span class="emphasis"><em>bluetooth:</em></span> Include bluetooth support (integrated BT only)
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>ext2:</em></span> Include tools for supporting for devices with internal
-                    HDD/Microdrive for storing files (instead of Flash only devices)
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>irda:</em></span> Include Irda support
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>keyboard:</em></span> Include keyboard support (e.g. keymaps will be 
-                    loaded during boot).
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>pci:</em></span> Include PCI bus support
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>pcmcia:</em></span> Include PCMCIA/CompactFlash support
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>usbgadget:</em></span> USB Gadget Device support (for USB
-                    networking/serial/storage)
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>usbhost:</em></span> USB Host support (allows to connect external
-                    keyboard, mouse, storage, network etc)
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>wifi:</em></span> WiFi support (integrated only)
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>cramfs:</em></span> CramFS support
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>ipsec:</em></span> IPSec support
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>ipv6:</em></span> IPv6 support
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>nfs:</em></span> NFS client support (for mounting NFS exports on
-                    device)</p></li>
-<li class="listitem"><p><span class="emphasis"><em>ppp:</em></span> PPP dialup support</p></li>
-<li class="listitem"><p><span class="emphasis"><em>smbfs:</em></span> SMB networks client support (for mounting
-                    Samba/Microsoft Windows shares on device)</p></li>
-</ul></div>
-<p>
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-image.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-image.html
deleted file mode 100644
index e705a29..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-image.html
+++ /dev/null
@@ -1,73 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>9.3. Images</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-features.html" title="Chapter 9. Reference: Features">
-<link rel="prev" href="ref-features-machine.html" title="9.2. Machine">
-<link rel="next" href="ref-features-backfill.html" title="9.4. Feature Backfilling">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="9.3. Images">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-features-image"></a>9.3. Images</h2></div></div></div>
-<p>
-            The contents of images generated by the OpenEmbedded build system can be controlled by the 
-            <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_FEATURES" title="IMAGE_FEATURES">IMAGE_FEATURES</a></code>
-            and <code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_IMAGE_FEATURES" title="EXTRA_IMAGE_FEATURES">EXTRA_IMAGE_FEATURES</a></code>
-            variables that you typically configure in your image recipes.
-            Through these variables you can add several different
-            predefined packages such as development utilities or packages with debug
-            information needed to investigate application problems or profile applications.
-        </p>
-<p>
-            Current list of 
-            <code class="filename">IMAGE_FEATURES</code> contains the following:
-            </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em>splash:</em></span> Enables showing a splash screen during boot. 
-                    By default, this screen is provided by <code class="filename">psplash</code>, which does 
-                    allow customization. 
-                    If you prefer to use an alternative splash screen package, you can do so by 
-                    setting the <code class="filename">SPLASH</code> variable
-                    to a different package name (or names) within the image recipe or at the distro
-                    configuration level.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>ssh-server-dropbear:</em></span> Installs the Dropbear minimal 
-                    SSH server.
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>ssh-server-openssh:</em></span> Installs the OpenSSH SSH server,
-                    which is more full-featured than Dropbear. 
-                    Note that if both the OpenSSH SSH server and the Dropbear minimal SSH server
-                    are present in <code class="filename">IMAGE_FEATURES</code>, then OpenSSH will take
-                    precedence and Dropbear will not be installed.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>x11:</em></span> Installs the X server</p></li>
-<li class="listitem"><p><span class="emphasis"><em>x11-base:</em></span> Installs the X server with a 
-                    minimal environment.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>x11-sato:</em></span> Installs the OpenedHand Sato environment.
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>tools-sdk:</em></span> Installs a full SDK that runs on the device.
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>tools-debug:</em></span> Installs debugging tools such as 
-                    <code class="filename">strace</code> and <code class="filename">gdb</code>.
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>tools-profile:</em></span> Installs profiling tools such as 
-                    <code class="filename">oprofile</code>, <code class="filename">exmap</code>, and 
-                    <code class="filename">LTTng</code>.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>tools-testapps:</em></span> Installs device testing tools (e.g.
-                    touchscreen debugging).</p></li>
-<li class="listitem"><p><span class="emphasis"><em>nfs-server:</em></span> Installs an NFS server.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>dev-pkgs:</em></span> Installs development packages (headers and 
-                    extra library links) for all packages installed in a given image.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>staticdev-pkgs:</em></span> Installs static development 
-                    packages (i.e. static libraries containing <code class="filename">*.a</code> files) for all 
-                    packages installed in a given image.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>dbg-pkgs:</em></span> Installs debug symbol packages for all packages 
-                    installed in a given image.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>doc-pkgs:</em></span> Installs documentation packages for all packages 
-                    installed in a given image.</p></li>
-</ul></div>
-<p>
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-machine.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-machine.html
deleted file mode 100644
index 428aca3..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features-machine.html
+++ /dev/null
@@ -1,63 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>9.2. Machine</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-features.html" title="Chapter 9. Reference: Features">
-<link rel="prev" href="ref-features-distro.html" title="9.1. Distro">
-<link rel="next" href="ref-features-image.html" title="9.3. Images">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="9.2. Machine">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-features-machine"></a>9.2. Machine</h2></div></div></div>
-<p>
-            The items below are features you can use with  
-            <a class="link" href="ref-variables-glos.html#var-MACHINE_FEATURES" title="MACHINE_FEATURES"><code class="filename">MACHINE_FEATURES</code></a>.
-            Features do not have a one-to-one correspondence to packages, and they can 
-            go beyond simply controlling the installation of a package or packages. 
-            Sometimes a feature can influence how certain recipes are built.
-            For example, a feature might determine whether a particular configure option 
-            is specified within <code class="filename">do_configure</code> for a particular
-            recipe.
-        </p>
-<p>
-            This feature list only represents features as shipped with the Yocto Project metadata:
-            </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em>acpi:</em></span> Hardware has ACPI (x86/x86_64 only)
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>alsa:</em></span> Hardware has ALSA audio drivers
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>apm:</em></span> Hardware uses APM (or APM emulation)
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>bluetooth:</em></span> Hardware has integrated BT
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>ext2:</em></span> Hardware HDD or Microdrive
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>irda:</em></span> Hardware has Irda support
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>keyboard:</em></span> Hardware has a keyboard
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>pci:</em></span> Hardware has a PCI bus
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>pcmcia:</em></span> Hardware has PCMCIA or CompactFlash sockets
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>screen:</em></span> Hardware has a screen
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>serial:</em></span> Hardware has serial support (usually RS232)
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>touchscreen:</em></span> Hardware has a touchscreen
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>usbgadget:</em></span> Hardware is USB gadget device capable
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>usbhost:</em></span> Hardware is USB Host capable
-                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em>wifi:</em></span> Hardware has integrated WiFi
-                    </p></li>
-</ul></div>
-<p>
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features.html
deleted file mode 100644
index c10c49c..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-features.html
+++ /dev/null
@@ -1,60 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>Chapter 9. Reference: Features</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="prev" href="ref-images.html" title="Chapter 8. Images">
-<link rel="next" href="ref-features-distro.html" title="9.1. Distro">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 9. Reference: Features">
-<div class="titlepage"><div><div><h2 class="title">
-<a name="ref-features"></a>Chapter 9. Reference: Features</h2></div></div></div>
-<div class="toc">
-<p><b>Table of Contents</b></p>
-<dl>
-<dt><span class="section"><a href="ref-features-distro.html">9.1. Distro</a></span></dt>
-<dt><span class="section"><a href="ref-features-machine.html">9.2. Machine</a></span></dt>
-<dt><span class="section"><a href="ref-features-image.html">9.3. Images</a></span></dt>
-<dt><span class="section"><a href="ref-features-backfill.html">9.4. Feature Backfilling</a></span></dt>
-</dl>
-</div>
-<p>
-        Features provide a mechanism for working out which packages
-        should be included in the generated images. 
-        Distributions can select which features they want to support through the
-        <code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO_FEATURES" title="DISTRO_FEATURES">DISTRO_FEATURES</a></code>
-        variable, which is set in the <code class="filename">poky.conf</code> distribution configuration file.
-        Machine features are set in the
-        <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_FEATURES" title="MACHINE_FEATURES">MACHINE_FEATURES</a></code>
-        variable, which is set in the machine configuration file and
-        specifies the hardware features for a given machine.
-    </p>
-<p>
-        These two variables combine to work out which kernel modules,
-        utilities, and other packages to include. 
-        A given distribution can support a selected subset of features so some machine features might not
-        be included if the distribution itself does not support them.
-    </p>
-<p>
-        One method you can use to determine which recipes are checking to see if a 
-        particular feature is contained or not is to <code class="filename">grep</code> through 
-        the metadata for the feature.
-        Here is an example that discovers the recipes whose build is potentially 
-        changed based on a given feature:
-        </p>
-<pre class="literallayout">
-     $ cd $HOME/poky
-     $ git grep 'contains.*MACHINE_FEATURES.*&lt;feature&gt;'
-        </pre>
-<p>
-    </p>
-<p>
-        This chapter provides a reference of shipped machine and distro features
-        you can include as part of the image, a reference on image types you can 
-        build, and a reference on feature backfilling.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-images.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-images.html
deleted file mode 100644
index 81ed4ba..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-images.html
+++ /dev/null
@@ -1,137 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>Chapter 8. Images</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="prev" href="ref-classes-others.html" title="7.21. Other Classes">
-<link rel="next" href="ref-features.html" title="Chapter 9. Reference: Features">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 8. Images">
-<div class="titlepage"><div><div><h2 class="title">
-<a name="ref-images"></a>Chapter 8. Images</h2></div></div></div>
-<p>
-        The OpenEmbedded build process supports several types of images to satisfy different needs.  
-        When you issue the <code class="filename">bitbake</code> command you provide a &#8220;top-level&#8221; recipe 
-        that essentially begins the build for the type of image you want.
-    </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-        Building an image without GNU General Public License Version 3 (GPLv3) components
-        is only supported for minimal and base images.
-        Furthermore, if you are going to build an image using non-GPLv3 components,
-        you must make the following changes in the <code class="filename">local.conf</code> file
-        before using the BitBake command to build the minimal or base image:
-        <pre class="literallayout">
-     1. Comment out the EXTRA_IMAGE_FEATURES line
-     2. Set INCOMPATIBLE_LICENSE = "GPLv3"
-        </pre>
-</div>
-<p>
-        From within the <code class="filename">poky</code> Git repository, use the following command to list 
-        the supported images:
-        </p>
-<pre class="literallayout">
-     $ ls meta*/recipes*/images/*.bb
-        </pre>
-<p>
-        These recipes reside in the <code class="filename">meta/recipes-core/images</code>,
-        <code class="filename">meta/recipes-extended/images</code>, 
-        <code class="filename">meta/recipes-graphics/images</code>, and 
-        <code class="filename">meta/recipes-sato/images</code> directories 
-        within the <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.  
-        Although the recipe names are somewhat explanatory, here is a list that describes them:
-    </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-base</code>:</em></span>
-            A console-only image that fully supports the target device hardware.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-minimal</code>:</em></span>
-            A small image just capable of allowing a device to boot.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-minimal-dev</code>:</em></span>
-            A <code class="filename">core-image-minimal</code> image suitable for development work
-            using the host.
-            The image includes headers and libraries you can use in a host development 
-            environment.
-            </p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-minimal-initramfs</code>:</em></span>
-            A <code class="filename">core-image-minimal</code> image that has the Minimal RAM-based 
-            Initial Root Filesystem (<code class="filename">initramfs</code>) as part of the kernel, 
-            which allows the system to find the first &#8220;init&#8221; program more efficiently.
-            </p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-minimal-mtdutils</code>:</em></span>
-            A <code class="filename">core-image-minimal</code> image that has support 
-            for the Minimal MTD Utilities, which let the user interact with the 
-            MTD subsystem in the kernel to perform operations on flash devices.
-            </p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-x11</code>:</em></span>
-            A very basic X11 image with a terminal.
-            </p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-basic</code>:</em></span>
-            A console-only image with more full-featured Linux system
-            functionality installed.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-lsb</code>:</em></span>
-            An image that conforms to the Linux Standard Base (LSB) specification.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-lsb-dev</code>:</em></span>
-            A <code class="filename">core-image-lsb</code> image that is suitable for development work
-            using the host.
-            The image includes headers and libraries you can use in a host development 
-            environment.
-            </p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-lsb-sdk</code>:</em></span>
-            A <code class="filename">core-image-lsb</code> that includes everything in meta-toolchain 
-            but also includes development headers and libraries to form a complete standalone SDK.
-            This image is suitable for development using the target.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-clutter</code>:</em></span>
-            An image with support for the Open GL-based toolkit Clutter, which enables development of 
-            rich and animated graphical user interfaces.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-sato</code>:</em></span>
-            An image with Sato support, a mobile environment and visual style that works well 
-            with mobile devices.
-            The image supports X11 with a Sato theme and applications such as
-            a terminal, editor, file manager, media player, and so forth.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-sato-dev</code>:</em></span>
-            A <code class="filename">core-image-sato</code> image suitable for development 
-            using the host.
-            The image includes libraries needed to build applications on the device itself, 
-            testing and profiling tools, and debug symbols.  
-            This image was formerly <code class="filename">core-image-sdk</code>.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-sato-sdk</code>:</em></span>
-            A <code class="filename">core-image-sato</code> image that includes everything in meta-toolchain. 
-            The image also includes development headers and libraries to form a complete standalone SDK
-            and is suitable for development using the target.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-rt</code>:</em></span>
-            A <code class="filename">core-image-minimal</code> image plus a real-time test suite and 
-            tools appropriate for real-time use.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-rt-sdk</code>:</em></span>
-            A <code class="filename">core-image-rt</code> image that includes everything in 
-            <code class="filename">meta-toolchain</code>.  
-            The image also includes development headers and libraries to form a complete 
-            stand-alone SDK and is suitable for development using the target.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-gtk-directfb</code>:</em></span>
-            An image that uses <code class="filename">gtk+</code> over <code class="filename">directfb</code> 
-            instead of X11.  
-            In order to build, this image requires specific distro configuration that enables 
-            <code class="filename">gtk</code> over <code class="filename">directfb</code>.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">build-appliance-image</code>:</em></span>
-            An image you can boot and run using either the
-            <a class="ulink" href="http://www.vmware.com/products/player/overview.html" target="_self">VMware Player</a>
-            or <a class="ulink" href="http://www.vmware.com/products/workstation/overview.html" target="_self">VMware Workstation</a>.
-            For more information on this image, see the
-            <a class="ulink" href="http://www.yoctoproject.org/documentation/build-appliance" target="_self">Build Appliance</a> page on 
-            the Yocto Project website.</p></li>
-</ul></div>
-<div class="tip" title="Tip" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Tip</h3>
-        From the Yocto Project release 1.1 onwards, <code class="filename">-live</code> and 
-        <code class="filename">-directdisk</code> images have been replaced by a "live"
-        option in <code class="filename">IMAGE_FSTYPES</code> that will work with any image to produce an 
-        image file that can be
-        copied directly to a CD or USB device and run as is. 
-        To build a live image, simply add
-        "live" to <code class="filename">IMAGE_FSTYPES</code> within the <code class="filename">local.conf</code>
-        file or wherever appropriate and then build the desired image as normal.
-    </div>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-structure.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-structure.html
deleted file mode 100644
index afc8334..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-structure.html
+++ /dev/null
@@ -1,98 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>Chapter 5. Source Directory Structure</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="prev" href="migration-1.3-removed-recipes.html" title="4.1.2.6. Removed Recipes">
-<link rel="next" href="structure-core.html" title="5.1. Top level core components">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 5. Source Directory Structure">
-<div class="titlepage"><div><div><h2 class="title">
-<a name="ref-structure"></a>Chapter 5. Source Directory Structure</h2></div></div></div>
-<div class="toc">
-<p><b>Table of Contents</b></p>
-<dl>
-<dt><span class="section"><a href="structure-core.html">5.1. Top level core components</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="structure-core-bitbake.html">5.1.1. <code class="filename">bitbake/</code></a></span></dt>
-<dt><span class="section"><a href="structure-core-build.html">5.1.2. <code class="filename">build/</code></a></span></dt>
-<dt><span class="section"><a href="handbook.html">5.1.3. <code class="filename">documentation</code></a></span></dt>
-<dt><span class="section"><a href="structure-core-meta.html">5.1.4. <code class="filename">meta/</code></a></span></dt>
-<dt><span class="section"><a href="structure-core-meta-yocto.html">5.1.5. <code class="filename">meta-yocto/</code></a></span></dt>
-<dt><span class="section"><a href="structure-core-meta-yocto-bsp.html">5.1.6. <code class="filename">meta-yocto-bsp/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-hob.html">5.1.7. <code class="filename">meta-hob/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-skeleton.html">5.1.8. <code class="filename">meta-skeleton/</code></a></span></dt>
-<dt><span class="section"><a href="structure-core-scripts.html">5.1.9. <code class="filename">scripts/</code></a></span></dt>
-<dt><span class="section"><a href="structure-core-script.html">5.1.10. <code class="filename">oe-init-build-env</code></a></span></dt>
-<dt><span class="section"><a href="structure-basic-top-level.html">5.1.11. <code class="filename">LICENSE, README, and README.hardware</code></a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="structure-build.html">5.2. The Build Directory - <code class="filename">build/</code></a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="structure-build-pseudodone.html">5.2.1. <code class="filename">build/pseudodone</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-conf-local.conf.html">5.2.2. <code class="filename">build/conf/local.conf</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-conf-bblayers.conf.html">5.2.3. <code class="filename">build/conf/bblayers.conf</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-conf-sanity_info.html">5.2.4. <code class="filename">build/conf/sanity_info</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-downloads.html">5.2.5. <code class="filename">build/downloads/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-sstate-cache.html">5.2.6. <code class="filename">build/sstate-cache/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp.html">5.2.7. <code class="filename">build/tmp/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-buildstats.html">5.2.8. <code class="filename">build/tmp/buildstats/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-cache.html">5.2.9. <code class="filename">build/tmp/cache/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-deploy.html">5.2.10. <code class="filename">build/tmp/deploy/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-deploy-deb.html">5.2.11. <code class="filename">build/tmp/deploy/deb/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-deploy-rpm.html">5.2.12. <code class="filename">build/tmp/deploy/rpm/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-deploy-licenses.html">5.2.13. <code class="filename">build/tmp/deploy/licenses/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-deploy-images.html">5.2.14. <code class="filename">build/tmp/deploy/images/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-deploy-ipk.html">5.2.15. <code class="filename">build/tmp/deploy/ipk/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-sysroots.html">5.2.16. <code class="filename">build/tmp/sysroots/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-stamps.html">5.2.17. <code class="filename">build/tmp/stamps/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-log.html">5.2.18. <code class="filename">build/tmp/log/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-pkgdata.html">5.2.19. <code class="filename">build/tmp/pkgdata/</code></a></span></dt>
-<dt><span class="section"><a href="structure-build-tmp-work.html">5.2.20. <code class="filename">build/tmp/work/</code></a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="structure-meta.html">5.3. The Metadata - <code class="filename">meta/</code></a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="structure-meta-classes.html">5.3.1. <code class="filename">meta/classes/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-conf.html">5.3.2. <code class="filename">meta/conf/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-conf-machine.html">5.3.3. <code class="filename">meta/conf/machine/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-conf-distro.html">5.3.4. <code class="filename">meta/conf/distro/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-bsp.html">5.3.5. <code class="filename">meta/recipes-bsp/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-connectivity.html">5.3.6. <code class="filename">meta/recipes-connectivity/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-core.html">5.3.7. <code class="filename">meta/recipes-core/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-devtools.html">5.3.8. <code class="filename">meta/recipes-devtools/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-extended.html">5.3.9. <code class="filename">meta/recipes-extended/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-gnome.html">5.3.10. <code class="filename">meta/recipes-gnome/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-graphics.html">5.3.11. <code class="filename">meta/recipes-graphics/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-kernel.html">5.3.12. <code class="filename">meta/recipes-kernel/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-multimedia.html">5.3.13. <code class="filename">meta/recipes-multimedia/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-qt.html">5.3.14. <code class="filename">meta/recipes-qt/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-rt.html">5.3.15. <code class="filename">meta/recipes-rt/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-sato.html">5.3.16. <code class="filename">meta/recipes-sato/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-support.html">5.3.17. <code class="filename">meta/recipes-support/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-site.html">5.3.18. <code class="filename">meta/site/</code></a></span></dt>
-<dt><span class="section"><a href="structure-meta-recipes-txt.html">5.3.19. <code class="filename">meta/recipes.txt</code></a></span></dt>
-</dl></dd>
-</dl>
-</div>
-<p>
-    The <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a> consists of several components.
-    Understanding them and knowing where they are located is key to using the Yocto Project well.
-    This chapter describes the Source Directory and gives information about the various 
-    files and directories.
-</p>
-<p>
-    For information on how to establish a local Source Directory on your development system, see the
-    "<a class="link" href="../dev-manual/getting-setup.html" target="_self">Getting Set Up</a>"
-    section in the Yocto Project Development Manual.
-</p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-    The OpenEmbedded build system does not support file or directory names that
-    contain spaces.
-    Be sure that the Source Directory you use does not contain these types
-    of names.
-</div>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-variables-glos.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-variables-glos.html
deleted file mode 100644
index bb6374f..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-variables-glos.html
+++ /dev/null
@@ -1,2800 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>Chapter 10. Variables Glossary</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="prev" href="ref-features-backfill.html" title="9.4. Feature Backfilling">
-<link rel="next" href="ref-varlocality.html" title="Chapter 11. Variable Context">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 10. Variables Glossary">
-<div class="titlepage"><div><div><h2 class="title">
-<a name="ref-variables-glos"></a>Chapter 10. Variables Glossary</h2></div></div></div>
-<div class="toc">
-<p><b>Table of Contents</b></p>
-<dl><dt><span class="glossary"><a href="ref-variables-glos.html#ref-variables-glossary">Glossary</a></span></dt></dl>
-</div>
-<p>
-    This chapter lists common variables used in the OpenEmbedded build system and gives an overview
-    of their function and contents.
-</p>
-<div class="glossary" title="Glossary">
-<div class="titlepage"><div><div><h2 class="title">
-<a name="ref-variables-glossary"></a>Glossary</h2></div></div></div>
-<p>
-       <a class="link" href="ref-variables-glos.html#var-ALLOW_EMPTY" title="ALLOW_EMPTY">A</a> 
-       <a class="link" href="ref-variables-glos.html#var-B" title="B">B</a> 
-       <a class="link" href="ref-variables-glos.html#var-CFLAGS" title="CFLAGS">C</a> 
-       <a class="link" href="ref-variables-glos.html#var-D" title="D">D</a> 
-       <a class="link" href="ref-variables-glos.html#var-ENABLE_BINARY_LOCALE_GENERATION" title="ENABLE_BINARY_LOCALE_GENERATION">E</a> 
-       <a class="link" href="ref-variables-glos.html#var-FILES" title="FILES">F</a> 
-
-       <a class="link" href="ref-variables-glos.html#var-HOMEPAGE" title="HOMEPAGE">H</a> 
-       <a class="link" href="ref-variables-glos.html#var-IMAGE_FEATURES" title="IMAGE_FEATURES">I</a> 
-
-       <a class="link" href="ref-variables-glos.html#var-KBRANCH" title="KBRANCH">K</a>
-       <a class="link" href="ref-variables-glos.html#var-LAYERDIR" title="LAYERDIR">L</a> 
-       <a class="link" href="ref-variables-glos.html#var-MACHINE" title="MACHINE">M</a> 
-
-       <a class="link" href="ref-variables-glos.html#var-OE_TERMINAL" title="OE_TERMINAL">O</a>
-       <a class="link" href="ref-variables-glos.html#var-P" title="P">P</a> 
-
-       <a class="link" href="ref-variables-glos.html#var-RCONFLICTS" title="RCONFLICTS">R</a> 
-       <a class="link" href="ref-variables-glos.html#var-S" title="S">S</a> 
-       <a class="link" href="ref-variables-glos.html#var-T" title="T">T</a> 
-
-
-       <a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR">W</a> 
-
-
-
-    </p>
-<div class="glossdiv" title="A">
-<h3 class="title">A</h3>
-<dl>
-<dt>
-<a name="var-ALLOW_EMPTY"></a>ALLOW_EMPTY</dt>
-<dd>
-<p>
-                   Specifies if an output package should still be produced if it is empty.
-                   By default, BitBake does not produce empty packages.
-                   This default behavior can cause issues when there is an 
-                   <a class="link" href="ref-variables-glos.html#var-RDEPENDS" title="RDEPENDS"><code class="filename">RDEPENDS</code></a> or 
-                   some other runtime hard-requirement on the existence of the package.
-                </p>
-<p>
-                   Like all package-controlling variables, you must always use them in 
-                   conjunction with a package name override.
-                   Here is an example:
-                   </p>
-<pre class="literallayout">
-     ALLOW_EMPTY_${PN} = "1"
-                   </pre>
-<p>
-                </p>
-</dd>
-<dt>
-<a name="var-AUTHOR"></a>AUTHOR</dt>
-<dd><p>The email address used to contact the original author or authors in 
-                    order to send patches, forward bugs, etc.</p></dd>
-<dt>
-<a name="var-AUTOREV"></a>AUTOREV</dt>
-<dd>
-<p>When <code class="filename"><a class="link" href="ref-variables-glos.html#var-SRCREV" title="SRCREV">SRCREV</a></code>
-                    is set to the value of this variable, it specifies that the latest
-                    source revision in the repository should be used. Here is an example:
-                    </p>
-<pre class="literallayout">
-     SRCREV = "${AUTOREV}"
-                    </pre>
-<p>
-                </p>
-</dd>
-</dl>
-</div>
-<div class="glossdiv" title="B">
-<h3 class="title">B</h3>
-<dl>
-<dt>
-<a name="var-B"></a>B</dt>
-<dd>
-<p>
-                    The <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>.
-                    The OpenEmbedded build system places generated objects into the Build Directory
-                    during a recipe's build process.
-                    By default, this directory is the same as the <a class="link" href="ref-variables-glos.html#var-S" title="S"><code class="filename">S</code></a>
-                    directory:
-                    </p>
-<pre class="literallayout">
-     B = ${WORKDIR}/${BPN}-{PV}/
-                    </pre>
-<p>
-                    You can separate the (<code class="filename">S</code>) directory and the directory pointed to 
-                    by the <code class="filename">B</code> variable.
-                    Most autotools-based recipes support separating these directories.
-                    The build system defaults to using separate directories for <code class="filename">gcc</code>
-                    and some kernel recipes.
-                </p>
-</dd>
-<dt>
-<a name="var-BAD_RECOMMENDATIONS"></a>BAD_RECOMMENDATIONS</dt>
-<dd><p>
-                    A list of packages not to install despite being recommended by a recipe.
-                    Support for this variable exists only when using the 
-                    <code class="filename">ipk</code> packaging backend.
-                </p></dd>
-<dt>
-<a name="var-BB_DISKMON_DIRS"></a>BB_DISKMON_DIRS</dt>
-<dd>
-<p>
-                    Monitors disk space and available inodes during the build
-                    and allows you to control the build based on these 
-                    parameters.
-                </p>
-<p>
-                    Disk space monitoring is disabled by default.
-                    To enable monitoring, add the <code class="filename">BB_DISKMON_DIRS</code>
-                    variable to your <code class="filename">conf/local.conf</code> file found in the 
-                    <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>.
-                    Use the following form:
-                    </p>
-<pre class="literallayout">
-     BB_DISKMON_DIRS = "&lt;action&gt;,&lt;dir&gt;,&lt;threshold&gt; [...]"
-                  
-     where:
-
-        &lt;action&gt; is:
-           ABORT:     Immediately abort the build when
-                      a threshold is broken.
-           STOPTASKS: Stop the build after the currently
-                      executing tasks have finished when 
-                      a threshold is broken.
-           WARN:      Issue a warning but continue the 
-                      build when a threshold is broken.
-                      Subsequent warnings are issued as 
-                      defined by the 
-                      <a class="link" href="ref-variables-glos.html#var-BB_DISKMON_WARNINTERVAL" title="BB_DISKMON_WARNINTERVAL">BB_DISKMON_WARNINTERVAL</a> variable,
-                      which must be defined in the 
-                      conf/local.conf file.
-
-        &lt;dir&gt; is:
-           Any directory you choose. You can specify one or 
-           more directories to monitor by separating the 
-           groupings with a space.  If two directories are 
-           on the same device, only the first directory
-           is monitored.
-
-        &lt;threshold&gt; is:
-           Either the minimum available disk space, 
-           the minimum number of free inodes, or 
-           both.  You must specify at least one.  To 
-           omit one or the other, simply omit the value.
-           Specify the threshold using G, M, K for Gbytes, 
-           Mbytes, and Kbytes, respectively. If you do 
-           not specify G, M, or K, Kbytes is assumed by 
-           default.  Do not use GB, MB, or KB.
-                    </pre>
-<p>
-                </p>
-<p>
-                    Here are some examples:
-                    </p>
-<pre class="literallayout">
-     BB_DISKMON_DIRS = "ABORT,${TMPDIR},1G,100K WARN,${SSTATE_DIR},1G,100K"
-     BB_DISKMON_DIRS = "STOPTASKS,${TMPDIR},1G"
-     BB_DISKMON_DIRS = "ABORT,${TMPDIR},,100K"
-                    </pre>
-<p>
-                    The first example works only if you also provide 
-                    the <a class="link" href="ref-variables-glos.html#var-BB_DISKMON_WARNINTERVAL" title="BB_DISKMON_WARNINTERVAL"><code class="filename">BB_DISKMON_WARNINTERVAL</code></a> variable
-                    in the <code class="filename">conf/local.conf</code>.
-                    This example causes the build system to immediately
-                    abort when either the disk space in <code class="filename">${TMPDIR}</code> drops
-                    below 1 Gbyte or the available free inodes drops below
-                    100 Kbytes.
-                    Because two directories are provided with the variable, the 
-                    build system also issue a 
-                    warning when the disk space in the 
-                    <code class="filename">${SSTATE_DIR}</code> directory drops
-                    below 1 Gbyte or the number of free inodes drops
-                    below 100 Kbytes.
-                    Subsequent warnings are issued during intervals as 
-                    defined by the <code class="filename">BB_DISKMON_WARNINTERVAL</code>
-                    variable.
-                </p>
-<p>
-                    The second example stops the build after all currently 
-                    executing tasks complete when the minimum disk space
-                    in the <code class="filename">${TMPDIR}</code> directory drops 
-                    below 1 Gbyte.  
-                    No disk monitoring occurs for the free inodes in this case. 
-                </p>
-<p>
-                    The final example immediately aborts the build when the 
-                    number of free inodes in the <code class="filename">${TMPDIR}</code> directory
-                    drops below 100 Kbytes. 
-                    No disk space monitoring for the directory itself occurs
-                    in this case.
-                </p>
-</dd>
-<dt>
-<a name="var-BB_DISKMON_WARNINTERVAL"></a>BB_DISKMON_WARNINTERVAL</dt>
-<dd>
-<p>
-                    Defines the disk space and free inode warning intervals.
-                    To set these intervals, define the variable in your 
-                    <code class="filename">conf/local.conf</code> file in the 
-                    <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>.
-                </p>
-<p>
-                    If you are going to use the 
-                    <code class="filename">BB_DISKMON_WARNINTERVAL</code> variable, you must 
-                    also use the 
-                    <a class="link" href="ref-variables-glos.html#var-BB_DISKMON_DIRS" title="BB_DISKMON_DIRS"><code class="filename">BB_DISKMON_DIRS</code></a> variable
-                    and define its action as "WARN".
-                    During the build, subsequent warnings are issued each time 
-                    disk space or number of free inodes further reduces by  
-                    the respective interval.
-                </p>
-<p>
-                    If you do not provide a <code class="filename">BB_DISKMON_WARNINTERVAL</code>
-                    variable and you do use <code class="filename">BB_DISKMON_DIRS</code> with 
-                    the "WARN" action, the disk monitoring interval defaults to 
-                    the following:
-                    </p>
-<pre class="literallayout">
-     BB_DISKMON_WARNINTERVAL = "50M,5K"
-                    </pre>
-<p>
-                </p>
-<p>
-                    When specifying the variable in your configuration file, 
-                    use the following form:
-                    </p>
-<pre class="literallayout">
-     BB_DISKMON_WARNINTERVAL = "&lt;disk_space_interval&gt;,&lt;disk_inode_interval&gt;"
-                  
-     where:
-
-        &lt;disk_space_interval&gt; is:
-           An interval of memory expressed in either 
-           G, M, or K for Gbytes, Mbytes, or Kbytes, 
-           respectively. You cannot use GB, MB, or KB.  
-
-        &lt;disk_inode_interval&gt; is:
-           An interval of free inodes expressed in either
-           G, M, or K for Gbytes, Mbytes, or Kbytes, 
-           respectively. You cannot use GB, MB, or KB.  
-                    </pre>
-<p>
-                </p>
-<p>
-                    Here is an example:
-                    </p>
-<pre class="literallayout">
-     BB_DISKMON_DIRS = "WARN,${SSTATE_DIR},1G,100K"
-     BB_DISKMON_WARNINTERVAL = "50M,5K"
-                    </pre>
-<p>
-                    These variables cause the OpenEmbedded build system to  
-                    issue subsequent warnings each time the available 
-                    disk space further reduces by 50 Mbytes or the number 
-                    of free inodes further reduces by 5 Kbytes in the 
-                    <code class="filename">${SSTATE_DIR}</code> directory.
-                    Subsequent warnings based on the interval occur each time 
-                    a respective interval is reached beyond the intial warning
-                    (i.e. 1 Gbytes and 100 Kbytes).
-                </p>
-</dd>
-<dt>
-<a name="var-BBCLASSEXTEND"></a>BBCLASSEXTEND</dt>
-<dd>
-<p>
-                    Allows you to extend a recipe so that it builds variants of the software.
-                    Common variants for recipes exist such as "natives" like <code class="filename">quilt-native</code>,
-                    which is a copy of quilt built to run on the build system;
-                    "crosses" such as <code class="filename">gcc-cross</code>,
-                    which is a compiler built to run on the build machine but produces binaries
-                    that run on the target <a class="link" href="ref-variables-glos.html#var-MACHINE" title="MACHINE"><code class="filename">MACHINE</code></a>;
-                    "nativesdk", which targets the SDK machine instead of <code class="filename">MACHINE</code>;
-                    and "mulitlibs" in the form "<code class="filename">multilib:&lt;multilib_name&gt;</code>".
-                </p>
-<p>
-                    To build a different variant of the recipe with a minimal amount of code, it usually
-                    is as simple as adding the following to your recipe:
-                    </p>
-<pre class="literallayout">
-     BBCLASSEXTEND =+ "native nativesdk"
-     BBCLASSEXTEND =+ "multilib:&lt;multilib_name&gt;"
-                    </pre>
-<p>
-                </p>
-</dd>
-<dt>
-<a name="var-BBMASK"></a>BBMASK</dt>
-<dd>
-<p>Prevents BitBake from processing recipes and recipe append files.
-                    You can use the <code class="filename">BBMASK</code> variable to "hide" 
-                    these <code class="filename">.bb</code> and <code class="filename">.bbappend</code> files.
-                    BitBake ignores any recipe or recipe append files that match the expression.
-                    It is as if BitBake does not see them at all.
-                    Consequently, matching files are not parsed or otherwise used by 
-                    BitBake.</p>
-<p>The value you provide is passed to python's regular expression compiler.
-                    For complete syntax information, see python's documentation at 
-                    <a class="ulink" href="http://docs.python.org/release/2.3/lib/re-syntax.html" target="_self">http://docs.python.org/release/2.3/lib/re-syntax.html</a>.
-                    The expression is compared against the full paths to the files. 
-                    For example, the following uses a complete regular expression to tell
-                    BitBake to ignore all recipe and recipe append files in the 
-                    <code class="filename">.*/meta-ti/recipes-misc/</code> directory:
-                    </p>
-<pre class="literallayout">
-     BBMASK = ".*/meta-ti/recipes-misc/"
-                    </pre>
-<p>Use the <code class="filename">BBMASK</code> variable from within the 
-                    <code class="filename">conf/local.conf</code> file found 
-                    in the <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>.</p>
-</dd>
-<dt>
-<a name="var-BB_NUMBER_THREADS"></a>BB_NUMBER_THREADS</dt>
-<dd><p>The maximum number of tasks BitBake should run in parallel at any one time.
-                    If your host development system supports multiple cores a good rule of thumb
-                    is to set this variable to twice the number of cores.</p></dd>
-<dt>
-<a name="var-BBFILE_COLLECTIONS"></a>BBFILE_COLLECTIONS</dt>
-<dd><p>Lists the names of configured layers. 
-                    These names are used to find the other <code class="filename">BBFILE_*</code>
-                    variables. 
-                    Typically, each layer will append its name to this variable in its
-                    <code class="filename">conf/layer.conf</code> file.
-                </p></dd>
-<dt>
-<a name="var-BBFILE_PATTERN"></a>BBFILE_PATTERN</dt>
-<dd><p>Variable that expands to match files from <code class="filename">BBFILES</code> in a particular layer.  
-                    This variable is used in the <code class="filename">conf/layer.conf</code> file and must 
-                    be suffixed with the name of the specific layer (e.g. 
-                    <code class="filename">BBFILE_PATTERN_emenlow</code>).</p></dd>
-<dt>
-<a name="var-BBFILE_PRIORITY"></a>BBFILE_PRIORITY</dt>
-<dd>
-<p>Assigns the priority for recipe files in each layer.</p>
-<p>This variable is useful in situations where the same recipe appears in
-                    more than one layer. 
-                    Setting this variable allows you to prioritize a
-                    layer against other layers that contain the same recipe - effectively
-                    letting you control the precedence for the multiple layers. 
-                    The precedence established through this variable stands regardless of a
-                    recipe's version (<code class="filename">PV</code> variable). 
-                    For example, a layer that has a recipe with a higher <code class="filename">PV</code> value but for 
-                    which the <code class="filename">BBFILE_PRIORITY</code> is set to have a lower precedence still has a 
-                    lower precedence.</p>
-<p>A larger value for the <code class="filename">BBFILE_PRIORITY</code> variable results in a higher
-                    precedence. 
-                    For example, the value 6 has a higher precedence than the value 5. 
-                    If not specified, the <code class="filename">BBFILE_PRIORITY</code> variable is set based on layer
-                    dependencies (see the
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-LAYERDEPENDS" title="LAYERDEPENDS">LAYERDEPENDS</a></code> variable for 
-                    more information.
-                    The default priority, if unspecified
-                    for a layer with no dependencies, is the lowest defined priority + 1
-                    (or 1 if no priorities are defined).</p>
-<div class="tip" title="Tip" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Tip</h3>
-                    You can use the command <code class="filename">bitbake-layers show_layers</code> to list
-                    all configured layers along with their priorities.
-                </div>
-</dd>
-<dt>
-<a name="var-BBFILES"></a>BBFILES</dt>
-<dd><p>List of recipe files used by BitBake to build software</p></dd>
-<dt>
-<a name="var-BBPATH"></a>BBPATH</dt>
-<dd><p>Used by BitBake to locate <code class="filename">.bbclass</code> and configuration files.  
-                    This variable is analogous to the <code class="filename">PATH</code> variable.</p></dd>
-<dt>
-<a name="var-BBINCLUDELOGS"></a>BBINCLUDELOGS</dt>
-<dd><p>Variable that controls how BitBake displays logs on build failure.</p></dd>
-<dt>
-<a name="var-BBLAYERS"></a>BBLAYERS</dt>
-<dd>
-<p>Lists the layers to enable during the build. 
-                    This variable is defined in the <code class="filename">bblayers.conf</code> configuration 
-                    file in the <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>. 
-                    Here is an example:
-                    </p>
-<pre class="literallayout">
-     BBLAYERS = " \
-       /home/scottrif/poky/meta \
-       /home/scottrif/poky/meta-yocto \
-       /home/scottrif/poky/meta-yocto-bsp \
-       /home/scottrif/poky/meta-mykernel \
-       "
-                    </pre>
-<p>
-                    This example enables four layers, one of which is a custom, user-defined layer 
-                    named <code class="filename">meta-mykernel</code>.
-                </p>
-</dd>
-<dt>
-<a name="var-BP"></a>BP</dt>
-<dd>
-<p>The base recipe name and version but without any special 
-                    recipe name suffix (i.e. <code class="filename">-native</code>, <code class="filename">lib64-</code>,
-                    and so forth).
-                    <code class="filename">BP</code> is comprised of the following:
-                    </p>
-<pre class="literallayout">
-     ${BPN}-${PV}
-                    </pre>
-</dd>
-<dt>
-<a name="var-BPN"></a>BPN</dt>
-<dd><p>The bare name of the recipe.
-                    This variable is a version of the <a class="link" href="ref-variables-glos.html#var-PN" title="PN"><code class="filename">PN</code></a> variable
-                    but removes common suffixes such as "-native" and "-cross" as well
-                    as removes common prefixes such as multilib's "lib64-" and "lib32-".
-                    The exact list of suffixes removed is specified by the
-                    <a class="link" href="ref-variables-glos.html#var-SPECIAL_PKGSUFFIX" title="SPECIAL_PKGSUFFIX"><code class="filename">SPECIAL_PKGSUFFIX</code></a> variable.
-                    The exact list of prefixes removed is specified by the
-                    <a class="link" href="ref-variables-glos.html#var-MLPREFIX" title="MLPREFIX"><code class="filename">MLPREFIX</code></a> variable.
-                    Prefixes are removed for multilib and nativesdk cases.</p></dd>
-</dl>
-</div>
-<div class="glossdiv" title="C">
-<h3 class="title">C</h3>
-<dl>
-<dt>
-<a name="var-CFLAGS"></a>CFLAGS</dt>
-<dd><p>
-                    Flags passed to C compiler for the target system. 
-                    This variable evaluates to the same as 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-TARGET_CFLAGS" title="TARGET_CFLAGS">TARGET_CFLAGS</a></code>.
-                </p></dd>
-<dt>
-<a name="var-COMBINED_FEATURES"></a>COMBINED_FEATURES</dt>
-<dd><p>A set of features common between 
-                    <a class="link" href="ref-variables-glos.html#var-MACHINE_FEATURES" title="MACHINE_FEATURES"><code class="filename">MACHINE_FEATURES</code></a>
-                    and <a class="link" href="ref-variables-glos.html#var-DISTRO_FEATURES" title="DISTRO_FEATURES"><code class="filename">DISTRO_FEATURES</code></a>.
-                    See the glossary descriptions for these variables for more information.</p></dd>
-<dt>
-<a name="var-COMPATIBLE_MACHINE"></a>COMPATIBLE_MACHINE</dt>
-<dd><p>A regular expression which evaluates to match the machines the recipe 
-                    works with. 
-                    It stops recipes being run on machines for which they are not compatible. 
-                    This is particularly useful with kernels. 
-                    It also helps to increase parsing speed as further parsing of the recipe is skipped 
-                    if it is found the current machine is not compatible.</p></dd>
-<dt>
-<a name="var-CONFFILES"></a>CONFFILES</dt>
-<dd>
-<p>
-                    Identifies editable or configurable files that are part of a package.
-                    If the Package Management System (PMS) is being used to update
-                    packages on the target system, it is possible that 
-                    configuration files you have changed after the original installation
-                    and that you now want to remain unchanged are overwritten.
-                    In other words, editable files might exist in the package that you do not 
-                    want reset as part of the package update process.
-                    You can use the <code class="filename">CONFFILES</code> variable to list the files in the 
-                    package that you wish to prevent the PMS from overwriting during this update process.
-                </p>
-<p>  
-                    To use the <code class="filename">CONFFILES</code> variable, provide a package name
-                    override that identifies the resulting package.
-                    Then, provide a space-separated list of files.
-                    Here is an example:
-                    </p>
-<pre class="literallayout">                       
-  CONFFILES_${PN} += "${sysconfdir}/file1 \
-     ${sysconfdir}/file2 ${sysconfdir}/file3"
-                    </pre>
-<p>
-                </p>
-<p>
-                    A relationship exists between the <code class="filename">CONFFILES</code> and 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-FILES" title="FILES">FILES</a></code> variables.
-                    The files listed within <code class="filename">CONFFILES</code> must be a subset of 
-                    the files listed within <code class="filename">FILES</code>.
-                    Because the configuration files you provide with <code class="filename">CONFFILES</code> 
-                    are simply being identified so that the PMS will not overwrite them, 
-                    it makes sense that
-                    the files must already be included as part of the package through the 
-                    <code class="filename">FILES</code> variable.
-                </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-                    When specifying paths as part of the <code class="filename">CONFFILES</code> variable, 
-                    it is good practice to use appropriate path variables. 
-                    For example, <code class="filename">${sysconfdir}</code> rather than 
-                    <code class="filename">/etc</code> or <code class="filename">${bindir}</code> rather 
-                    than <code class="filename">/usr/bin</code>.
-                    You can find a list of these variables at the top of the 
-                    <code class="filename">/meta/conf/bitbake.conf</code> file in the 
-                    <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>.
-                </div>
-</dd>
-<dt>
-<a name="var-CONFIG_SITE"></a>CONFIG_SITE</dt>
-<dd><p>
-                    A list of files that contains <code class="filename">autoconf</code> test results relevant 
-                    to the current build. 
-                    This variable is used by the Autotools utilities when running 
-                    <code class="filename">configure</code>.
-                </p></dd>
-<dt>
-<a name="var-CORE_IMAGE_EXTRA_INSTALL"></a>CORE_IMAGE_EXTRA_INSTALL</dt>
-<dd>
-<p>
-                    Specifies the list of packages to be added to the image. 
-                    This variable should only be set in the <code class="filename">local.conf</code>
-                    configuration file found in the 
-                    <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>.
-                </p>
-<p>
-                    This variable replaces <code class="filename">POKY_EXTRA_INSTALL</code>, which is no longer supported.
-                </p>
-</dd>
-</dl>
-</div>
-<div class="glossdiv" title="D">
-<h3 class="title">D</h3>
-<dl>
-<dt>
-<a name="var-D"></a>D</dt>
-<dd><p>The destination directory.</p></dd>
-<dt>
-<a name="var-DEBUG_BUILD"></a>DEBUG_BUILD</dt>
-<dd><p>
-                    Specifies to build packages with debugging information. 
-                    This influences the value of the 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-SELECTED_OPTIMIZATION" title="SELECTED_OPTIMIZATION">SELECTED_OPTIMIZATION</a></code> 
-                    variable.
-                </p></dd>
-<dt>
-<a name="var-DEBUG_OPTIMIZATION"></a>DEBUG_OPTIMIZATION</dt>
-<dd><p>
-                    The options to pass in 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-TARGET_CFLAGS" title="TARGET_CFLAGS">TARGET_CFLAGS</a></code>
-                    and <code class="filename"><a class="link" href="ref-variables-glos.html#var-CFLAGS" title="CFLAGS">CFLAGS</a></code> when compiling 
-                    a system for debugging.
-                    This variable defaults to "-O -fno-omit-frame-pointer -g".
-                </p></dd>
-<dt>
-<a name="var-DEFAULT_PREFERENCE"></a>DEFAULT_PREFERENCE</dt>
-<dd><p>Specifies the priority of recipes.</p></dd>
-<dt>
-<a name="var-DEPENDS"></a>DEPENDS</dt>
-<dd><p>
-                    Lists a recipe's build-time dependencies
-                    (i.e. other recipe files). 
-                    The system ensures that all the dependencies listed 
-                    have been built and have their contents in the appropriate 
-                    sysroots before the recipe's configure task is executed.
-                </p></dd>
-<dt>
-<a name="var-DESCRIPTION"></a>DESCRIPTION</dt>
-<dd><p>The package description used by package managers.
-                      If not set, <code class="filename">DESCRIPTION</code> takes 
-                      the value of the 
-                      <a class="link" href="ref-variables-glos.html#var-SUMMARY" title="SUMMARY"><code class="filename">SUMMARY</code></a>
-                      variable.
-                </p></dd>
-<dt>
-<a name="var-DESTDIR"></a>DESTDIR</dt>
-<dd><p>the destination directory.</p></dd>
-<dt>
-<a name="var-DISTRO"></a>DISTRO</dt>
-<dd>
-<p>
-                    The short name of the distribution. 
-                    This variable corresponds to a file with the
-                    extension <code class="filename">.conf</code>
-                    located in a <code class="filename">conf/distro</code> directory
-                    within the metadata that contains the distribution configuration. 
-                    The
-                    value must not contain spaces, and is typically all lower-case.
-                </p>
-<p>
-                    If the variable is blank, a set of default configuration
-                    will be used, which is specified
-                    within <code class="filename">meta/conf/distro/defaultsetup.conf</code>.
-                </p>
-</dd>
-<dt>
-<a name="var-DISTRO_EXTRA_RDEPENDS"></a>DISTRO_EXTRA_RDEPENDS</dt>
-<dd><p>
-                    Specifies a list of distro-specific packages to add to all images.
-                    This variable takes affect through 
-                    <code class="filename">packagegroup-base</code> so the 
-                    variable only really applies to the more full-featured 
-                    images that include <code class="filename">packagegroup-base</code>.
-                    You can use this variable to keep distro policy out of 
-                    generic images.
-                    As with all other distro variables, you set this variable
-                    in the distro <code class="filename">.conf</code> file.
-                </p></dd>
-<dt>
-<a name="var-DISTRO_EXTRA_RRECOMMENDS"></a>DISTRO_EXTRA_RRECOMMENDS</dt>
-<dd><p>
-                    Specifies a list of distro-specific packages to add to all images 
-                    if the packages exist. 
-                    The packages might not exist or be empty (e.g. kernel modules).
-                    The list of packages are automatically installed but can be 
-                    removed by the user.
-                </p></dd>
-<dt>
-<a name="var-DISTRO_FEATURES"></a>DISTRO_FEATURES</dt>
-<dd><p>The features enabled for the distribution.
-                    For a list of features supported by the Yocto Project as shipped,
-                    see the "<a class="link" href="ref-features-distro.html" title="9.1. Distro">Distro</a>"
-                    section.
-                </p></dd>
-<dt>
-<a name="var-DISTRO_FEATURES_BACKFILL"></a>DISTRO_FEATURES_BACKFILL</dt>
-<dd>
-<p>Features to be added to 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO_FEATURES" title="DISTRO_FEATURES">DISTRO_FEATURES</a></code>
-                    if not also present in 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO_FEATURES_BACKFILL_CONSIDERED" title="DISTRO_FEATURES_BACKFILL_CONSIDERED">DISTRO_FEATURES_BACKFILL_CONSIDERED</a></code>.
-                </p>
-<p>
-                    This variable is set in the <code class="filename">meta/conf/bitbake.conf</code> file.
-                    It is not intended to be user-configurable. 
-                    It is best to just reference the variable to see which distro features are 
-                    being backfilled for all distro configurations.
-                    See the <a class="link" href="ref-features-backfill.html" title="9.4. Feature Backfilling">Feature backfilling</a> section for 
-                    more information.
-                </p>
-</dd>
-<dt>
-<a name="var-DISTRO_FEATURES_BACKFILL_CONSIDERED"></a>DISTRO_FEATURES_BACKFILL_CONSIDERED</dt>
-<dd><p>Features from
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO_FEATURES_BACKFILL" title="DISTRO_FEATURES_BACKFILL">DISTRO_FEATURES_BACKFILL</a></code>
-                    that should not backfilled (i.e. added to
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO_FEATURES" title="DISTRO_FEATURES">DISTRO_FEATURES</a></code>)
-                    during the build.
-                    See the "<a class="link" href="ref-features-backfill.html" title="9.4. Feature Backfilling">Feature Backfilling</a>" section for 
-                    more information.
-                    </p></dd>
-<dt>
-<a name="var-DISTRO_NAME"></a>DISTRO_NAME</dt>
-<dd><p>The long name of the distribution.</p></dd>
-<dt>
-<a name="var-DISTRO_PN_ALIAS"></a>DISTRO_PN_ALIAS</dt>
-<dd>
-<p>Alias names used for the recipe in various Linux distributions.</p>
-<p>See the  
-                    "<a class="link" href="../dev-manual/usingpoky-configuring-DISTRO_PN_ALIAS.html" target="_self">Handling
-                    a Package Name Alias</a>" section in the Yocto Project Development 
-                    Manual for more information.</p>
-</dd>
-<dt>
-<a name="var-DISTRO_VERSION"></a>DISTRO_VERSION</dt>
-<dd><p>the version of the distribution.</p></dd>
-<dt>
-<a name="var-DL_DIR"></a>DL_DIR</dt>
-<dd>
-<p>
-                    The central download directory used by the build process to store downloads.
-                    You can set this directory by defining the <code class="filename">DL_DIR</code>
-                    variable in the <code class="filename">/conf/local.conf</code> file.
-                    This directory is self-maintaining and you should not have
-                    to touch it. 
-                    By default, the directory is <code class="filename">downloads</code> in the 
-                    <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>.
-                    </p>
-<pre class="literallayout">
-     #DL_DIR ?= "${TOPDIR}/downloads"
-                    </pre>
-<p>
-                    To specify a different download directory, simply uncomment the line
-                    and provide your directory.
-                </p>
-<p>
-                    During a first build, the system downloads many different source code 
-                    tarballs from various upstream projects. 
-                    Downloading can take a while, particularly if your network
-                    connection is slow. 
-                    Tarballs are all stored in the directory defined by 
-                    <code class="filename">DL_DIR</code> and the build system looks there first 
-                    to find source tarballs. 
-                    </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-                        When wiping and rebuilding, you can preserve this directory to speed 
-                        up this part of subsequent builds. 
-                    </div>
-<p>
-                </p>
-<p>
-                    You can safely share this directory between multiple builds on the 
-                    same development machine.  
-                    For additional information on how the build process gets source files
-                    when working behind a firewall or proxy server, see the
-                    "<a class="link" href="faq.html#how-does-the-yocto-project-obtain-source-code-and-will-it-work-behind-my-firewall-or-proxy-server">FAQ</a>"
-                    chapter.
-                </p>
-</dd>
-</dl>
-</div>
-<div class="glossdiv" title="E">
-<h3 class="title">E</h3>
-<dl>
-<dt>
-<a name="var-ENABLE_BINARY_LOCALE_GENERATION"></a>ENABLE_BINARY_LOCALE_GENERATION</dt>
-<dd>
-<p></p>
-<p>Variable that controls which locales for <code class="filename">eglibc</code> are
-                    to be generated during the build (useful if the target device has 64Mbytes
-                    of RAM or less).</p>
-</dd>
-<dt>
-<a name="var-EXTENDPE"></a>EXTENDPE</dt>
-<dd>
-<p>
-                    Used with file and pathnames to create a prefix for a recipe's
-                    version based on the recipe's 
-                    <a class="link" href="ref-variables-glos.html#var-PE" title="PE"><code class="filename">PE</code></a> value.
-                    If <code class="filename">PE</code> is set and greater than zero for a recipe,
-                    <code class="filename">EXTENDPE</code> becomes that value (e.g if 
-                    <code class="filename">PE</code> is equal to "1" then <code class="filename">EXTENDPE</code>
-                    becomes "1_").  
-                    If a recipe's <code class="filename">PE</code> is not set (the default) or is equal to 
-                    zero, <code class="filename">EXTENDPE</code> becomes "".</p>
-<p>See the <a class="link" href="ref-variables-glos.html#var-STAMP" title="STAMP"><code class="filename">STAMP</code></a> 
-                    variable for an example.
-                </p>
-</dd>
-<dt>
-<a name="var-EXTRA_IMAGE_FEATURES"></a>EXTRA_IMAGE_FEATURES</dt>
-<dd>
-<p>Allows extra packages to be added to the generated images.
-                    You set this variable in the <code class="filename">local.conf</code>
-                    configuration file.
-                    Note that some image features are also added using the 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_FEATURES" title="IMAGE_FEATURES">IMAGE_FEATURES</a></code>
-                    variable generally configured in image recipes.
-                    You can use this variable to add more features in addition to those.
-                    Here are some examples of features you can add:</p>
-<pre class="literallayout">
-"dbg-pkgs" - Adds -dbg packages for all installed packages
-             including symbol information for debugging and 
-             profiling.
-
-"dev-pkgs" - Adds -dev packages for all installed packages.  
-             This is useful if you want to develop against 
-             the libraries in the image.
-
-"tools-sdk" - Adds development tools such as gcc, make, 
-              pkgconfig and so forth.
-
-"tools-debug" - Adds debugging tools such as gdb and 
-                strace.
-
-"tools-profile" - Adds profiling tools such as oprofile, 
-                  exmap, lttng and valgrind (x86 only).
-
-"tools-testapps" - Adds useful testing tools such as 
-                   ts_print, aplay, arecord and so 
-                   forth.
-
-"debug-tweaks" - Makes an image suitable for development.  
-                 For example, ssh root access has a blank 
-                 password.  You should remove this feature 
-                 before you produce a production image.  
-                    </pre>
-<p>There are other valid features too, see the
-                 <a class="link" href="ref-features-image.html" title="9.3. Images">Images</a>
-                 section for more details.</p>
-</dd>
-<dt>
-<a name="var-EXTRA_IMAGEDEPENDS"></a>EXTRA_IMAGEDEPENDS</dt>
-<dd>
-<p>A list of recipes to be built that do not provide packages to be installed in
-                    the root filesystem.
-                </p>
-<p>Sometimes a recipe is required to build the final image but is not
-                    needed in the root filesystem.
-                    You can use the <code class="filename">EXTRA_IMAGEDEPENDS</code> variable to 
-                    list these recipes and thus, specify the dependencies. 
-                    A typical example is a required bootloader in a machine configuration.
-                </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-                    To add packages to the root filesystem, see the various 
-                    <code class="filename">*DEPENDS</code> and <code class="filename">*RECOMMENDS</code>
-                    variables.
-                </div>
-</dd>
-<dt>
-<a name="var-EXTRA_OECMAKE"></a>EXTRA_OECMAKE</dt>
-<dd><p>Additional <code class="filename">cmake</code> options.</p></dd>
-<dt>
-<a name="var-EXTRA_OECONF"></a>EXTRA_OECONF</dt>
-<dd><p>Additional <code class="filename">configure</code> script options.</p></dd>
-<dt>
-<a name="var-EXTRA_OEMAKE"></a>EXTRA_OEMAKE</dt>
-<dd><p>Additional GNU <code class="filename">make</code> options.</p></dd>
-</dl>
-</div>
-<div class="glossdiv" title="F">
-<h3 class="title">F</h3>
-<dl>
-<dt>
-<a name="var-FILES"></a>FILES</dt>
-<dd>
-<p>
-                    The list of directories or files that are placed in packages.
-                </p>
-<p>
-                    To use the <code class="filename">FILES</code> variable, provide a package name
-                    override that identifies the resulting package.
-                    Then, provide a space-separated list of files or paths that identifies the 
-                    files you want included as part of the resulting package.
-                    Here is an example:
-                    </p>
-<pre class="literallayout">                       
-  FILES_${PN} += "${bindir}/mydir1/ ${bindir}/mydir2/myfile"
-                    </pre>
-<p>
-                </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-                    When specifying paths as part of the <code class="filename">FILES</code> variable, 
-                    it is good practice to use appropriate path variables. 
-                    For example, <code class="filename">${sysconfdir}</code> rather than 
-                    <code class="filename">/etc</code> or <code class="filename">${bindir}</code> rather 
-                    than <code class="filename">/usr/bin</code>.
-                    You can find a list of these variables at the top of the 
-                    <code class="filename">/meta/conf/bitbake.conf</code> file in the 
-                    <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>.
-                </div>
-<p>
-                    If some of the files you provide with the <code class="filename">FILES</code> variable
-                    are editable and you know they should not be 
-                    overwritten during the package update process by the Package Management
-                    System (PMS), you can identify these files so that the PMS will not 
-                    overwrite them. 
-                    See the <code class="filename"><a class="link" href="ref-variables-glos.html#var-CONFFILES" title="CONFFILES">CONFFILES</a></code> 
-                    variable for information on how to identify these files to the PMS.
-                </p>
-</dd>
-<dt>
-<a name="var-FILESEXTRAPATHS"></a>FILESEXTRAPATHS</dt>
-<dd>
-<p>
-                    Extends the search path the OpenEmbedded build system uses when 
-                    looking for files and patches as it processes recipes. 
-                    The directories BitBake uses when it processes recipes is defined by the
-                    <a class="link" href="ref-variables-glos.html#var-FILESPATH" title="FILESPATH"><code class="filename">FILESPATH</code></a> variable. 
-                    You can add directories to the search path by defining the 
-                    <code class="filename">FILESEXTRAPATHS</code> variable.
-                </p>
-<p>
-                    To add paths to the search order, provide a list of directories and separate
-                    each path using a colon character as follows:
-                    </p>
-<pre class="literallayout">
-     FILESEXTRAPATHS_prepend := "path_1:path_2:path_3:"
-                    </pre>
-<p>
-                    Typically, you want your directories search first. 
-                    To make sure that happens, use <code class="filename">_prepend</code> and 
-                    the immediate expansion (<code class="filename">:=</code>) operator as shown in the 
-                    previous example.
-                    Finally, to maintain the integrity of the <code class="filename">FILESPATH</code> variable, 
-                    you must include the appropriate beginning or ending (as needed) colon character.
-                </p>
-<p>
-                    The <code class="filename">FILESEXTRAPATHS</code> variable is intended for use in 
-                    <code class="filename">.bbappend</code> files to include any additional files provided in that layer. 
-                    You typically accomplish this with the following:
-                    </p>
-<pre class="literallayout">
-     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-                    </pre>
-<p>
-                </p>
-</dd>
-<dt>
-<a name="var-FILESPATH"></a>FILESPATH</dt>
-<dd>
-<p>
-                    The default set of directories the OpenEmbedded build system uses
-                    when searching for patches and files.
-                    During the build process, BitBake searches each directory in 
-                    <code class="filename">FILESPATH</code> in the specified order when looking for 
-                    files and patches specified by each <code class="filename">file://</code> URI in a recipe.
-                </p>
-<p>
-                    The default value for the <code class="filename">FILESPATH</code> variable is defined
-                    in the <code class="filename">base.bbclass</code> class found in 
-                    <code class="filename">meta/classes</code> in the 
-                    <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>:
-                    </p>
-<pre class="literallayout">
-FILESPATH = "${@base_set_filespath([ "${FILE_DIRNAME}/${PF}", \
-   "${FILE_DIRNAME}/${P}", "${FILE_DIRNAME}/${PN}", \
-   "${FILE_DIRNAME}/${BP}", "${FILE_DIRNAME}/${BPN}", \
-   "${FILE_DIRNAME}/files", "${FILE_DIRNAME}" ], d)}"
-                    </pre>
-<p>
-                    Do not hand-edit the <code class="filename">FILESPATH</code> variable. 
-                    If you want to extend the set of pathnames that BitBake uses when searching for 
-                    files and patches, use the 
-                    <a class="link" href="ref-variables-glos.html#var-FILESEXTRAPATHS" title="FILESEXTRAPATHS"><code class="filename">FILESEXTRAPATHS</code></a> variable.
-                </p>
-</dd>
-<dt>
-<a name="var-FILESYSTEM_PERMS_TABLES"></a>FILESYSTEM_PERMS_TABLES</dt>
-<dd>
-<p>Allows you to define your own file permissions settings table as part of
-                    your configuration for the packaging process.
-                    For example, suppose you need a consistent set of custom permissions for 
-                    a set of groups and users across an entire work project.
-                    It is best to do this in the packages themselves but this is not always 
-                    possible.
-                </p>
-<p>
-                    By default, the OpenEmbedded build system uses the <code class="filename">fs-perms.txt</code>, which
-                    is located in the <code class="filename">meta/files</code> folder in the 
-                    <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>.
-                    If you create your own file permissions setting table, you should place it in your
-                    layer or the distros layer. 
-                </p>
-<p>
-                    You define the <code class="filename">FILESYSTEM_PERMS_TABLES</code> variable in the 
-                    <code class="filename">conf/local.conf</code> file, which is found in the 
-                    <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>, to 
-                    point to your custom <code class="filename">fs-perms.txt</code>.
-                    You can specify more than a single file permissions setting table.
-                    The paths you specify to these files must be defined within the 
-                    <code class="filename">BBPATH</code> variable.  
-                </p>
-<p>
-                    For guidance on how to create your own file permissions settings table file, 
-                    examine the existing <code class="filename">fs-perms.txt</code>.
-                </p>
-</dd>
-<dt>
-<a name="var-FULL_OPTIMIZATION"></a>FULL_OPTIMIZATION</dt>
-<dd><p>
-                    The options to pass in 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-TARGET_CFLAGS" title="TARGET_CFLAGS">TARGET_CFLAGS</a></code>
-                    and <code class="filename"><a class="link" href="ref-variables-glos.html#var-CFLAGS" title="CFLAGS">CFLAGS</a></code>
-                    when compiling an optimized system.
-                    This variable defaults to 
-                    "-fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2".
-                </p></dd>
-</dl>
-</div>
-<div class="glossdiv" title="H">
-<h3 class="title">H</h3>
-<dl>
-<dt>
-<a name="var-HOMEPAGE"></a>HOMEPAGE</dt>
-<dd><p>Website where more information about the software the recipe is building
-                    can be found.</p></dd>
-</dl>
-</div>
-<div class="glossdiv" title="I">
-<h3 class="title">I</h3>
-<dl>
-<dt>
-<a name="var-IMAGE_FEATURES"></a>IMAGE_FEATURES</dt>
-<dd><p>The list of features to include in an image.
-                Typically, you configure this variable in an image recipe.
-                Note that you can also add extra features to the image by using the
-                <code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_IMAGE_FEATURES" title="EXTRA_IMAGE_FEATURES">EXTRA_IMAGE_FEATURES</a></code> variable.
-                See the "<a class="link" href="ref-features-image.html" title="9.3. Images">Images</a>" section for the 
-                full list of features that can be included in images built by the
-                OpenEmbedded build system.</p></dd>
-<dt>
-<a name="var-IMAGE_FSTYPES"></a>IMAGE_FSTYPES</dt>
-<dd><p>Formats of root filesystem images that you want to have created.</p></dd>
-<dt>
-<a name="var-IMAGE_INSTALL"></a>IMAGE_INSTALL</dt>
-<dd>
-<p>
-                    Specifies the packages to install into an image.
-                    The <code class="filename">IMAGE_INSTALL</code> variable is a mechanism for an image
-                    recipe and you should use it with care to avoid ordering issues.
-                </p>
-<p>
-                    Image recipes set <code class="filename">IMAGE_INSTALL</code> to specify the 
-                    packages to install into an image through <code class="filename">image.bbclass</code>.
-                    Additionally, "helper" classes exist, such as <code class="filename">core-image.bbclass</code>,
-                    that can take 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_FEATURES" title="IMAGE_FEATURES">IMAGE_FEATURES</a></code> lists
-                    and turn these into auto-generated entries in 
-                    <code class="filename">IMAGE_INSTALL</code> in addition to its default contents.
-                </p>
-<p>
-                    Using <code class="filename">IMAGE_INSTALL</code> with the <code class="filename">+=</code>
-                    operator from the <code class="filename">/conf/local.conf</code> file or from within 
-                    an image recipe is not recommended as it can cause ordering issues. 
-                    Since <code class="filename">core-image.bbclass</code> sets <code class="filename">IMAGE_INSTALL</code> 
-                    to a default value using the <code class="filename">?=</code> operator, using a  
-                    <code class="filename">+=</code> operation against <code class="filename">IMAGE_INSTALL</code> 
-                    will result in unexpected behavior when used in 
-                    <code class="filename">/conf/local.conf</code>.
-                    Furthermore, the same operation from with an image recipe may or may not 
-                    succeed depending on the specific situation.
-                    In both these cases, the behavior is contrary to how most users expect 
-                    the <code class="filename">+=</code> operator to work. 
-                </p>
-<p>
-                    When you use this variable, it is best to use it as follows:
-                    </p>
-<pre class="literallayout">
-     IMAGE_INSTALL_append = " package-name"
-                    </pre>
-<p>
-                    Be sure to include the space between the quotation character and the start of the
-                    package name.
-                </p>
-</dd>
-<dt>
-<a name="var-IMAGE_OVERHEAD_FACTOR"></a>IMAGE_OVERHEAD_FACTOR</dt>
-<dd>
-<p>
-                    Defines a multiplier that the build system applies to the initial image
-                    size for cases when the multiplier times the returned disk usage value
-                    for the image is greater than the sum of 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_ROOTFS_SIZE" title="IMAGE_ROOTFS_SIZE">IMAGE_ROOTFS_SIZE</a></code>
-                    and 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_ROOTFS_EXTRA_SPACE" title="IMAGE_ROOTFS_EXTRA_SPACE">IMAGE_ROOTFS_EXTRA_SPACE</a></code>.
-                    The result of the multiplier applied to the initial image size creates
-                    free disk space in the image as overhead.
-                    By default, the build process uses a multiplier of 1.3 for this variable. 
-                    This default value results in 30% free disk space added to the image when this 
-                    method is used to determine the final generated image size.
-                    You should be aware that post install scripts and the package management
-                    system uses disk space inside this overhead area. 
-                    Consequently, the multiplier does not produce an image with 
-                    all the theoretical free disk space.                     
-                    See <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_ROOTFS_SIZE" title="IMAGE_ROOTFS_SIZE">IMAGE_ROOTFS_SIZE</a></code>
-                    for information on how the build system determines the overall image size.
-                </p>
-<p>
-                    The default 30% free disk space typically gives the image enough room to boot 
-                    and allows for basic post installs while still leaving a small amount of 
-                    free disk space. 
-                    If 30% free space is inadequate, you can increase the default value.
-                    For example, the following setting gives you 50% free space added to the image:
-                    </p>
-<pre class="literallayout">
-     IMAGE_OVERHEAD_FACTOR = "1.5"
-                    </pre>
-<p>
-                </p>
-<p>
-                    Alternatively, you can ensure a specific amount of free disk space is added
-                    to the image by using     
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_ROOTFS_EXTRA_SPACE" title="IMAGE_ROOTFS_EXTRA_SPACE">IMAGE_ROOTFS_EXTRA_SPACE</a></code>
-                    the variable.
-                </p>
-</dd>
-<dt>
-<a name="var-IMAGE_ROOTFS_EXTRA_SPACE"></a>IMAGE_ROOTFS_EXTRA_SPACE</dt>
-<dd>
-<p>
-                    Defines additional free disk space created in the image in Kbytes.
-                    By default, this variable is set to "0".
-                    This free disk space is added to the image after the build system determines
-                    the image size as described in 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_ROOTFS_SIZE" title="IMAGE_ROOTFS_SIZE">IMAGE_ROOTFS_SIZE</a></code>.
-                </p>
-<p>
-                    This variable is particularly useful when you want to ensure that a 
-                    specific amount of free disk space is available on a device after an image 
-                    is installed and running. 
-                    For example, to be sure 5 Gbytes of free disk space is available, set the 
-                    variable as follows:
-                    </p>
-<pre class="literallayout">
-     IMAGE_ROOTFS_EXTRA_SPACE = "5242880"
-                    </pre>
-<p>
-                </p>
-</dd>
-<dt>
-<a name="var-IMAGE_ROOTFS_SIZE"></a>IMAGE_ROOTFS_SIZE</dt>
-<dd>
-<p>
-                    Defines the size in Kbytes for the generated image.
-                    The OpenEmbedded build system determines the final size for the generated 
-                    image using an algorithm that takes into account the initial disk space used
-                    for the generated image, a requested size for the image, and requested 
-                    additional free disk space to be added to the image.
-                    Programatically, the build system determines the final size of the 
-                    generated image as follows:
-                    </p>
-<pre class="literallayout">
-    if (image-du * overhead) &lt; rootfs-size:
-	internal-rootfs-size = rootfs-size + xspace
-    else:
-	internal-rootfs-size = (image-du * overhead) + xspace
-
-    where:
-
-      image-du = Returned value of the du command on
-                 the image.
-      
-      overhead = IMAGE_OVERHEAD_FACTOR
-
-      rootfs-size = IMAGE_ROOTFS_SIZE
-
-      internal-rootfs-size = Initial root filesystem
-                             size before any modifications.
-
-      xspace = IMAGE_ROOTFS_EXTRA_SPACE
-                    </pre>
-<p>
-                   
-                </p>
-</dd>
-<dt>
-<a name="var-INC_PR"></a>INC_PR</dt>
-<dd>
-<p>Helps define the recipe revision for recipes that share
-                    a common <code class="filename">include</code> file.
-                    You can think of this variable as part of the recipe revision 
-                    as set from within an include file.</p>
-<p>Suppose, for example, you have a set of recipes that 
-                    are used across several projects.
-                    And, within each of those recipes the revision
-                    (its <code class="filename">PR</code> value) is set accordingly.
-                    In this case, when the revision of those recipes changes
-                    the burden is on you to find all those recipes and 
-                    be sure that they get changed to reflect the updated 
-                    version of the recipe.
-                    In this scenario, it can get complicated when recipes
-                    used in many places and that provide common functionality 
-                    are upgraded to a new revision.</p>
-<p>A more efficient way of dealing with this situation is
-                    to set the <code class="filename">INC_PR</code> variable inside
-                    the <code class="filename">include</code> files that the recipes
-                    share and then expand the <code class="filename">INC_PR</code>
-                    variable within the recipes to help 
-                    define the recipe revision.
-                    </p>
-<p>
-                    The following provides an example that shows how to use 
-                    the <code class="filename">INC_PR</code> variable
-                    given a common <code class="filename">include</code> file that 
-                    defines the variable.
-                    Once the variable is defined in the 
-                    <code class="filename">include</code> file, you can use the 
-                    variable to set the <code class="filename">PR</code> values in
-                    each recipe. 
-                    You will notice that when you set a recipe's  
-                    <code class="filename">PR</code> you can provide more granular
-                    revisioning by appending values to the 
-                    <code class="filename">INC_PR</code> variable:
-                    </p>
-<pre class="literallayout">
-recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
-recipes-graphics/xorg-font/encodings_1.0.4.bb:PR = "${INC_PR}.1"
-recipes-graphics/xorg-font/font-util_1.3.0.bb:PR = "${INC_PR}.0"
-recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
-                    </pre>
-<p>
-                    The first line of the example establishes the baseline 
-                    revision to be used for all recipes that use the 
-                    <code class="filename">include</code> file.
-                    The remaining lines in the example are from individual
-                    recipes and show how the <code class="filename">PR</code> value
-                    is set.</p>
-</dd>
-<dt>
-<a name="var-INHIBIT_PACKAGE_STRIP"></a>INHIBIT_PACKAGE_STRIP</dt>
-<dd><p>
-                    Causes the build to not strip binaries in resulting packages.
-                </p></dd>
-<dt>
-<a name="var-INHERIT"></a>INHERIT</dt>
-<dd><p>
-                    Causes the named class to be inherited at 
-                    this point during parsing. 
-                    The variable is only valid in configuration files.
-                </p></dd>
-<dt>
-<a name="var-INITSCRIPT_PACKAGES"></a>INITSCRIPT_PACKAGES</dt>
-<dd>
-<p>
-                    A list of the packages that contain initscripts. 
-                    If multiple packages are specified, you need to append the package name 
-                    to the other <code class="filename">INITSCRIPT_*</code> as an override.</p>
-<p>
-                    This variable is used in recipes when using <code class="filename">update-rc.d.bbclass</code>.
-                    The variable is optional and defaults to the <code class="filename">PN</code> variable.
-                </p>
-</dd>
-<dt>
-<a name="var-INITSCRIPT_NAME"></a>INITSCRIPT_NAME</dt>
-<dd>
-<p>
-                    The filename of the initscript (as installed to <code class="filename">${etcdir}/init.d)</code>.
-                </p>
-<p>
-                    This variable is used in recipes when using <code class="filename">update-rc.d.bbclass</code>.
-                    The variable is Mandatory.
-                </p>
-</dd>
-<dt>
-<a name="var-INITSCRIPT_PARAMS"></a>INITSCRIPT_PARAMS</dt>
-<dd>
-<p>
-                    Specifies the options to pass to <code class="filename">update-rc.d</code>.
-                    An example is <code class="filename">start 99 5 2 . stop 20 0 1 6 .</code>, which gives the script a 
-                    runlevel of 99, starts the script in initlevels 2 and 5, and 
-                    stops the script in levels 0, 1 and 6. 
-                </p>
-<p>
-                    The variable is mandatory and is used in recipes when using 
-                    <code class="filename">update-rc.d.bbclass</code>.
-                </p>
-</dd>
-</dl>
-</div>
-<div class="glossdiv" title="K">
-<h3 class="title">K</h3>
-<dl>
-<dt>
-<a name="var-KBRANCH"></a>KBRANCH</dt>
-<dd>
-<p>
-                    A regular expression used by the build process to explicitly identify the kernel 
-                    branch that is validated, patched and configured during a build.  
-                    The <code class="filename">KBRANCH</code> variable is optional.
-                    You can use it to trigger checks to ensure the exact kernel branch you want is 
-                    being used by the build process.
-                </p>
-<p>
-                    Values for this variable are set in the kernel's recipe file and the kernel's 
-                    append file.  
-                    For example, if you are using the Yocto Project kernel that is based on the 
-                    Linux 3.4 kernel, the kernel recipe file is the 
-                    <code class="filename">meta/recipes-kernel/linux/linux-yocto_3.4.bb</code> file. 
-                    Following is the default value for <code class="filename">KBRANCH</code> and the default
-                    override for the architectures the Yocto Project supports:
-                    </p>
-<pre class="literallayout">
-     KBRANCH_DEFAULT = "standard/base"
-     KBRANCH = "${KBRANCH_DEFAULT}"
-                    </pre>
-<p>
-                    This branch exists in the <code class="filename">linux-yocto-3.4</code> kernel Git 
-                    repository <a class="ulink" href="http://git.yoctoproject.org/cgit.cgi/linux-yocto-3.4/refs/heads" target="_self">http://git.yoctoproject.org/cgit.cgi/linux-yocto-3.4/refs/heads</a>.  
-                </p>
-<p>
-                    This variable is also used from the kernel's append file to identify the kernel 
-                    branch specific to a particular machine or target hardware.  
-                    The kernel's append file is located in the BSP layer for a given machine.  
-                    For example, the kernel append file for the Crown Bay BSP is in the 
-                    <code class="filename">meta-intel</code> Git repository and is named 
-                    <code class="filename">meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend</code>.  
-                    Here are the related statements from the append file:
-                    </p>
-<pre class="literallayout">
-     COMPATIBLE_MACHINE_crownbay = "crownbay"
-     KMACHINE_crownbay  = "crownbay"
-     KBRANCH_crownbay  = "standard/crownbay"
-
-     COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
-     KMACHINE_crownbay-noemgd  = "crownbay"
-     KBRANCH_crownbay-noemgd  = "standard/crownbay"
-                    </pre>
-<p>
-                        The <code class="filename">KBRANCH_*</code> statements identify the kernel branch to 
-                        use when building for the Crown Bay BSP.  
-                        In this case there are two identical statements: one for each type of 
-                        Crown Bay machine.
-                </p>
-</dd>
-<dt>
-<a name="var-KERNEL_FEATURES"></a>KERNEL_FEATURES</dt>
-<dd>
-<p>Includes additional metadata from the Yocto Project kernel Git repository.
-                    In the OpenEmbedded build system, the default Board Support Packages (BSPs)
-                    metadata is provided through 
-                    the <code class="filename">KMACHINE</code> and <code class="filename">KBRANCH</code> variables.
-                    You can use the <code class="filename">KERNEL_FEATURES</code> variable to further 
-                    add metadata for all BSPs.</p>
-<p>The metadata you add through this variable includes config fragments and 
-                    features descriptions,
-                    which usually includes patches as well as config fragments.
-                    You typically override the <code class="filename">KERNEL_FEATURES</code> variable
-                    for a specific machine.
-                    In this way, you can provide validated, but optional, sets of kernel
-                    configurations and features.</p>
-<p>For example, the following adds <code class="filename">netfilter</code> to all 
-                    the Yocto Project kernels and adds sound support to the <code class="filename">qemux86</code>
-                    machine:
-                    </p>
-<pre class="literallayout">
-     # Add netfilter to all linux-yocto kernels
-     KERNEL_FEATURES="features/netfilter"
-
-     # Add sound support to the qemux86 machine
-     KERNEL_FEATURES_append_qemux86=" cfg/sound"
-                    </pre>
-</dd>
-<dt>
-<a name="var-KERNEL_IMAGETYPE"></a>KERNEL_IMAGETYPE</dt>
-<dd><p>The type of kernel to build for a device, usually set by the 
-                    machine configuration files and defaults to "zImage". 
-                    This variable is used 
-                    when building the kernel and is passed to <code class="filename">make</code> as the target to 
-                    build.</p></dd>
-<dt>
-<a name="var-KMACHINE"></a>KMACHINE</dt>
-<dd>
-<p>
-                    The machine as known by the kernel.
-                    Sometimes the machine name used by the kernel does not match the machine name
-                    used by the OpenEmbedded build system.
-                    For example, the machine name that the OpenEmbedded build system understands as 
-                    <code class="filename">qemuarm</code> goes by a different name in the Linux Yocto kernel.
-                    The kernel understands that machine as <code class="filename">arm_versatile926ejs</code>.
-                    For cases like these, the <code class="filename">KMACHINE</code> variable maps the 
-                    kernel machine name to the OpenEmbedded build system machine name.
-                </p>
-<p>
-                    Kernel machine names are initially defined in the 
-                    <a class="ulink" href="http://git.yoctoproject.org/cgit.cgi" target="_self">Yocto Linux Kernel</a> in 
-                    the <code class="filename">meta</code> branch.
-                    From the <code class="filename">meta</code> branch, look in 
-                    the <code class="filename">meta/cfg/kernel-cache/bsp/&lt;bsp_name&gt;/&lt;bsp-name&gt;-&lt;kernel-type&gt;.scc</code> file.
-                    For example, from the <code class="filename">meta</code> branch in the 
-                    <code class="filename">linux-yocto-3.0</code> kernel, the 
-                    <code class="filename">meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc</code> file 
-                    has the following:
-                    </p>
-<pre class="literallayout">
-     define KMACHINE cedartrail
-     define KTYPE standard
-     define KARCH i386
-
-     include ktypes/standard
-     branch cedartrail
-
-     include cedartrail.scc                    
-                    </pre>
-<p>
-                    You can see that the kernel understands the machine name for the Cedar Trail BSP as
-                    <code class="filename">cedartrail</code>.
-                </p>
-<p>
-                    If you look in the Cedar Trail BSP layer in the <code class="filename">meta-intel</code> source
-                    repository at <code class="filename">meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend</code>,
-                    you will find the following statements among others:
-                    </p>
-<pre class="literallayout">
-     COMPATIBLE_MACHINE_cedartrail = "cedartrail"
-     KMACHINE_cedartrail  = "cedartrail"
-     KBRANCH_cedartrail  = "yocto/standard/cedartrail"
-     KERNEL_FEATURES_append_cedartrail += "bsp/cedartrail/cedartrail-pvr-merge.scc"
-     KERNEL_FEATURES_append_cedartrail += "cfg/efi-ext.scc"
-
-     COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
-     KMACHINE_cedartrail-nopvr  = "cedartrail"
-     KBRANCH_cedartrail-nopvr  = "yocto/standard/cedartrail"
-     KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
-                    </pre>
-<p>
-                    The <code class="filename">KMACHINE</code> statements in the kernel's append file make sure that 
-                    the OpenEmbedded build system and the Yocto Linux kernel understand the same machine 
-                    names. 
-                </p>
-<p>
-                    This append file uses two <code class="filename">KMACHINE</code> statements.
-                    The first is not really necessary but does ensure that the machine known to the 
-                    OpenEmbedded build system as <code class="filename">cedartrail</code> maps to the machine
-                    in the kernel also known as <code class="filename">cedartrail</code>:
-                    </p>
-<pre class="literallayout">
-     KMACHINE_cedartrail  = "cedartrail"
-                    </pre>
-<p>
-                </p>
-<p>
-                    The second statement is a good example of why the <code class="filename">KMACHINE</code> variable
-                    is needed. 
-                    In this example, the OpenEmbedded build system uses the <code class="filename">cedartrail-nopvr</code>
-                    machine name to refer to the Cedar Trail BSP that does not support the propriatory 
-                    PowerVR driver.
-                    The kernel, however, uses the machine name <code class="filename">cedartrail</code>.
-                    Thus, the append file must map the <code class="filename">cedartrail-nopvr</code> machine name to 
-                    the kernel's <code class="filename">cedartrail</code> name:
-                    </p>
-<pre class="literallayout">
-     KMACHINE_cedartrail-nopvr  = "cedartrail"
-                    </pre>
-<p>
-                </p>
-<p>
-                    BSPs that ship with the Yocto Project release provide all mappings between the Yocto 
-                    Project kernel machine names and the OpenEmbedded machine names. 
-                    Be sure to use the <code class="filename">KMACHINE</code> if you create a BSP and the machine 
-                    name you use is different than that used in the kernel.
-                </p>
-</dd>
-</dl>
-</div>
-<div class="glossdiv" title="L">
-<h3 class="title">L</h3>
-<dl>
-<dt>
-<a name="var-LAYERDEPENDS"></a>LAYERDEPENDS</dt>
-<dd><p>Lists the layers that this recipe depends upon, separated by spaces.
-                    Optionally, you can specify a specific layer version for a dependency
-                    by adding it to the end of the layer name with a colon, (e.g. "anotherlayer:3"
-                    to be compared against <code class="filename">LAYERVERSION_anotherlayer</code> in this case).
-                    An error will be produced if any dependency is missing or
-                    the version numbers do not match exactly (if specified).
-                    This variable is used in the <code class="filename">conf/layer.conf</code> file 
-                    and must be suffixed with the name of the specific layer (e.g. 
-                    <code class="filename">LAYERDEPENDS_mylayer</code>).</p></dd>
-<dt>
-<a name="var-LAYERDIR"></a>LAYERDIR</dt>
-<dd><p>When used inside the <code class="filename">layer.conf</code> configuration 
-                    file, this variable provides the path of the current layer. 
-                    This variable requires immediate expansion
-                    (see the BitBake manual) as lazy expansion can result in
-                    the expansion happening in the wrong directory and therefore
-                    giving the wrong value.</p></dd>
-<dt>
-<a name="var-LAYERVERSION"></a>LAYERVERSION</dt>
-<dd><p>Optionally specifies the version of a layer as a single number.
-                    You can use this within <code class="filename">LAYERDEPENDS</code> for another layer in order to
-                    depend on a specific version of the layer.
-                    This variable is used in the <code class="filename">conf/layer.conf</code> file 
-                    and must be suffixed with the name of the specific layer (e.g.
-                    <code class="filename">LAYERVERSION_mylayer</code>).</p></dd>
-<dt>
-<a name="var-LIC_FILES_CHKSUM"></a>LIC_FILES_CHKSUM</dt>
-<dd>
-<p>Checksums of the license text in the recipe source code.</p>
-<p>This variable tracks changes in license text of the source
-                    code files. 
-                    If the license text is changed, it will trigger a build
-                    failure, which gives the developer an opportunity to review any 
-                    license change.</p>
-<p>
-                    This variable must be defined for all recipes (unless <code class="filename">LICENSE</code>
-                    is set to "CLOSED")</p>
-<p>For more information, see the
-                    <a class="link" href="usingpoky-configuring-LIC_FILES_CHKSUM.html" title="3.4.1. Tracking License Changes">
-                    Tracking License Changes</a> section</p>
-</dd>
-<dt>
-<a name="var-LICENSE"></a>LICENSE</dt>
-<dd>
-<p>
-                    The list of source licenses for the recipe.
-                    Follow these rules:
-                    </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p>Do not use spaces within individual
-                            license names.</p></li>
-<li class="listitem"><p>Separate license names using 
-                            | (pipe) when there is a choice between licenses.
-                            </p></li>
-<li class="listitem"><p>Separate license names using 
-                            &amp; (ampersand) when multiple licenses exist 
-                            that cover different parts of the source. 
-                            </p></li>
-<li class="listitem"><p>You can use spaces between license 
-                            names.</p></li>
-</ul></div>
-<p>
-                </p>
-<p>
-                    Here are some examples:
-                    </p>
-<pre class="literallayout">
-     LICENSE = "LGPLv2.1 | GPLv3"
-     LICENSE = "MPL-1 &amp; LGPLv2.1"
-     LICENSE = "GPLv2+"
-                    </pre>
-<p>
-                    The first example is from the recipes for Qt, which the user 
-                    may choose to distribute under either the LGPL version
-                    2.1 or GPL version 3.
-                    The second example is from Cairo where two licenses cover
-                    different parts of the source code. 
-                    The final example is from <code class="filename">sysstat</code>, 
-                    which presents a single license.
-                </p>
-</dd>
-<dt>
-<a name="var-LICENSE_PATH"></a>LICENSE_PATH</dt>
-<dd>
-<p>Path to additional licenses used during the build.
-                    By default, the OpenEmbedded build system uses <code class="filename">COMMON_LICENSE_DIR</code>  
-                    to define the directory that holds common license text used during the build. 
-                    The <code class="filename">LICENSE_PATH</code> variable allows you to extend that
-                    location to other areas that have additional licenses: 
-                    </p>
-<pre class="literallayout">
-  LICENSE_PATH += "/path/to/additional/common/licenses"
-                    </pre>
-</dd>
-</dl>
-</div>
-<div class="glossdiv" title="M">
-<h3 class="title">M</h3>
-<dl>
-<dt>
-<a name="var-MACHINE"></a>MACHINE</dt>
-<dd>
-<p>
-                    Specifies the target device for which the image is built.
-                    You define <code class="filename">MACHINE</code> in the 
-                    <code class="filename">local.conf</code> file found in the 
-                    <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>.
-                    By default, <code class="filename">MACHINE</code> is set to 
-                    "qemux86", which is an x86-based architecture machine to  
-                    be emulated using QEMU:
-                    </p>
-<pre class="literallayout">
-     MACHINE ?= "qemux86"
-                    </pre>
-<p> 
-                    The variable corresponds to a machine configuration file of the 
-                    same name, through which machine-specific configurations are set.
-                    Thus, when <code class="filename">MACHINE</code> is set to "qemux86" there
-                    exists the corresponding <code class="filename">qemux86.conf</code> machine
-                    configuration file, which can be found in the 
-                    <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>
-                    in <code class="filename">meta/conf/machine</code>.
-                </p>
-<p>
-                    The list of machines supported by the Yocto Project as 
-                    shipped include the following:
-                    </p>
-<pre class="literallayout">
-     MACHINE ?= "qemuarm"
-     MACHINE ?= "qemumips"
-     MACHINE ?= "qemuppc"
-     MACHINE ?= "qemux86"
-     MACHINE ?= "qemux86-64"
-     MACHINE ?= "atom-pc"
-     MACHINE ?= "beagleboard"
-     MACHINE ?= "mpc8315e-rdb"
-     MACHINE ?= "routerstationpro"
-                    </pre>
-<p>
-                    The last four are Yocto Project reference hardware boards, which
-                    are provided in the <code class="filename">meta-yocto-bsp</code> layer.
-                    </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>Adding additional Board Support Package (BSP) layers 
-                        to your configuration adds new possible settings for
-                        <code class="filename">MACHINE</code>.
-                    </div>
-<p>                    
-                </p>
-</dd>
-<dt>
-<a name="var-MACHINE_ESSENTIAL_EXTRA_RDEPENDS"></a>MACHINE_ESSENTIAL_EXTRA_RDEPENDS</dt>
-<dd>
-<p></p>
-<p>
-                    A list of required machine-specific packages to install as part of
-                    the image being built.
-                    The build process depends on these packages being present.
-                    Furthermore, because this is a "machine essential" variable, the list of 
-                    packages are essential for the machine to boot.
-                    The impact of this variable affects images based on 
-                    <code class="filename">packagegroup-core-boot</code>,
-                    including the <code class="filename">core-image-minimal</code> image.
-                </p>
-<p>
-                    This variable is similar to the 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS" title="MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS">MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS</a></code>
-                    variable with the exception that the image being built has a build 
-                    dependency on the variable's list of packages.
-                    In other words, the image will not build if a file in this list is not found.
-                </p>
-<p>
-                    As an example, suppose the machine for which you are building requires
-                    <code class="filename">example-init</code> to be run during boot to initialize the hardware.
-                    In this case, you would use the following in the machine's
-                    <code class="filename">.conf</code> configuration file:
-                    </p>
-<pre class="literallayout">
-     MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "example-init"
-                    </pre>
-<p>
-                </p>
-</dd>
-<dt>
-<a name="var-MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS"></a>MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS</dt>
-<dd>
-<p></p>
-<p>
-                    A list of recommended machine-specific packages to install as part of
-                    the image being built.
-                    The build process does not depend on these packages being present.
-                    However, because this is a "machine essential" variable, the list of 
-                    packages are essential for the machine to boot.
-                    The impact of this variable affects images based on 
-                    <code class="filename">packagegroup-core-boot</code>,
-                    including the <code class="filename">core-image-minimal</code> image.
-                </p>
-<p>
-                    This variable is similar to the 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_ESSENTIAL_EXTRA_RDEPENDS" title="MACHINE_ESSENTIAL_EXTRA_RDEPENDS">MACHINE_ESSENTIAL_EXTRA_RDEPENDS</a></code>
-                    variable with the exception that the image being built does not have a build 
-                    dependency on the variable's list of packages.
-                    In other words, the image will still build if a package in this list is not found.
-                    Typically, this variable is used to handle essential kernel modules, whose
-                    functionality may be selected to be built into the kernel rather than as a module,
-                    in which case a package will not be produced.
-                </p>
-<p>
-                    Consider an example where you have a custom kernel where a specific touchscreen
-                    driver is required for the machine to be usable.
-                    However, the driver can be built as a module or
-                    into the kernel depending on the kernel configuration.
-                    If the driver is built as a module, you want it to be installed.
-                    But, when the driver is built into the kernel, you still want the 
-                    build to succeed.
-                    This variable sets up a "recommends" relationship so that in the latter case,
-                    the build will not fail due to the missing package.
-                    To accomplish this, assuming the package for the module was called
-                    <code class="filename">kernel-module-ab123</code>, you would use the
-                    following in the machine's <code class="filename">.conf</code> configuration 
-                    file:
-                    </p>
-<pre class="literallayout">
-     MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-module-ab123"
-                    </pre>
-<p>
-                </p>
-<p>
-                    Some examples of these machine essentials are flash, screen, keyboard, mouse, 
-                    or touchscreen drivers (depending on the machine).
-                </p>
-</dd>
-<dt>
-<a name="var-MACHINE_EXTRA_RDEPENDS"></a>MACHINE_EXTRA_RDEPENDS</dt>
-<dd>
-<p>
-                    A list of machine-specific packages to install as part of the 
-                    image being built that are not essential for the machine to boot.
-                    However, the build process for more fully-featured images 
-                    depends on the packages being present.
-                </p>
-<p>
-                    This variable affects all images based on
-                    <code class="filename">packagegroup-base</code>, which does not include the 
-                    <code class="filename">core-image-minimal</code> or <code class="filename">core-image-basic</code> 
-                    images.
-                </p>
-<p>
-                    The variable is similar to the 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_EXTRA_RRECOMMENDS" title="MACHINE_EXTRA_RRECOMMENDS">MACHINE_EXTRA_RRECOMMENDS</a></code>
-                    variable with the exception that the image being built has a build 
-                    dependency on the variable's list of packages.
-                    In other words, the image will not build if a file in this list is not found.
-                </p>
-<p>
-                    An example is a machine that has WiFi capability but is not essential
-                    For the machine to boot the image.
-                    However, if you are building a more fully-featured image, you want to enable
-                    the WiFi. 
-                    The package containing the firmware for the WiFi hardware is always 
-                    expected to exist, so it is acceptable for the build process to depend upon
-                    finding the package.
-                    In this case, assuming the package for the firmware was called
-                    <code class="filename">wifidriver-firmware</code>, you would use the following in the
-                    <code class="filename">.conf</code> file for the machine:
-                    </p>
-<pre class="literallayout">
-     MACHINE_EXTRA_RDEPENDS += "wifidriver-firmware"
-                    </pre>
-<p>
-                </p>
-</dd>
-<dt>
-<a name="var-MACHINE_EXTRA_RRECOMMENDS"></a>MACHINE_EXTRA_RRECOMMENDS</dt>
-<dd>
-<p></p>
-<p>
-                    A list of machine-specific packages to install as part of the 
-                    image being built that are not essential for booting the machine.
-                    The image being built has no build dependency on this list of packages.
-                </p>
-<p>
-                    This variable affects only images based on 
-                    <code class="filename">packagegroup-base</code>, which does not include the 
-                    <code class="filename">core-image-minimal</code> or <code class="filename">core-image-basic</code> 
-                    images.
-                </p>
-<p>
-                    This variable is similar to the 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_EXTRA_RDEPENDS" title="MACHINE_EXTRA_RDEPENDS">MACHINE_EXTRA_RDEPENDS</a></code>
-                    variable with the exception that the image being built does not have a build 
-                    dependency on the variable's list of packages.
-                    In other words, the image will build if a file in this list is not found.
-                </p>
-<p>
-                    An example is a machine that has WiFi capability but is not essential
-                    For the machine to boot the image.
-                    However, if you are building a more fully-featured image, you want to enable
-                    WiFi. 
-                    In this case, the package containing the WiFi kernel module will not be produced
-                    if the WiFi driver is built into the kernel, in which case you still want the
-                    build to succeed instead of failing as a result of the package not being found.
-                    To accomplish this, assuming the package for the module was called
-                    <code class="filename">kernel-module-examplewifi</code>, you would use the
-                    following in the <code class="filename">.conf</code> file for the machine:
-                    </p>
-<pre class="literallayout">
-     MACHINE_EXTRA_RRECOMMENDS += "kernel-module-examplewifi"
-                    </pre>
-<p>
-                </p>
-</dd>
-<dt>
-<a name="var-MACHINE_FEATURES"></a>MACHINE_FEATURES</dt>
-<dd>
-<p>Specifies the list of hardware features the 
-                    <a class="link" href="ref-variables-glos.html#var-MACHINE" title="MACHINE">MACHINE</a> supports.
-                    For example, including the "bluetooth" feature causes the 
-                    <code class="filename">bluez</code> bluetooth daemon to be built and 
-                    added to the image.
-                    It also causes the <code class="filename">connman</code> recipe 
-                    to look at <code class="filename">MACHINE_FEATURES</code> and when it
-                    finds "bluetooth" there it enables the bluetooth 
-                    support in ConnMan.
-                </p>
-<p>
-                    For a list of features supported by the Yocto Project as shipped, 
-                    see the "<a class="link" href="ref-features-machine.html" title="9.2. Machine">Machine</a>" section.
-                </p>
-</dd>
-<dt>
-<a name="var-MACHINE_FEATURES_BACKFILL"></a>MACHINE_FEATURES_BACKFILL</dt>
-<dd>
-<p>Features to be added to 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_FEATURES" title="MACHINE_FEATURES">MACHINE_FEATURES</a></code>
-                    if not also present in 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_FEATURES_BACKFILL_CONSIDERED" title="MACHINE_FEATURES_BACKFILL_CONSIDERED">MACHINE_FEATURES_BACKFILL_CONSIDERED</a></code>.
-                </p>
-<p>
-                    This variable is set in the <code class="filename">meta/conf/bitbake.conf</code> file.
-                    It is not intended to be user-configurable. 
-                    It is best to just reference the variable to see which machine features are 
-                    being backfilled for all machine configurations.
-                    See the <a class="link" href="ref-features-backfill.html" title="9.4. Feature Backfilling">Feature backfilling</a> section for 
-                    more information.
-                </p>
-</dd>
-<dt>
-<a name="var-MACHINE_FEATURES_BACKFILL_CONSIDERED"></a>MACHINE_FEATURES_BACKFILL_CONSIDERED</dt>
-<dd><p>Features from
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_FEATURES_BACKFILL" title="MACHINE_FEATURES_BACKFILL">MACHINE_FEATURES_BACKFILL</a></code>
-                    that should not be backfilled (i.e. added to
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_FEATURES" title="MACHINE_FEATURES">MACHINE_FEATURES</a></code>)
-                    during the build.
-                    See the <a class="link" href="ref-features-backfill.html" title="9.4. Feature Backfilling">Feature backfilling</a> section for 
-                    more information.
-                    </p></dd>
-<dt>
-<a name="var-MAINTAINER"></a>MAINTAINER</dt>
-<dd><p>The email address of the distribution maintainer.</p></dd>
-<dt>
-<a name="var-MLPREFIX"></a>MLPREFIX</dt>
-<dd><p>
-                    Specifies a prefix has been added to
-                    <a class="link" href="ref-variables-glos.html#var-PN" title="PN"><code class="filename">PN</code></a> to create a special version 
-                    of a recipe or package, such as a multilib version.
-                    The variable is used in places where the prefix needs to be 
-                    added to or removed from a the name (e.g. the
-                    <a class="link" href="ref-variables-glos.html#var-BPN" title="BPN"><code class="filename">BPN</code></a> variable).
-                    <code class="filename">MLPREFIX</code> gets set when a prefix has been 
-                    added to <code class="filename">PN</code>. 
-                </p></dd>
-<dt>
-<a name="var-MULTIMACH_TARGET_SYS"></a>MULTIMACH_TARGET_SYS</dt>
-<dd><p>
-                    Separates files for different machines such that you can build
-                    for multiple target machines using the same output directories.
-                    See the <a class="link" href="ref-variables-glos.html#var-STAMP" title="STAMP"><code class="filename">STAMP</code></a> variable
-                    for an example.
-                </p></dd>
-</dl>
-</div>
-<div class="glossdiv" title="O">
-<h3 class="title">O</h3>
-<dl>
-<dt>
-<a name="var-OE_TERMINAL"></a>OE_TERMINAL</dt>
-<dd>
-<p>
-                    Controls how the OpenEmbedded build system spawns 
-                    interactive terminals on the host development system
-                    (e.g. using the BitBake command with the 
-                    <code class="filename">-c devshell</code> command-line option).
-                    For more information, see the 
-                    "<a class="link" href="../dev-manual/platdev-appdev-devshell.html" target="_self">Using a Development Shell</a>" section
-                    in the Yocto Project Development Manual.
-                 </p>
-<p>
-                    You can use the following values for the 
-                    <code class="filename">OE_TERMINAL</code> variable:
-                    </p>
-<pre class="literallayout">
-     auto
-     gnome
-     xfce
-     rxvt
-     screen
-     konsole
-     none 
-                    </pre>
-<p>
-                    </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>Konsole support only works for KDE 3.x.
-                        Also, "auto" is the default behavior for 
-                        <code class="filename">OE_TERMINAL</code>
-</div>
-<p>
-                </p>
-</dd>
-</dl>
-</div>
-<div class="glossdiv" title="P">
-<h3 class="title">P</h3>
-<dl>
-<dt>
-<a name="var-P"></a>P</dt>
-<dd>
-<p>The recipe name and version.
-                    <code class="filename">P</code> is comprised of the following:
-                    </p>
-<pre class="literallayout">
-     ${PN}-${PV}
-                    </pre>
-</dd>
-<dt>
-<a name="var-PACKAGE_ARCH"></a>PACKAGE_ARCH</dt>
-<dd><p>The architecture of the resulting package or packages.</p></dd>
-<dt>
-<a name="var-PACKAGE_BEFORE_PN"></a>PACKAGE_BEFORE_PN</dt>
-<dd><p>Enables easily adding packages to 
-                <code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGES" title="PACKAGES">PACKAGES</a></code>
-                before <code class="filename">${PN}</code> so that the packages can pick 
-                up files that would normally be included in the default package.</p></dd>
-<dt>
-<a name="var-PACKAGE_CLASSES"></a>PACKAGE_CLASSES</dt>
-<dd>
-<p>This variable, which is set in the <code class="filename">local.conf</code> configuration
-                    file found in the <code class="filename">conf</code> folder of the 
-                    <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>,
-                    specifies the package manager to use when packaging data.
-                    You can provide one or more arguments for the variable with the first 
-                    argument being the package manager used to create images:
-                    </p>
-<pre class="literallayout">
-     PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk"
-                    </pre>
-<p>
-                    For information on build performance effects as a result of the 
-                    package manager use, see
-                    <a class="link" href="ref-classes-package.html" title="7.13. Packaging - package*.bbclass">Packaging - <code class="filename">package*.bbclass</code></a>
-                    in this manual.
-                </p>
-</dd>
-<dt>
-<a name="var-PACKAGE_EXTRA_ARCHS"></a>PACKAGE_EXTRA_ARCHS</dt>
-<dd><p>Specifies the list of architectures compatible with the device CPU.
-                    This variable is useful when you build for several different devices that use
-                    miscellaneous processors such as XScale and ARM926-EJS).</p></dd>
-<dt>
-<a name="var-PACKAGECONFIG"></a>PACKAGECONFIG</dt>
-<dd>
-<p>
-                    This variable provides a means of enabling or disabling 
-                    features of a recipe on a per-recipe basis. 
-                    The <code class="filename">PACKAGECONFIG</code>
-                    variable itself specifies a space-separated list of the 
-                    features to enable.
-                    The features themselves are specified as flags on the 
-                    <code class="filename">PACKAGECONFIG</code> variable.
-                    You can provide up to four arguments, which are separated by
-                    commas, to determine the behavior of each feature 
-                    when it is enabled or disabled.
-                    You can omit any argument you like but must retain the 
-                    separating commas.
-                    The arguments specify the following:
-                    </p>
-<div class="orderedlist"><ol class="orderedlist" type="1">
-<li class="listitem"><p>Extra arguments 
-                            that should be added to the configure script argument list 
-                            (<a class="link" href="ref-variables-glos.html#var-EXTRA_OECONF" title="EXTRA_OECONF"><code class="filename">EXTRA_OECONF</code></a>)
-                            if the feature is enabled.</p></li>
-<li class="listitem"><p>Extra arguments 
-                            that should be added to <code class="filename">EXTRA_OECONF</code>
-                            if the feature is disabled.
-                            </p></li>
-<li class="listitem"><p>Additional build dependencies 
-                            (<a class="link" href="ref-variables-glos.html#var-DEPENDS" title="DEPENDS"><code class="filename">DEPENDS</code></a>)
-                            that should be added if the feature is enabled.
-                            </p></li>
-<li class="listitem"><p>Additional runtime dependencies 
-                            (<a class="link" href="ref-variables-glos.html#var-RDEPENDS" title="RDEPENDS"><code class="filename">RDEPENDS</code></a>)
-                            that should be added if the feature is enabled.
-                            </p></li>
-</ol></div>
-<p>
-                </p>
-<p>
-                    Consider the following example taken from the 
-                    <code class="filename">librsvg</code> recipe.
-                    In this example the feature is <code class="filename">croco</code>, which 
-                    has three arguments that determine the feature's behavior.
-                        </p>
-<pre class="literallayout">
-     PACKAGECONFIG ??= "croco"
-     PACKAGECONFIG[croco] = "--with-croco,--without-croco,libcroco"
-                        </pre>
-<p>
-                    The <code class="filename">--with-croco</code> and 
-                    <code class="filename">libcroco</code> arguments apply only if 
-                    the feature is enabled.
-                    In this case, <code class="filename">--with-croco</code> is 
-                    added to the configure script argument list and 
-                    <code class="filename">libcroco</code> is added to 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-DEPENDS" title="DEPENDS">DEPENDS</a></code>.
-                    On the other hand, if the feature is disabled say through
-                    a <code class="filename">.bbappend</code> file in another layer, then
-                    the second argument <code class="filename">--without-croco</code> is 
-                    added to the configure script rather than 
-                    <code class="filename">--with-croco</code>.
-                </p>
-</dd>
-<dt>
-<a name="var-PACKAGES"></a>PACKAGES</dt>
-<dd>
-<p>The list of packages to be created from the recipe.
-                    The default value is the following:
-                    </p>
-<pre class="literallayout">
-     ${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc ${PN}-locale ${PACKAGE_BEFORE_PN} ${PN}
-                    </pre>
-</dd>
-<dt>
-<a name="var-PACKAGES_DYNAMIC"></a>PACKAGES_DYNAMIC</dt>
-<dd>
-<p>
-                    A promise that your recipe satisfies runtime dependencies 
-                    for optional modules that are found in other recipes.
-                    <code class="filename">PACKAGES_DYNAMIC</code>
-                    does not actually satisfy the dependencies, it only states that 
-                    they should be satisfied. 
-                    For example, if a hard, runtime dependency 
-                    (<code class="filename">RDEPENDS</code>) of another package is satisfied 
-                    at build time through the <code class="filename">PACKAGES_DYNAMIC</code>
-                    variable, but a package with the module name is never actually 
-                    produced, then the other package will be broken.
-                    Thus, if you attempt to include that package in an image,
-                    you will get a dependency failure from the packaging system 
-                    during <code class="filename">do_rootfs</code>. 
-                    Typically, if there is a chance that such a situation can
-                    occur and the package that is not created is valid 
-                    without the dependency being satisfied, then you should use 
-                    <code class="filename">RRECOMMENDS</code> (a soft runtime dependency) 
-                    instead of <code class="filename">RDEPENDS</code>.
-                </p>
-<p> 
-                    For an example of how to use the <code class="filename">PACKAGES_DYNAMIC</code>
-                    variable when you are splitting packages, see the 
-                    "<a class="link" href="../dev-manual/handling-optional-module-packaging.html" target="_self">Handling Optional Module Packaging</a>" section
-                    in the Yocto Project Development Manual.
-                </p>
-</dd>
-<dt>
-<a name="var-PARALLEL_MAKE"></a>PARALLEL_MAKE</dt>
-<dd><p>Specifies extra options that are passed to the <code class="filename">make</code> command during the 
-                    compile tasks. 
-                    This variable is usually in the form <code class="filename">-j 4</code>, where the number
-                    represents the maximum number of parallel threads make can run.
-                    If you development host supports multiple cores a good rule of thumb is to set 
-                    this variable to twice the number of cores on the host.</p></dd>
-<dt>
-<a name="var-PF"></a>PF</dt>
-<dd>
-<p>Specifies the recipe or package name and includes all version and revision
-                    numbers (i.e. <code class="filename">eglibc-2.13-r20+svnr15508/</code> and
-                    <code class="filename">bash-4.2-r1/</code>).
-                    This variable is comprised of the following:
-                    </p>
-<pre class="literallayout">
-     ${PN}-${EXTENDPE}${PV}-${PR}
-                    </pre>
-</dd>
-<dt>
-<a name="var-PN"></a>PN</dt>
-<dd>
-<p>This variable can have two separate functions depending on the context: a recipe
-                    name or a resulting package name.</p>
-<p><code class="filename">PN</code> refers to a recipe name in the context of a file used 
-                    by the OpenEmbedded build system as input to create a package.
-                    The name is normally extracted from the recipe file name.
-                    For example, if the recipe is named 
-                    <code class="filename">expat_2.0.1.bb</code>, then the default value of <code class="filename">PN</code>
-                    will be "expat".</p>
-<p> 
-                    The variable refers to a package name in the context of a file created or produced by the
-                    OpenEmbedded build system.</p>
-<p>If applicable, the <code class="filename">PN</code> variable also contains any special 
-                    suffix or prefix.
-                    For example, using <code class="filename">bash</code> to build packages for the native
-                    machine, <code class="filename">PN</code> is <code class="filename">bash-native</code>.
-                    Using <code class="filename">bash</code> to build packages for the target and for Multilib,
-                    <code class="filename">PN</code> would be <code class="filename">bash</code> and  
-                    <code class="filename">lib64-bash</code>, respectively.
-                </p>
-</dd>
-<dt>
-<a name="var-PR"></a>PR</dt>
-<dd><p>The revision of the recipe. 
-                    The default value for this variable is "r0".
-                    </p></dd>
-<dt>
-<a name="var-PRINC"></a>PRINC</dt>
-<dd>
-<p>Causes the <code class="filename">PR</code> variable of 
-                    <code class="filename">.bbappend</code> files to dynamically increment.
-                    This increment minimizes the impact of layer ordering.</p>
-<p>In order to ensure multiple <code class="filename">.bbappend</code> files can co-exist, 
-                    <code class="filename">PRINC</code> should be self referencing.
-                    This variable defaults to 0.</p>
-<p>Following is an example that increments <code class="filename">PR</code> by two:
-                    </p>
-<pre class="literallayout">
-     PRINC := "${@int(PRINC) + 2}"
-                    </pre>
-<p>
-                    It is adviseable not to use strings such as ".= '.1'" with the variable because
-                    this usage is very sensitive to layer ordering. 
-                    Explicit assignments should be avoided as they cannot adequately represent multiple 
-                    <code class="filename">.bbappend</code> files.</p>
-</dd>
-<dt>
-<a name="var-PV"></a>PV</dt>
-<dd><p>The version of the recipe.
-                    The version is normally extracted from the recipe filename.
-                    For example, if the recipe is named 
-                    <code class="filename">expat_2.0.1.bb</code>, then the default value of <code class="filename">PV</code> 
-                    will be "2.0.1". 
-                    <code class="filename">PV</code> is generally not overridden within 
-                    a recipe unless it is building an unstable (i.e. development) version from a source code repository 
-                    (e.g. Git or Subversion).
-                 </p></dd>
-<dt>
-<a name="var-PE"></a>PE</dt>
-<dd><p>
-                    the epoch of the recipe. 
-                    The default value is "0". 
-                    The field is used to make upgrades possible when the versioning scheme changes in 
-                    some backwards incompatible way.
-                </p></dd>
-<dt>
-<a name="var-PREFERRED_PROVIDER"></a>PREFERRED_PROVIDER</dt>
-<dd>
-<p>
-                    If multiple recipes provide an item, this variable
-                    determines which recipe should be given preference. 
-                    The variable must always be suffixed with the name of the 
-                    provided item, and should be set to the 
-                    <code class="filename">PN</code> of the recipe 
-                    to which you want to give precedence.
-                    Here is an example:
-                    </p>
-<pre class="literallayout">
-     PREFERRED_PROVIDER_virtual/xserver = "xserver-xf86"
-                    </pre>
-<p>
-                </p>
-</dd>
-<dt>
-<a name="var-PREFERRED_VERSION"></a>PREFERRED_VERSION</dt>
-<dd>
-<p>
-                    If there are multiple versions of recipes available, this
-                    variable determines which recipe should be given preference.
-                    The variable must always be suffixed with the <code class="filename">PN</code> 
-                    for which to select, and should be set to the 
-                    <code class="filename">PV</code> to which you want to give precedence.
-                    You can use the "<code class="filename">%</code>" character as a wildcard
-                    to match any number of characters, which can be useful when 
-                    specifying versions that contain long revision number that could 
-                    potentially change.
-                    Here are two examples:
-                    </p>
-<pre class="literallayout">
-     PREFERRED_VERSION_python = "2.6.6"
-     PREFERRED_VERSION_linux-yocto = "3.0+git%" 
-                    </pre>
-<p>
-                </p>
-</dd>
-</dl>
-</div>
-<div class="glossdiv" title="R">
-<h3 class="title">R</h3>
-<dl>
-<dt>
-<a name="var-RCONFLICTS"></a>RCONFLICTS</dt>
-<dd>
-<p>The list of packages that conflict with a package.
-                    Note that the package will not be installed if the conflicting packages are not
-                    first removed.</p>
-<p>
-                   Like all package-controlling variables, you must always use them in 
-                   conjunction with a package name override.
-                   Here is an example:
-                   </p>
-<pre class="literallayout">
-     RCONFLICTS_${PN} = "another-conflicting-package-name"
-                   </pre>
-<p>
-                </p>
-</dd>
-<dt>
-<a name="var-RDEPENDS"></a>RDEPENDS</dt>
-<dd>
-<p>
-                    Lists a package's run-time dependencies (i.e. other packages)                    
-                    that must be installed for the package to be built.
-                    In other words, in order for the package to be built and 
-                    run correctly, it depends on the listed packages.
-                    If a package in this list cannot be found, it is probable 
-                    that a dependency error would occur before the build.
-                </p>
-<p>
-                    The names of the variables you list with 
-                    <code class="filename">RDEPENDS</code> must be the names of other 
-                    packages as listed in the 
-                    <a class="link" href="ref-variables-glos.html#var-PACKAGES" title="PACKAGES"><code class="filename">PACKAGES</code></a>
-                    variable.
-                    You should not list recipe names (<code class="filename">PN</code>).
-                </p>
-<p>
-                    Because the <code class="filename">RDEPENDS</code> variable applies 
-                    to packages being built, you should 
-                    always attach a package name to the variable to specify the 
-                    particular run-time package that has the dependency.
-                    For example, suppose you are building a development package 
-                    that depends on the <code class="filename">perl</code> package.
-                    In this case, you would use the following 
-                    <code class="filename">RDEPENDS</code> statement:
-                    </p>
-<pre class="literallayout">
-     RDEPENDS_${PN}-dev += "perl"
-                    </pre>
-<p>
-                    In the example, the package name 
-                    (<code class="filename">${PN}-dev</code>) must appear as it would 
-                    in the 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGES" title="PACKAGES">PACKAGES</a></code> 
-                    namespace before any renaming of the output package by 
-                    classes like <code class="filename">debian.bbclass</code>.
-                </p>
-<p>
-                    In many cases you do not need to explicitly add dependencies 
-                    to <code class="filename">RDEPENDS</code> since some automatic 
-                    handling occurs:
-                    </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">shlibdeps</code></em></span>:  If 
-                            a run-time package contains a shared library 
-                            (<code class="filename">.so</code>), the build
-                            processes the library in order to determine other 
-                            libraries to which it is dynamically linked.  
-                            The build process adds these libraries to 
-                            <code class="filename">RDEPENDS</code> when creating the run-time 
-                            package.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">pcdeps</code></em></span>:  If 
-                            the package ships a <code class="filename">pkg-config</code> 
-                            information file, the build process uses this file 
-                            to add items to the <code class="filename">RDEPENDS</code>
-                            variable to create the run-time packages.
-                            </p></li>
-</ul></div>
-<p>
-                </p>
-</dd>
-<dt>
-<a name="var-RRECOMMENDS"></a>RRECOMMENDS</dt>
-<dd>
-<p>
-                    A list of packages that extend the usability of a package being 
-                    built.
-                    The package being built does not depend on this list of packages in 
-                    order to successfully build, but needs them for the extended usability.
-                    To specify runtime dependencies for packages, see the 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-RDEPENDS" title="RDEPENDS">RDEPENDS</a></code> variable.
-                </p>
-<p>
-                    The OpenEmbedded build process automatically installs the list of packages
-                    as part of the built package.
-                    However, you can remove them later if you want.
-                    If, during the build, a package from the list cannot be found, the build
-                    process continues without an error.
-                </p>
-<p>
-                    Because the <code class="filename">RRECOMMENDS</code> variable applies to packages 
-                    being built, you should 
-                    always attach an override to the variable to specify the particular package
-                    whose usability is being extended.
-                    For example, suppose you are building a development package that is extended
-                    to support wireless functionality.
-                    In this case, you would use the following:
-                    </p>
-<pre class="literallayout">
-     RRECOMMENDS_${PN}-dev += "&lt;wireless_package_name&gt;"
-                    </pre>
-<p>
-                    In the example, the package name (<code class="filename">${PN}-dev</code>) must 
-                    appear as it would in the 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGES" title="PACKAGES">PACKAGES</a></code> namespace before any 
-                    renaming of the output package by classes like <code class="filename">debian.bbclass</code>.
-                </p>
-</dd>
-<dt>
-<a name="var-RREPLACES"></a>RREPLACES</dt>
-<dd><p>The list of packages that are replaced with this package.</p></dd>
-</dl>
-</div>
-<div class="glossdiv" title="S">
-<h3 class="title">S</h3>
-<dl>
-<dt>
-<a name="var-S"></a>S</dt>
-<dd>
-<p>
-                    The location in the <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>
-                    where unpacked package source code resides.
-                    This location is within the working directory 
-                    (<code class="filename"><a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR">WORKDIR</a></code>), which 
-                    is not static.
-                    The unpacked source location depends on the package name 
-                    (<code class="filename"><a class="link" href="ref-variables-glos.html#var-PN" title="PN">PN</a></code>) and 
-                    package version (<code class="filename"><a class="link" href="ref-variables-glos.html#var-PV" title="PV">PV</a></code>) as 
-                    follows:
-                    </p>
-<pre class="literallayout">
- ${WORKDIR}/${PN}-${PV}
-                    </pre>
-<p>
-                    As an example, assume a 
-                    <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a> top-level 
-                    folder named <code class="filename">poky</code> 
-                    and a default <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>
-                    at <code class="filename">poky/build</code>.
-                    In this case, the working directory the build system uses to build 
-                    the <code class="filename">db</code> package is the following:
-                    </p>
-<pre class="literallayout">
- ~/poky/build/tmp/work/qemux86-poky-linux/db-5.1.19-r3/db-5.1.19
-                    </pre>
-<p>
-                </p>
-</dd>
-<dt>
-<a name="var-SDKIMAGE_FEATURES"></a>SDKIMAGE_FEATURES</dt>
-<dd><p>Equivalent to 
-                <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_FEATURES" title="IMAGE_FEATURES">IMAGE_FEATURES</a></code>.
-                However, this variable applies to the SDK generated from an image using 
-                <code class="filename">bitbake -c populate_sdk imagename</code>).
-                </p></dd>
-<dt>
-<a name="var-SECTION"></a>SECTION</dt>
-<dd><p>The section in which packages should be categorized.
-                    Package management utilities can make use of this variable.</p></dd>
-<dt>
-<a name="var-SELECTED_OPTIMIZATION"></a>SELECTED_OPTIMIZATION</dt>
-<dd><p>
-                    The variable takes the value of 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-FULL_OPTIMIZATION" title="FULL_OPTIMIZATION">FULL_OPTIMIZATION</a></code>
-                    unless <code class="filename"><a class="link" href="ref-variables-glos.html#var-DEBUG_BUILD" title="DEBUG_BUILD">DEBUG_BUILD</a></code> = "1".
-                    In this case the value of 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-DEBUG_OPTIMIZATION" title="DEBUG_OPTIMIZATION">DEBUG_OPTIMIZATION</a></code> is used.
-                </p></dd>
-<dt>
-<a name="var-SERIAL_CONSOLE"></a>SERIAL_CONSOLE</dt>
-<dd><p>The speed and device for the serial port used to attach the serial console. 
-                    This variable is given to the kernel as the "console"
-                    parameter and after booting occurs <code class="filename">getty</code> is started on that port
-                    so remote login is possible.</p></dd>
-<dt>
-<a name="var-SITEINFO_ENDIANNESS"></a>SITEINFO_ENDIANNESS</dt>
-<dd><p>
-                    Specifies the endian byte order of the target system. 
-                    The value should be either "le" for little-endian or "be" for big-endian.
-                </p></dd>
-<dt>
-<a name="var-SITEINFO_BITS"></a>SITEINFO_BITS</dt>
-<dd><p>
-                    Specifies the number of bits for the target system CPU.
-                    The value should be either "32" or "64".
-                </p></dd>
-<dt>
-<a name="var-SPECIAL_PKGSUFFIX"></a>SPECIAL_PKGSUFFIX</dt>
-<dd><p>
-                    A list of prefixes for <a class="link" href="ref-variables-glos.html#var-PN" title="PN"><code class="filename">PN</code></a> used by the 
-                    OpenEmbedded build system to create variants of recipes or packages.
-                    The list specifies the prefixes to strip off during certain circumstances
-                    such as the generation of the <a class="link" href="ref-variables-glos.html#var-BPN" title="BPN"><code class="filename">BPN</code></a> variable.
-                </p></dd>
-<dt>
-<a name="var-SRC_URI"></a>SRC_URI</dt>
-<dd>
-<p>The list of source files - local or remote.
-                    This variable tells the OpenEmbedded build system which bits to pull
-                    in for the build and how to pull them in.
-                    For example, if the recipe only needs to fetch a tarball from the 
-                    internet, the recipe uses a single <code class="filename">SRC_URI</code> entry.
-                    On the other hand, if the recipe needs to fetch a tarball, apply
-                    two patches, and include a custom file, the recipe would include four
-                    instances of the variable.</p>
-<p>The following list explains the available URI protocols:
-                    </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem">
-<p><span class="emphasis"><em><code class="filename">file://</code> -</em></span> Fetches files, which is usually
-                            a file shipped with the metadata, from the local machine. 
-                            The path is relative to the 
-                            <a class="link" href="ref-variables-glos.html#var-FILESPATH" title="FILESPATH"><code class="filename">FILESPATH</code></a> 
-                            variable.
-                            Thus, the build system searches, in order, from the following directories,
-                            which are assumed to be a subdirectories of the directory in which the 
-                            recipe file resides:
-                            </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="circle">
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">${PN}</code> -</em></span> The recipe name 
-                                    with any special suffix or prefix, if applicable.
-                                    For example, using <code class="filename">bash</code> to build for the native
-                                    machine, <code class="filename">PN</code> is <code class="filename">bash-native</code>.
-                                    Using <code class="filename">bash</code> to build for the target and for Multilib,
-                                    <code class="filename">PN</code> would be <code class="filename">bash</code> and  
-                                    <code class="filename">lib64-bash</code>, respectively.
-                                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">${PF}</code> - </em></span>
-                                    <code class="filename">${PN}-${EXTENDPE}${PV}-${PR}</code>.
-                                    The recipe name including all version and revision numbers 
-                                    (i.e. <code class="filename">eglibc-2.13-r20+svnr15508/</code> and
-                                    <code class="filename">bash-4.2-r1/</code>).</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">${P}</code> -</em></span> 
-                                    <code class="filename">${PN}-${PV}</code>. 
-                                    The recipe name and version (i.e. <code class="filename">bash-4.2</code>).
-                                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">${BPN}</code> -</em></span> The 
-                                    base recipe name without any special suffix or version numbers.
-                                    </p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">${BP}</code> -</em></span> 
-                                    <code class="filename">${BPN}-${PV}</code>.
-                                    The base recipe name and version but without any special 
-                                    package name suffix.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>Files -</em></span> Files beneath the directory in which the recipe
-                                    resides.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>Directory -</em></span> The directory itself in which the recipe
-                                    resides.</p></li>
-</ul></div>
-</li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">bzr://</code> -</em></span> Fetches files from a 
-                            Bazaar revision control repository.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">git://</code> -</em></span> Fetches files from a 
-                            Git revision control repository.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">osc://</code> -</em></span> Fetches files from 
-                            an OSC (OpenSuse Build service) revision control repository.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">repo://</code> -</em></span> Fetches files from 
-                            a repo (Git) repository.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">svk://</code> -</em></span> Fetches files from 
-                            an SVK revision control repository.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">http://</code> -</em></span> Fetches files from 
-                            the Internet using <code class="filename">http</code>.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">https://</code> -</em></span> Fetches files 
-                            from the Internet using <code class="filename">https</code>.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">ftp://</code> -</em></span> Fetches files 
-                            from the Internet using <code class="filename">ftp</code>.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">cvs://</code> -</em></span> Fetches files from 
-                            a CVS revision control repository.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">hg://</code> -</em></span> Fetches files from 
-                            a Mercurial (<code class="filename">hg</code>) revision control repository.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">p4://</code> -</em></span> Fetches files from 
-                            a Perforce (<code class="filename">p4</code>) revision control repository.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">ssh://</code> -</em></span> Fetches files from 
-                            a secure shell.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">svn://</code> -</em></span> Fetches files from 
-                            a Subversion (<code class="filename">svn</code>) revision control repository.</p></li>
-</ul></div>
-<p>
-                </p>
-<p>Standard and recipe-specific options for <code class="filename">SRC_URI</code> exist.
-                    Here are standard options:
-                    </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">apply</code> -</em></span> Whether to apply 
-                            the patch or not. 
-                            The default action is to apply the patch.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">striplevel</code> -</em></span> Which 
-                            striplevel to use when applying the patch.
-                            The default level is 1.</p></li>
-</ul></div>
-<p>
-                </p>
-<p>Here are options specific to recipes building code from a revision control system:
-                    </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">mindate</code> -</em></span> Only applies 
-                            the patch if <a class="link" href="ref-variables-glos.html#var-SRCDATE" title="SRCDATE"><code class="filename">SRCDATE</code></a> 
-                            is equal to or greater than <code class="filename">mindate</code>.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">maxdate</code> -</em></span> Only applies 
-                            the patch if <a class="link" href="ref-variables-glos.html#var-SRCDATE" title="SRCDATE"><code class="filename">SRCDATE</code></a> 
-                            is not later than <code class="filename">mindate</code>.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">minrev</code> -</em></span> Only applies 
-                            the patch if <a class="link" href="ref-variables-glos.html#var-SRCREV" title="SRCREV"><code class="filename">SRCREV</code></a> 
-                            is equal to or greater than <code class="filename">minrev</code>.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">maxrev</code> -</em></span> Only applies 
-                            the patch if <a class="link" href="ref-variables-glos.html#var-SRCREV" title="SRCREV"><code class="filename">SRCREV</code></a> 
-                            is not later than <code class="filename">maxrev</code>.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">rev</code> -</em></span> Only applies the 
-                            patch if <a class="link" href="ref-variables-glos.html#var-SRCREV" title="SRCREV"><code class="filename">SRCREV</code></a> 
-                            is equal to <code class="filename">rev</code>.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">notrev</code> -</em></span> Only applies 
-                            the patch if <a class="link" href="ref-variables-glos.html#var-SRCREV" title="SRCREV"><code class="filename">SRCREV</code></a> 
-                            is not equal to <code class="filename">rev</code>.</p></li>
-</ul></div>
-<p>
-                </p>
-<p>Here are some additional options worth mentioning:
-                    </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">unpack</code> -</em></span> Controls 
-                            whether or not to unpack the file if it is an archive.
-                            The default action is to upack the file.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">subdir</code> -</em></span> Places the file 
-                            (or extracts its contents) into the specified 
-                            subdirectory of <a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR"><code class="filename">WORKDIR</code></a>.
-                            This option is useful for unusual tarballs or other archives that 
-                            don't have their files already in a subdirectory within the archive.
-                            </p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">name</code> -</em></span> Specifies a 
-                            name to be used for association with <code class="filename">SRC_URI</code> checksums 
-                            when you have more than one file specified in <code class="filename">SRC_URI</code>.
-                            </p></li>
-<li class="listitem"><p><span class="emphasis"><em><code class="filename">downloadfilename</code> -</em></span> Specifies  
-                            the filename used when storing the downloaded file.</p></li>
-</ul></div>
-<p>
-                </p>
-</dd>
-<dt>
-<a name="var-SRC_URI_OVERRIDES_PACKAGE_ARCH"></a>SRC_URI_OVERRIDES_PACKAGE_ARCH</dt>
-<dd>
-<p></p>
-<p>
-                    By default, the OpenEmbedded build system automatically detects whether 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-SRC_URI" title="SRC_URI">SRC_URI</a></code>  
-                    contains files that are machine-specific.
-                    If so, the build system automatically changes 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGE_ARCH" title="PACKAGE_ARCH">PACKAGE_ARCH</a></code>. 
-                    Setting this variable to "0" disables this behavior.
-                </p>
-</dd>
-<dt>
-<a name="var-SRCDATE"></a>SRCDATE</dt>
-<dd><p>
-                    The date of the source code used to build the package.
-                    This variable applies only if the source was fetched from a Source Code Manager (SCM).
-                </p></dd>
-<dt>
-<a name="var-SRCREV"></a>SRCREV</dt>
-<dd><p>
-                    The revision of the source code used to build the package.
-                    This variable applies to Subversion, Git, Mercurial and Bazaar
-                    only. 
-                    Note that if you wish to build a fixed revision and you wish
-                    to avoid performing a query on the remote repository every time
-                    BitBake parses your recipe, you should specify a <code class="filename">SRCREV</code> that is a
-                    full revision identifier and not just a tag.
-                </p></dd>
-<dt>
-<a name="var-SSTATE_DIR"></a>SSTATE_DIR</dt>
-<dd><p>The directory for the shared state.</p></dd>
-<dt>
-<a name="var-SSTATE_MIRRORS"></a>SSTATE_MIRRORS</dt>
-<dd>
-<p>
-                    Configures the OpenEmbedded build system to search other 
-                    mirror locations for prebuilt cache data objects before 
-                    building out the data.
-                    This variable works like fetcher 
-                    <code class="filename">MIRRORS</code>/<code class="filename">PREMIRRORS</code>
-                    and points to the cache locations to check for the shared 
-                    objects.
-                </p>
-<p>
-                    You can specify a filesystem directory or a remote URL such 
-                    as HTTP or FTP.
-                    The locations you specify need to contain the shared state
-                    cache (sstate-cache) results from previous builds.
-                    The sstate-cache you point to can also be from builds on 
-                    other machines. 
-                </p>
-<p>
-                    If a mirror uses the same structure as 
-                    <a class="link" href="ref-variables-glos.html#var-SSTATE_DIR" title="SSTATE_DIR"><code class="filename">SSTATE_DIR</code></a>, 
-                    you need to add 
-                    "PATH" at the end as shown in the examples below. 
-                    The build system substitues the correct path within the 
-                    directory structure.
-                    </p>
-<pre class="literallayout">
-     SSTATE_MIRRORS ?= "\
-     file://.* http://someserver.tld/share/sstate/PATH \n \
-     file://.* file:///some/local/dir/sstate/PATH"
-                    </pre>
-<p>
-                </p>
-</dd>
-<dt>
-<a name="var-STAGING_KERNEL_DIR"></a>STAGING_KERNEL_DIR</dt>
-<dd><p>
-                    The directory with kernel headers that are required to build out-of-tree
-                    modules.
-                </p></dd>
-<dt>
-<a name="var-STAMP"></a>STAMP</dt>
-<dd>
-<p>
-                    Specifies the base path used to create recipe stamp files.
-                    The path to an actual stamp file is constructed by evaluating this
-                    string and then appending additional information. 
-                    Currently, the default assignment for <code class="filename">STAMP</code>
-                    as set in the <code class="filename">meta/conf/bitbake.conf</code> file
-                    is:
-                    </p>
-<pre class="literallayout">
-     STAMP = "${TMPDIR}/stamps/${MULTIMACH_TARGET_SYS}/${PN}-${EXTENDPE}${PV}-${PR}"
-                    </pre>
-<p>
-                    See <a class="link" href="ref-variables-glos.html#var-TMPDIR" title="TMPDIR"><code class="filename">TMPDIR</code></a>, 
-                    <a class="link" href="ref-variables-glos.html#var-MULTIMACH_TARGET_SYS" title="MULTIMACH_TARGET_SYS"><code class="filename">MULTIMACH_TARGET_SYS</code></a>,
-                    <a class="link" href="ref-variables-glos.html#var-PN" title="PN"><code class="filename">PN</code></a>,
-                    <a class="link" href="ref-variables-glos.html#var-EXTENDPE" title="EXTENDPE"><code class="filename">EXTENDPE</code></a>,
-                    <a class="link" href="ref-variables-glos.html#var-PV" title="PV"><code class="filename">PV</code></a>, and
-                    <a class="link" href="ref-variables-glos.html#var-PR" title="PR"><code class="filename">PR</code></a> for related variable
-                    information.
-                </p>
-</dd>
-<dt>
-<a name="var-SUMMARY"></a>SUMMARY</dt>
-<dd><p>The short (72 characters or less) summary of the binary package for packaging 
-                    systems such as <code class="filename">opkg</code>, <code class="filename">rpm</code> or 
-                    <code class="filename">dpkg</code>.
-                    By default, <code class="filename">SUMMARY</code> is used to define
-                    the <a class="link" href="ref-variables-glos.html#var-DESCRIPTION" title="DESCRIPTION"><code class="filename">DESCRIPTION</code></a>
-                    variable if <code class="filename">DESCRIPTION</code> is not set 
-                    in the recipe.
-                </p></dd>
-</dl>
-</div>
-<div class="glossdiv" title="T">
-<h3 class="title">T</h3>
-<dl>
-<dt>
-<a name="var-T"></a>T</dt>
-<dd>
-<p>This variable points to a directory were Bitbake places temporary 
-                    files when building a particular package. 
-                    It is typically set as follows:
-                    </p>
-<pre class="literallayout">
-     T = ${WORKDIR}/temp
-                    </pre>
-<p>
-                    The <a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR"><code class="filename">WORKDIR</code></a>
-                    is the directory into which Bitbake unpacks and builds the package. 
-                    The default <code class="filename">bitbake.conf</code> file sets this variable.</p>
-<p>The <code class="filename">T</code> variable is not to be confused with 
-                    the <a class="link" href="ref-variables-glos.html#var-TMPDIR" title="TMPDIR"><code class="filename">TMPDIR</code></a> variable,
-                    which points to the root of the directory tree where Bitbake 
-                    places the output of an entire build.
-                </p>
-</dd>
-<dt>
-<a name="var-TARGET_ARCH"></a>TARGET_ARCH</dt>
-<dd><p>The architecture of the device being built. 
-                While a number of values are possible, the OpenEmbedded build system primarily supports
-                <code class="filename">arm</code> and <code class="filename">i586</code>.</p></dd>
-<dt>
-<a name="var-TARGET_CFLAGS"></a>TARGET_CFLAGS</dt>
-<dd><p>
-                    Flags passed to the C compiler for the target system. 
-                    This variable evaluates to the same as 
-                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-CFLAGS" title="CFLAGS">CFLAGS</a></code>.
-                </p></dd>
-<dt>
-<a name="var-TARGET_FPU"></a>TARGET_FPU</dt>
-<dd><p>Specifies the method for handling FPU code. 
-                    For FPU-less targets, which include most ARM CPUs, the variable must be
-                    set to "soft".
-                    If not, the kernel emulation gets used, which results in a performance penalty.</p></dd>
-<dt>
-<a name="var-TARGET_OS"></a>TARGET_OS</dt>
-<dd><p>Specifies the target's operating system. 
-                    The variable can be set to "linux" for <code class="filename">eglibc</code>-based systems and
-                    to "linux-uclibc" for <code class="filename">uclibc</code>. 
-                    For ARM/EABI targets, there are also "linux-gnueabi" and
-                    "linux-uclibc-gnueabi" values possible.</p></dd>
-<dt>
-<a name="var-TCLIBC"></a>TCLIBC</dt>
-<dd>
-<p>
-                    Specifies which variant of the GNU standard C library (<code class="filename">libc</code>)
-                    to use during the build process.
-                    This variable replaces <code class="filename">POKYLIBC</code>, which is no longer
-                    supported.
-                </p>
-<p>
-                    You can select <code class="filename">eglibc</code> or <code class="filename">uclibc</code>.
-                    </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-                        This release of the Yocto Project does not support the 
-                        <code class="filename">glibc</code> implementation of <code class="filename">libc</code>.
-                    </div>
-<p>
-                </p>
-</dd>
-<dt>
-<a name="var-TCMODE"></a>TCMODE</dt>
-<dd>
-<p>
-                    The toolchain selector. 
-                    This variable replaces <code class="filename">POKYMODE</code>, which is no longer
-                    supported.
-                </p>
-<p>
-                    The <code class="filename">TCMODE</code> variable selects the external toolchain
-                    built using the OpenEmbedded build system or a few supported combinations of
-                    the upstream GCC or CodeSourcery Labs toolchain.
-                    The variable identifies the <code class="filename">tcmode-*</code> files used in 
-                    the <code class="filename">meta/conf/distro/include</code> directory, which is found in the
-                    <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>. 
-                </p>
-<p>
-                    By default, <code class="filename">TCMODE</code> is set to "default", which 
-                    chooses the <code class="filename">tcmode-default.inc</code> file.
-                    The variable is similar to 
-                    <a class="link" href="ref-variables-glos.html#var-TCLIBC" title="TCLIBC"><code class="filename">TCLIBC</code></a>, which controls 
-                    the variant of the GNU standard C library (<code class="filename">libc</code>)
-                    used during the build process: <code class="filename">eglibc</code> or <code class="filename">uclibc</code>.
-                </p>
-</dd>
-<dt>
-<a name="var-TMPDIR"></a>TMPDIR</dt>
-<dd>
-<p>
-                    This variable is the temporary directory the OpenEmbedded build system 
-                    uses when it does its work building images. 
-                    By default, the <code class="filename">TMPDIR</code> variable is named 
-                    <code class="filename">tmp</code> within the 
-                    <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>.
-                </p>
-<p>
-                    If you want to establish this directory in a location other than the
-                    default, you can uncomment the following statement in the 
-                    <code class="filename">conf/local.conf</code> file in the 
-                    <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>:
-                    </p>
-<pre class="literallayout">
-     #TMPDIR = "${TOPDIR}/tmp"
-                    </pre>
-<p> 
-                </p>
-</dd>
-<dt>
-<a name="var-TOPDIR"></a>TOPDIR</dt>
-<dd><p>
-                    This variable is the 
-                    <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>.
-                    BitBake automatically sets this variable.
-                    The OpenEmbedded build system uses the Build Directory when building images. 
-                </p></dd>
-</dl>
-</div>
-<div class="glossdiv" title="W">
-<h3 class="title">W</h3>
-<dl>
-<dt>
-<a name="var-WORKDIR"></a>WORKDIR</dt>
-<dd>
-<p>
-                    The pathname of the working directory in which the OpenEmbedded build system  
-                    builds a recipe.
-                    This directory is located within the
-                    <a class="link" href="ref-variables-glos.html#var-TMPDIR" title="TMPDIR"><code class="filename">TMPDIR</code></a> directory structure and changes
-                    as different packages are built.
-                </p>
-<p>
-                    The actual <code class="filename">WORKDIR</code> directory depends on several things:
-                    </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem">The temporary directory - <a class="link" href="ref-variables-glos.html#var-TMPDIR" title="TMPDIR"><code class="filename">TMPDIR</code></a>
-</li>
-<li class="listitem">The package architecture - <a class="link" href="ref-variables-glos.html#var-PACKAGE_ARCH" title="PACKAGE_ARCH"><code class="filename">PACKAGE_ARCH</code></a>
-</li>
-<li class="listitem">The target machine - <a class="link" href="ref-variables-glos.html#var-MACHINE" title="MACHINE"><code class="filename">MACHINE</code></a>
-</li>
-<li class="listitem">The target operating system - <a class="link" href="ref-variables-glos.html#var-TARGET_OS" title="TARGET_OS"><code class="filename">TARGET_OS</code></a>
-</li>
-<li class="listitem">The recipe name - <a class="link" href="ref-variables-glos.html#var-PN" title="PN"><code class="filename">PN</code></a>
-</li>
-<li class="listitem">The recipe version - <a class="link" href="ref-variables-glos.html#var-PV" title="PV"><code class="filename">PV</code></a>
-</li>
-<li class="listitem">The recipe revision - <a class="link" href="ref-variables-glos.html#var-PR" title="PR"><code class="filename">PR</code></a>
-</li>
-</ul></div>
-<p>
-                </p>
-<p>
-                    For packages that are not dependent on a particular machine, 
-                    <code class="filename">WORKDIR</code> is defined as follows:
-                    </p>
-<pre class="literallayout">
- ${TMPDIR}/work/${PACKAGE_ARCH}-poky-${TARGET_OS}/${PN}-${PV}-${PR}
-                    </pre>
-<p>
-                    As an example, assume a 
-                    <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a> top-level 
-                    folder name <code class="filename">poky</code> and a default 
-                    <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a> 
-                    at <code class="filename">poky/build</code>.
-                    In this case, the working directory the build system uses to build 
-                    the <code class="filename">v86d</code> package is the following:
-                    </p>
-<pre class="literallayout">
-     ~/poky/build/tmp/work/qemux86-poky-linux/v86d-01.9-r0
-                    </pre>
-<p>
-                </p>
-<p>
-                    For packages that are dependent on a particular machine, <code class="filename">WORKDIR</code>
-                    is defined slightly different:
-                    </p>
-<pre class="literallayout">
- ${TMPDIR}/work/${MACHINE}-poky-${TARGET_OS}/${PN}-${PV}-${PR}
-                    </pre>
-<p>
-                    As an example, again assume a Source Directory top-level folder 
-                    named <code class="filename">poky</code> and a default Build Directory 
-                    at <code class="filename">poky/build</code>.
-                    In this case, the working directory the build system uses to build
-                    the <code class="filename">acl</code> recipe, which is being built for a 
-                    MIPS-based device, is the following:
-                    </p>
-<pre class="literallayout">
-     ~/poky/build/tmp/work/mips-poky-linux/acl-2.2.51-r2
-                    </pre>
-<p>
-                </p>
-</dd>
-</dl>
-</div>
-</div>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-config-distro.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-config-distro.html
deleted file mode 100644
index ba26400..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-config-distro.html
+++ /dev/null
@@ -1,40 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>11.1.1. Distribution (Distro)</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-varlocality-configuration.html" title="11.1. Configuration">
-<link rel="prev" href="ref-varlocality-configuration.html" title="11.1. Configuration">
-<link rel="next" href="ref-varlocality-config-machine.html" title="11.1.2. Machine">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="11.1.1. Distribution (Distro)">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="ref-varlocality-config-distro"></a>11.1.1. Distribution (Distro)</h3></div></div></div>
-<p>
-               This section lists variables whose context is the distribution, or distro.
-               </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO" title="DISTRO">DISTRO</a></code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO_NAME" title="DISTRO_NAME">DISTRO_NAME</a></code>
-                       </p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO_VERSION" title="DISTRO_VERSION">DISTRO_VERSION</a>
-                       </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-MAINTAINER" title="MAINTAINER">MAINTAINER</a></code>
-                       </p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGE_CLASSES" title="PACKAGE_CLASSES">PACKAGE_CLASSES</a>
-                       </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-TARGET_OS" title="TARGET_OS">TARGET_OS</a></code>
-                       </p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-TARGET_FPU" title="TARGET_FPU">TARGET_FPU</a></code>
-                       </p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-TCMODE" title="TCMODE">TCMODE</a></code>
-                       </p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-TCLIBC" title="TCLIBC">TCLIBC</a></code>
-                       </p></li>
-</ul></div>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-config-local.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-config-local.html
deleted file mode 100644
index 2067374..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-config-local.html
+++ /dev/null
@@ -1,42 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>11.1.3. Local</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-varlocality-configuration.html" title="11.1. Configuration">
-<link rel="prev" href="ref-varlocality-config-machine.html" title="11.1.2. Machine">
-<link rel="next" href="ref-varlocality-recipes.html" title="11.2. Recipes">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="11.1.3. Local">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="ref-varlocality-config-local"></a>11.1.3. Local</h3></div></div></div>
-<p>
-                This section lists variables whose context is the local configuration through the 
-                <code class="filename">local.conf</code> file.
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO" title="DISTRO">DISTRO</a></code>
-                        </p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE" title="MACHINE">MACHINE</a></code>
-                        </p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DL_DIR" title="DL_DIR">DL_DIR</a></code>
-                        </p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-BBFILES" title="BBFILES">BBFILES</a></code>
-                        </p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_IMAGE_FEATURES" title="EXTRA_IMAGE_FEATURES">EXTRA_IMAGE_FEATURES
-                        </a></code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGE_CLASSES" title="PACKAGE_CLASSES">PACKAGE_CLASSES</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-BB_NUMBER_THREADS" title="BB_NUMBER_THREADS">BB_NUMBER_THREADS</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-BBINCLUDELOGS" title="BBINCLUDELOGS">BBINCLUDELOGS</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-ENABLE_BINARY_LOCALE_GENERATION" title="ENABLE_BINARY_LOCALE_GENERATION">
-                        ENABLE_BINARY_LOCALE_GENERATION</a></code></p></li>
-</ul></div>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-config-machine.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-config-machine.html
deleted file mode 100644
index 82ee2a4..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-config-machine.html
+++ /dev/null
@@ -1,41 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>11.1.2. Machine</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-varlocality-configuration.html" title="11.1. Configuration">
-<link rel="prev" href="ref-varlocality-config-distro.html" title="11.1.1. Distribution (Distro)">
-<link rel="next" href="ref-varlocality-config-local.html" title="11.1.3. Local">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="11.1.2. Machine">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="ref-varlocality-config-machine"></a>11.1.2. Machine</h3></div></div></div>
-<p>
-                This section lists variables whose context is the machine.
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-TARGET_ARCH" title="TARGET_ARCH">TARGET_ARCH</a></code>
-                        </p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-SERIAL_CONSOLE" title="SERIAL_CONSOLE">SERIAL_CONSOLE</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGE_EXTRA_ARCHS" title="PACKAGE_EXTRA_ARCHS">PACKAGE_EXTRA_ARCHS</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_FSTYPES" title="IMAGE_FSTYPES">IMAGE_FSTYPES</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_FEATURES" title="MACHINE_FEATURES">MACHINE_FEATURES</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_EXTRA_RDEPENDS" title="MACHINE_EXTRA_RDEPENDS">MACHINE_EXTRA_RDEPENDS
-                        </a></code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_EXTRA_RRECOMMENDS" title="MACHINE_EXTRA_RRECOMMENDS">MACHINE_EXTRA_RRECOMMENDS
-                        </a></code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_ESSENTIAL_EXTRA_RDEPENDS" title="MACHINE_ESSENTIAL_EXTRA_RDEPENDS">MACHINE_ESSENTIAL_EXTRA_RDEPENDS
-                        </a></code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS" title="MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS">
-                        MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS</a></code></p></li>
-</ul></div>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-configuration.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-configuration.html
deleted file mode 100644
index c6a1c87..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-configuration.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>11.1. Configuration</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-varlocality.html" title="Chapter 11. Variable Context">
-<link rel="prev" href="ref-varlocality.html" title="Chapter 11. Variable Context">
-<link rel="next" href="ref-varlocality-config-distro.html" title="11.1.1. Distribution (Distro)">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="11.1. Configuration">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-varlocality-configuration"></a>11.1. Configuration</h2></div></div></div>
-<p>
-            The following subsections provide lists of variables whose context is
-            configuration: distribution, machine, and local.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-build.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-build.html
deleted file mode 100644
index 3068ceb..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-build.html
+++ /dev/null
@@ -1,33 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>11.2.4. Extra Build Information</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-varlocality-recipes.html" title="11.2. Recipes">
-<link rel="prev" href="ref-varlocality-recipe-paths.html" title="11.2.3. Paths">
-<link rel="next" href="faq.html" title="Chapter 12. FAQ">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="11.2.4. Extra Build Information">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="ref-varlocality-recipe-build"></a>11.2.4. Extra Build Information</h3></div></div></div>
-<p>
-                This section lists variables that define extra build information for recipes.
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_OECMAKE" title="EXTRA_OECMAKE">EXTRA_OECMAKE</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_OECONF" title="EXTRA_OECONF">EXTRA_OECONF</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_OEMAKE" title="EXTRA_OEMAKE">EXTRA_OEMAKE</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGES" title="PACKAGES">PACKAGES</a></code>
-                        </p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DEFAULT_PREFERENCE" title="DEFAULT_PREFERENCE">DEFAULT_PREFERENCE
-                        </a></code></p></li>
-</ul></div>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-dependencies.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-dependencies.html
deleted file mode 100644
index 4a172a7..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-dependencies.html
+++ /dev/null
@@ -1,33 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>11.2.2. Dependencies</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-varlocality-recipes.html" title="11.2. Recipes">
-<link rel="prev" href="ref-varlocality-recipe-required.html" title="11.2.1. Required">
-<link rel="next" href="ref-varlocality-recipe-paths.html" title="11.2.3. Paths">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="11.2.2. Dependencies">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="ref-varlocality-recipe-dependencies"></a>11.2.2. Dependencies</h3></div></div></div>
-<p>
-                This section lists variables that define recipe dependencies.
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DEPENDS" title="DEPENDS">DEPENDS</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-RDEPENDS" title="RDEPENDS">RDEPENDS</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-RRECOMMENDS" title="RRECOMMENDS">RRECOMMENDS</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-RCONFLICTS" title="RCONFLICTS">RCONFLICTS</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-RREPLACES" title="RREPLACES">RREPLACES</a>
-                        </code></p></li>
-</ul></div>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-paths.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-paths.html
deleted file mode 100644
index 92003d3..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-paths.html
+++ /dev/null
@@ -1,29 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>11.2.3. Paths</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-varlocality-recipes.html" title="11.2. Recipes">
-<link rel="prev" href="ref-varlocality-recipe-dependencies.html" title="11.2.2. Dependencies">
-<link rel="next" href="ref-varlocality-recipe-build.html" title="11.2.4. Extra Build Information">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="11.2.3. Paths">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="ref-varlocality-recipe-paths"></a>11.2.3. Paths</h3></div></div></div>
-<p>
-                This section lists variables that define recipe paths.
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR">WORKDIR</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-S" title="S">S</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-FILES" title="FILES">FILES</a>
-                        </code></p></li>
-</ul></div>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-required.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-required.html
deleted file mode 100644
index bb0355c..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipe-required.html
+++ /dev/null
@@ -1,30 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>11.2.1. Required</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-varlocality-recipes.html" title="11.2. Recipes">
-<link rel="prev" href="ref-varlocality-recipes.html" title="11.2. Recipes">
-<link rel="next" href="ref-varlocality-recipe-dependencies.html" title="11.2.2. Dependencies">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="11.2.1. Required">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="ref-varlocality-recipe-required"></a>11.2.1. Required</h3></div></div></div>
-<p>
-                This section lists variables that are required for recipes.
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-LICENSE" title="LICENSE">LICENSE</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-LIC_FILES_CHKSUM" title="LIC_FILES_CHKSUM">LIC_FILES_CHKSUM</a>
-                        </code></p></li>
-<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-SRC_URI" title="SRC_URI">SRC_URI</a></code> - used
-                        in recipes that fetch local or remote files.
-                        </p></li>
-</ul></div>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipes.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipes.html
deleted file mode 100644
index 5959cdc..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality-recipes.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>11.2. Recipes</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-varlocality.html" title="Chapter 11. Variable Context">
-<link rel="prev" href="ref-varlocality-config-local.html" title="11.1.3. Local">
-<link rel="next" href="ref-varlocality-recipe-required.html" title="11.2.1. Required">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="11.2. Recipes">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="ref-varlocality-recipes"></a>11.2. Recipes</h2></div></div></div>
-<p>
-            The following subsections provide lists of variables whose context is
-            recipes: required, dependencies, path, and extra build information.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality.html
deleted file mode 100644
index 3cf7169..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ref-varlocality.html
+++ /dev/null
@@ -1,41 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>Chapter 11. Variable Context</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="prev" href="ref-variables-glos.html" title="Chapter 10. Variables Glossary">
-<link rel="next" href="ref-varlocality-configuration.html" title="11.1. Configuration">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 11. Variable Context">
-<div class="titlepage"><div><div><h2 class="title">
-<a name="ref-varlocality"></a>Chapter 11. Variable Context</h2></div></div></div>
-<div class="toc">
-<p><b>Table of Contents</b></p>
-<dl>
-<dt><span class="section"><a href="ref-varlocality-configuration.html">11.1. Configuration</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="ref-varlocality-config-distro.html">11.1.1. Distribution (Distro)</a></span></dt>
-<dt><span class="section"><a href="ref-varlocality-config-machine.html">11.1.2. Machine</a></span></dt>
-<dt><span class="section"><a href="ref-varlocality-config-local.html">11.1.3. Local</a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="ref-varlocality-recipes.html">11.2. Recipes</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="ref-varlocality-recipe-required.html">11.2.1. Required</a></span></dt>
-<dt><span class="section"><a href="ref-varlocality-recipe-dependencies.html">11.2.2. Dependencies</a></span></dt>
-<dt><span class="section"><a href="ref-varlocality-recipe-paths.html">11.2.3. Paths</a></span></dt>
-<dt><span class="section"><a href="ref-varlocality-recipe-build.html">11.2.4. Extra Build Information</a></span></dt>
-</dl></dd>
-</dl>
-</div>
-<p>
-        While most variables can be used in almost any context such as 
-        <code class="filename">.conf</code>, <code class="filename">.bbclass</code>,
-        <code class="filename">.inc</code>, and <code class="filename">.bb</code> files,
-        some variables are often associated with a particular locality or context. 
-        This chapter describes some common associations.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/required-packages-for-the-host-development-system.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/required-packages-for-the-host-development-system.html
deleted file mode 100644
index 5100bbc..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/required-packages-for-the-host-development-system.html
+++ /dev/null
@@ -1,22 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>1.3.2. Required Packages for the Host Development System</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="intro-requirements.html" title="1.3. System Requirements">
-<link rel="prev" href="detailed-supported-distros.html" title="1.3.1. Supported Linux Distributions">
-<link rel="next" href="ubuntu-packages.html" title="1.3.2.1. Ubuntu">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.3.2. Required Packages for the Host Development System">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="required-packages-for-the-host-development-system"></a>1.3.2. Required Packages for the Host Development System</h3></div></div></div>
-<p>
-            The list of packages you need on the host development system can 
-            be large when covering all build scenarios using the Yocto Project. 
-            This section provides required packages by Linux distribution and 
-            further categorized by function.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-bugtracker.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-bugtracker.html
deleted file mode 100644
index 4b4f994..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-bugtracker.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>13.2. Tracking Bugs</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="resources.html" title="Chapter 13. Contributing to the Yocto Project">
-<link rel="prev" href="resources-intro.html" title="13.1. Introduction">
-<link rel="next" href="resources-mailinglist.html" title="13.3. Mailing lists">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="13.2. Tracking Bugs">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="resources-bugtracker"></a>13.2. Tracking Bugs</h2></div></div></div>
-<p>
-        If you find problems with the Yocto Project, you should report them using the 
-        Bugzilla application at <a class="ulink" href="http://bugzilla.yoctoproject.org" target="_self">http://bugzilla.yoctoproject.org</a>.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-contributions.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-contributions.html
deleted file mode 100644
index c7d8c53..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-contributions.html
+++ /dev/null
@@ -1,23 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>13.6. Contributions</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="resources.html" title="Chapter 13. Contributing to the Yocto Project">
-<link rel="prev" href="resources-links.html" title="13.5. Links">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="13.6. Contributions">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="resources-contributions"></a>13.6. Contributions</h2></div></div></div>
-<p>
-        The Yocto Project gladly accepts contributions.
-        You can submit changes to the project either by creating and sending pull requests, 
-        or by submitting patches through email.
-        For information on how to do both, see the
-        "<a class="link" href="../dev-manual/how-to-submit-a-change.html" target="_self">How to Submit a Change</a>"
-        section in the Yocto Project Development Manual.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-intro.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-intro.html
deleted file mode 100644
index c7340ff..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-intro.html
+++ /dev/null
@@ -1,23 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>13.1. Introduction</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="resources.html" title="Chapter 13. Contributing to the Yocto Project">
-<link rel="prev" href="resources.html" title="Chapter 13. Contributing to the Yocto Project">
-<link rel="next" href="resources-bugtracker.html" title="13.2. Tracking Bugs">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="13.1. Introduction">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="resources-intro"></a>13.1. Introduction</h2></div></div></div>
-<p>
-        The Yocto Project team is happy for people to experiment with the Yocto Project.
-        A number of places exist to find help if you run into difficulties or find bugs. 
-        To find out how to download source code,
-        see the "<a class="link" href="../dev-manual/local-yp-release.html" target="_self">Yocto Project Release</a>"
-        list item in the Yocto Project Development Manual.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-irc.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-irc.html
deleted file mode 100644
index 5a611fa..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-irc.html
+++ /dev/null
@@ -1,25 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>13.4. Internet Relay Chat (IRC)</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="resources.html" title="Chapter 13. Contributing to the Yocto Project">
-<link rel="prev" href="resources-mailinglist.html" title="13.3. Mailing lists">
-<link rel="next" href="resources-links.html" title="13.5. Links">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="13.4. Internet Relay Chat (IRC)">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="resources-irc"></a>13.4. Internet Relay Chat (IRC)</h2></div></div></div>
-<p>
-        Two IRC channels on freenode are available for the Yocto Project and Poky discussions:
-        </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><code class="filename">#yocto</code></p></li>
-<li class="listitem"><p><code class="filename">#poky</code></p></li>
-</ul></div>
-<p>
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-links.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-links.html
deleted file mode 100644
index 0a153b8..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-links.html
+++ /dev/null
@@ -1,42 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>13.5. Links</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="resources.html" title="Chapter 13. Contributing to the Yocto Project">
-<link rel="prev" href="resources-irc.html" title="13.4. Internet Relay Chat (IRC)">
-<link rel="next" href="resources-contributions.html" title="13.6. Contributions">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="13.5. Links">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="resources-links"></a>13.5. Links</h2></div></div></div>
-<p>
-        Following is a list of resources you will find helpful:
-        </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em><a class="ulink" href="http://www.yoctoproject.org" target="_self">The Yocto Project website</a>:
-                </em></span> The home site for the Yocto Project.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><a class="ulink" href="http://www.intel.com/" target="_self">Intel Corporation</a>:</em></span>
-                The company who acquired OpenedHand in 2008 and began development on the 
-                Yocto Project.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><a class="ulink" href="http://www.openembedded.org" target="_self">OpenEmbedded</a>:</em></span>
-                The upstream, generic, embedded distribution used as the basis for the build system in the 
-                Yocto Project.
-                Poky derives from and contributes back to the OpenEmbedded project.</p></li>
-<li class="listitem"><p><span class="emphasis"><em><a class="ulink" href="http://developer.berlios.de/projects/bitbake/" target="_self">
-                BitBake</a>:</em></span> The tool used to process metadata.</p></li>
-<li class="listitem"><p><span class="emphasis"><em>BitBake User Manual:</em></span>
-                A comprehensive guide to the BitBake tool.
-                You can find the BitBake User Manual in the <code class="filename">bitbake/doc/manual</code> 
-                directory, which is found in the 
-                <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>.
-                </p></li>
-<li class="listitem"><p><span class="emphasis"><em><a class="ulink" href="http://wiki.qemu.org/Index.html" target="_self">QEMU</a>:
-                </em></span> An open source machine emulator and virtualizer.</p></li>
-</ul></div>
-<p>
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-mailinglist.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-mailinglist.html
deleted file mode 100644
index 3cc05be..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/resources-mailinglist.html
+++ /dev/null
@@ -1,39 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>13.3. Mailing lists</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="resources.html" title="Chapter 13. Contributing to the Yocto Project">
-<link rel="prev" href="resources-bugtracker.html" title="13.2. Tracking Bugs">
-<link rel="next" href="resources-irc.html" title="13.4. Internet Relay Chat (IRC)">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="13.3. Mailing lists">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="resources-mailinglist"></a>13.3. Mailing lists</h2></div></div></div>
-<p>
-        There are a number of mailing lists maintained by the Yocto Project as well as
-        related OpenEmbedded mailing lists for discussion, patch submission and announcements.
-        To subscribe to one of the following mailing lists, click on the appropriate URL
-        in the following list and follow the instructions:
-        </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><a class="ulink" href="http://lists.yoctoproject.org/listinfo/yocto" target="_self">http://lists.yoctoproject.org/listinfo/yocto</a> -
-                General Yocto Project discussion mailing list. </p></li>
-<li class="listitem"><p><a class="ulink" href="http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-core" target="_self">http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-core</a> -
-                Discussion mailing list about OpenEmbedded-Core (the core metadata).</p></li>
-<li class="listitem"><p><a class="ulink" href="http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-devel" target="_self">http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-devel</a> -
-                Discussion mailing list about OpenEmbedded.</p></li>
-<li class="listitem"><p><a class="ulink" href="http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/bitbake-devel" target="_self">http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/bitbake-devel</a> -
-                Discussion mailing list about the BitBake build tool.</p></li>
-<li class="listitem"><p><a class="ulink" href="http://lists.yoctoproject.org/listinfo/poky" target="_self">http://lists.yoctoproject.org/listinfo/poky</a> -
-                Discussion mailing list about Poky.</p></li>
-<li class="listitem"><p><a class="ulink" href="http://lists.yoctoproject.org/listinfo/yocto-announce" target="_self">http://lists.yoctoproject.org/listinfo/yocto-announce</a> -
-                Mailing list to receive official Yocto Project release and milestone
-                announcements.</p></li>
-</ul></div>
-<p>
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/resources.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/resources.html
deleted file mode 100644
index c97f06e..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/resources.html
+++ /dev/null
@@ -1,27 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>Chapter 13. Contributing to the Yocto Project</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="prev" href="faq.html" title="Chapter 12. FAQ">
-<link rel="next" href="resources-intro.html" title="13.1. Introduction">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 13. Contributing to the Yocto Project">
-<div class="titlepage"><div><div><h2 class="title">
-<a name="resources"></a>Chapter 13. Contributing to the Yocto Project</h2></div></div></div>
-<div class="toc">
-<p><b>Table of Contents</b></p>
-<dl>
-<dt><span class="section"><a href="resources-intro.html">13.1. Introduction</a></span></dt>
-<dt><span class="section"><a href="resources-bugtracker.html">13.2. Tracking Bugs</a></span></dt>
-<dt><span class="section"><a href="resources-mailinglist.html">13.3. Mailing lists</a></span></dt>
-<dt><span class="section"><a href="resources-irc.html">13.4. Internet Relay Chat (IRC)</a></span></dt>
-<dt><span class="section"><a href="resources-links.html">13.5. Links</a></span></dt>
-<dt><span class="section"><a href="resources-contributions.html">13.6. Contributions</a></span></dt>
-</dl>
-</div>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/shared-state-cache.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/shared-state-cache.html
deleted file mode 100644
index 8f2f5a5..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/shared-state-cache.html
+++ /dev/null
@@ -1,60 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.2. Shared State Cache</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="technical-details.html" title="Chapter 3. Technical Details">
-<link rel="prev" href="usingpoky-components-configuration.html" title="3.1.4. Configuration">
-<link rel="next" href="overall-architecture.html" title="3.2.1. Overall Architecture">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2. Shared State Cache">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="shared-state-cache"></a>3.2. Shared State Cache</h2></div></div></div>
-<p>
-        By design, the OpenEmbedded build system builds everything from scratch unless 
-        BitBake can determine that parts don't need to be rebuilt.
-        Fundamentally, building from scratch is attractive as it means all parts are 
-        built fresh and there is no possibility of stale data causing problems. 
-        When developers hit problems, they typically default back to building from scratch
-        so they know the state of things from the start.
-    </p>
-<p>  
-        Building an image from scratch is both an advantage and a disadvantage to the process. 
-        As mentioned in the previous paragraph, building from scratch ensures that 
-        everything is current and starts from a known state.
-        However, building from scratch also takes much longer as it generally means 
-        rebuilding things that don't necessarily need rebuilt.
-    </p>
-<p>
-        The Yocto Project implements shared state code that supports incremental builds.
-        The implementation of the shared state code answers the following questions that
-        were fundamental roadblocks within the OpenEmbedded incremental build support system:
-        </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem">What pieces of the system have changed and what pieces have not changed?</li>
-<li class="listitem">How are changed pieces of software removed and replaced?</li>
-<li class="listitem">How are pre-built components that don't need to be rebuilt from scratch
-                used when they are available?</li>
-</ul></div>
-<p>
-    </p>
-<p>
-        For the first question, the build system detects changes in the "inputs" to a given task by 
-        creating a checksum (or signature) of the task's inputs. 
-        If the checksum changes, the system assumes the inputs have changed and the task needs to be 
-        rerun.
-        For the second question, the shared state (sstate) code tracks which tasks add which output
-        to the build process. 
-        This means the output from a given task can be removed, upgraded or otherwise manipulated.
-        The third question is partly addressed by the solution for the second question
-        assuming the build system can fetch the sstate objects from remote locations and 
-        install them if they are deemed to be valid.
-    </p>
-<p>
-        The rest of this section goes into detail about the overall incremental build
-        architecture, the checksums (signatures), shared state, and some tips and tricks.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/shared-state.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/shared-state.html
deleted file mode 100644
index e14e306..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/shared-state.html
+++ /dev/null
@@ -1,134 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.2.3. Shared State</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="shared-state-cache.html" title="3.2. Shared State Cache">
-<link rel="prev" href="checksums.html" title="3.2.2. Checksums (Signatures)">
-<link rel="next" href="tips-and-tricks.html" title="3.2.4. Tips and Tricks">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2.3. Shared State">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="shared-state"></a>3.2.3. Shared State</h3></div></div></div>
-<p>
-            Checksums and dependencies, as discussed in the previous section, solve half the 
-            problem.
-            The other part of the problem is being able to use checksum information during the build
-            and being able to reuse or rebuild specific components.
-        </p>
-<p>
-            The shared state class (<code class="filename">sstate.bbclass</code>) 
-            is a relatively generic implementation of how to "capture" a snapshot of a given task. 
-            The idea is that the build process does not care about the source of a task's output.
-            Output could be freshly built or it could be downloaded and unpacked from
-            somewhere - the build process doesn't need to worry about its source.
-        </p>
-<p>
-            There are two types of output, one is just about creating a directory
-            in <code class="filename">WORKDIR</code>.
-            A good example is the output of either <code class="filename">do_install</code> or 
-            <code class="filename">do_package</code>. 
-            The other type of output occurs when a set of data is merged into a shared directory 
-            tree such as the sysroot.
-        </p>
-<p>
-            The Yocto Project team has tried to keep the details of the implementation hidden in 
-            <code class="filename">sstate.bbclass</code>. 
-            From a user's perspective, adding shared state wrapping to a task
-            is as simple as this <code class="filename">do_deploy</code> example taken from 
-            <code class="filename">do_deploy.bbclass</code>:
-            </p>
-<pre class="literallayout">
-     DEPLOYDIR = "${WORKDIR}/deploy-${PN}"
-     SSTATETASKS += "do_deploy"
-     do_deploy[sstate-name] = "deploy"
-     do_deploy[sstate-inputdirs] = "${DEPLOYDIR}"
-     do_deploy[sstate-outputdirs] = "${DEPLOY_DIR_IMAGE}"
-
-     python do_deploy_setscene () {
-         sstate_setscene(d)
-     }
-     addtask do_deploy_setscene
-            </pre>
-<p>
-            In the example, we add some extra flags to the task, a name field ("deploy"), an
-            input directory where the task sends data, and the output
-            directory where the data from the task should eventually be copied. 
-            We also add a <code class="filename">_setscene</code> variant of the task and add the task
-            name to the <code class="filename">SSTATETASKS</code> list.
-        </p>
-<p>
-            If you have a directory whose contents you need to preserve, you can do this with 
-            a line like the following:
-            </p>
-<pre class="literallayout">
-     do_package[sstate-plaindirs] = "${PKGD} ${PKGDEST}"
-            </pre>
-<p>
-            This method, as well as the following example, also works for multiple directories.
-            </p>
-<pre class="literallayout">
-     do_package[sstate-inputdirs] = "${PKGDESTWORK} ${SHLIBSWORKDIR}"
-     do_package[sstate-outputdirs] = "${PKGDATA_DIR} ${SHLIBSDIR}"
-     do_package[sstate-lockfile] = "${PACKAGELOCK}"
-            </pre>
-<p>
-            These methods also include the ability to take a lockfile when manipulating
-            shared state directory structures since some cases are sensitive to file
-            additions or removals.
-        </p>
-<p>
-            Behind the scenes, the shared state code works by looking in 
-            <a class="link" href="ref-variables-glos.html#var-SSTATE_DIR" title="SSTATE_DIR"><code class="filename">SSTATE_DIR</code></a> and  
-            <a class="link" href="ref-variables-glos.html#var-SSTATE_MIRRORS" title="SSTATE_MIRRORS"><code class="filename">SSTATE_MIRRORS</code></a>
-            for shared state files. 
-            Here is an example:
-            </p>
-<pre class="literallayout">
-     SSTATE_MIRRORS ?= "\
-     file://.* http://someserver.tld/share/sstate/PATH \n \
-     file://.* file:///some/local/dir/sstate/PATH"
-            </pre>
-<p>
-            </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3> 
-                The shared state directory (<code class="filename">SSTATE_DIR</code>) is 
-                organized into two-character subdirectories, where the subdirectory 
-                names are based on the first two characters of the hash.
-                If the shared state directory structure for a mirror has the 
-                same structure as <code class="filename">SSTATE_DIR</code>, you must
-                specify "PATH" as part of the URI to enable the build system
-                to map to the appropriate subdirectory.
-            </div>
-<p>
-        </p>
-<p>
-            The shared state package validity can be detected just by looking at the
-            filename since the filename contains the task checksum (or signature) as
-            described earlier in this section. 
-            If a valid shared state package is found, the build process downloads it 
-            and uses it to accelerate the task.
-        </p>
-<p>
-            The build processes uses the <code class="filename">*_setscene</code> tasks
-            for the task acceleration phase.
-            BitBake goes through this phase before the main execution code and tries
-            to accelerate any tasks for which it can find shared state packages. 
-            If a shared state package for a task is available, the shared state
-            package is used.
-            This means the task and any tasks on which it is dependent are not 
-            executed.
-        </p>
-<p>
-            As a real world example, the aim is when building an IPK-based image,
-            only the <code class="filename">do_package_write_ipk</code> tasks would have their 
-            shared state packages fetched and extracted. 
-            Since the sysroot is not used, it would never get extracted. 
-            This is another reason why a task-based approach is preferred over a 
-            recipe-based approach, which would have to install the output from every task.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-basic-top-level.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-basic-top-level.html
deleted file mode 100644
index 62bdd6b..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-basic-top-level.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.1.11. LICENSE, README, and README.hardware</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-core.html" title="5.1. Top level core components">
-<link rel="prev" href="structure-core-script.html" title="5.1.10. oe-init-build-env">
-<link rel="next" href="structure-build.html" title="5.2. The Build Directory - build/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.1.11. LICENSE, README, and README.hardware">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-basic-top-level"></a>5.1.11. <code class="filename">LICENSE, README, and README.hardware</code>
-</h3></div></div></div>
-<p>
-            These files are standard top-level files. 
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-conf-bblayers.conf.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-conf-bblayers.conf.html
deleted file mode 100644
index 74f7729..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-conf-bblayers.conf.html
+++ /dev/null
@@ -1,23 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.3. build/conf/bblayers.conf</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-conf-local.conf.html" title="5.2.2. build/conf/local.conf">
-<link rel="next" href="structure-build-conf-sanity_info.html" title="5.2.4. build/conf/sanity_info">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.3. build/conf/bblayers.conf">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-conf-bblayers.conf"></a>5.2.3. <code class="filename">build/conf/bblayers.conf</code>
-</h3></div></div></div>
-<p>
-            This file defines layers, which is a directory tree, traversed (or walked) by BitBake. 
-            If <code class="filename">bblayers.conf</code> 
-            is not present, it is created from <code class="filename">bblayers.conf.sample</code> when 
-            you <code class="filename">source</code> the environment setup script.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-conf-local.conf.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-conf-local.conf.html
deleted file mode 100644
index 30f1c10..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-conf-local.conf.html
+++ /dev/null
@@ -1,37 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.2. build/conf/local.conf</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-pseudodone.html" title="5.2.1. build/pseudodone">
-<link rel="next" href="structure-build-conf-bblayers.conf.html" title="5.2.3. build/conf/bblayers.conf">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.2. build/conf/local.conf">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-conf-local.conf"></a>5.2.2. <code class="filename">build/conf/local.conf</code>
-</h3></div></div></div>
-<p>
-            This file contains all the local user configuration for your build environment. 
-            If there is no <code class="filename">local.conf</code> present, it is created from 
-            <code class="filename">local.conf.sample</code>. 
-            The <code class="filename">local.conf</code> file contains documentation on the various configuration options.  
-            Any variable set here overrides any variable set elsewhere within the environment unless 
-            that variable is hard-coded within a file (e.g. by using '=' instead of '?='). 
-            Some variables are hard-coded for various reasons but these variables are 
-            relatively rare.
-        </p>
-<p>
-            Edit this file to set the <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE" title="MACHINE">MACHINE</a></code> 
-            for which you want to build, which package types you wish to use 
-            (<a class="link" href="ref-variables-glos.html#var-PACKAGE_CLASSES" title="PACKAGE_CLASSES"><code class="filename">PACKAGE_CLASSES</code></a>), 
-            where you want to downloaded files
-            (<code class="filename"><a class="link" href="ref-variables-glos.html#var-DL_DIR" title="DL_DIR">DL_DIR</a></code>), 
-            and how you want your host machine to use resources 
-            (<a class="link" href="ref-variables-glos.html#var-BB_NUMBER_THREADS" title="BB_NUMBER_THREADS"><code class="filename">BB_NUMBER_THREADS</code></a> and 
-            <a class="link" href="ref-variables-glos.html#var-PARALLEL_MAKE" title="PARALLEL_MAKE"><code class="filename">PARALLEL_MAKE</code></a>).
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-conf-sanity_info.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-conf-sanity_info.html
deleted file mode 100644
index 7cb0428..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-conf-sanity_info.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.4. build/conf/sanity_info</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-conf-bblayers.conf.html" title="5.2.3. build/conf/bblayers.conf">
-<link rel="next" href="structure-build-downloads.html" title="5.2.5. build/downloads/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.4. build/conf/sanity_info">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-conf-sanity_info"></a>5.2.4. <code class="filename">build/conf/sanity_info</code>
-</h3></div></div></div>
-<p>
-            This file is created during the build to indicate the state of the sanity checks.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-downloads.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-downloads.html
deleted file mode 100644
index 5ca90d8..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-downloads.html
+++ /dev/null
@@ -1,23 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.5. build/downloads/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-conf-sanity_info.html" title="5.2.4. build/conf/sanity_info">
-<link rel="next" href="structure-build-sstate-cache.html" title="5.2.6. build/sstate-cache/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.5. build/downloads/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-downloads"></a>5.2.5. <code class="filename">build/downloads/</code>
-</h3></div></div></div>
-<p>
-            This directory is used for the upstream source tarballs.
-            The directory can be reused by multiple builds or moved to another location. 
-            You can control the location of this directory through the
-            <code class="filename"><a class="link" href="ref-variables-glos.html#var-DL_DIR" title="DL_DIR">DL_DIR</a></code> variable.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-pseudodone.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-pseudodone.html
deleted file mode 100644
index 74f4cd4..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-pseudodone.html
+++ /dev/null
@@ -1,21 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.1. build/pseudodone</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="next" href="structure-build-conf-local.conf.html" title="5.2.2. build/conf/local.conf">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.1. build/pseudodone">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-pseudodone"></a>5.2.1. <code class="filename">build/pseudodone</code>
-</h3></div></div></div>
-<p>
-            This tag file indicates that the initial pseudo binary was created. 
-            The file is built the first time BitBake is invoked. 
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-sstate-cache.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-sstate-cache.html
deleted file mode 100644
index f1cb3d2..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-sstate-cache.html
+++ /dev/null
@@ -1,23 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.6. build/sstate-cache/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-downloads.html" title="5.2.5. build/downloads/">
-<link rel="next" href="structure-build-tmp.html" title="5.2.7. build/tmp/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.6. build/sstate-cache/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-sstate-cache"></a>5.2.6. <code class="filename">build/sstate-cache/</code>
-</h3></div></div></div>
-<p>
-            This directory is used for the shared state cache.
-            The directory can be reused by multiple builds or moved to another location. 
-            You can control the location of this directory through the
-            <code class="filename"><a class="link" href="ref-variables-glos.html#var-SSTATE_DIR" title="SSTATE_DIR">SSTATE_DIR</a></code> variable.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-buildstats.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-buildstats.html
deleted file mode 100644
index c1ad81c..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-buildstats.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.8. build/tmp/buildstats/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-tmp.html" title="5.2.7. build/tmp/">
-<link rel="next" href="structure-build-tmp-cache.html" title="5.2.9. build/tmp/cache/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.8. build/tmp/buildstats/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-tmp-buildstats"></a>5.2.8. <code class="filename">build/tmp/buildstats/</code>
-</h3></div></div></div>
-<p>
-            This directory stores the build statistics.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-cache.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-cache.html
deleted file mode 100644
index d18f201..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-cache.html
+++ /dev/null
@@ -1,22 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.9. build/tmp/cache/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-tmp-buildstats.html" title="5.2.8. build/tmp/buildstats/">
-<link rel="next" href="structure-build-tmp-deploy.html" title="5.2.10. build/tmp/deploy/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.9. build/tmp/cache/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-tmp-cache"></a>5.2.9. <code class="filename">build/tmp/cache/</code>
-</h3></div></div></div>
-<p>
-            When BitBake parses the metadata, it creates a cache file of the result that can
-            be used when subsequently running commands. 
-            These results are stored here on a per-machine basis.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-deb.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-deb.html
deleted file mode 100644
index 42647f5..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-deb.html
+++ /dev/null
@@ -1,22 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.11. build/tmp/deploy/deb/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-tmp-deploy.html" title="5.2.10. build/tmp/deploy/">
-<link rel="next" href="structure-build-tmp-deploy-rpm.html" title="5.2.12. build/tmp/deploy/rpm/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.11. build/tmp/deploy/deb/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-tmp-deploy-deb"></a>5.2.11. <code class="filename">build/tmp/deploy/deb/</code>
-</h3></div></div></div>
-<p>
-            This directory receives any <code class="filename">.deb</code> packages produced by 
-            the build process.
-            The packages are sorted into feeds for different architecture types.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-images.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-images.html
deleted file mode 100644
index b2810d2..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-images.html
+++ /dev/null
@@ -1,44 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.14. build/tmp/deploy/images/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-tmp-deploy-licenses.html" title="5.2.13. build/tmp/deploy/licenses/">
-<link rel="next" href="structure-build-tmp-deploy-ipk.html" title="5.2.15. build/tmp/deploy/ipk/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.14. build/tmp/deploy/images/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-tmp-deploy-images"></a>5.2.14. <code class="filename">build/tmp/deploy/images/</code>
-</h3></div></div></div>
-<p>
-            This directory receives complete filesystem images. 
-            If you want to flash the resulting image from a build onto a device, look here for the image.
-        </p>
-<p>
-            Be careful when deleting files in this directory. 
-            You can safely delete old images from this directory (e.g. 
-            <code class="filename">core-image-*</code>, <code class="filename">hob-image-*</code>,
-            etc.). 
-            However, the kernel (<code class="filename">*zImage*</code>, <code class="filename">*uImage*</code>, etc.), 
-            bootloader and other supplementary files might be deployed here prior to building an
-            image.
-            Because these files, however, are not directly produced from the image, if you
-            delete them they will not be automatically re-created when you build the image again.
-        </p>
-<p>
-            If you do accidentally delete files here, you will need to force them to be 
-            re-created. 
-            In order to do that, you will need to know the target that produced them.
-            For example, these commands rebuild and re-create the kernel files:
-            </p>
-<pre class="literallayout">
-     $ bitbake -c clean virtual/kernel
-     $ bitbake virtual/kernel
-            </pre>
-<p>
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-ipk.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-ipk.html
deleted file mode 100644
index 9975833..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-ipk.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.15. build/tmp/deploy/ipk/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-tmp-deploy-images.html" title="5.2.14. build/tmp/deploy/images/">
-<link rel="next" href="structure-build-tmp-sysroots.html" title="5.2.16. build/tmp/sysroots/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.15. build/tmp/deploy/ipk/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-tmp-deploy-ipk"></a>5.2.15. <code class="filename">build/tmp/deploy/ipk/</code>
-</h3></div></div></div>
-<p>
-            This directory receives <code class="filename">.ipk</code> packages produced by 
-            the build process.</p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-licenses.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-licenses.html
deleted file mode 100644
index b3ec898..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-licenses.html
+++ /dev/null
@@ -1,23 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.13. build/tmp/deploy/licenses/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-tmp-deploy-rpm.html" title="5.2.12. build/tmp/deploy/rpm/">
-<link rel="next" href="structure-build-tmp-deploy-images.html" title="5.2.14. build/tmp/deploy/images/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.13. build/tmp/deploy/licenses/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-tmp-deploy-licenses"></a>5.2.13. <code class="filename">build/tmp/deploy/licenses/</code>
-</h3></div></div></div>
-<p>
-            This directory receives package licensing information.
-            For example, the directory contains sub-directories for <code class="filename">bash</code>,
-            <code class="filename">busybox</code>, and <code class="filename">eglibc</code> (among others) that in turn
-            contain appropriate <code class="filename">COPYING</code> license files with other licensing information.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-rpm.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-rpm.html
deleted file mode 100644
index 1579e11..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy-rpm.html
+++ /dev/null
@@ -1,22 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.12. build/tmp/deploy/rpm/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-tmp-deploy-deb.html" title="5.2.11. build/tmp/deploy/deb/">
-<link rel="next" href="structure-build-tmp-deploy-licenses.html" title="5.2.13. build/tmp/deploy/licenses/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.12. build/tmp/deploy/rpm/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-tmp-deploy-rpm"></a>5.2.12. <code class="filename">build/tmp/deploy/rpm/</code>
-</h3></div></div></div>
-<p>
-            This directory receives any <code class="filename">.rpm</code> packages produced by 
-            the build process.  
-            The packages are sorted into feeds for different architecture types.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy.html
deleted file mode 100644
index b50f208..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-deploy.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.10. build/tmp/deploy/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-tmp-cache.html" title="5.2.9. build/tmp/cache/">
-<link rel="next" href="structure-build-tmp-deploy-deb.html" title="5.2.11. build/tmp/deploy/deb/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.10. build/tmp/deploy/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-tmp-deploy"></a>5.2.10. <code class="filename">build/tmp/deploy/</code>
-</h3></div></div></div>
-<p>
-            This directory contains any 'end result' output from the OpenEmbedded build process.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-log.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-log.html
deleted file mode 100644
index bd7f705..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-log.html
+++ /dev/null
@@ -1,24 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.18. build/tmp/log/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-tmp-stamps.html" title="5.2.17. build/tmp/stamps/">
-<link rel="next" href="structure-build-tmp-pkgdata.html" title="5.2.19. build/tmp/pkgdata/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.18. build/tmp/log/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-tmp-log"></a>5.2.18. <code class="filename">build/tmp/log/</code>
-</h3></div></div></div>
-<p>
-            This directory contains general logs that are not otherwise placed using the 
-            package's <code class="filename"><a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR">WORKDIR</a></code>.
-            Examples of logs are the output from the <code class="filename">check_pkg</code> or 
-            <code class="filename">distro_check</code> tasks.
-            Running a build does not necessarily mean this directory is created.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-pkgdata.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-pkgdata.html
deleted file mode 100644
index 2fdad1e..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-pkgdata.html
+++ /dev/null
@@ -1,21 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.19. build/tmp/pkgdata/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-tmp-log.html" title="5.2.18. build/tmp/log/">
-<link rel="next" href="structure-build-tmp-work.html" title="5.2.20. build/tmp/work/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.19. build/tmp/pkgdata/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-tmp-pkgdata"></a>5.2.19. <code class="filename">build/tmp/pkgdata/</code>
-</h3></div></div></div>
-<p>
-            This directory contains intermediate packaging data that is used later in the packaging process. 
-            For more information, see the "<a class="link" href="ref-classes-package.html" title="7.13. Packaging - package*.bbclass">Packaging - package*.bbclass</a>" section.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-stamps.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-stamps.html
deleted file mode 100644
index a6f77c8..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-stamps.html
+++ /dev/null
@@ -1,24 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.17. build/tmp/stamps/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-tmp-sysroots.html" title="5.2.16. build/tmp/sysroots/">
-<link rel="next" href="structure-build-tmp-log.html" title="5.2.18. build/tmp/log/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.17. build/tmp/stamps/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-tmp-stamps"></a>5.2.17. <code class="filename">build/tmp/stamps/</code>
-</h3></div></div></div>
-<p>
-            This directory holds information that that BitBake uses for accounting purposes 
-            to track what tasks have run and when they have run.
-            The directory is sub-divided by architecture. 
-            The files in the directory are empty of data.
-            However, BitBake uses the filenames and timestamps for tracking purposes.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-sysroots.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-sysroots.html
deleted file mode 100644
index 10a74d8..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-sysroots.html
+++ /dev/null
@@ -1,24 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.16. build/tmp/sysroots/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-tmp-deploy-ipk.html" title="5.2.15. build/tmp/deploy/ipk/">
-<link rel="next" href="structure-build-tmp-stamps.html" title="5.2.17. build/tmp/stamps/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.16. build/tmp/sysroots/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-tmp-sysroots"></a>5.2.16. <code class="filename">build/tmp/sysroots/</code>
-</h3></div></div></div>
-<p>
-            This directory contains shared header files and libraries as well as other shared 
-            data.  
-            Packages that need to share output with other packages do so within this directory. 
-            The directory is subdivided by architecture so multiple builds can run within
-            the one Build Directory.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-work.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-work.html
deleted file mode 100644
index aa78c18..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp-work.html
+++ /dev/null
@@ -1,52 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.20. build/tmp/work/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-tmp-pkgdata.html" title="5.2.19. build/tmp/pkgdata/">
-<link rel="next" href="structure-meta.html" title="5.3. The Metadata - meta/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.20. build/tmp/work/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-tmp-work"></a>5.2.20. <code class="filename">build/tmp/work/</code>
-</h3></div></div></div>
-<p>
-            This directory contains architecture-specific work sub-directories for packages built by BitBake. 
-            All tasks execute from a work directory.
-            For example, the source for a particular package is unpacked, patched, configured and compiled all
-            within its own work directory.
-            Within the work directory, organization is based on the package group for which the source
-            is being compiled.
-        </p>
-<p>
-            It is worth considering the structure of a typical work directory. 
-            As an example, consider the <code class="filename">linux-yocto-kernel-3.0</code>
-            on the machine <code class="filename">qemux86</code> 
-            built within the Yocto Project.  
-            For this package, a work directory of 
-            <code class="filename">tmp/work/qemux86-poky-linux/linux-yocto-3.0+git1+&lt;.....&gt;</code>, 
-            referred to as <code class="filename"><a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR">WORKDIR</a></code>, is created.  
-            Within this directory, the source is unpacked to 
-            <code class="filename">linux-qemux86-standard-build</code> and then patched by Quilt 
-            (see the 
-            "<a class="link" href="../dev-manual/using-a-quilt-workflow.html" target="_self">Modifying Package 
-            Source Code with Quilt</a>" section in the Yocto Project Development Manual.   
-            Within the <code class="filename">linux-qemux86-standard-build</code> directory, 
-            standard Quilt directories <code class="filename">linux-3.0/patches</code>
-            and <code class="filename">linux-3.0/.pc</code> are created,
-            and standard Quilt commands can be used.
-        </p>
-<p>
-            There are other directories generated within WORKDIR. 
-            The most important directory is WORKDIR<code class="filename">/temp/</code>, which has log files for each 
-            task (<code class="filename">log.do_*.pid</code>) and contains the scripts BitBake runs for 
-            each task (<code class="filename">run.do_*.pid</code>). 
-            The WORKDIR<code class="filename">/image/</code> directory is where "make 
-            install" places its output that is then split into sub-packages 
-            within WORKDIR<code class="filename">/packages-split/</code>.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp.html
deleted file mode 100644
index 216d255..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build-tmp.html
+++ /dev/null
@@ -1,26 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2.7. build/tmp/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-build.html" title="5.2. The Build Directory - build/">
-<link rel="prev" href="structure-build-sstate-cache.html" title="5.2.6. build/sstate-cache/">
-<link rel="next" href="structure-build-tmp-buildstats.html" title="5.2.8. build/tmp/buildstats/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2.7. build/tmp/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-build-tmp"></a>5.2.7. <code class="filename">build/tmp/</code>
-</h3></div></div></div>
-<p>
-            This directory receives all the OpenEmbedded build system's output.
-            BitBake creates this directory if it does not exist. 
-            As a last resort, to clean up a build and start it from scratch (other than the downloads), 
-            you can remove everything in the <code class="filename">tmp</code> directory or get rid of the 
-            directory completely.
-            If you do, you should also completely remove the <code class="filename">build/sstate-cache</code>
-            directory as well.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build.html
deleted file mode 100644
index c3b9ae5..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-build.html
+++ /dev/null
@@ -1,15 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.2. The Build Directory - build/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-structure.html" title="Chapter 5. Source Directory Structure">
-<link rel="prev" href="structure-basic-top-level.html" title="5.1.11. LICENSE, README, and README.hardware">
-<link rel="next" href="structure-build-pseudodone.html" title="5.2.1. build/pseudodone">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2. The Build Directory - build/"><div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="structure-build"></a>5.2. The Build Directory - <code class="filename">build/</code>
-</h2></div></div></div></div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-bitbake.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-bitbake.html
deleted file mode 100644
index aca036d..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-bitbake.html
+++ /dev/null
@@ -1,40 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.1.1. bitbake/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-core.html" title="5.1. Top level core components">
-<link rel="prev" href="structure-core.html" title="5.1. Top level core components">
-<link rel="next" href="structure-core-build.html" title="5.1.2. build/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.1.1. bitbake/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-core-bitbake"></a>5.1.1. <code class="filename">bitbake/</code>
-</h3></div></div></div>
-<p>
-            The <a class="ulink" href="source-directory" target="_self">Source Directory</a>
-            includes a copy of BitBake for ease of use.
-            The copy usually matches the current stable BitBake release from the BitBake project. 
-            BitBake, a metadata interpreter, reads the Yocto Project metadata and runs the tasks 
-            defined by that data. 
-            Failures are usually from the metadata and not from BitBake itself.
-            Consequently, most users do not need to worry about BitBake.
-        </p>
-<p>
-            When you run the <code class="filename">bitbake</code> command, the wrapper script in 
-            <code class="filename">scripts/</code> is executed to run the main BitBake executable, 
-            which resides in the <code class="filename">bitbake/bin/</code> directory.
-            Sourcing the <a class="link" href="structure-core-script.html" title="5.1.10. oe-init-build-env">oe-init-build-env</a> 
-            script places the <code class="filename">scripts</code> and <code class="filename">bitbake/bin</code>
-            directories (in that order) into the shell's <code class="filename">PATH</code> environment 
-            variable.
-        </p>
-<p>
-            For more information on BitBake, see the BitBake documentation 
-            inculded in the <code class="filename">bitbake/doc/manual</code> directory of the 
-            <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-build.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-build.html
deleted file mode 100644
index 23f5549..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-build.html
+++ /dev/null
@@ -1,33 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.1.2. build/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-core.html" title="5.1. Top level core components">
-<link rel="prev" href="structure-core-bitbake.html" title="5.1.1. bitbake/">
-<link rel="next" href="handbook.html" title="5.1.3. documentation">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.1.2. build/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-core-build"></a>5.1.2. <code class="filename">build/</code>
-</h3></div></div></div>
-<p>
-            This directory contains user configuration files and the output 
-            generated by the OpenEmbedded build system in its standard configuration where 
-            the source tree is combined with the output.
-            The <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>
-            is created initially when you <code class="filename">source</code>
-            the OpenEmbedded build environment setup script <code class="filename">oe-init-build-env</code>.
-        </p>
-<p> 
-            It is also possible to place output and configuration 
-            files in a directory separate from the 
-            <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>
-            by providing a directory name when you <code class="filename">source</code>
-            the setup script.
-            For information on separating output from your local Source Directory files, see <a class="link" href="structure-core-script.html" title="5.1.10. oe-init-build-env">oe-init-build-env</a>.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-meta-yocto-bsp.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-meta-yocto-bsp.html
deleted file mode 100644
index 29eff27..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-meta-yocto-bsp.html
+++ /dev/null
@@ -1,21 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.1.6. meta-yocto-bsp/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-core.html" title="5.1. Top level core components">
-<link rel="prev" href="structure-core-meta-yocto.html" title="5.1.5. meta-yocto/">
-<link rel="next" href="structure-meta-hob.html" title="5.1.7. meta-hob/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.1.6. meta-yocto-bsp/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-core-meta-yocto-bsp"></a>5.1.6. <code class="filename">meta-yocto-bsp/</code>
-</h3></div></div></div>
-<p>
-            This directory contains the Yocto Project reference
-            hardware BSPs.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-meta-yocto.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-meta-yocto.html
deleted file mode 100644
index e9a8e8e..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-meta-yocto.html
+++ /dev/null
@@ -1,21 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.1.5. meta-yocto/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-core.html" title="5.1. Top level core components">
-<link rel="prev" href="structure-core-meta.html" title="5.1.4. meta/">
-<link rel="next" href="structure-core-meta-yocto-bsp.html" title="5.1.6. meta-yocto-bsp/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.1.5. meta-yocto/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-core-meta-yocto"></a>5.1.5. <code class="filename">meta-yocto/</code>
-</h3></div></div></div>
-<p>
-            This directory contains the configuration for the Poky
-            reference distribution.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-meta.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-meta.html
deleted file mode 100644
index 9a7cee2..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-meta.html
+++ /dev/null
@@ -1,23 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.1.4. meta/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-core.html" title="5.1. Top level core components">
-<link rel="prev" href="handbook.html" title="5.1.3. documentation">
-<link rel="next" href="structure-core-meta-yocto.html" title="5.1.5. meta-yocto/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.1.4. meta/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-core-meta"></a>5.1.4. <code class="filename">meta/</code>
-</h3></div></div></div>
-<p>
-            This directory contains the OpenEmbedded Core metadata. 
-            The directory holds recipes, common classes, and machine
-            configuration for emulated targets (qemux86, qemuarm,
-            and so on.)
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-script.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-script.html
deleted file mode 100644
index 64266a9..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-script.html
+++ /dev/null
@@ -1,53 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.1.10. oe-init-build-env</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-core.html" title="5.1. Top level core components">
-<link rel="prev" href="structure-core-scripts.html" title="5.1.9. scripts/">
-<link rel="next" href="structure-basic-top-level.html" title="5.1.11. LICENSE, README, and README.hardware">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.1.10. oe-init-build-env">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-core-script"></a>5.1.10. <code class="filename">oe-init-build-env</code>
-</h3></div></div></div>
-<p>
-            This script sets up the OpenEmbedded build environment. 
-            Running this script with the <code class="filename">source</code> command in
-            a shell makes changes to <code class="filename">PATH</code> and sets other core BitBake variables based on the
-            current working directory. 
-            You need to run this script before running BitBake commands.
-            The script uses other scripts within the <code class="filename">scripts</code> directory to do 
-            the bulk of the work.
-        </p>
-<p>
-            By default, running this script without a Build Directory argument creates the 
-            <code class="filename">build</code> directory. 
-            If you provide a Build Directory argument when you <code class="filename">source</code>
-            the script, you direct OpenEmbedded build system to create a 
-            <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a> of your choice.
-            For example, the following command creates a Build Directory named 
-            <code class="filename">mybuilds</code> that is outside of the 
-            <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>:
-            </p>
-<pre class="literallayout">
-     $ source oe-init-build-env ~/mybuilds
-            </pre>
-<p>
-            </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>
-                The OpenEmbedded build system does not support file or directory names that
-                contain spaces.
-                If you attempt to run the <code class="filename">oe-init-build-env</code> script
-                from a Source Directory that contains spaces in either the filenames
-                or directory names, the script returns an error indicating no such 
-                file or directory.
-                Be sure to use a Source Directory free of names containing spaces.
-            </div>
-<p>
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-scripts.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-scripts.html
deleted file mode 100644
index 6bc3bed..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core-scripts.html
+++ /dev/null
@@ -1,28 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.1.9. scripts/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-core.html" title="5.1. Top level core components">
-<link rel="prev" href="structure-meta-skeleton.html" title="5.1.8. meta-skeleton/">
-<link rel="next" href="structure-core-script.html" title="5.1.10. oe-init-build-env">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.1.9. scripts/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-core-scripts"></a>5.1.9. <code class="filename">scripts/</code>
-</h3></div></div></div>
-<p>
-            This directory contains various integration scripts that implement 
-            extra functionality in the Yocto Project environment (e.g. QEMU scripts).
-            The <a class="link" href="structure-core-script.html" title="5.1.10. oe-init-build-env">oe-init-build-env</a> script appends this
-            directory to the shell's <code class="filename">PATH</code> environment variable.
-        </p>
-<p>
-            The <code class="filename">scripts</code> directory has useful scripts that assist contributing
-            back to the Yocto Project, such as <code class="filename">create_pull_request</code> and 
-            <code class="filename">send_pull_request</code>.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core.html
deleted file mode 100644
index 51b6994..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-core.html
+++ /dev/null
@@ -1,14 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.1. Top level core components</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-structure.html" title="Chapter 5. Source Directory Structure">
-<link rel="prev" href="ref-structure.html" title="Chapter 5. Source Directory Structure">
-<link rel="next" href="structure-core-bitbake.html" title="5.1.1. bitbake/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.1. Top level core components"><div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="structure-core"></a>5.1. Top level core components</h2></div></div></div></div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-classes.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-classes.html
deleted file mode 100644
index 34cc0ff..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-classes.html
+++ /dev/null
@@ -1,30 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.1. meta/classes/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="next" href="structure-meta-conf.html" title="5.3.2. meta/conf/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.1. meta/classes/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-classes"></a>5.3.1. <code class="filename">meta/classes/</code>
-</h3></div></div></div>
-<p>
-            This directory contains the <code class="filename">*.bbclass</code> files. 
-            Class files are used to abstract common code so it can be reused by multiple 
-            packages. 
-            Every package inherits the <code class="filename">base.bbclass</code> file.
-            Examples of other important classes are <code class="filename">autotools.bbclass</code>, which 
-            in theory allows any Autotool-enabled package to work with the Yocto Project with minimal effort.
-            Another example is <code class="filename">kernel.bbclass</code> that contains common code and functions 
-            for working with the Linux kernel. 
-            Functions like image generation or packaging also have their specific class files 
-            such as <code class="filename">image.bbclass</code>, <code class="filename">rootfs_*.bbclass</code> and 
-            <code class="filename">package*.bbclass</code>.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-conf-distro.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-conf-distro.html
deleted file mode 100644
index b8b4fe0..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-conf-distro.html
+++ /dev/null
@@ -1,25 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.4. meta/conf/distro/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-conf-machine.html" title="5.3.3. meta/conf/machine/">
-<link rel="next" href="structure-meta-recipes-bsp.html" title="5.3.5. meta/recipes-bsp/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.4. meta/conf/distro/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-conf-distro"></a>5.3.4. <code class="filename">meta/conf/distro/</code>
-</h3></div></div></div>
-<p>
-            Any distribution-specific configuration is controlled from this directory. 
-            For the Yocto Project, the <code class="filename">defaultsetup.conf</code> is the main file here.  
-            This directory includes the versions and the 
-            <code class="filename">SRCDATE</code> definitions for applications that are configured here. 
-            An example of an alternative configuration might be <code class="filename">poky-bleeding.conf</code>.
-            Although this file mainly inherits its configuration from Poky.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-conf-machine.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-conf-machine.html
deleted file mode 100644
index 80ccb8d..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-conf-machine.html
+++ /dev/null
@@ -1,25 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.3. meta/conf/machine/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-conf.html" title="5.3.2. meta/conf/">
-<link rel="next" href="structure-meta-conf-distro.html" title="5.3.4. meta/conf/distro/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.3. meta/conf/machine/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-conf-machine"></a>5.3.3. <code class="filename">meta/conf/machine/</code>
-</h3></div></div></div>
-<p>
-            This directory contains all the machine configuration files. 
-            If you set <code class="filename">MACHINE="qemux86"</code>, 
-            the OpenEmbedded build system looks for a <code class="filename">qemux86.conf</code> file in this 
-            directory. 
-            The <code class="filename">include</code> directory contains various data common to multiple machines. 
-            If you want to add support for a new machine to the Yocto Project, look in this directory.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-conf.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-conf.html
deleted file mode 100644
index da88f4b..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-conf.html
+++ /dev/null
@@ -1,27 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.2. meta/conf/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-classes.html" title="5.3.1. meta/classes/">
-<link rel="next" href="structure-meta-conf-machine.html" title="5.3.3. meta/conf/machine/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.2. meta/conf/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-conf"></a>5.3.2. <code class="filename">meta/conf/</code>
-</h3></div></div></div>
-<p>
-            This directory contains the core set of configuration files that start from 
-            <code class="filename">bitbake.conf</code> and from which all other configuration 
-            files are included.
-            See the include statements at the end of the file and you will note that even 
-            <code class="filename">local.conf</code> is loaded from there. 
-            While <code class="filename">bitbake.conf</code> sets up the defaults, you can often override 
-            these by using the (<code class="filename">local.conf</code>) file, machine file or 
-            the distribution configuration file.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-hob.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-hob.html
deleted file mode 100644
index a8fb22f..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-hob.html
+++ /dev/null
@@ -1,22 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.1.7. meta-hob/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-core.html" title="5.1. Top level core components">
-<link rel="prev" href="structure-core-meta-yocto-bsp.html" title="5.1.6. meta-yocto-bsp/">
-<link rel="next" href="structure-meta-skeleton.html" title="5.1.8. meta-skeleton/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.1.7. meta-hob/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-hob"></a>5.1.7. <code class="filename">meta-hob/</code>
-</h3></div></div></div>
-<p>
-            This directory contains template recipes used by the
-            <a class="ulink" href="http://www.yoctoproject.org/projects/hob" target="_self">Hob</a>
-            build UI.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-bsp.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-bsp.html
deleted file mode 100644
index 7adf2d3..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-bsp.html
+++ /dev/null
@@ -1,21 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.5. meta/recipes-bsp/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-conf-distro.html" title="5.3.4. meta/conf/distro/">
-<link rel="next" href="structure-meta-recipes-connectivity.html" title="5.3.6. meta/recipes-connectivity/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.5. meta/recipes-bsp/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-recipes-bsp"></a>5.3.5. <code class="filename">meta/recipes-bsp/</code>
-</h3></div></div></div>
-<p>
-            This directory contains anything linking to specific hardware or hardware 
-            configuration information such as "u-boot" and "grub".
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-connectivity.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-connectivity.html
deleted file mode 100644
index 112544e..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-connectivity.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.6. meta/recipes-connectivity/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-recipes-bsp.html" title="5.3.5. meta/recipes-bsp/">
-<link rel="next" href="structure-meta-recipes-core.html" title="5.3.7. meta/recipes-core/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.6. meta/recipes-connectivity/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-recipes-connectivity"></a>5.3.6. <code class="filename">meta/recipes-connectivity/</code>
-</h3></div></div></div>
-<p>
-            This directory contains libraries and applications related to communication with other devices.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-core.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-core.html
deleted file mode 100644
index bd0542e..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-core.html
+++ /dev/null
@@ -1,21 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.7. meta/recipes-core/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-recipes-connectivity.html" title="5.3.6. meta/recipes-connectivity/">
-<link rel="next" href="structure-meta-recipes-devtools.html" title="5.3.8. meta/recipes-devtools/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.7. meta/recipes-core/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-recipes-core"></a>5.3.7. <code class="filename">meta/recipes-core/</code>
-</h3></div></div></div>
-<p>
-            This directory contains what is needed to build a basic working Linux image 
-            including commonly used dependencies.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-devtools.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-devtools.html
deleted file mode 100644
index 25a38d9..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-devtools.html
+++ /dev/null
@@ -1,21 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.8. meta/recipes-devtools/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-recipes-core.html" title="5.3.7. meta/recipes-core/">
-<link rel="next" href="structure-meta-recipes-extended.html" title="5.3.9. meta/recipes-extended/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.8. meta/recipes-devtools/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-recipes-devtools"></a>5.3.8. <code class="filename">meta/recipes-devtools/</code>
-</h3></div></div></div>
-<p>
-            This directory contains tools that are primarily used by the build system.
-            The tools, however, can also be used on targets.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-extended.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-extended.html
deleted file mode 100644
index b5506ff..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-extended.html
+++ /dev/null
@@ -1,23 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.9. meta/recipes-extended/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-recipes-devtools.html" title="5.3.8. meta/recipes-devtools/">
-<link rel="next" href="structure-meta-recipes-gnome.html" title="5.3.10. meta/recipes-gnome/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.9. meta/recipes-extended/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-recipes-extended"></a>5.3.9. <code class="filename">meta/recipes-extended/</code>
-</h3></div></div></div>
-<p>
-            This directory contains non-essential applications that add features compared to the 
-            alternatives in core. 
-            You might need this directory for full tool functionality or for Linux Standard Base (LSB)
-            compliance.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-gnome.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-gnome.html
deleted file mode 100644
index 769447f..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-gnome.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.10. meta/recipes-gnome/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-recipes-extended.html" title="5.3.9. meta/recipes-extended/">
-<link rel="next" href="structure-meta-recipes-graphics.html" title="5.3.11. meta/recipes-graphics/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.10. meta/recipes-gnome/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-recipes-gnome"></a>5.3.10. <code class="filename">meta/recipes-gnome/</code>
-</h3></div></div></div>
-<p>
-            This directory contains all things related to the GTK+ application framework.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-graphics.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-graphics.html
deleted file mode 100644
index 7a0a3e4..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-graphics.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.11. meta/recipes-graphics/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-recipes-gnome.html" title="5.3.10. meta/recipes-gnome/">
-<link rel="next" href="structure-meta-recipes-kernel.html" title="5.3.12. meta/recipes-kernel/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.11. meta/recipes-graphics/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-recipes-graphics"></a>5.3.11. <code class="filename">meta/recipes-graphics/</code>
-</h3></div></div></div>
-<p>
-            This directory contains X and other graphically related system libraries
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-kernel.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-kernel.html
deleted file mode 100644
index 1cb7a06..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-kernel.html
+++ /dev/null
@@ -1,21 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.12. meta/recipes-kernel/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-recipes-graphics.html" title="5.3.11. meta/recipes-graphics/">
-<link rel="next" href="structure-meta-recipes-multimedia.html" title="5.3.13. meta/recipes-multimedia/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.12. meta/recipes-kernel/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-recipes-kernel"></a>5.3.12. <code class="filename">meta/recipes-kernel/</code>
-</h3></div></div></div>
-<p>
-            This directory contains the kernel and generic applications and libraries that 
-            have strong kernel dependencies.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-multimedia.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-multimedia.html
deleted file mode 100644
index 08c9f3c..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-multimedia.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.13. meta/recipes-multimedia/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-recipes-kernel.html" title="5.3.12. meta/recipes-kernel/">
-<link rel="next" href="structure-meta-recipes-qt.html" title="5.3.14. meta/recipes-qt/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.13. meta/recipes-multimedia/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-recipes-multimedia"></a>5.3.13. <code class="filename">meta/recipes-multimedia/</code>
-</h3></div></div></div>
-<p>
-            This directory contains codecs and support utilities for audio, images and video.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-qt.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-qt.html
deleted file mode 100644
index bb6eca2..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-qt.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.14. meta/recipes-qt/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-recipes-multimedia.html" title="5.3.13. meta/recipes-multimedia/">
-<link rel="next" href="structure-meta-recipes-rt.html" title="5.3.15. meta/recipes-rt/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.14. meta/recipes-qt/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-recipes-qt"></a>5.3.14. <code class="filename">meta/recipes-qt/</code>
-</h3></div></div></div>
-<p>
-            This directory contains all things related to the Qt application framework.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-rt.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-rt.html
deleted file mode 100644
index 249e442..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-rt.html
+++ /dev/null
@@ -1,21 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.15. meta/recipes-rt/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-recipes-qt.html" title="5.3.14. meta/recipes-qt/">
-<link rel="next" href="structure-meta-recipes-sato.html" title="5.3.16. meta/recipes-sato/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.15. meta/recipes-rt/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-recipes-rt"></a>5.3.15. <code class="filename">meta/recipes-rt/</code>
-</h3></div></div></div>
-<p>
-            This directory contains package and image recipes for using and testing
-            the <code class="filename">PREEMPT_RT</code> kernel. 
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-sato.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-sato.html
deleted file mode 100644
index d6a27ff..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-sato.html
+++ /dev/null
@@ -1,21 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.16. meta/recipes-sato/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-recipes-rt.html" title="5.3.15. meta/recipes-rt/">
-<link rel="next" href="structure-meta-recipes-support.html" title="5.3.17. meta/recipes-support/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.16. meta/recipes-sato/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-recipes-sato"></a>5.3.16. <code class="filename">meta/recipes-sato/</code>
-</h3></div></div></div>
-<p>
-            This directory contains the Sato demo/reference UI/UX and its associated applications
-            and configuration data.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-support.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-support.html
deleted file mode 100644
index 7e152ac..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-support.html
+++ /dev/null
@@ -1,21 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.17. meta/recipes-support/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-recipes-sato.html" title="5.3.16. meta/recipes-sato/">
-<link rel="next" href="structure-meta-site.html" title="5.3.18. meta/site/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.17. meta/recipes-support/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-recipes-support"></a>5.3.17. <code class="filename">meta/recipes-support/</code>
-</h3></div></div></div>
-<p>
-            This directory contains recipes that used by other recipes, but that are not directly 
-            included in images (i.e. dependencies of other recipes).
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-txt.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-txt.html
deleted file mode 100644
index 42bb7a6..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-recipes-txt.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.19. meta/recipes.txt</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-site.html" title="5.3.18. meta/site/">
-<link rel="next" href="ref-bitbake.html" title="Chapter 6. BitBake">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.19. meta/recipes.txt">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-recipes-txt"></a>5.3.19. <code class="filename">meta/recipes.txt</code>
-</h3></div></div></div>
-<p>
-            This file is a description of the contents of <code class="filename">recipes-*</code>.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-site.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-site.html
deleted file mode 100644
index 567eec8..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-site.html
+++ /dev/null
@@ -1,23 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3.18. meta/site/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-meta.html" title="5.3. The Metadata - meta/">
-<link rel="prev" href="structure-meta-recipes-support.html" title="5.3.17. meta/recipes-support/">
-<link rel="next" href="structure-meta-recipes-txt.html" title="5.3.19. meta/recipes.txt">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3.18. meta/site/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-site"></a>5.3.18. <code class="filename">meta/site/</code>
-</h3></div></div></div>
-<p>
-            This directory contains a list of cached results for various architectures.
-            Because certain "autoconf" test results cannot be determined when cross-compiling due to 
-            the tests not able to run on a live system, the information in this directory is 
-            passed to "autoconf" for the various architectures. 
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-skeleton.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-skeleton.html
deleted file mode 100644
index b67bb60..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta-skeleton.html
+++ /dev/null
@@ -1,20 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.1.8. meta-skeleton/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="structure-core.html" title="5.1. Top level core components">
-<link rel="prev" href="structure-meta-hob.html" title="5.1.7. meta-hob/">
-<link rel="next" href="structure-core-scripts.html" title="5.1.9. scripts/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.1.8. meta-skeleton/">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="structure-meta-skeleton"></a>5.1.8. <code class="filename">meta-skeleton/</code>
-</h3></div></div></div>
-<p>
-            This directory contains template recipes for BSP and kernel development. 
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta.html
deleted file mode 100644
index 7f132b5..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/structure-meta.html
+++ /dev/null
@@ -1,21 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>5.3. The Metadata - meta/</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="ref-structure.html" title="Chapter 5. Source Directory Structure">
-<link rel="prev" href="structure-build-tmp-work.html" title="5.2.20. build/tmp/work/">
-<link rel="next" href="structure-meta-classes.html" title="5.3.1. meta/classes/">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3. The Metadata - meta/">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="structure-meta"></a>5.3. The Metadata - <code class="filename">meta/</code>
-</h2></div></div></div>
-<p>
-        As mentioned previously, metadata is the core of the Yocto Project. 
-        Metadata has several important subdivisions:
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/support.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/support.html
deleted file mode 100644
index 4e0a1ef..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/support.html
+++ /dev/null
@@ -1,34 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.3.1. Support</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="x32.html" title="3.3. x32">
-<link rel="prev" href="x32.html" title="3.3. x32">
-<link rel="next" href="future-development-and-limitations.html" title="3.3.2. Future Development and Limitations">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.3.1. Support">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="support"></a>3.3.1. Support</h3></div></div></div>
-<p>
-            While the x32 psABI specifications are not fully finalized, this Yocto Project
-            release supports current development specifications of x32 psABI.
-            As of this release of the Yocto Project, x32 psABI support exists as follows:
-            </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p>You can create packages and images in x32 psABI format on x86_64 architecture targets. 
-                    </p></li>
-<li class="listitem"><p>You can use the x32 psABI support through the <code class="filename">meta-x32</code>
-                    layer on top of the OE-core/Yocto layer.</p></li>
-<li class="listitem"><p>The toolchain from the <code class="filename">experimental/meta-x32</code> layer 
-                    is used for building x32 psABI program binaries.</p></li>
-<li class="listitem"><p>You can successfully build many recipes with the x32 toolchain.</p></li>
-<li class="listitem"><p>You can create and boot <code class="filename">core-image-minimal</code> and 
-                    <code class="filename">core-image-sato</code> images.</p></li>
-</ul></div>
-<p>
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/technical-details.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/technical-details.html
deleted file mode 100644
index 1a54121..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/technical-details.html
+++ /dev/null
@@ -1,50 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>Chapter 3. Technical Details</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="prev" href="examining-build-history-information.html" title="2.4.2.4. Examining Build History Information">
-<link rel="next" href="usingpoky-components.html" title="3.1. Yocto Project Components">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 3. Technical Details">
-<div class="titlepage"><div><div><h2 class="title">
-<a name="technical-details"></a>Chapter 3. Technical Details</h2></div></div></div>
-<div class="toc">
-<p><b>Table of Contents</b></p>
-<dl>
-<dt><span class="section"><a href="usingpoky-components.html">3.1. Yocto Project Components</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="usingpoky-components-bitbake.html">3.1.1. BitBake</a></span></dt>
-<dt><span class="section"><a href="usingpoky-components-metadata.html">3.1.2. Metadata (Recipes)</a></span></dt>
-<dt><span class="section"><a href="usingpoky-components-classes.html">3.1.3. Classes</a></span></dt>
-<dt><span class="section"><a href="usingpoky-components-configuration.html">3.1.4. Configuration</a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="shared-state-cache.html">3.2. Shared State Cache</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="overall-architecture.html">3.2.1. Overall Architecture</a></span></dt>
-<dt><span class="section"><a href="checksums.html">3.2.2. Checksums (Signatures)</a></span></dt>
-<dt><span class="section"><a href="shared-state.html">3.2.3. Shared State</a></span></dt>
-<dt><span class="section"><a href="tips-and-tricks.html">3.2.4. Tips and Tricks</a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="x32.html">3.3. x32</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="support.html">3.3.1. Support</a></span></dt>
-<dt><span class="section"><a href="future-development-and-limitations.html">3.3.2. Future Development and Limitations</a></span></dt>
-<dt><span class="section"><a href="using-x32-right-now.html">3.3.3. Using x32 Right Now</a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="licenses.html">3.4. Licenses</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="usingpoky-configuring-LIC_FILES_CHKSUM.html">3.4.1. Tracking License Changes</a></span></dt>
-<dt><span class="section"><a href="enabling-commercially-licensed-recipes.html">3.4.2. Enabling Commercially Licensed Recipes</a></span></dt>
-</dl></dd>
-</dl>
-</div>
-<p>
-        This chapter provides technical details for various parts of the Yocto Project. 
-        Currently, topics include Yocto Project components and shared state (sstate) cache.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/tips-and-tricks.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/tips-and-tricks.html
deleted file mode 100644
index 78773b9..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/tips-and-tricks.html
+++ /dev/null
@@ -1,22 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.2.4. Tips and Tricks</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="shared-state-cache.html" title="3.2. Shared State Cache">
-<link rel="prev" href="shared-state.html" title="3.2.3. Shared State">
-<link rel="next" href="debugging.html" title="3.2.4.1. Debugging">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2.4. Tips and Tricks">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="tips-and-tricks"></a>3.2.4. Tips and Tricks</h3></div></div></div>
-<p>
-            The code in the build system that supports incremental builds is not 
-            simple code.
-            This section presents some tips and tricks that help you work around 
-            issues related to shared state code.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/ubuntu-packages.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/ubuntu-packages.html
deleted file mode 100644
index 63c0118..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/ubuntu-packages.html
+++ /dev/null
@@ -1,60 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>1.3.2.1. Ubuntu</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="required-packages-for-the-host-development-system.html" title="1.3.2. Required Packages for the Host Development System">
-<link rel="prev" href="required-packages-for-the-host-development-system.html" title="1.3.2. Required Packages for the Host Development System">
-<link rel="next" href="fedora-packages.html" title="1.3.2.2. Fedora Packages">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.3.2.1. Ubuntu">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="ubuntu-packages"></a>1.3.2.1. Ubuntu</h4></div></div></div>
-<p>
-                The following list shows the required packages by function
-                given a supported Ubuntu Linux distribution:
-                </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem">
-<p><span class="emphasis"><em>Essentials:</em></span>
-                        Packages needed to build an image on a headless 
-                        system:
-                        </p>
-<pre class="literallayout">
-     $ sudo apt-get install gawk wget git-core diffstat unzip texinfo \
-     build-essential chrpath
-                        </pre>
-</li>
-<li class="listitem">
-<p><span class="emphasis"><em>Graphical Extras:</em></span>
-                        Packages recommended if the host system has graphics support:
-                        </p>
-<pre class="literallayout">
-     $ sudo apt-get install libsdl1.2-dev xterm
-                        </pre>
-</li>
-<li class="listitem">
-<p><span class="emphasis"><em>Documentation:</em></span>
-                        Packages needed if you are going to build out the 
-                        Yocto Project documentation manuals:
-                        </p>
-<pre class="literallayout">
-     $ sudo apt-get install make xsltproc docbook-utils fop
-                        </pre>
-</li>
-<li class="listitem">
-<p><span class="emphasis"><em>ADT Installer Extras:</em></span>
-                        Packages needed if you are going to be using the 
-                        <a class="link" href="../adt-manual/using-the-adt-installer.html" target="_self">Application Development Toolkit (ADT) Installer</a>:
-                        </p>
-<pre class="literallayout">
-     $ sudo apt-get install autoconf automake libtool libglib2.0-dev
-                        </pre>
-</li>
-</ul></div>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/understanding-what-the-build-history-contains.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/understanding-what-the-build-history-contains.html
deleted file mode 100644
index cdaa962..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/understanding-what-the-build-history-contains.html
+++ /dev/null
@@ -1,25 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.4.2. Understanding What the Build History Contains</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="maintaining-build-output-quality.html" title="2.4. Maintaining Build Output Quality">
-<link rel="prev" href="enabling-and-disabling-build-history.html" title="2.4.1. Enabling and Disabling Build History">
-<link rel="next" href="build-history-package-information.html" title="2.4.2.1. Build History Package Information">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.4.2. Understanding What the Build History Contains">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="understanding-what-the-build-history-contains"></a>2.4.2. Understanding What the Build History Contains</h3></div></div></div>
-<p>
-            Build history information is kept in  
-            <a class="link" href="ref-variables-glos.html#var-TMPDIR" title="TMPDIR"><code class="filename">$TMPDIR</code></a><code class="filename">/buildhistory</code>
-            in the Build Directory.
-            The following is an example abbreviated listing:
-            </p>
-<table border="0" summary="manufactured viewport for HTML img" cellspacing="0" cellpadding="0" width="540"><tr style="height: 360px"><td align="center"><img src="figures/buildhistory.png" align="middle" width="540"></td></tr></table>
-<p>
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/using-build-history-to-gather-image-information-only.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/using-build-history-to-gather-image-information-only.html
deleted file mode 100644
index 26c2a4d..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/using-build-history-to-gather-image-information-only.html
+++ /dev/null
@@ -1,34 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.4.2.3. Using Build History to Gather Image Information Only</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="understanding-what-the-build-history-contains.html" title="2.4.2. Understanding What the Build History Contains">
-<link rel="prev" href="build-history-image-information.html" title="2.4.2.2. Build History Image Information">
-<link rel="next" href="examining-build-history-information.html" title="2.4.2.4. Examining Build History Information">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.4.2.3. Using Build History to Gather Image Information Only">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="using-build-history-to-gather-image-information-only"></a>2.4.2.3. Using Build History to Gather Image Information Only</h4></div></div></div>
-<p> 
-                As you can see, build history produces image information, 
-                including dependency graphs, so you can see why something
-                was pulled into the image. 
-                If you are just interested in this information and not 
-                interested in collecting history or any package information, 
-                you can enable writing only image information without 
-                any history by adding the following 
-                to your <code class="filename">conf/local.conf</code> file found in the 
-                <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>:
-                </p>
-<pre class="literallayout">
-     INHERIT += "buildhistory"
-     BUILDHISTORY_COMMIT = "0"
-     BUILDHISTORY_FEATURES = "image"
-                </pre>
-<p>
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/using-x32-right-now.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/using-x32-right-now.html
deleted file mode 100644
index 614b31d..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/using-x32-right-now.html
+++ /dev/null
@@ -1,70 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.3.3. Using x32 Right Now</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="x32.html" title="3.3. x32">
-<link rel="prev" href="future-development-and-limitations.html" title="3.3.2. Future Development and Limitations">
-<link rel="next" href="licenses.html" title="3.4. Licenses">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.3.3. Using x32 Right Now">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="using-x32-right-now"></a>3.3.3. Using x32 Right Now</h3></div></div></div>
-<p>
-            Despite the fact the x32 psABI support is in development state for this release of the
-            Yocto Project, you can follow these steps to use the x32 spABI:
-            </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p>Add the <code class="filename">experimental/meta-x32</code> layer to your local
-                    <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a>.  
-                    You can find the <code class="filename">experimental/meta-x32</code> source repository at
-                    <a class="ulink" href="http://git.yoctoproject.org" target="_self">http://git.yoctoproject.org</a>.</p></li>
-<li class="listitem">
-<p>Edit your <code class="filename">conf/bblayers.conf</code> file so that it includes
-                    the <code class="filename">meta-x32</code>.
-                    Here is an example:
-                    </p>
-<pre class="literallayout">
-     BBLAYERS ?= " \
-        /home/nitin/prj/poky.git/meta \
-        /home/nitin/prj/poky.git/meta-yocto \
-        /home/nitin/prj/poky.git/meta-yocto-bsp \
-        /home/nitin/prj/meta-x32.git \
-     "
-                    </pre>
-</li>
-<li class="listitem">
-<p>Enable the x32 psABI tuning file for <code class="filename">x86_64</code>
-                    machines by editing the <code class="filename">conf/local.conf</code> like this:
-                    </p>
-<pre class="literallayout">
-      MACHINE = "qemux86-64"
-      DEFAULTTUNE = "x86-64-x32"
-      baselib = "${@d.getVar('BASE_LIB_tune-' + (d.getVar('DEFAULTTUNE', True) \
-         or 'INVALID'), True) or 'lib'}"
-      #MACHINE = "atom-pc"
-      #DEFAULTTUNE = "core2-64-x32"
-                    </pre>
-</li>
-<li class="listitem">
-<p>As usual, use BitBake to build an image that supports the x32 psABI.  
-                    Here is an example:
-                    </p>
-<pre class="literallayout">
-     $ bitake core-image-sato
-                    </pre>
-</li>
-<li class="listitem">
-<p>As usual, run your image using QEMU:
-                    </p>
-<pre class="literallayout">
-     $ runqemu qemux86-64 core-image-sato
-                    </pre>
-</li>
-</ul></div>
-<p>
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax.html
deleted file mode 100644
index e702578..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax.html
+++ /dev/null
@@ -1,58 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.4.1.2. Explanation of Syntax</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-configuring-LIC_FILES_CHKSUM.html" title="3.4.1. Tracking License Changes">
-<link rel="prev" href="usingpoky-specifying-LIC_FILES_CHKSUM.html" title="3.4.1.1. Specifying the LIC_FILES_CHKSUM Variable">
-<link rel="next" href="enabling-commercially-licensed-recipes.html" title="3.4.2. Enabling Commercially Licensed Recipes">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.1.2. Explanation of Syntax">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax"></a>3.4.1.2. Explanation of Syntax</h4></div></div></div>
-<p>
-                As mentioned in the previous section, the 
-                <code class="filename">LIC_FILES_CHKSUM</code> variable lists all the 
-                important files that contain the license text for the source code. 
-                It is possible to specify a checksum for an entire file, or a specific section of a
-                file (specified by beginning and ending line numbers with the "beginline" and "endline"
-                parameters, respectively). 
-                The latter is useful for source files with a license notice header,
-                README documents, and so forth.
-                If you do not use the "beginline" parameter, then it is assumed that the text begins on the 
-                first line of the file. 
-                Similarly, if you do not use the "endline" parameter, it is assumed that the license text 
-                ends with the last line of the file. 
-            </p>
-<p>
-                The "md5" parameter stores the md5 checksum of the license text. 
-                If the license text changes in any way as compared to this parameter
-                then a mismatch occurs.
-                This mismatch triggers a build failure and notifies the developer.
-                Notification allows the developer to review and address the license text changes.
-                Also note that if a mismatch occurs during the build, the correct md5 
-                checksum is placed in the build log and can be easily copied to the recipe.
-            </p>
-<p>
-                There is no limit to how many files you can specify using the 
-                <code class="filename">LIC_FILES_CHKSUM</code> variable.
-                Generally, however, every project requires a few specifications for license tracking. 
-                Many projects have a "COPYING" file that stores the license information for all the source 
-                code files.
-                This practice allows you to just track the "COPYING" file as long as it is kept up to date. 
-            </p>
-<div class="tip" title="Tip" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Tip</h3>
-                If you specify an empty or invalid "md5" parameter, BitBake returns an md5 mis-match 
-                error and displays the correct "md5" parameter value during the build. 
-                The correct parameter is also captured in the build log. 
-            </div>
-<div class="tip" title="Tip" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Tip</h3>
-                If the whole file contains only license text, you do not need to use the "beginline" and 
-                "endline" parameters. 
-            </div>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-build.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-build.html
deleted file mode 100644
index c1fa0e6..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-build.html
+++ /dev/null
@@ -1,24 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.1. Running a Build</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky.html" title="Chapter 2. Using the Yocto Project">
-<link rel="prev" href="usingpoky.html" title="Chapter 2. Using the Yocto Project">
-<link rel="next" href="build-overview.html" title="2.1.1. Build Overview">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.1. Running a Build">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="usingpoky-build"></a>2.1. Running a Build</h2></div></div></div>
-<p>
-        This section provides a summary of the build process and provides information
-        for less obvious aspects of the build process.
-        For general information on how to build an image using the OpenEmbedded build 
-        system, see the  
-        "<a class="link" href="../yocto-project-qs/building-image.html" target="_self">Building an Image</a>"
-        section of the Yocto Project Quick Start.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-bitbake.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-bitbake.html
deleted file mode 100644
index 184ffdb..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-bitbake.html
+++ /dev/null
@@ -1,66 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.1.1. BitBake</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-components.html" title="3.1. Yocto Project Components">
-<link rel="prev" href="usingpoky-components.html" title="3.1. Yocto Project Components">
-<link rel="next" href="usingpoky-components-metadata.html" title="3.1.2. Metadata (Recipes)">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.1.1. BitBake">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="usingpoky-components-bitbake"></a>3.1.1. BitBake</h3></div></div></div>
-<p>
-            BitBake is the tool at the heart of the OpenEmbedded build system and is responsible
-            for parsing the metadata, generating a list of tasks from it,
-            and then executing those tasks. 
-            To see a list of the options BitBake supports, use the following help command:
-            </p>
-<pre class="literallayout">
-     $ bitbake --help
-            </pre>
-<p>
-        </p>
-<p>
-            The most common usage for BitBake is <code class="filename">bitbake &lt;packagename&gt;</code>, where
-            <code class="filename">packagename</code> is the name of the package you want to build 
-            (referred to as the "target" in this manual). 
-            The target often equates to the first part of a <code class="filename">.bb</code> filename.
-            So, to run the <code class="filename">matchbox-desktop_1.2.3.bb</code> file, you
-            might type the following:
-            </p>
-<pre class="literallayout">
-     $ bitbake matchbox-desktop
-            </pre>
-<p>
-            Several different versions of <code class="filename">matchbox-desktop</code> might exist.
-            BitBake chooses the one selected by the distribution configuration.
-            You can get more details about how BitBake chooses between different 
-            target versions and providers in the 
-            "<a class="link" href="ref-bitbake-providers.html" title="6.2. Preferences and Providers">Preferences and Providers</a>" section.
-        </p>
-<p>
-            BitBake also tries to execute any dependent tasks first.
-            So for example, before building <code class="filename">matchbox-desktop</code>, BitBake
-            would build a cross compiler and <code class="filename">eglibc</code> if they had not already 
-            been built.
-            </p>
-<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
-<h3 class="title">Note</h3>This release of the Yocto Project does not support the <code class="filename">glibc</code>
-                GNU version of the Unix standard C library.  By default, the OpenEmbedded build system
-                builds with <code class="filename">eglibc</code>.</div>
-<p>
-        </p>
-<p>
-            A useful BitBake option to consider is the <code class="filename">-k</code> or 
-            <code class="filename">--continue</code> option.  
-            This option instructs BitBake to try and continue processing the job as much 
-            as possible even after encountering an error.  
-            When an error occurs, the target that
-            failed and those that depend on it cannot be remade.  
-            However, when you use this option other dependencies can still be processed.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-classes.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-classes.html
deleted file mode 100644
index 9242706..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-classes.html
+++ /dev/null
@@ -1,24 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.1.3. Classes</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-components.html" title="3.1. Yocto Project Components">
-<link rel="prev" href="usingpoky-components-metadata.html" title="3.1.2. Metadata (Recipes)">
-<link rel="next" href="usingpoky-components-configuration.html" title="3.1.4. Configuration">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.1.3. Classes">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="usingpoky-components-classes"></a>3.1.3. Classes</h3></div></div></div>
-<p>
-            Class files (<code class="filename">.bbclass</code>) contain information that is useful to share
-            between metadata files. 
-            An example is the Autotools class, which contains
-            common settings for any application that Autotools uses.
-            The "<a class="link" href="ref-classes.html" title="Chapter 7. Classes">Classes</a>" chapter provides details
-            about common classes and how to use them.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-configuration.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-configuration.html
deleted file mode 100644
index 49e4e14..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-configuration.html
+++ /dev/null
@@ -1,24 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.1.4. Configuration</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-components.html" title="3.1. Yocto Project Components">
-<link rel="prev" href="usingpoky-components-classes.html" title="3.1.3. Classes">
-<link rel="next" href="shared-state-cache.html" title="3.2. Shared State Cache">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.1.4. Configuration">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="usingpoky-components-configuration"></a>3.1.4. Configuration</h3></div></div></div>
-<p>
-            The configuration files (<code class="filename">.conf</code>) define various configuration variables
-            that govern the OpenEmbedded build process. 
-            These files fall into several areas that define machine configuration options, 
-            distribution configuration options, compiler tuning options, general common configuration
-            options and user configuration options (<code class="filename">local.conf</code>, which is found
-            in the <a class="ulink" href="build-directory" target="_self">Build Directory</a>).
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-metadata.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-metadata.html
deleted file mode 100644
index 4f73445..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components-metadata.html
+++ /dev/null
@@ -1,29 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.1.2. Metadata (Recipes)</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-components.html" title="3.1. Yocto Project Components">
-<link rel="prev" href="usingpoky-components-bitbake.html" title="3.1.1. BitBake">
-<link rel="next" href="usingpoky-components-classes.html" title="3.1.3. Classes">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.1.2. Metadata (Recipes)">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="usingpoky-components-metadata"></a>3.1.2. Metadata (Recipes)</h3></div></div></div>
-<p>
-            The <code class="filename">.bb</code> files are usually referred to as "recipes." 
-            In general, a recipe contains information about a single piece of software.
-            The information includes the location from which to download the source patches 
-            (if any are needed), which special configuration options to apply, 
-            how to compile the source files, and how to package the compiled output. 
-        </p>
-<p>
-            The term "package" can also be used to describe recipes.
-            However, since the same word is used for the packaged output from the OpenEmbedded 
-            build system (i.e. <code class="filename">.ipk</code> or <code class="filename">.deb</code> files), 
-            this document avoids using the term "package" when referring to recipes.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components.html
deleted file mode 100644
index ccd3ae5..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-components.html
+++ /dev/null
@@ -1,52 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.1. Yocto Project Components</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="technical-details.html" title="Chapter 3. Technical Details">
-<link rel="prev" href="technical-details.html" title="Chapter 3. Technical Details">
-<link rel="next" href="usingpoky-components-bitbake.html" title="3.1.1. BitBake">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.1. Yocto Project Components">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="usingpoky-components"></a>3.1. Yocto Project Components</h2></div></div></div>
-<p>
-        The BitBake task executor together with various types of configuration files form the 
-        OpenEmbedded Core.
-        This section overviews the BitBake task executor and the
-        configuration files by describing what they are used for and how they interact.
-    </p>
-<p>  
-        BitBake handles the parsing and execution of the data files. 
-        The data itself is of various types:
-    </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p><span class="emphasis"><em>Recipes:</em></span>  Provides details about particular 
-            pieces of software</p></li>
-<li class="listitem"><p><span class="emphasis"><em>Class Data:</em></span>  An abstraction of common build 
-            information (e.g. how to build a Linux kernel).</p></li>
-<li class="listitem"><p><span class="emphasis"><em>Configuration Data:</em></span>  Defines machine-specific settings, 
-            policy decisions, etc.
-            Configuration data acts as the glue to bind everything together.</p></li>
-</ul></div>
-<p>
-        For more information on data, see the
-        "<a class="link" href="../dev-manual/yocto-project-terms.html" target="_self">Yocto Project Terms</a>"
-        section in the Yocto Project Development Manual.
-    </p>
-<p> 
-        BitBake knows how to combine multiple data sources together and refers to each data source
-        as a layer.
-        For information on layers, see the 
-        "<a class="link" href="../dev-manual/understanding-and-creating-layers.html" target="_self">Understanding and 
-        Creating Layers</a>" section of the Yocto Project Development Manual.
-    </p>
-<p>
-        Following are some brief details on these core components.
-        For more detailed information on these components see the 
-        "<a class="link" href="ref-structure.html" title="Chapter 5. Source Directory Structure">Directory Structure</a>" chapter.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-configuring-LIC_FILES_CHKSUM.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-configuring-LIC_FILES_CHKSUM.html
deleted file mode 100644
index ffcfd24..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-configuring-LIC_FILES_CHKSUM.html
+++ /dev/null
@@ -1,23 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.4.1. Tracking License Changes</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="licenses.html" title="3.4. Licenses">
-<link rel="prev" href="licenses.html" title="3.4. Licenses">
-<link rel="next" href="usingpoky-specifying-LIC_FILES_CHKSUM.html" title="3.4.1.1. Specifying the LIC_FILES_CHKSUM Variable">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.1. Tracking License Changes">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="usingpoky-configuring-LIC_FILES_CHKSUM"></a>3.4.1. Tracking License Changes</h3></div></div></div>
-<p>
-            The license of an upstream project might change in the future. 
-            In order to prevent these changes going unnoticed, the  
-            <code class="filename"><a class="link" href="ref-variables-glos.html#var-LIC_FILES_CHKSUM" title="LIC_FILES_CHKSUM">LIC_FILES_CHKSUM</a></code>
-            variable tracks changes to the license text. The checksums are validated at the end of the
-            configure step, and if the checksums do not match, the build will fail.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-bitbake.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-bitbake.html
deleted file mode 100644
index 06a3b7f..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-bitbake.html
+++ /dev/null
@@ -1,30 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.3.4. General BitBake Problems</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
-<link rel="prev" href="usingpoky-debugging-dependencies.html" title="2.3.3. Dependency Graphs">
-<link rel="next" href="usingpoky-debugging-buildfile.html" title="2.3.5. Building with No Dependencies">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.4. General BitBake Problems">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="usingpoky-debugging-bitbake"></a>2.3.4. General BitBake Problems</h3></div></div></div>
-<p>
-            You can see debug output from BitBake by using the <code class="filename">-D</code> option.
-            The debug output gives more information about what BitBake
-            is doing and the reason behind it. 
-            Each <code class="filename">-D</code> option you use increases the logging level.
-            The most common usage is <code class="filename">-DDD</code>.
-        </p>
-<p>
-            The output from <code class="filename">bitbake -DDD -v targetname</code> can reveal why
-            BitBake chose a certain version of a package or why BitBake
-            picked a certain provider.
-            This command could also help you in a situation where you think BitBake did something 
-            unexpected.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-buildfile.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-buildfile.html
deleted file mode 100644
index 9450f1a..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-buildfile.html
+++ /dev/null
@@ -1,24 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.3.5. Building with No Dependencies</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
-<link rel="prev" href="usingpoky-debugging-bitbake.html" title="2.3.4. General BitBake Problems">
-<link rel="next" href="usingpoky-debugging-variables.html" title="2.3.6. Variables">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.5. Building with No Dependencies">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="usingpoky-debugging-buildfile"></a>2.3.5. Building with No Dependencies</h3></div></div></div>
-<p>
-            If you really want to build a specific <code class="filename">.bb</code> file, you can use
-            the command form <code class="filename">bitbake -b &lt;somepath/somefile.bb&gt;</code>. 
-            This command form does not check for dependencies so you should use it
-            only when you know its dependencies already exist. 
-            You can also specify fragments of the filename.
-            In this case, BitBake checks for a unique match.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-dependencies.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-dependencies.html
deleted file mode 100644
index c48b00e..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-dependencies.html
+++ /dev/null
@@ -1,26 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.3.3. Dependency Graphs</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
-<link rel="prev" href="usingpoky-debugging-taskrunning.html" title="2.3.2. Running Specific Tasks">
-<link rel="next" href="usingpoky-debugging-bitbake.html" title="2.3.4. General BitBake Problems">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.3. Dependency Graphs">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="usingpoky-debugging-dependencies"></a>2.3.3. Dependency Graphs</h3></div></div></div>
-<p>
-            Sometimes it can be hard to see why BitBake wants to build some other packages before a given 
-            package you have specified.
-            The <code class="filename">bitbake -g targetname</code> command creates the 
-            <code class="filename">depends.dot</code>, <code class="filename">package-depends.dot</code>,
-            and <code class="filename">task-depends.dot</code> files in the current directory. 
-            These files show the package and task dependencies and are useful for debugging problems.
-            You can use the <code class="filename">bitbake -g -u depexp targetname</code> command to 
-            display the results in a more human-readable form.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-others.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-others.html
deleted file mode 100644
index a83f4cc..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-others.html
+++ /dev/null
@@ -1,34 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.3.8. Other Tips</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
-<link rel="prev" href="logging-with-bash.html" title="2.3.7.2. Logging With Bash">
-<link rel="next" href="maintaining-build-output-quality.html" title="2.4. Maintaining Build Output Quality">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.8. Other Tips">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="usingpoky-debugging-others"></a>2.3.8. Other Tips</h3></div></div></div>
-<p>
-            Here are some other tips that you might find useful:
-            </p>
-<div class="itemizedlist"><ul class="itemizedlist" type="disc">
-<li class="listitem"><p>When adding new packages, it is worth watching for 
-                    undesirable items making their way into compiler command lines.
-                    For example, you do not want references to local system files like 
-                    <code class="filename">/usr/lib/</code> or <code class="filename">/usr/include/</code>.
-                    </p></li>
-<li class="listitem"><p>If you want to remove the psplash boot splashscreen, 
-                    add <code class="filename">psplash=false</code> to  the kernel command line.
-                    Doing so prevents psplash from loading and thus allows you to see the console.
-                    It is also possible to switch out of the splashscreen by 
-                    switching the virtual console (e.g. Fn+Left or Fn+Right on a Zaurus).
-                    </p></li>
-</ul></div>
-<p>
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-taskfailures.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-taskfailures.html
deleted file mode 100644
index 709af32..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-taskfailures.html
+++ /dev/null
@@ -1,27 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.3.1. Task Failures</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
-<link rel="prev" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
-<link rel="next" href="usingpoky-debugging-taskrunning.html" title="2.3.2. Running Specific Tasks">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.1. Task Failures">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="usingpoky-debugging-taskfailures"></a>2.3.1. Task Failures</h3></div></div></div>
-<p>The log file for shell tasks is available in 
-            <code class="filename">${WORKDIR}/temp/log.do_taskname.pid</code>. 
-            For example, the <code class="filename">compile</code> task for the QEMU minimal image for the x86
-            machine (<code class="filename">qemux86</code>) might be 
-            <code class="filename">tmp/work/qemux86-poky-linux/core-image-minimal-1.0-r0/temp/log.do_compile.20830</code>.
-            To see what BitBake runs to generate that log, look at the corresponding 
-            <code class="filename">run.do_taskname.pid</code> file located in the same directory.
-        </p>
-<p>
-            Presently, the output from Python tasks is sent directly to the console.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-taskrunning.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-taskrunning.html
deleted file mode 100644
index 998d9d0..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-taskrunning.html
+++ /dev/null
@@ -1,68 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.3.2. Running Specific Tasks</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
-<link rel="prev" href="usingpoky-debugging-taskfailures.html" title="2.3.1. Task Failures">
-<link rel="next" href="usingpoky-debugging-dependencies.html" title="2.3.3. Dependency Graphs">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.2. Running Specific Tasks">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="usingpoky-debugging-taskrunning"></a>2.3.2. Running Specific Tasks</h3></div></div></div>
-<p>
-            Any given package consists of a set of tasks.  
-            The standard BitBake behavior in most cases is: <code class="filename">fetch</code>, 
-            <code class="filename">unpack</code>, 
-            <code class="filename">patch</code>, <code class="filename">configure</code>,
-            <code class="filename">compile</code>, <code class="filename">install</code>, <code class="filename">package</code>,
-            <code class="filename">package_write</code>, and <code class="filename">build</code>. 
-            The default task is <code class="filename">build</code> and any tasks on which it depends 
-            build first.
-            Some tasks exist, such as <code class="filename">devshell</code>, that are not part of the
-            default build chain.  
-            If you wish to run a task that is not part of the default build chain, you can use the 
-            <code class="filename">-c</code> option in BitBake as follows:
-            </p>
-<pre class="literallayout">
-     $ bitbake matchbox-desktop -c devshell
-            </pre>
-<p>
-        </p>
-<p>
-            If you wish to rerun a task, use the <code class="filename">-f</code> force option. 
-            For example, the following sequence forces recompilation after changing files in the 
-            working directory.
-            </p>
-<pre class="literallayout">
-     $ bitbake matchbox-desktop
-               .
-               .
-        [make some changes to the source code in the working directory]
-               .
-               .
-     $ bitbake matchbox-desktop -c compile -f
-     $ bitbake matchbox-desktop
-            </pre>
-<p>
-        </p>
-<p>
-            This sequence first builds <code class="filename">matchbox-desktop</code> and then recompiles it.
-            The last command reruns all tasks (basically the packaging tasks) after the compile.
-            BitBake recognizes that the <code class="filename">compile</code> task was rerun and therefore 
-            understands that the other tasks also need to be run again.
-        </p>
-<p>
-            You can view a list of tasks in a given package by running the
-            <code class="filename">listtasks</code> task as follows:
-            </p>
-<pre class="literallayout">
-     $ bitbake matchbox-desktop -c listtasks
-            </pre>
-<p>
-            The results are in the file <code class="filename">${WORKDIR}/temp/log.do_listtasks</code>.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-variables.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-variables.html
deleted file mode 100644
index ae185be..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging-variables.html
+++ /dev/null
@@ -1,22 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.3.6. Variables</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
-<link rel="prev" href="usingpoky-debugging-buildfile.html" title="2.3.5. Building with No Dependencies">
-<link rel="next" href="recipe-logging-mechanisms.html" title="2.3.7. Recipe Logging Mechanisms">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.6. Variables">
-<div class="titlepage"><div><div><h3 class="title">
-<a name="usingpoky-debugging-variables"></a>2.3.6. Variables</h3></div></div></div>
-<p>
-            The <code class="filename">-e</code> option dumps the resulting environment for
-            either the configuration (no package specified) or for a
-            specific package when specified; or <code class="filename">-b recipename</code>
-            to show the environment from parsing a single recipe file only.
-        </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging.html
deleted file mode 100644
index 9a8b72d..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-debugging.html
+++ /dev/null
@@ -1,26 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.3. Debugging Build Failures</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky.html" title="Chapter 2. Using the Yocto Project">
-<link rel="prev" href="usingpoky-install.html" title="2.2. Installing and Using the Result">
-<link rel="next" href="usingpoky-debugging-taskfailures.html" title="2.3.1. Task Failures">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3. Debugging Build Failures">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="usingpoky-debugging"></a>2.3. Debugging Build Failures</h2></div></div></div>
-<p>
-        The exact method for debugging build failures depends on the nature of the 
-        problem and on the system's area from which the bug originates. 
-        Standard debugging practices such as comparison against the last 
-        known working version with examination of the changes and the re-application of steps 
-        to identify the one causing the problem are
-        valid for the Yocto Project just as they are for any other system. 
-        Even though it is impossible to detail every possible potential failure, 
-        this section provides some general tips to aid in debugging.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-install.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-install.html
deleted file mode 100644
index d8d60e1..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-install.html
+++ /dev/null
@@ -1,28 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>2.2. Installing and Using the Result</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky.html" title="Chapter 2. Using the Yocto Project">
-<link rel="prev" href="building-an-image-using-gpl-components.html" title="2.1.2. Building an Image Using GPL Components">
-<link rel="next" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.2. Installing and Using the Result">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="usingpoky-install"></a>2.2. Installing and Using the Result</h2></div></div></div>
-<p>
-        Once an image has been built, it often needs to be installed. 
-        The images and kernels built by the OpenEmbedded build system are placed in the 
-        <a class="link" href="../dev-manual/build-directory.html" target="_self">Build Directory</a> in 
-        <code class="filename">tmp/deploy/images</code>. 
-        For information on how to run pre-built images such as <code class="filename">qemux86</code> 
-        and <code class="filename">qemuarm</code>, see the
-        "<a class="link" href="../yocto-project-qs/using-pre-built.html" target="_self">Using Pre-Built Binaries and QEMU</a>"
-        section in the Yocto Project Quick Start.
-        For information about how to install these images, see the documentation for your
-        particular board/machine.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-specifying-LIC_FILES_CHKSUM.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-specifying-LIC_FILES_CHKSUM.html
deleted file mode 100644
index b518fce..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky-specifying-LIC_FILES_CHKSUM.html
+++ /dev/null
@@ -1,57 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.4.1.1. Specifying the LIC_FILES_CHKSUM Variable</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="usingpoky-configuring-LIC_FILES_CHKSUM.html" title="3.4.1. Tracking License Changes">
-<link rel="prev" href="usingpoky-configuring-LIC_FILES_CHKSUM.html" title="3.4.1. Tracking License Changes">
-<link rel="next" href="usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax.html" title="3.4.1.2. Explanation of Syntax">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.1.1. Specifying the LIC_FILES_CHKSUM Variable">
-<div class="titlepage"><div><div><h4 class="title">
-<a name="usingpoky-specifying-LIC_FILES_CHKSUM"></a>3.4.1.1. Specifying the <code class="filename">LIC_FILES_CHKSUM</code> Variable</h4></div></div></div>
-<p>
-                The <code class="filename">LIC_FILES_CHKSUM</code>
-                variable contains checksums of the license text in the source code for the recipe.
-                Following is an example of how to specify <code class="filename">LIC_FILES_CHKSUM</code>:
-                </p>
-<pre class="literallayout">
-     LIC_FILES_CHKSUM = "file://COPYING;md5=xxxx \
-                         file://licfile1.txt;beginline=5;endline=29;md5=yyyy \
-                         file://licfile2.txt;endline=50;md5=zzzz \
-                         ..."
-                </pre>
-<p>
-            </p>
-<p>
-                The build system uses the 
-                <code class="filename"><a class="link" href="ref-variables-glos.html#var-S" title="S">S</a></code> variable as the 
-                default directory used when searching files listed in 
-                <code class="filename">LIC_FILES_CHKSUM</code>.
-                The previous example employs the default directory.
-            </p>
-<p>
-                You can also use relative paths as shown in the following example: 
-                </p>
-<pre class="literallayout">
-     LIC_FILES_CHKSUM = "file://src/ls.c;startline=5;endline=16;\
-                                         md5=bb14ed3c4cda583abc85401304b5cd4e"
-     LIC_FILES_CHKSUM = "file://../license.html;md5=5c94767cedb5d6987c902ac850ded2c6"
-                </pre>
-<p>
-            </p>
-<p>
-                In this example, the first line locates a file in 
-                <code class="filename">${S}/src/ls.c</code>. 
-                The second line refers to a file in 
-                <code class="filename"><a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR">WORKDIR</a></code>, which is the parent
-                of <code class="filename"><a class="link" href="ref-variables-glos.html#var-S" title="S">S</a></code>.
-            </p>
-<p>
-                Note that this variable is mandatory for all recipes, unless the 
-                <code class="filename">LICENSE</code> variable is set to "CLOSED".
-            </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky.html
deleted file mode 100644
index 95be1f1..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/usingpoky.html
+++ /dev/null
@@ -1,48 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>Chapter 2. Using the Yocto Project</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="prev" href="intro-getit-dev.html" title="1.5. Development Checkouts">
-<link rel="next" href="usingpoky-build.html" title="2.1. Running a Build">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 2. Using the Yocto Project">
-<div class="titlepage"><div><div><h2 class="title">
-<a name="usingpoky"></a>Chapter 2. Using the Yocto Project</h2></div></div></div>
-<div class="toc">
-<p><b>Table of Contents</b></p>
-<dl>
-<dt><span class="section"><a href="usingpoky-build.html">2.1. Running a Build</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="build-overview.html">2.1.1. Build Overview</a></span></dt>
-<dt><span class="section"><a href="building-an-image-using-gpl-components.html">2.1.2. Building an Image Using GPL Components</a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="usingpoky-install.html">2.2. Installing and Using the Result</a></span></dt>
-<dt><span class="section"><a href="usingpoky-debugging.html">2.3. Debugging Build Failures</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="usingpoky-debugging-taskfailures.html">2.3.1. Task Failures</a></span></dt>
-<dt><span class="section"><a href="usingpoky-debugging-taskrunning.html">2.3.2. Running Specific Tasks</a></span></dt>
-<dt><span class="section"><a href="usingpoky-debugging-dependencies.html">2.3.3. Dependency Graphs</a></span></dt>
-<dt><span class="section"><a href="usingpoky-debugging-bitbake.html">2.3.4. General BitBake Problems</a></span></dt>
-<dt><span class="section"><a href="usingpoky-debugging-buildfile.html">2.3.5. Building with No Dependencies</a></span></dt>
-<dt><span class="section"><a href="usingpoky-debugging-variables.html">2.3.6. Variables</a></span></dt>
-<dt><span class="section"><a href="recipe-logging-mechanisms.html">2.3.7. Recipe Logging Mechanisms</a></span></dt>
-<dt><span class="section"><a href="usingpoky-debugging-others.html">2.3.8. Other Tips</a></span></dt>
-</dl></dd>
-<dt><span class="section"><a href="maintaining-build-output-quality.html">2.4. Maintaining Build Output Quality</a></span></dt>
-<dd><dl>
-<dt><span class="section"><a href="enabling-and-disabling-build-history.html">2.4.1. Enabling and Disabling Build History</a></span></dt>
-<dt><span class="section"><a href="understanding-what-the-build-history-contains.html">2.4.2. Understanding What the Build History Contains</a></span></dt>
-</dl></dd>
-</dl>
-</div>
-<p>
-        This chapter describes common usage for the Yocto Project.
-        The information is introductory in nature as other manuals in the Yocto Project
-        documentation set provide more details on how to use the Yocto Project.
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/html/poky-ref-manual/x32.html b/documentation/ref-manual/eclipse/html/poky-ref-manual/x32.html
deleted file mode 100644
index 5be3508..0000000
--- a/documentation/ref-manual/eclipse/html/poky-ref-manual/x32.html
+++ /dev/null
@@ -1,35 +0,0 @@
-<html>
-<head>
-<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
-<title>3.3. x32</title>
-<link rel="stylesheet" type="text/css" href="../book.css">
-<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
-<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
-<link rel="up" href="technical-details.html" title="Chapter 3. Technical Details">
-<link rel="prev" href="invalidating-shared-state.html" title="3.2.4.2. Invalidating Shared State">
-<link rel="next" href="support.html" title="3.3.1. Support">
-</head>
-<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.3. x32">
-<div class="titlepage"><div><div><h2 class="title" style="clear: both">
-<a name="x32"></a>3.3. x32</h2></div></div></div>
-<p>
-        x32 is a new processor-specific Application Binary Interface (psABI) for x86_64. 
-        An ABI defines the calling conventions between functions in a processing environment.  
-        The interface determines what registers are used and what the sizes are for various C data types.
-    </p>
-<p>
-        Some processing environments prefer using 32-bit applications even when running 
-        on Intel 64-bit platforms. 
-        Consider the i386 psABI, which is a very old 32-bit ABI for Intel 64-bit platforms.
-        The i386 psABI does not provide efficient use and access of the Intel 64-bit processor resources,
-        leaving the system underutilized. 
-        Now consider the x86_64 psABI.
-        This ABI is newer and uses 64-bits for data sizes and program pointers.
-        The extra bits increase the footprint size of the programs, libraries, 
-        and also increases the memory and file system size requirements.
-        Executing under the x32 psABI enables user programs to utilize CPU and system resources 
-        more efficiently while keeping the memory footprint of the applications low.
-        Extra bits are used for registers but not for addressing mechanisms. 
-    </p>
-</div></body>
-</html>
diff --git a/documentation/ref-manual/eclipse/poky-ref-manual-toc.xml b/documentation/ref-manual/eclipse/poky-ref-manual-toc.xml
deleted file mode 100644
index 8624641..0000000
--- a/documentation/ref-manual/eclipse/poky-ref-manual-toc.xml
+++ /dev/null
@@ -1,217 +0,0 @@
-<?xml version="1.0" encoding="utf-8" standalone="no"?>
-<toc label="The Yocto Project Reference Manual" topic="html/poky-ref-manual/index.html">
-  <topic label="Introduction" href="html/poky-ref-manual/intro.html">
-    <topic label="Introduction" href="html/poky-ref-manual/intro-welcome.html"/>
-    <topic label="Documentation Overview" href="html/poky-ref-manual/intro-manualoverview.html"/>
-    <topic label="System Requirements" href="html/poky-ref-manual/intro-requirements.html">
-      <topic label="Supported Linux Distributions" href="html/poky-ref-manual/detailed-supported-distros.html"/>
-      <topic label="Required Packages for the Host Development System" href="html/poky-ref-manual/required-packages-for-the-host-development-system.html">
-        <topic label="Ubuntu" href="html/poky-ref-manual/ubuntu-packages.html"/>
-        <topic label="Fedora Packages" href="html/poky-ref-manual/fedora-packages.html"/>
-        <topic label="OpenSUSE Packages" href="html/poky-ref-manual/opensuse-packages.html"/>
-        <topic label="CentOS Packages" href="html/poky-ref-manual/centos-packages.html"/>
-      </topic>
-    </topic>
-    <topic label="Obtaining the Yocto Project" href="html/poky-ref-manual/intro-getit.html"/>
-    <topic label="Development Checkouts" href="html/poky-ref-manual/intro-getit-dev.html"/>
-  </topic>
-  <topic label="Using the Yocto Project" href="html/poky-ref-manual/usingpoky.html">
-    <topic label="Running a Build" href="html/poky-ref-manual/usingpoky-build.html">
-      <topic label="Build Overview" href="html/poky-ref-manual/build-overview.html"/>
-      <topic label="Building an Image Using GPL Components" href="html/poky-ref-manual/building-an-image-using-gpl-components.html"/>
-    </topic>
-    <topic label="Installing and Using the Result" href="html/poky-ref-manual/usingpoky-install.html"/>
-    <topic label="Debugging Build Failures" href="html/poky-ref-manual/usingpoky-debugging.html">
-      <topic label="Task Failures" href="html/poky-ref-manual/usingpoky-debugging-taskfailures.html"/>
-      <topic label="Running Specific Tasks" href="html/poky-ref-manual/usingpoky-debugging-taskrunning.html"/>
-      <topic label="Dependency Graphs" href="html/poky-ref-manual/usingpoky-debugging-dependencies.html"/>
-      <topic label="General BitBake Problems" href="html/poky-ref-manual/usingpoky-debugging-bitbake.html"/>
-      <topic label="Building with No Dependencies" href="html/poky-ref-manual/usingpoky-debugging-buildfile.html"/>
-      <topic label="Variables" href="html/poky-ref-manual/usingpoky-debugging-variables.html"/>
-      <topic label="Recipe Logging Mechanisms" href="html/poky-ref-manual/recipe-logging-mechanisms.html">
-        <topic label="Logging With Python" href="html/poky-ref-manual/logging-with-python.html"/>
-        <topic label="Logging With Bash" href="html/poky-ref-manual/logging-with-bash.html"/>
-      </topic>
-      <topic label="Other Tips" href="html/poky-ref-manual/usingpoky-debugging-others.html"/>
-    </topic>
-    <topic label="Maintaining Build Output Quality" href="html/poky-ref-manual/maintaining-build-output-quality.html">
-      <topic label="Enabling and Disabling Build History" href="html/poky-ref-manual/enabling-and-disabling-build-history.html"/>
-      <topic label="Understanding What the Build History Contains" href="html/poky-ref-manual/understanding-what-the-build-history-contains.html">
-        <topic label="Build History Package Information" href="html/poky-ref-manual/build-history-package-information.html"/>
-        <topic label="Build History Image Information" href="html/poky-ref-manual/build-history-image-information.html"/>
-        <topic label="Using Build History to Gather Image Information Only" href="html/poky-ref-manual/using-build-history-to-gather-image-information-only.html"/>
-        <topic label="Examining Build History Information" href="html/poky-ref-manual/examining-build-history-information.html"/>
-      </topic>
-    </topic>
-  </topic>
-  <topic label="Technical Details" href="html/poky-ref-manual/technical-details.html">
-    <topic label="Yocto Project Components" href="html/poky-ref-manual/usingpoky-components.html">
-      <topic label="BitBake" href="html/poky-ref-manual/usingpoky-components-bitbake.html"/>
-      <topic label="Metadata (Recipes)" href="html/poky-ref-manual/usingpoky-components-metadata.html"/>
-      <topic label="Classes" href="html/poky-ref-manual/usingpoky-components-classes.html"/>
-      <topic label="Configuration" href="html/poky-ref-manual/usingpoky-components-configuration.html"/>
-    </topic>
-    <topic label="Shared State Cache" href="html/poky-ref-manual/shared-state-cache.html">
-      <topic label="Overall Architecture" href="html/poky-ref-manual/overall-architecture.html"/>
-      <topic label="Checksums (Signatures)" href="html/poky-ref-manual/checksums.html"/>
-      <topic label="Shared State" href="html/poky-ref-manual/shared-state.html"/>
-      <topic label="Tips and Tricks" href="html/poky-ref-manual/tips-and-tricks.html">
-        <topic label="Debugging" href="html/poky-ref-manual/debugging.html"/>
-        <topic label="Invalidating Shared State" href="html/poky-ref-manual/invalidating-shared-state.html"/>
-      </topic>
-    </topic>
-    <topic label="x32" href="html/poky-ref-manual/x32.html">
-      <topic label="Support" href="html/poky-ref-manual/support.html"/>
-      <topic label="Future Development and Limitations" href="html/poky-ref-manual/future-development-and-limitations.html"/>
-      <topic label="Using x32 Right Now" href="html/poky-ref-manual/using-x32-right-now.html"/>
-    </topic>
-    <topic label="Licenses" href="html/poky-ref-manual/licenses.html">
-      <topic label="Tracking License Changes" href="html/poky-ref-manual/usingpoky-configuring-LIC_FILES_CHKSUM.html">
-        <topic label="Specifying the LIC_FILES_CHKSUM Variable" href="html/poky-ref-manual/usingpoky-specifying-LIC_FILES_CHKSUM.html"/>
-        <topic label="Explanation of Syntax" href="html/poky-ref-manual/usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax.html"/>
-      </topic>
-      <topic label="Enabling Commercially Licensed Recipes" href="html/poky-ref-manual/enabling-commercially-licensed-recipes.html">
-        <topic label="License Flag Matching" href="html/poky-ref-manual/license-flag-matching.html"/>
-        <topic label="Other Variables Related to Commercial Licenses" href="html/poky-ref-manual/other-variables-related-to-commercial-licenses.html"/>
-      </topic>
-    </topic>
-  </topic>
-  <topic label="Migrating to a Newer Yocto Project Release" href="html/poky-ref-manual/migration.html">
-    <topic label="Moving to the Yocto Project 1.3 Release" href="html/poky-ref-manual/moving-to-the-yocto-project-1.3-release.html">
-      <topic label="Local Configuration" href="html/poky-ref-manual/1.3-local-configuration.html">
-        <topic label="SSTATE_MIRRORS" href="html/poky-ref-manual/migration-1.3-sstate-mirrors.html"/>
-        <topic label="bblayers.conf" href="html/poky-ref-manual/migration-1.3-bblayers-conf.html"/>
-      </topic>
-      <topic label="Recipes" href="html/poky-ref-manual/1.3-recipes.html">
-        <topic label="Python Function Whitespace" href="html/poky-ref-manual/migration-1.3-python-function-whitespace.html"/>
-        <topic label="proto= in SRC_URI" href="html/poky-ref-manual/migration-1.3-proto=-in-src-uri.html"/>
-        <topic label="nativesdk" href="html/poky-ref-manual/migration-1.3-nativesdk.html"/>
-        <topic label="Task Recipes" href="html/poky-ref-manual/migration-1.3-task-recipes.html"/>
-        <topic label="IMAGE_FEATURES" href="html/poky-ref-manual/migration-1.3-image-features.html"/>
-        <topic label="Removed Recipes" href="html/poky-ref-manual/migration-1.3-removed-recipes.html"/>
-      </topic>
-    </topic>
-  </topic>
-  <topic label="Source Directory Structure" href="html/poky-ref-manual/ref-structure.html">
-    <topic label="Top level core components" href="html/poky-ref-manual/structure-core.html">
-      <topic label="bitbake/" href="html/poky-ref-manual/structure-core-bitbake.html"/>
-      <topic label="build/" href="html/poky-ref-manual/structure-core-build.html"/>
-      <topic label="documentation" href="html/poky-ref-manual/handbook.html"/>
-      <topic label="meta/" href="html/poky-ref-manual/structure-core-meta.html"/>
-      <topic label="meta-yocto/" href="html/poky-ref-manual/structure-core-meta-yocto.html"/>
-      <topic label="meta-yocto-bsp/" href="html/poky-ref-manual/structure-core-meta-yocto-bsp.html"/>
-      <topic label="meta-hob/" href="html/poky-ref-manual/structure-meta-hob.html"/>
-      <topic label="meta-skeleton/" href="html/poky-ref-manual/structure-meta-skeleton.html"/>
-      <topic label="scripts/" href="html/poky-ref-manual/structure-core-scripts.html"/>
-      <topic label="oe-init-build-env" href="html/poky-ref-manual/structure-core-script.html"/>
-      <topic label="LICENSE, README, and README.hardware" href="html/poky-ref-manual/structure-basic-top-level.html"/>
-    </topic>
-    <topic label="The Build Directory - build/" href="html/poky-ref-manual/structure-build.html">
-      <topic label="build/pseudodone" href="html/poky-ref-manual/structure-build-pseudodone.html"/>
-      <topic label="build/conf/local.conf" href="html/poky-ref-manual/structure-build-conf-local.conf.html"/>
-      <topic label="build/conf/bblayers.conf" href="html/poky-ref-manual/structure-build-conf-bblayers.conf.html"/>
-      <topic label="build/conf/sanity_info" href="html/poky-ref-manual/structure-build-conf-sanity_info.html"/>
-      <topic label="build/downloads/" href="html/poky-ref-manual/structure-build-downloads.html"/>
-      <topic label="build/sstate-cache/" href="html/poky-ref-manual/structure-build-sstate-cache.html"/>
-      <topic label="build/tmp/" href="html/poky-ref-manual/structure-build-tmp.html"/>
-      <topic label="build/tmp/buildstats/" href="html/poky-ref-manual/structure-build-tmp-buildstats.html"/>
-      <topic label="build/tmp/cache/" href="html/poky-ref-manual/structure-build-tmp-cache.html"/>
-      <topic label="build/tmp/deploy/" href="html/poky-ref-manual/structure-build-tmp-deploy.html"/>
-      <topic label="build/tmp/deploy/deb/" href="html/poky-ref-manual/structure-build-tmp-deploy-deb.html"/>
-      <topic label="build/tmp/deploy/rpm/" href="html/poky-ref-manual/structure-build-tmp-deploy-rpm.html"/>
-      <topic label="build/tmp/deploy/licenses/" href="html/poky-ref-manual/structure-build-tmp-deploy-licenses.html"/>
-      <topic label="build/tmp/deploy/images/" href="html/poky-ref-manual/structure-build-tmp-deploy-images.html"/>
-      <topic label="build/tmp/deploy/ipk/" href="html/poky-ref-manual/structure-build-tmp-deploy-ipk.html"/>
-      <topic label="build/tmp/sysroots/" href="html/poky-ref-manual/structure-build-tmp-sysroots.html"/>
-      <topic label="build/tmp/stamps/" href="html/poky-ref-manual/structure-build-tmp-stamps.html"/>
-      <topic label="build/tmp/log/" href="html/poky-ref-manual/structure-build-tmp-log.html"/>
-      <topic label="build/tmp/pkgdata/" href="html/poky-ref-manual/structure-build-tmp-pkgdata.html"/>
-      <topic label="build/tmp/work/" href="html/poky-ref-manual/structure-build-tmp-work.html"/>
-    </topic>
-    <topic label="The Metadata - meta/" href="html/poky-ref-manual/structure-meta.html">
-      <topic label="meta/classes/" href="html/poky-ref-manual/structure-meta-classes.html"/>
-      <topic label="meta/conf/" href="html/poky-ref-manual/structure-meta-conf.html"/>
-      <topic label="meta/conf/machine/" href="html/poky-ref-manual/structure-meta-conf-machine.html"/>
-      <topic label="meta/conf/distro/" href="html/poky-ref-manual/structure-meta-conf-distro.html"/>
-      <topic label="meta/recipes-bsp/" href="html/poky-ref-manual/structure-meta-recipes-bsp.html"/>
-      <topic label="meta/recipes-connectivity/" href="html/poky-ref-manual/structure-meta-recipes-connectivity.html"/>
-      <topic label="meta/recipes-core/" href="html/poky-ref-manual/structure-meta-recipes-core.html"/>
-      <topic label="meta/recipes-devtools/" href="html/poky-ref-manual/structure-meta-recipes-devtools.html"/>
-      <topic label="meta/recipes-extended/" href="html/poky-ref-manual/structure-meta-recipes-extended.html"/>
-      <topic label="meta/recipes-gnome/" href="html/poky-ref-manual/structure-meta-recipes-gnome.html"/>
-      <topic label="meta/recipes-graphics/" href="html/poky-ref-manual/structure-meta-recipes-graphics.html"/>
-      <topic label="meta/recipes-kernel/" href="html/poky-ref-manual/structure-meta-recipes-kernel.html"/>
-      <topic label="meta/recipes-multimedia/" href="html/poky-ref-manual/structure-meta-recipes-multimedia.html"/>
-      <topic label="meta/recipes-qt/" href="html/poky-ref-manual/structure-meta-recipes-qt.html"/>
-      <topic label="meta/recipes-rt/" href="html/poky-ref-manual/structure-meta-recipes-rt.html"/>
-      <topic label="meta/recipes-sato/" href="html/poky-ref-manual/structure-meta-recipes-sato.html"/>
-      <topic label="meta/recipes-support/" href="html/poky-ref-manual/structure-meta-recipes-support.html"/>
-      <topic label="meta/site/" href="html/poky-ref-manual/structure-meta-site.html"/>
-      <topic label="meta/recipes.txt" href="html/poky-ref-manual/structure-meta-recipes-txt.html"/>
-    </topic>
-  </topic>
-  <topic label="BitBake" href="html/poky-ref-manual/ref-bitbake.html">
-    <topic label="Parsing" href="html/poky-ref-manual/ref-bitbake-parsing.html"/>
-    <topic label="Preferences and Providers" href="html/poky-ref-manual/ref-bitbake-providers.html"/>
-    <topic label="Dependencies" href="html/poky-ref-manual/ref-bitbake-dependencies.html"/>
-    <topic label="The Task List" href="html/poky-ref-manual/ref-bitbake-tasklist.html"/>
-    <topic label="Running a Task" href="html/poky-ref-manual/ref-bitbake-runtask.html"/>
-    <topic label="BitBake Command Line" href="html/poky-ref-manual/ref-bitbake-commandline.html"/>
-    <topic label="Fetchers" href="html/poky-ref-manual/ref-bitbake-fetchers.html"/>
-  </topic>
-  <topic label="Classes" href="html/poky-ref-manual/ref-classes.html">
-    <topic label="The base class - base.bbclass" href="html/poky-ref-manual/ref-classes-base.html"/>
-    <topic label="Autotooled Packages - autotools.bbclass" href="html/poky-ref-manual/ref-classes-autotools.html"/>
-    <topic label="Alternatives - update-alternatives.bbclass" href="html/poky-ref-manual/ref-classes-update-alternatives.html"/>
-    <topic label="Initscripts - update-rc.d.bbclass" href="html/poky-ref-manual/ref-classes-update-rc.d.html"/>
-    <topic label="Binary config scripts - binconfig.bbclass" href="html/poky-ref-manual/ref-classes-binconfig.html"/>
-    <topic label="Debian renaming - debian.bbclass" href="html/poky-ref-manual/ref-classes-debian.html"/>
-    <topic label="Pkg-config - pkgconfig.bbclass" href="html/poky-ref-manual/ref-classes-pkgconfig.html"/>
-    <topic label="Distribution of sources - src_distribute_local.bbclass" href="html/poky-ref-manual/ref-classes-src-distribute.html"/>
-    <topic label="Perl modules - cpan.bbclass" href="html/poky-ref-manual/ref-classes-perl.html"/>
-    <topic label="Python extensions - distutils.bbclass" href="html/poky-ref-manual/ref-classes-distutils.html"/>
-    <topic label="Developer Shell - devshell.bbclass" href="html/poky-ref-manual/ref-classes-devshell.html"/>
-    <topic label="Package Groups - packagegroup.bbclass" href="html/poky-ref-manual/ref-classes-packagegroup.html"/>
-    <topic label="Packaging - package*.bbclass" href="html/poky-ref-manual/ref-classes-package.html"/>
-    <topic label="Building kernels - kernel.bbclass" href="html/poky-ref-manual/ref-classes-kernel.html"/>
-    <topic label="Creating images - image.bbclass and rootfs*.bbclass" href="html/poky-ref-manual/ref-classes-image.html"/>
-    <topic label="Host System sanity checks - sanity.bbclass" href="html/poky-ref-manual/ref-classes-sanity.html"/>
-    <topic label="Generated output quality assurance checks - insane.bbclass" href="html/poky-ref-manual/ref-classes-insane.html"/>
-    <topic label="Autotools configuration data cache - siteinfo.bbclass" href="html/poky-ref-manual/ref-classes-siteinfo.html"/>
-    <topic label="Adding Users - useradd.bbclass" href="html/poky-ref-manual/ref-classes-useradd.html"/>
-    <topic label="Using External Source - externalsrc.bbclass" href="html/poky-ref-manual/ref-classes-externalsrc.html"/>
-    <topic label="Other Classes" href="html/poky-ref-manual/ref-classes-others.html"/>
-  </topic>
-  <topic label="Images" href="html/poky-ref-manual/ref-images.html"/>
-  <topic label="Reference: Features" href="html/poky-ref-manual/ref-features.html">
-    <topic label="Distro" href="html/poky-ref-manual/ref-features-distro.html"/>
-    <topic label="Machine" href="html/poky-ref-manual/ref-features-machine.html"/>
-    <topic label="Images" href="html/poky-ref-manual/ref-features-image.html"/>
-    <topic label="Feature Backfilling" href="html/poky-ref-manual/ref-features-backfill.html"/>
-  </topic>
-  <topic label="Variables Glossary" href="html/poky-ref-manual/ref-variables-glos.html">
-    <topic label="Glossary" href="html/poky-ref-manual/ref-variables-glos.html#ref-variables-glossary"/>
-  </topic>
-  <topic label="Variable Context" href="html/poky-ref-manual/ref-varlocality.html">
-    <topic label="Configuration" href="html/poky-ref-manual/ref-varlocality-configuration.html">
-      <topic label="Distribution (Distro)" href="html/poky-ref-manual/ref-varlocality-config-distro.html"/>
-      <topic label="Machine" href="html/poky-ref-manual/ref-varlocality-config-machine.html"/>
-      <topic label="Local" href="html/poky-ref-manual/ref-varlocality-config-local.html"/>
-    </topic>
-    <topic label="Recipes" href="html/poky-ref-manual/ref-varlocality-recipes.html">
-      <topic label="Required" href="html/poky-ref-manual/ref-varlocality-recipe-required.html"/>
-      <topic label="Dependencies" href="html/poky-ref-manual/ref-varlocality-recipe-dependencies.html"/>
-      <topic label="Paths" href="html/poky-ref-manual/ref-varlocality-recipe-paths.html"/>
-      <topic label="Extra Build Information" href="html/poky-ref-manual/ref-varlocality-recipe-build.html"/>
-    </topic>
-  </topic>
-  <topic label="FAQ" href="html/poky-ref-manual/faq.html"/>
-  <topic label="Contributing to the Yocto Project" href="html/poky-ref-manual/resources.html">
-    <topic label="Introduction" href="html/poky-ref-manual/resources-intro.html"/>
-    <topic label="Tracking Bugs" href="html/poky-ref-manual/resources-bugtracker.html"/>
-    <topic label="Mailing lists" href="html/poky-ref-manual/resources-mailinglist.html"/>
-    <topic label="Internet Relay Chat (IRC)" href="html/poky-ref-manual/resources-irc.html"/>
-    <topic label="Links" href="html/poky-ref-manual/resources-links.html"/>
-    <topic label="Contributions" href="html/poky-ref-manual/resources-contributions.html"/>
-  </topic>
-</toc>
-- 
1.7.11.7


