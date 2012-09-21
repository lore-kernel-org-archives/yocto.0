Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25F43E01469
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:44:19 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id CFDF540037;
	Fri, 21 Sep 2012 16:14:21 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:44:13 +0200
Message-Id: <189774938701dd53ab4e39c670fc4f29efa05b4a.1348237278.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <08aec6333c442016c5274f0dff8b9529dd10fbec.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
	<a0c94f0bfa5700e9382e1e428882072194cf0f8b.1348237278.git.timo.mueller@bmw-carit.de>
	<e54e964c8a543085f2dda9c9efb1a85dbfccbe36.1348237278.git.timo.mueller@bmw-carit.de>
	<ebdad753255f5205130a2ab8ff3d0d326c33ac53.1348237278.git.timo.mueller@bmw-carit.de>
	<020c6213dadc157b2d47f4d99db197c3ded6e90b.1348237278.git.timo.mueller@bmw-carit.de>
	<33b736ffaca72740bedf1b1415b11a8f653fa5ba.1348237278.git.timo.mueller@bmw-carit.de>
	<08c85c21ce236477ddc53176fa1a961881aba94c.1348237278.git.timo.mueller@bmw-carit.de>
	<fe14d23342130dc08b2ac62a6c5a85e631708a60.1348237278.git.timo.mueller@bmw-carit.de>
	<03c0d71b47602996c71b78504e5d82a3631ded7c.1348237278.git.timo.mueller@bmw-carit.de>
	<08aec6333c442016c5274f0dff8b9529dd10fbec.1348237278.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv2 10/12] plugins/sdk.doc.user: Added poky reference manual
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
X-List-Received-Date: Fri, 21 Sep 2012 14:44:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Timo Mueller <timo.mueller@bmw-carit.de>

The Yocto Project Reference Manual is integrated into the eclipse
help. This includes the generated html files as well as a table of
contents that is needed by the eclipse help center to allow the user
to navigate the contents.

Source: git://git.yoctoproject.org/yocto-docs/
---
 plugins/org.yocto.sdk.doc.user/about.html          |   22 +
 plugins/org.yocto.sdk.doc.user/build.properties    |    6 +-
 .../html/poky-ref-manual/build-overview.html       |   61 +
 .../building-an-image-using-gpl-components.html    |   23 +
 .../html/poky-ref-manual/checksums.html            |  164 ++
 .../html/poky-ref-manual/debugging.html            |   43 +
 .../enabling-commercially-licensed-recipes.html    |   85 +
 .../html/poky-ref-manual/faq.html                  |  821 +++++++++
 .../html/poky-ref-manual/figures/poky-title.png    |  Bin 0 -> 11592 bytes
 .../future-development-and-limitations.html        |   33 +
 .../html/poky-ref-manual/handbook.html             |   25 +
 .../html/poky-ref-manual/index.html                |  301 +++
 .../html/poky-ref-manual/intro-getit-dev.html      |   26 +
 .../html/poky-ref-manual/intro-getit.html          |   35 +
 .../html/poky-ref-manual/intro-manualoverview.html |   73 +
 .../html/poky-ref-manual/intro-requirements.html   |   21 +
 .../html/poky-ref-manual/intro-welcome.html        |   30 +
 .../html/poky-ref-manual/intro.html                |   26 +
 .../poky-ref-manual/invalidating-shared-state.html |   53 +
 .../poky-ref-manual/license-flag-matching.html     |   91 +
 .../html/poky-ref-manual/licenses.html             |   22 +
 .../html/poky-ref-manual/logging-with-bash.html    |   47 +
 .../html/poky-ref-manual/logging-with-python.html  |   45 +
 ...r-variables-related-to-commercial-licenses.html |   60 +
 .../html/poky-ref-manual/overall-architecture.html |   31 +
 .../poky-ref-manual/recipe-logging-mechanisms.html |   41 +
 .../poky-ref-manual/ref-bitbake-commandline.html   |   79 +
 .../poky-ref-manual/ref-bitbake-dependencies.html  |   34 +
 .../html/poky-ref-manual/ref-bitbake-fetchers.html |   43 +
 .../html/poky-ref-manual/ref-bitbake-parsing.html  |   93 +
 .../poky-ref-manual/ref-bitbake-providers.html     |   63 +
 .../html/poky-ref-manual/ref-bitbake-runtask.html  |   86 +
 .../html/poky-ref-manual/ref-bitbake-tasklist.html |   54 +
 .../html/poky-ref-manual/ref-bitbake.html          |   48 +
 .../poky-ref-manual/ref-classes-autotools.html     |   52 +
 .../html/poky-ref-manual/ref-classes-base.html     |   28 +
 .../poky-ref-manual/ref-classes-binconfig.html     |   30 +
 .../html/poky-ref-manual/ref-classes-debian.html   |   22 +
 .../html/poky-ref-manual/ref-classes-devshell.html |   24 +
 .../poky-ref-manual/ref-classes-distutils.html     |   31 +
 .../poky-ref-manual/ref-classes-externalsrc.html   |   72 +
 .../html/poky-ref-manual/ref-classes-image.html    |   31 +
 .../html/poky-ref-manual/ref-classes-insane.html   |  105 ++
 .../html/poky-ref-manual/ref-classes-kernel.html   |   36 +
 .../html/poky-ref-manual/ref-classes-others.html   |   24 +
 .../html/poky-ref-manual/ref-classes-package.html  |   73 +
 .../poky-ref-manual/ref-classes-packagegroup.html  |   33 +
 .../html/poky-ref-manual/ref-classes-perl.html     |   31 +
 .../poky-ref-manual/ref-classes-pkgconfig.html     |   27 +
 .../html/poky-ref-manual/ref-classes-sanity.html   |   25 +
 .../html/poky-ref-manual/ref-classes-siteinfo.html |   39 +
 .../ref-classes-src-distribute.html                |   43 +
 .../ref-classes-update-alternatives.html           |   48 +
 .../poky-ref-manual/ref-classes-update-rc.d.html   |   28 +
 .../html/poky-ref-manual/ref-classes-useradd.html  |   28 +
 .../html/poky-ref-manual/ref-classes.html          |   61 +
 .../html/poky-ref-manual/ref-features-distro.html  |   59 +
 .../html/poky-ref-manual/ref-features-image.html   |   70 +
 .../html/poky-ref-manual/ref-features-machine.html |   54 +
 .../html/poky-ref-manual/ref-features.html         |   41 +
 .../html/poky-ref-manual/ref-images.html           |  137 ++
 .../html/poky-ref-manual/ref-structure.html        |   90 +
 .../html/poky-ref-manual/ref-variables-glos.html   | 1903 ++++++++++++++++++++
 .../ref-varlocality-config-distro.html             |   40 +
 .../ref-varlocality-config-local.html              |   42 +
 .../ref-varlocality-config-machine.html            |   41 +
 .../ref-varlocality-configuration.html             |   20 +
 .../ref-varlocality-recipe-build.html              |   35 +
 .../ref-varlocality-recipe-dependencies.html       |   33 +
 .../ref-varlocality-recipe-paths.html              |   29 +
 .../ref-varlocality-recipe-required.html           |   37 +
 .../poky-ref-manual/ref-varlocality-recipes.html   |   20 +
 .../html/poky-ref-manual/ref-varlocality.html      |   41 +
 .../html/poky-ref-manual/resources-bugtracker.html |   20 +
 .../poky-ref-manual/resources-contributions.html   |   23 +
 .../html/poky-ref-manual/resources-intro.html      |   23 +
 .../html/poky-ref-manual/resources-irc.html        |   25 +
 .../html/poky-ref-manual/resources-links.html      |   42 +
 .../poky-ref-manual/resources-mailinglist.html     |   39 +
 .../html/poky-ref-manual/resources.html            |   27 +
 .../html/poky-ref-manual/shared-state-cache.html   |   60 +
 .../html/poky-ref-manual/shared-state.html         |  121 ++
 .../poky-ref-manual/structure-basic-top-level.html |   20 +
 .../structure-build-conf-bblayers.conf.html        |   23 +
 .../structure-build-conf-local.conf.html           |   33 +
 .../structure-build-conf-sanity_info.html          |   20 +
 .../poky-ref-manual/structure-build-downloads.html |   23 +
 .../structure-build-pseudodone.html                |   21 +
 .../structure-build-sstate-cache.html              |   23 +
 .../structure-build-tmp-buildstats.html            |   20 +
 .../poky-ref-manual/structure-build-tmp-cache.html |   22 +
 .../structure-build-tmp-deploy-deb.html            |   22 +
 .../structure-build-tmp-deploy-images.html         |   44 +
 .../structure-build-tmp-deploy-ipk.html            |   20 +
 .../structure-build-tmp-deploy-licenses.html       |   23 +
 .../structure-build-tmp-deploy-rpm.html            |   22 +
 .../structure-build-tmp-deploy.html                |   20 +
 .../poky-ref-manual/structure-build-tmp-log.html   |   24 +
 .../structure-build-tmp-pkgdata.html               |   21 +
 .../structure-build-tmp-stamps.html                |   24 +
 .../structure-build-tmp-sysroots.html              |   24 +
 .../poky-ref-manual/structure-build-tmp-work.html  |   52 +
 .../html/poky-ref-manual/structure-build-tmp.html  |   26 +
 .../html/poky-ref-manual/structure-build.html      |   15 +
 .../poky-ref-manual/structure-core-bitbake.html    |   40 +
 .../html/poky-ref-manual/structure-core-build.html |   33 +
 .../structure-core-meta-demoapps.html              |   21 +
 .../poky-ref-manual/structure-core-meta-rt.html    |   20 +
 .../html/poky-ref-manual/structure-core-meta.html  |   22 +
 .../poky-ref-manual/structure-core-script.html     |   41 +
 .../poky-ref-manual/structure-core-scripts.html    |   28 +
 .../html/poky-ref-manual/structure-core.html       |   14 +
 .../poky-ref-manual/structure-meta-classes.html    |   30 +
 .../structure-meta-conf-distro.html                |   25 +
 .../structure-meta-conf-machine.html               |   25 +
 .../html/poky-ref-manual/structure-meta-conf.html  |   27 +
 .../structure-meta-recipes-bsp.html                |   21 +
 .../structure-meta-recipes-connectivity.html       |   20 +
 .../structure-meta-recipes-core.html               |   21 +
 .../structure-meta-recipes-devtools.html           |   21 +
 .../structure-meta-recipes-extended.html           |   23 +
 .../structure-meta-recipes-gnome.html              |   20 +
 .../structure-meta-recipes-graphics.html           |   20 +
 .../structure-meta-recipes-kernel.html             |   21 +
 .../structure-meta-recipes-multimedia.html         |   20 +
 .../poky-ref-manual/structure-meta-recipes-qt.html |   20 +
 .../poky-ref-manual/structure-meta-recipes-rt.html |   21 +
 .../structure-meta-recipes-sato.html               |   21 +
 .../structure-meta-recipes-support.html            |   21 +
 .../structure-meta-recipes-txt.html                |   20 +
 .../html/poky-ref-manual/structure-meta-site.html  |   23 +
 .../poky-ref-manual/structure-meta-skeleton.html   |   20 +
 .../html/poky-ref-manual/structure-meta.html       |   21 +
 .../html/poky-ref-manual/support.html              |   34 +
 .../html/poky-ref-manual/technical-details.html    |   50 +
 .../html/poky-ref-manual/tips-and-tricks.html      |   22 +
 .../html/poky-ref-manual/using-x32-right-now.html  |   69 +
 ...oky-LIC_FILES_CHKSUM-explanation-of-syntax.html |   58 +
 .../html/poky-ref-manual/usingpoky-build.html      |   24 +
 .../usingpoky-components-bitbake.html              |   66 +
 .../usingpoky-components-classes.html              |   24 +
 .../usingpoky-components-configuration.html        |   24 +
 .../usingpoky-components-metadata.html             |   29 +
 .../html/poky-ref-manual/usingpoky-components.html |   52 +
 .../usingpoky-configuring-LIC_FILES_CHKSUM.html    |   23 +
 .../usingpoky-debugging-bitbake.html               |   30 +
 .../usingpoky-debugging-buildfile.html             |   24 +
 .../usingpoky-debugging-dependencies.html          |   26 +
 .../usingpoky-debugging-others.html                |   34 +
 .../usingpoky-debugging-taskfailures.html          |   27 +
 .../usingpoky-debugging-taskrunning.html           |   68 +
 .../usingpoky-debugging-variables.html             |   22 +
 .../html/poky-ref-manual/usingpoky-debugging.html  |   26 +
 .../html/poky-ref-manual/usingpoky-install.html    |   28 +
 .../usingpoky-specifying-LIC_FILES_CHKSUM.html     |   57 +
 .../html/poky-ref-manual/usingpoky.html            |   43 +
 .../html/poky-ref-manual/x32.html                  |   35 +
 plugins/org.yocto.sdk.doc.user/plugin.xml          |    4 +
 .../org.yocto.sdk.doc.user/poky-ref-manual-toc.xml |  182 ++
 plugins/org.yocto.sdk.doc.user/toc.xml             |    3 +
 160 files changed, 8952 insertions(+), 2 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/build-overview.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/building-an-image-using-gpl-components.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/checksums.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/debugging.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/enabling-commercially-licensed-recipes.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/faq.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/figures/poky-title.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/future-development-and-limitations.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/handbook.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/index.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-getit-dev.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-getit.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-manualoverview.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-requirements.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-welcome.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/invalidating-shared-state.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/license-flag-matching.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/licenses.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/logging-with-bash.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/logging-with-python.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/other-variables-related-to-commercial-licenses.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/overall-architecture.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/recipe-logging-mechanisms.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-commandline.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-dependencies.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-fetchers.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-parsing.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-providers.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-runtask.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-tasklist.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-autotools.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-base.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-binconfig.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-debian.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-devshell.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-distutils.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-externalsrc.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-image.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-insane.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-kernel.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-others.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-package.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-packagegroup.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-perl.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-pkgconfig.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-sanity.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-siteinfo.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-src-distribute.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-update-alternatives.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-update-rc.d.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-useradd.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features-distro.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features-image.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features-machine.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-images.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-structure.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-variables-glos.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-config-distro.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-config-local.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-config-machine.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-configuration.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-build.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-dependencies.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-paths.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-required.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipes.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-bugtracker.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-contributions.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-intro.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-irc.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-links.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-mailinglist.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/shared-state-cache.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/shared-state.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-basic-top-level.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-conf-bblayers.conf.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-conf-local.conf.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-conf-sanity_info.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-downloads.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-pseudodone.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-sstate-cache.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-buildstats.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-cache.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-deb.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-images.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-ipk.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-licenses.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-rpm.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-log.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-pkgdata.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-stamps.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-sysroots.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-work.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-bitbake.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-build.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-meta-demoapps.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-meta-rt.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-meta.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-script.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-scripts.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-classes.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-conf-distro.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-conf-machine.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-conf.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-bsp.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-connectivity.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-core.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-devtools.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-extended.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-gnome.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-graphics.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-kernel.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-multimedia.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-qt.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-rt.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-sato.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-support.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-txt.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-site.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-skeleton.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/support.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/technical-details.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/tips-and-tricks.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/using-x32-right-now.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-build.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-bitbake.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-classes.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-configuration.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-metadata.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-configuring-LIC_FILES_CHKSUM.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-bitbake.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-buildfile.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-dependencies.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-others.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-taskfailures.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-taskrunning.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-variables.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-install.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-specifying-LIC_FILES_CHKSUM.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/x32.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/poky-ref-manual-toc.xml

diff --git a/plugins/org.yocto.sdk.doc.user/about.html b/plugins/org.yocto.sdk.doc.user/about.html
index b0e3dac..a41e016 100644
--- a/plugins/org.yocto.sdk.doc.user/about.html
+++ b/plugins/org.yocto.sdk.doc.user/about.html
@@ -98,6 +98,28 @@
 			</a>
 		<br />
 			<em>Commit:</em> abc32d85a7f241766d1fcc52a251249f2172ea89
+		<br />
+		<br />
+		<strong>
+			The Yocto Project Reference Manual:
+		</strong>
+		<br />
+		<br />
+			This manual is the complete reference guide to the Poky component.
+			It also contains a chapter on Board Support Package (BSP) development.
+		<br />
+		<br />
+			<em>License:</em>
+			<a href="http://creativecommons.org/licenses/by-sa/2.0/uk/legalcode">
+				http://creativecommons.org/licenses/by-sa/2.0/uk/legalcode
+			</a>
+		<br />
+			<em>Source Code Repository:</em>
+			<a href="git://git.yoctoproject.org/yocto-docs">
+				git://git.yoctoproject.org/yocto-docs
+			</a>
+		<br />
+			<em>Commit:</em> abc32d85a7f241766d1fcc52a251249f2172ea89
 	</p>
 </body>
 </html>
diff --git a/plugins/org.yocto.sdk.doc.user/build.properties b/plugins/org.yocto.sdk.doc.user/build.properties
index 5f29d87..3350a45 100644
--- a/plugins/org.yocto.sdk.doc.user/build.properties
+++ b/plugins/org.yocto.sdk.doc.user/build.properties
@@ -7,10 +7,12 @@ bin.includes = plugin.xml,\
                about.html,\
                adt-manual-toc.xml,\
                OSGI-INF/,\
-               dev-manual-toc.xml
+               dev-manual-toc.xml,\
+               poky-ref-manual-toc.xml
 src.includes = toc.xml,\
                html/,\
                yocto-project-qs-toc.xml,\
                about.html,\
                adt-manual-toc.xml,\
-               dev-manual-toc.xml
+               dev-manual-toc.xml,\
+               poky-ref-manual-toc.xml
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/build-overview.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/build-overview.html
new file mode 100644
index 0000000..f61893f
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/build-overview.html
@@ -0,0 +1,61 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.1.1. Build Overview</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-build.html" title="2.1. Running a Build">
+<link rel="prev" href="usingpoky-build.html" title="2.1. Running a Build">
+<link rel="next" href="building-an-image-using-gpl-components.html" title="2.1.2. Building an Image Using GPL Components">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.1.1. Build Overview">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="build-overview"></a>2.1.1. Build Overview</h3></div></div></div>
+<p>
+            The first thing you need to do is set up the OpenEmbedded build environment by sourcing
+            the environment setup script as follows:
+            </p>
+<pre class="literallayout">
+     $ source oe-init-build-env [build_dir]
+            </pre>
+<p>
+        </p>
+<p>
+            The <code class="filename">build_dir</code> is optional and specifies the directory the 
+            OpenEmbedded build system uses for the build - 
+            the <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>.
+            If you do not specify a build directory it defaults to <code class="filename">build</code>
+            in your current working directory.
+            A common practice is to use a different build directory for different targets. 
+            For example, <code class="filename">~/build/x86</code> for a <code class="filename">qemux86</code>
+            target, and <code class="filename">~/build/arm</code> for a <code class="filename">qemuarm</code> target.
+            See <a class="link" href="structure-core-script.html" title="4.1.9. oe-init-build-env">oe-init-build-env</a>
+            for more information on this script.
+        </p>
+<p>
+            Once the build environment is set up, you can build a target using:
+            </p>
+<pre class="literallayout">
+     $ bitbake &lt;target&gt;
+            </pre>
+<p>
+        </p>
+<p>
+            The <code class="filename">target</code> is the name of the recipe you want to build. 
+            Common targets are the images in <code class="filename">meta/recipes-core/images</code>,
+            <code class="filename">/meta/recipes-sato/images</code>, etc. all found in the 
+            <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.
+            Or, the target can be the name of a recipe for a specific piece of software such as 
+            <span class="application">busybox</span>. 
+            For more details about the images the OpenEmbedded build system supports, see the 
+            "<a class="link" href="ref-images.html" title="Chapter 7. Images">Images</a>" chapter.
+        </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+            Building an image without GNU Public License Version 3 (GPLv3) components is 
+            only supported for minimal and base images.
+            See the "<a class="link" href="ref-images.html" title="Chapter 7. Images">Images</a>" chapter for more information.
+        </div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/building-an-image-using-gpl-components.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/building-an-image-using-gpl-components.html
new file mode 100644
index 0000000..237b8dd
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/building-an-image-using-gpl-components.html
@@ -0,0 +1,23 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.1.2. Building an Image Using GPL Components</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-build.html" title="2.1. Running a Build">
+<link rel="prev" href="build-overview.html" title="2.1.1. Build Overview">
+<link rel="next" href="usingpoky-install.html" title="2.2. Installing and Using the Result">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.1.2. Building an Image Using GPL Components">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="building-an-image-using-gpl-components"></a>2.1.2. Building an Image Using GPL Components</h3></div></div></div>
+<p>
+            When building an image using GPL components, you need to maintain your original 
+            settings and not switch back and forth applying different versions of the GNU
+            Public License.  
+            If you rebuild using different versions of GPL, dependency errors might occur
+            due to some components not being rebuilt.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/checksums.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/checksums.html
new file mode 100644
index 0000000..1d2b6b6
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/checksums.html
@@ -0,0 +1,164 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.2.2. Checksums (Signatures)</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="shared-state-cache.html" title="3.2. Shared State Cache">
+<link rel="prev" href="overall-architecture.html" title="3.2.1. Overall Architecture">
+<link rel="next" href="shared-state.html" title="3.2.3. Shared State">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2.2. Checksums (Signatures)">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="checksums"></a>3.2.2. Checksums (Signatures)</h3></div></div></div>
+<p>
+            The shared state code uses a checksum, which is a unique signature of a task's 
+            inputs, to determine if a task needs to be run again. 
+            Because it is a change in a task's inputs that triggers a rerun, the process
+            needs to detect all the inputs to a given task. 
+            For shell tasks, this turns out to be fairly easy because
+            the build process generates a "run" shell script for each task and 
+            it is possible to create a checksum that gives you a good idea of when 
+            the task's data changes.
+        </p>
+<p>
+            To complicate the problem, there are things that should not be included in 
+            the checksum. 
+            First, there is the actual specific build path of a given task - 
+            the <code class="filename">WORKDIR</code>. 
+            It does not matter if the working directory changes because it should not 
+            affect the output for target packages.
+            Also, the build process has the objective of making native/cross packages relocatable. 
+            The checksum therefore needs to exclude <code class="filename">WORKDIR</code>.
+            The simplistic approach for excluding the working directory is to set 
+            <code class="filename">WORKDIR</code> to some fixed value and create the checksum
+            for the "run" script. 
+        </p>
+<p>
+            Another problem results from the "run" scripts containing functions that 
+            might or might not get called.  
+            The incremental build solution contains code that figures out dependencies 
+            between shell functions.
+            This code is used to prune the "run" scripts down to the minimum set, 
+            thereby alleviating this problem and making the "run" scripts much more 
+            readable as a bonus.
+        </p>
+<p>
+            So far we have solutions for shell scripts.
+            What about python tasks?
+            The same approach applies even though these tasks are more difficult.
+            The process needs to figure out what variables a python function accesses 
+            and what functions it calls.
+            Again, the incremental build solution contains code that first figures out 
+            the variable and function dependencies, and then creates a checksum for the data 
+            used as the input to the task.
+        </p>
+<p>
+            Like the <code class="filename">WORKDIR</code> case, situations exist where dependencies 
+            should be ignored.
+            For these cases, you can instruct the build process to ignore a dependency
+            by using a line like the following:
+            </p>
+<pre class="literallayout">
+     PACKAGE_ARCHS[vardepsexclude] = "MACHINE"
+            </pre>
+<p>
+            This example ensures that the <code class="filename">PACKAGE_ARCHS</code> variable does not 
+            depend on the value of <code class="filename">MACHINE</code>, even if it does reference it.
+        </p>
+<p>
+            Equally, there are cases where we need to add dependencies BitBake is not able to find.
+            You can accomplish this by using a line like the following:
+            </p>
+<pre class="literallayout">
+      PACKAGE_ARCHS[vardeps] = "MACHINE"
+            </pre>
+<p>
+            This example explicitly adds the <code class="filename">MACHINE</code> variable as a 
+            dependency for <code class="filename">PACKAGE_ARCHS</code>.
+        </p>
+<p> 
+            Consider a case with inline python, for example, where BitBake is not
+            able to figure out dependencies. 
+            When running in debug mode (i.e. using <code class="filename">-DDD</code>), BitBake 
+            produces output when it discovers something for which it cannot figure out
+            dependencies. 
+            The Yocto Project team has currently not managed to cover those dependencies 
+            in detail and is aware of the need to fix this situation.
+        </p>
+<p>
+            Thus far, this section has limited discussion to the direct inputs into a task.
+            Information based on direct inputs is referred to as the "basehash" in the
+            code. 
+            However, there is still the question of a task's indirect inputs - the
+            things that were already built and present in the build directory. 
+            The checksum (or signature) for a particular task needs to add the hashes 
+            of all the tasks on which the particular task depends. 
+            Choosing which dependencies to add is a policy decision. 
+            However, the effect is to generate a master checksum that combines the basehash 
+            and the hashes of the task's dependencies.
+        </p>
+<p>
+            At the code level, there are a variety of ways both the basehash and the
+            dependent task hashes can be influenced. 
+            Within the BitBake configuration file, we can give BitBake some extra information 
+            to help it construct the basehash.
+            The following statements effectively result in a list of global variable
+            dependency excludes - variables never included in any checksum:
+            </p>
+<pre class="literallayout">
+  BB_HASHBASE_WHITELIST ?= "TMPDIR FILE PATH PWD BB_TASKHASH BBPATH"
+  BB_HASHBASE_WHITELIST += "DL_DIR SSTATE_DIR THISDIR FILESEXTRAPATHS"
+  BB_HASHBASE_WHITELIST += "FILE_DIRNAME HOME LOGNAME SHELL TERM USER"
+  BB_HASHBASE_WHITELIST += "FILESPATH USERNAME STAGING_DIR_HOST STAGING_DIR_TARGET"
+            </pre>
+<p>
+            The previous example actually excludes 
+            <a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR"><code class="filename">WORKDIR</code></a>
+            since it is actually constructed as a path within 
+            <a class="link" href="ref-variables-glos.html#var-TMPDIR" title="TMPDIR"><code class="filename">TMPDIR</code></a>, which is on 
+            the whitelist. 
+        </p>
+<p>
+            The rules for deciding which hashes of dependent tasks to include through
+            dependency chains are more complex and are generally accomplished with a 
+            python function. 
+            The code in <code class="filename">meta/lib/oe/sstatesig.py</code> shows two examples
+            of this and also illustrates how you can insert your own policy into the system 
+            if so desired.
+            This file defines the two basic signature generators <code class="filename">OE-Core</code>
+            uses:  "OEBasic" and "OEBasicHash". 
+            By default, there is a dummy "noop" signature handler enabled in BitBake. 
+            This means that behavior is unchanged from previous versions. 
+            <code class="filename">OE-Core</code> uses the "OEBasic" signature handler by default
+            through this setting in the <code class="filename">bitbake.conf</code> file:
+            </p>
+<pre class="literallayout">
+  BB_SIGNATURE_HANDLER ?= "OEBasic"
+            </pre>
+<p>
+            The "OEBasicHash" <code class="filename">BB_SIGNATURE_HANDLER</code> is the same as the 
+            "OEBasic" version but adds the task hash to the stamp files. 
+            This results in any metadata change that changes the task hash, automatically 
+            causing the task to be run again. 
+            This removes the need to bump <a class="link" href="ref-variables-glos.html#var-PR" title="PR"><code class="filename">PR</code></a>
+            values and changes to metadata automatically ripple across the build. 
+            Currently, this behavior is not the default behavior for <code class="filename">OE-Core</code>
+            but is the default in <code class="filename">poky</code>.
+        </p>
+<p>
+            It is also worth noting that the end result of these signature generators is to
+            make some dependency and hash information available to the build. 
+            This information includes:
+            </p>
+<pre class="literallayout">
+  BB_BASEHASH_task-&lt;taskname&gt; - the base hashes for each task in the recipe
+  BB_BASEHASH_&lt;filename:taskname&gt; - the base hashes for each dependent task
+  BBHASHDEPS_&lt;filename:taskname&gt; - The task dependencies for each task
+  BB_TASKHASH - the hash of the currently running task
+            </pre>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/debugging.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/debugging.html
new file mode 100644
index 0000000..80a19f9
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/debugging.html
@@ -0,0 +1,43 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.2.4.1. Debugging</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="tips-and-tricks.html" title="3.2.4. Tips and Tricks">
+<link rel="prev" href="tips-and-tricks.html" title="3.2.4. Tips and Tricks">
+<link rel="next" href="invalidating-shared-state.html" title="3.2.4.2. Invalidating Shared State">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2.4.1. Debugging">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="debugging"></a>3.2.4.1. Debugging</h4></div></div></div>
+<p>
+                When things go wrong, debugging needs to be straightforward. 
+                Because of this, the Yocto Project team included strong debugging
+                tools:
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>Whenever a shared state package is written out, so is a
+                        corresponding <code class="filename">.siginfo</code> file. 
+                        This practice results in a pickled python database of all
+                        the metadata that went into creating the hash for a given shared state
+                        package.</p></li>
+<li class="listitem"><p>If BitBake is run with the <code class="filename">--dump-signatures</code>
+                        (or <code class="filename">-S</code>) option, BitBake dumps out 
+                        <code class="filename">.siginfo</code> files in
+                        the stamp directory for every task it would have executed instead of
+                        building the specified target package.</p></li>
+<li class="listitem"><p>There is a <code class="filename">bitbake-diffsigs</code> command that
+                        can process these <code class="filename">.siginfo</code> files. 
+                        If one file is specified, it will dump out the dependency
+                        information in the file. 
+                        If two files are specified, it will compare the two files and dump out 
+                        the differences between the two.
+                        This allows the question of "What changed between X and Y?" to be
+                        answered easily.</p></li>
+</ul></div>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/enabling-commercially-licensed-recipes.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/enabling-commercially-licensed-recipes.html
new file mode 100644
index 0000000..1974595
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/enabling-commercially-licensed-recipes.html
@@ -0,0 +1,85 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.2. Enabling Commercially Licensed Recipes</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="licenses.html" title="3.4. Licenses">
+<link rel="prev" href="usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax.html" title="3.4.1.2. Explanation of Syntax">
+<link rel="next" href="license-flag-matching.html" title="3.4.2.1. License Flag Matching">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.2. Enabling Commercially Licensed Recipes">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="enabling-commercially-licensed-recipes"></a>3.4.2. Enabling Commercially Licensed Recipes</h3></div></div></div>
+<p>
+            By default, the OpenEmbedded build system disables
+            components that have commercial or other special licensing
+            requirements.  
+            Such requirements are defined on a
+            recipe-by-recipe basis through the <code class="filename">LICENSE_FLAGS</code> variable
+            definition in the affected recipe.  
+            For instance, the
+            <code class="filename">$HOME/poky/meta/recipes-multimedia/gstreamer/gst-plugins-ugly</code>
+            recipe contains the following statement:
+            </p>
+<pre class="literallayout">
+     LICENSE_FLAGS = "commercial"
+            </pre>
+<p>
+            Here is a slightly more complicated example that contains both an
+            explicit package name and version (after variable expansion):
+            </p>
+<pre class="literallayout">
+     LICENSE_FLAGS = "license_${PN}_${PV}"
+            </pre>
+<p>
+	        In order for a component restricted by a <code class="filename">LICENSE_FLAGS</code>
+	        definition to be enabled and included in an image, it
+	        needs to have a matching entry in the global
+	        <code class="filename">LICENSE_FLAGS_WHITELIST</code> variable, which is a variable
+	        typically defined in your <code class="filename">local.conf</code> file.  
+            For example, to enable
+	        the <code class="filename">$HOME/poky/meta/recipes-multimedia/gstreamer/gst-plugins-ugly</code>
+	        package, you could add either the string
+	        "commercial_gst-plugins-ugly" or the more general string
+	        "commercial" to <code class="filename">LICENSE_FLAGS_WHITELIST</code>.
+            See the
+            "<a class="link" href="license-flag-matching.html" title="3.4.2.1. License Flag Matching">License Flag Matching</a>" section
+            for a full explanation of how <code class="filename">LICENSE_FLAGS</code> matching works.
+            Here is the example:
+            </p>
+<pre class="literallayout">
+     LICENSE_FLAGS_WHITELIST = "commercial_gst-plugins-ugly"
+            </pre>
+<p>
+	        Likewise, to additionally enable the package containing
+	        <code class="filename">LICENSE_FLAGS = "license_${PN}_${PV}"</code>, and assuming
+	        that the actual recipe name was <code class="filename">emgd_1.10.bb</code>,
+	        the following string would enable that package as well as
+	        the original <code class="filename">gst-plugins-ugly</code> package:
+            </p>
+<pre class="literallayout">
+     LICENSE_FLAGS_WHITELIST = "commercial_gst-plugins-ugly license_emgd_1.10"
+            </pre>
+<p>
+	        As a convenience, you do not need to specify the complete license string
+	        in the whitelist for every package.
+            you can use an abbreviated form, which consists
+	        of just the first portion or portions of the license string before
+	        the initial underscore character or characters.
+            A partial string will match
+	        any license that contains the given string as the first
+	        portion of its license.  
+            For example, the following
+	        whitelist string will also match both of the packages
+	        previously mentioned as well as any other packages that have
+	        licenses starting with "commercial" or "license".
+            </p>
+<pre class="literallayout">
+     LICENSE_FLAGS_WHITELIST = "commercial license"
+            </pre>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/faq.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/faq.html
new file mode 100644
index 0000000..a8ccdd8
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/faq.html
@@ -0,0 +1,821 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 11. FAQ</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="prev" href="ref-varlocality-recipe-build.html" title="10.2.4. Extra Build Information">
+<link rel="next" href="resources.html" title="Chapter 12. Contributing to the Yocto Project">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 11. FAQ">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="faq"></a>Chapter 11. FAQ</h2></div></div></div>
+<div class="qandaset" title="Frequently Asked Questions">
+<a name="id470783"></a><dl>
+<dt>11.1. <a href="faq.html#id470787">
+                How does Poky differ from OpenEmbedded?
+            </a>
+</dt>
+<dt>11.2. <a href="faq.html#id474799">
+                I only have Python 2.4 or 2.5 but BitBake requires Python 2.6 or 2.7.
+                Can I still use the Yocto Project?
+            </a>
+</dt>
+<dt>11.3. <a href="faq.html#id451776">
+                How can you claim Poky is stable?
+            </a>
+</dt>
+<dt>11.4. <a href="faq.html#id491143">
+                How do I get support for my board added to the Yocto Project?
+            </a>
+</dt>
+<dt>11.5. <a href="faq.html#id491165">
+                Are there any products using the OpenEmbedded build system (poky)?
+            </a>
+</dt>
+<dt>11.6. <a href="faq.html#id478911">
+                What does the OpenEmbedded build system produce as output?
+            </a>
+</dt>
+<dt>11.7. <a href="faq.html#id478922">
+                How do I add my package to the Yocto Project?
+            </a>
+</dt>
+<dt>11.8. <a href="faq.html#id478936">
+                Do I have to reflash my entire board with a new Yocto Project image when recompiling 
+                a package?
+            </a>
+</dt>
+<dt>11.9. <a href="faq.html#id490392">
+                What is GNOME Mobile and what is the difference between GNOME Mobile and GNOME?
+            </a>
+</dt>
+<dt>11.10. <a href="faq.html#id490409">
+                I see the error 'chmod: XXXXX new permissions are r-xrwxrwx, not r-xr-xr-x'.
+                What is wrong?
+            </a>
+</dt>
+<dt>11.11. <a href="faq.html#id465544">
+                How do I make the Yocto Project work in RHEL/CentOS?
+            </a>
+</dt>
+<dt>11.12. <a href="faq.html#id455749">
+                I see lots of 404 responses for files on 
+                http://www.yoctoproject.org/sources/*. Is something wrong?
+            </a>
+</dt>
+<dt>11.13. <a href="faq.html#id455768">
+                I have machine-specific data in a package for one machine only but the package is 
+                being marked as machine-specific in all cases, how do I prevent this?
+            </a>
+</dt>
+<dt>11.14. <a href="faq.html#id489153">
+                I'm behind a firewall and need to use a proxy server. How do I do that?
+            </a>
+</dt>
+<dt>11.15. <a href="faq.html#id461547">
+                I'm using Ubuntu Intrepid and am seeing build failures. What&#8217;s wrong?
+            </a>
+</dt>
+<dt>11.16. <a href="faq.html#id478674">
+                What&#8217;s the difference between foo and foo-native?
+            </a>
+</dt>
+<dt>11.17. <a href="faq.html#id478708">
+                I'm seeing random build failures. Help?!
+            </a>
+</dt>
+<dt>11.18. <a href="faq.html#id489449">
+                What do we need to ship for license compliance?
+            </a>
+</dt>
+<dt>11.19. <a href="faq.html#id489461">
+                How do I disable the cursor on my touchscreen device?
+            </a>
+</dt>
+<dt>11.20. <a href="faq.html#id478715">
+                How do I make sure connected network interfaces are brought up by default?
+            </a>
+</dt>
+<dt>11.21. <a href="faq.html#id475279">
+                How do I create images with more free space?
+            </a>
+</dt>
+<dt>11.22. <a href="faq.html#id472691">
+                Why don't you support directories with spaces in the pathnames?
+            </a>
+</dt>
+<dt>11.23. <a href="faq.html#id472708">
+                How do I use an external toolchain?
+            </a>
+</dt>
+<dt>11.24. <a href="faq.html#id450639">
+                How does the OpenEmbedded build system obtain source code and will it work behind my 
+                firewall or proxy server?
+            </a>
+</dt>
+<dt>11.25. <a href="faq.html#id452468">
+                Can I get rid of build output so I can start over?
+            </a>
+</dt>
+</dl>
+<table border="0" width="100%" summary="Q and A Set">
+<col align="left" width="1%">
+<col>
+<tbody>
+<tr class="question" title="11.1.">
+<td align="left" valign="top">
+<a name="id470787"></a><a name="id474768"></a><p><b>11.1.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                How does Poky differ from <a class="ulink" href="http://www.openembedded.org" target="_self">OpenEmbedded</a>?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top"><p>
+                The term "Poky" is sometimes used to refer to the build system that the 
+                Yocto Project uses.  
+                The build system used in the Yocto project is referred to as the 
+                OpenEmbedded build system because "Poky" was derived from <a class="ulink" href="http://www.openembedded.org" target="_self">OpenEmbedded</a>.
+                Poky is a stable, smaller subset focused on the mobile environment. 
+                Development in the Yocto Project using Poky is closely tied to OpenEmbedded with 
+                features being merged regularly between the two for mutual benefit.
+                For a fuller description of the term "Poky", see the 
+                <a class="link" href="../dev-manual/poky.html" target="_self">poky</a> term in the Yocto Project
+                Development Manual.
+            </p></td>
+</tr>
+<tr class="question" title="11.2.">
+<td align="left" valign="top">
+<a name="id474799"></a><a name="id474800"></a><p><b>11.2.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                I only have Python 2.4 or 2.5 but BitBake requires Python 2.6 or 2.7.
+                Can I still use the Yocto Project?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top">
+<p>
+                You can use a stand-alone tarball to provide Python 2.6.
+                You can find pre-built 32 and 64-bit versions of Python 2.6 at the following locations:
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><a class="ulink" href="http://downloads.yoctoproject.org/releases/miscsupport/python-nativesdk-standalone-i686.tar.bz2" target="_self">32-bit tarball</a></p></li>
+<li class="listitem"><p><a class="ulink" href="http://downloads.yoctoproject.org/releases/miscsupport/python-nativesdk-standalone-x86_64.tar.bz2" target="_self">64-bit tarball</a></p></li>
+</ul></div>
+<p>
+            </p>
+<p>
+                These tarballs are self-contained with all required libraries and should work 
+                on most Linux systems.  
+                To use the tarballs extract them into the root 
+                directory and run the appropriate command:
+                </p>
+<pre class="literallayout">
+     $ export PATH=/opt/poky/sysroots/i586-pokysdk-linux/usr/bin/:$PATH
+     $ export PATH=/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/:$PATH
+                </pre>
+<p>
+            </p>
+<p>
+                Once you run the command, BitBake uses Python 2.6.
+            </p>
+</td>
+</tr>
+<tr class="question" title="11.3.">
+<td align="left" valign="top">
+<a name="id451776"></a><a name="id451778"></a><p><b>11.3.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                How can you claim Poky is stable?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top">
+<p>
+                There are three areas that help with stability;
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>The Yocto Project team keeps 
+                        <a class="link" href="../dev-manual/poky.html" target="_self">Poky</a> small and focused.
+                        It contains around 650 packages as compared to over 5000 for full 
+                        OpenEmbedded.</p></li>
+<li class="listitem"><p>The Yocto Project only supports hardware that the 
+                        team has access to for testing.</p></li>
+<li class="listitem"><p>The Yocto Project uses an an autobuilder,
+                        which provides continuous build and integration tests.</p></li>
+</ul></div>
+<p>
+            </p>
+</td>
+</tr>
+<tr class="question" title="11.4.">
+<td align="left" valign="top">
+<a name="id491143"></a><a name="id491144"></a><p><b>11.4.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                How do I get support for my board added to the Yocto Project?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top">
+<p>
+                There are two main ways to get a board supported in the Yocto Project;
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>Send the Yocto Project team information on the board
+                        and if the team does not have it yet they will consider adding it.</p></li>
+<li class="listitem"><p>Send the Yocto Project team the BitBake recipes if you have them.
+                        </p></li>
+</ul></div>
+<p>
+                Usually, if the board is not completely exotic, adding support in 
+                the Yocto Project is fairly straightforward.
+            </p>
+</td>
+</tr>
+<tr class="question" title="11.5.">
+<td align="left" valign="top">
+<a name="id491165"></a><a name="id491166"></a><p><b>11.5.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                Are there any products using the OpenEmbedded build system (poky)?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top"><p>
+                The <a class="ulink" href="http://vernier.com/labquest/" target="_self">Vernier LabQuest</a> is using 
+                the OpenEmbedded build system.  
+                See the <a class="ulink" href="http://www.vernier.com/products/interfaces/labq/" target="_self">Vernier LabQuest</a>
+                for more information.
+                There are a number of pre-production devices using the OpenEmbedded build system 
+                and the Yocto Project team
+                announces them as soon as they are released.
+            </p></td>
+</tr>
+<tr class="question" title="11.6.">
+<td align="left" valign="top">
+<a name="id478911"></a><a name="id478912"></a><p><b>11.6.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                What does the OpenEmbedded build system produce as output?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top"><p>
+                Because the same set of recipes can be used to create output of various formats, the 
+                output of an OpenEmbedded build depends on how it was started. 
+                Usually, the output is a flashable image ready for the target device.
+            </p></td>
+</tr>
+<tr class="question" title="11.7.">
+<td align="left" valign="top">
+<a name="id478922"></a><a name="id478923"></a><p><b>11.7.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                How do I add my package to the Yocto Project?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top"><p>
+                To add a package, you need to create a BitBake recipe.
+                For information on how to add a package, see the section
+                "<a class="link" href="../dev-manual/usingpoky-extend-addpkg.html" target="_self">Adding a Package</a>" 
+                in the Yocto Project Development Manual.
+            </p></td>
+</tr>
+<tr class="question" title="11.8.">
+<td align="left" valign="top">
+<a name="id478936"></a><a name="id478937"></a><p><b>11.8.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                Do I have to reflash my entire board with a new Yocto Project image when recompiling 
+                a package?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top"><p>
+                The OpenEmbedded build system can build packages in various formats such as
+                <code class="filename">ipk</code> for <code class="filename">ipkg</code>/<code class="filename">opkg</code>, 
+                Debian package (<code class="filename">.deb</code>), or RPM. 
+                The packages can then be upgraded using the package tools on the device, much like 
+                on a desktop distribution such as Ubuntu or Fedora.
+            </p></td>
+</tr>
+<tr class="question" title="11.9.">
+<td align="left" valign="top">
+<a name="id490392"></a><a name="id490393"></a><p><b>11.9.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                What is GNOME Mobile and what is the difference between GNOME Mobile and GNOME?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top"><p>
+                GNOME Mobile is a subset of the <a class="ulink" href="http://www.gnome.org" target="_self">GNOME</a> 
+                platform targeted at mobile and embedded devices. 
+                The the main difference between GNOME Mobile and standard GNOME is that 
+                desktop-orientated libraries have been removed, along with deprecated libraries, 
+                creating a much smaller footprint. 
+            </p></td>
+</tr>
+<tr class="question" title="11.10.">
+<td align="left" valign="top">
+<a name="id490409"></a><a name="id490410"></a><p><b>11.10.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                I see the error '<code class="filename">chmod: XXXXX new permissions are r-xrwxrwx, not r-xr-xr-x</code>'.
+                What is wrong?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top"><p>
+                You are probably running the build on an NTFS filesystem. 
+                Use <code class="filename">ext2</code>, <code class="filename">ext3</code>, or <code class="filename">ext4</code> instead.
+            </p></td>
+</tr>
+<tr class="question" title="11.11.">
+<td align="left" valign="top">
+<a name="id465544"></a><a name="id465546"></a><p><b>11.11.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                How do I make the Yocto Project work in RHEL/CentOS?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top">
+<p>
+                To get the Yocto Project working under RHEL/CentOS 5.1 you need to first 
+                install some required packages. 
+                The standard CentOS packages needed are:
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>"Development tools" (selected during installation)</p></li>
+<li class="listitem"><p><code class="filename">texi2html</code></p></li>
+<li class="listitem"><p><code class="filename">compat-gcc-34</code></p></li>
+</ul></div>
+<p>
+                On top of these, you need the following external packages:
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><code class="filename">python-sqlite2</code> from 
+                        <a class="ulink" href="http://dag.wieers.com/rpm/packages/python-sqlite2/" target="_self">DAG repository</a>
+                        </p></li>
+<li class="listitem"><p><code class="filename">help2man</code> from 
+                        <a class="ulink" href="http://centos.karan.org/el4/extras/stable/x86_64/RPMS/repodata/repoview/help2man-0-1.33.1-2.html" target="_self">Karan repository</a></p></li>
+</ul></div>
+<p>
+            </p>
+<p>
+                Once these packages are installed, the OpenEmbedded build system will be able 
+                to build standard images.
+                However, there might be a problem with the QEMU emulator segfaulting. 
+                You can either disable the generation of binary locales by setting 
+                <code class="filename"><a class="link" href="ref-variables-glos.html#var-ENABLE_BINARY_LOCALE_GENERATION" title="ENABLE_BINARY_LOCALE_GENERATION">ENABLE_BINARY_LOCALE_GENERATION</a>
+                </code> to "0" or by removing the <code class="filename">linux-2.6-execshield.patch</code>
+                from the kernel and rebuilding it since that is the patch that causes the problems with QEMU.
+            </p>
+</td>
+</tr>
+<tr class="question" title="11.12.">
+<td align="left" valign="top">
+<a name="id455749"></a><a name="id455750"></a><p><b>11.12.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                I see lots of 404 responses for files on 
+                <code class="filename">http://www.yoctoproject.org/sources/*</code>. Is something wrong?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top"><p>
+                Nothing is wrong.
+                The OpenEmbedded build system checks any configured source mirrors before downloading 
+                from the upstream sources. 
+                The build system does this searching for both source archives and 
+                pre-checked out versions of SCM managed software. 
+                These checks help in large installations because it can reduce load on the SCM servers 
+                themselves. 
+                The address above is one of the default mirrors configured into the 
+                build system.
+                Consequently, if an upstream source disappears, the team 
+                can place sources there so builds continue to work.
+            </p></td>
+</tr>
+<tr class="question" title="11.13.">
+<td align="left" valign="top">
+<a name="id455768"></a><a name="id455770"></a><p><b>11.13.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                I have machine-specific data in a package for one machine only but the package is 
+                being marked as machine-specific in all cases, how do I prevent this?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top"><p>
+                Set <code class="filename"><a class="link" href="ref-variables-glos.html#var-SRC_URI_OVERRIDES_PACKAGE_ARCH" title="SRC_URI_OVERRIDES_PACKAGE_ARCH">SRC_URI_OVERRIDES_PACKAGE_ARCH</a>
+                </code> = "0" in the <code class="filename">.bb</code> file but make sure the package is 
+                manually marked as 
+                machine-specific in the case that needs it. 
+                The code that handles <code class="filename">SRC_URI_OVERRIDES_PACKAGE_ARCH</code> is in <code class="filename">base.bbclass</code>.
+            </p></td>
+</tr>
+<tr class="question" title="11.14.">
+<td align="left" valign="top">
+<a name="id489153"></a><a name="id489154"></a><p><b>11.14.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                I'm behind a firewall and need to use a proxy server. How do I do that?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top">
+<p>
+                Most source fetching by the OpenEmbedded build system is done by <code class="filename">wget</code>
+                and you therefore need to specify the proxy settings in a 
+                <code class="filename">.wgetrc</code> file in your home directory. 
+                Example settings in that file would be 
+                </p>
+<pre class="literallayout">
+     http_proxy = http://proxy.yoyodyne.com:18023/
+     ftp_proxy = http://proxy.yoyodyne.com:18023/
+                </pre>
+<p>
+                The Yocto Project also includes a <code class="filename">site.conf.sample</code>
+                file that shows how to configure CVS and Git proxy servers
+                if needed.
+            </p>
+</td>
+</tr>
+<tr class="question" title="11.15.">
+<td align="left" valign="top">
+<a name="id461547"></a><a name="id461548"></a><p><b>11.15.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                I'm using Ubuntu Intrepid and am seeing build failures. What&#8217;s wrong?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top">
+<p>
+	            In Intrepid, Ubuntu turns on by default the normally optional compile-time security features 
+		        and warnings. 
+                There are more details at 
+                <a class="ulink" href="https://wiki.ubuntu.com/CompilerFlags" target="_self">https://wiki.ubuntu.com/CompilerFlags</a>.
+		        You can work around this problem by disabling those options by adding 
+                the following to the <code class="filename">BUILD_CPPFLAGS</code> variable in the
+                <code class="filename">conf/bitbake.conf</code> file.
+                </p>
+<pre class="literallayout">
+     " -Wno-format-security -U_FORTIFY_SOURCE" 
+                </pre>
+<p>
+            </p>
+</td>
+</tr>
+<tr class="question" title="11.16.">
+<td align="left" valign="top">
+<a name="id478674"></a><a name="id478675"></a><p><b>11.16.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                What&#8217;s the difference between <code class="filename">foo</code> and <code class="filename">foo-native</code>?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top"><p>
+                The <code class="filename">*-native</code> targets are designed to run on the system 
+                being used for the build.
+                These are usually tools that are needed to assist the build in some way such as 
+                <code class="filename">quilt-native</code>, which is used to apply patches. 
+                The non-native version is the one that runs on the target device.
+            </p></td>
+</tr>
+<tr class="question" title="11.17.">
+<td align="left" valign="top">
+<a name="id478708"></a><a name="id478709"></a><p><b>11.17.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                I'm seeing random build failures. Help?!
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top"><p>
+                If the same build is failing in totally different and random ways,
+                the most likely explanation is that either the hardware you're running the 
+                build on has some problem, or, if you are running the build under virtualisation, 
+                the virtualisation probably has bugs. 
+                The OpenEmbedded build system processes a massive amount of data causing lots of network, disk and 
+                CPU activity and is sensitive to even single bit failures in any of these areas. 
+                True random failures have always been traced back to hardware or virtualisation issues.
+            </p></td>
+</tr>
+<tr class="question" title="11.18.">
+<td align="left" valign="top">
+<a name="id489449"></a><a name="id489450"></a><p><b>11.18.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                What do we need to ship for license compliance?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top"><p>
+                This is a difficult question and you need to consult your lawyer for the answer
+                for your specific case.
+                It is worth bearing in mind that for GPL compliance there needs to be enough
+                information shipped to allow someone else to rebuild the same end result 
+                you are shipping. 
+                This means sharing the source code, any patches applied to it, and also any
+                configuration information about how that package was configured and built.
+            </p></td>
+</tr>
+<tr class="question" title="11.19.">
+<td align="left" valign="top">
+<a name="id489461"></a><a name="id489462"></a><p><b>11.19.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                How do I disable the cursor on my touchscreen device?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top">
+<p>
+                You need to create a form factor file as described in the
+                "<a class="link" href="../bsp-guide/bsp-filelayout-misc-recipes.html" target="_self">Miscellaneous Recipe Files</a>"
+                section and set the <code class="filename">HAVE_TOUCHSCREEN</code> variable equal to one as follows:
+                </p>
+<pre class="literallayout">
+     HAVE_TOUCHSCREEN=1
+                </pre>
+<p>
+            </p>
+</td>
+</tr>
+<tr class="question" title="11.20.">
+<td align="left" valign="top">
+<a name="id478715"></a><a name="id475250"></a><p><b>11.20.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                How do I make sure connected network interfaces are brought up by default?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top">
+<p>
+                The default interfaces file provided by the netbase recipe does not 
+                automatically bring up network interfaces. 
+                Therefore, you will need to add a BSP-specific netbase that includes an interfaces 
+                file.
+                See the "<a class="link" href="../bsp-guide/bsp-filelayout-misc-recipes.html" target="_self">Miscellaneous Recipe Files</a>"
+                section for information on creating these types of miscellaneous recipe files.
+            </p>
+<p>
+                For example, add the following files to your layer:
+                </p>
+<pre class="literallayout">
+     meta-MACHINE/recipes-bsp/netbase/netbase/MACHINE/interfaces
+     meta-MACHINE/recipes-bsp/netbase/netbase_4.44.bbappend
+                </pre>
+<p>
+            </p>
+</td>
+</tr>
+<tr class="question" title="11.21.">
+<td align="left" valign="top">
+<a name="id475279"></a><a name="id475280"></a><p><b>11.21.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                How do I create images with more free space?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top">
+<p>
+                Images are created to be 1.2 times the size of the populated root filesystem. 
+                To modify this ratio so that there is more free space available, you need to 
+                set the configuration value <code class="filename">IMAGE_OVERHEAD_FACTOR</code>.  
+                For example, setting <code class="filename">IMAGE_OVERHEAD_FACTOR</code> to 1.5 sets 
+                the image size ratio to one and a half times the size of the populated 
+                root filesystem.
+                </p>
+<pre class="literallayout">
+     IMAGE_OVERHEAD_FACTOR = "1.5"
+                </pre>
+<p>
+            </p>
+</td>
+</tr>
+<tr class="question" title="11.22.">
+<td align="left" valign="top">
+<a name="id472691"></a><a name="id472692"></a><p><b>11.22.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                Why don't you support directories with spaces in the pathnames?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top"><p>
+                The Yocto Project team has tried to do this before but too many of the tools 
+                the OpenEmbedded build system depends on such as <code class="filename">autoconf</code> 
+                break when they find spaces in pathnames.  
+                Until that situation changes, the team will not support spaces in pathnames.
+            </p></td>
+</tr>
+<tr class="question" title="11.23.">
+<td align="left" valign="top">
+<a name="id472708"></a><a name="id472709"></a><p><b>11.23.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                How do I use an external toolchain?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top">
+<p>
+                The toolchain configuration is very flexible and customizable.
+                It is primarily controlled with the 
+                <code class="filename"><a class="link" href="ref-variables-glos.html#var-TCMODE" title="TCMODE">TCMODE</a></code> variable.
+                This variable controls which <code class="filename">tcmode-*.inc</code> file to include 
+                from the <code class="filename">meta/conf/distro/include</code> directory within the 
+                <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.
+            </p>
+<p>
+                The default value of <code class="filename">TCMODE</code> is "default"
+                (i.e. <code class="filename">tcmode-default.inc</code>).
+                However, other patterns are accepted.
+                In particular, "external-*" refers to external toolchains of which there are some
+                basic examples included in the OpenEmbedded Core (<code class="filename">meta</code>).
+                You can use your own custom toolchain definition in your own layer 
+                (or as defined in the <code class="filename">local.conf</code> file) at the location 
+                <code class="filename">conf/distro/include/tcmode-*.inc</code>.
+            </p>
+<p>
+                In addition to the toolchain configuration, you also need a corresponding toolchain recipe file.
+                This recipe file needs to package up any pre-built objects in the toolchain such as 
+                <code class="filename">libgcc</code>, <code class="filename">libstdcc++</code>, 
+                any locales, and <code class="filename">libc</code>.
+                An example is the <code class="filename">external-sourcery-toolchain.bb</code>, which is located
+                in <code class="filename">meta/recipes-core/meta/</code> within the source directory.
+            </p>
+</td>
+</tr>
+<tr class="question" title="11.24.">
+<td align="left" valign="top">
+<a name="id450639"></a><a name="id450673"></a><p><b>11.24.</b></p>
+</td>
+<td align="left" valign="top"><p><a name="how-does-the-yocto-project-obtain-source-code-and-will-it-work-behind-my-firewall-or-proxy-server"></a>
+                How does the OpenEmbedded build system obtain source code and will it work behind my 
+                firewall or proxy server?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top">
+<p>
+                The way the build system obtains source code is highly configurable.
+                You can setup the build system to get source code in most environments if
+                HTTP transport is available.
+            </p>
+<p>
+                When the build system searches for source code, it first tries the local download directory.
+                If that location fails, Poky tries PREMIRRORS, the upstream source, 
+                and then MIRRORS in that order.
+            </p>
+<p>
+                By default, the OpenEmbedded build system uses the Yocto Project source PREMIRRORS 
+                for SCM-based sources, 
+                upstreams for normal tarballs, and then falls back to a number of other mirrors 
+                including the Yocto Project source mirror if those fail.
+            </p>
+<p>
+                As an example, you could add a specific server for Poky to attempt before any
+                others by adding something like the following to the <code class="filename">local.conf</code>
+                configuration file:
+                </p>
+<pre class="literallayout">
+     PREMIRRORS_prepend = "\
+     git://.*/.* http://www.yoctoproject.org/sources/ \n \
+     ftp://.*/.* http://www.yoctoproject.org/sources/ \n \
+     http://.*/.* http://www.yoctoproject.org/sources/ \n \
+     https://.*/.* http://www.yoctoproject.org/sources/ \n"
+                </pre>
+<p>
+            </p>
+<p>
+                These changes cause Poky to intercept Git, FTP, HTTP, and HTTPS
+                requests and direct them to the <code class="filename">http://</code> sources mirror.
+                You can use <code class="filename">file://</code> URLs to point to local directories 
+                or network shares as well.
+            </p>
+<p>
+                Aside from the previous technique, these options also exist:
+                </p>
+<pre class="literallayout">
+     BB_NO_NETWORK = "1"
+                </pre>
+<p>
+                 This statement tells BitBake to throw an error instead of trying to access the 
+                 Internet.
+                 This technique is useful if you want to ensure code builds only from local sources.
+             </p>
+<p>
+                 Here is another technique:
+                 </p>
+<pre class="literallayout">
+     BB_FETCH_PREMIRRORONLY = "1"
+                 </pre>
+<p>
+                 This statement limits Poky to pulling source from the PREMIRRORS only.
+                 Again, this technique is useful for reproducing builds.
+             </p>
+<p>
+                 Here is another technique:
+                 </p>
+<pre class="literallayout">
+     BB_GENERATE_MIRROR_TARBALLS = "1"
+                 </pre>
+<p>
+                 This statement tells Poky to generate mirror tarballs.
+                 This technique is useful if you want to create a mirror server.
+                 If not, however, the technique can simply waste time during the build.
+             </p>
+<p>
+                 Finally, consider an example where you are behind an HTTP-only firewall.
+                 You could make the following changes to the <code class="filename">local.conf</code>
+                 configuration file as long as the PREMIRROR server is up to date:
+                 </p>
+<pre class="literallayout">
+     PREMIRRORS_prepend = "\
+     ftp://.*/.* http://www.yoctoproject.org/sources/ \n \
+     http://.*/.* http://www.yoctoproject.org/sources/ \n \
+     https://.*/.* http://www.yoctoproject.org/sources/ \n"
+     BB_FETCH_PREMIRRORONLY = "1" 
+                 </pre>
+<p>
+                 These changes would cause Poky to successfully fetch source over HTTP and 
+                 any network accesses to anything other than the PREMIRROR would fail.
+             </p>
+<p>
+                 The build system also honors the standard shell environment variables 
+                 <code class="filename">http_proxy</code>, <code class="filename">ftp_proxy</code>, 
+                 <code class="filename">https_proxy</code>, and <code class="filename">all_proxy</code>
+                 to redirect requests through proxy servers.
+             </p>
+</td>
+</tr>
+<tr class="question" title="11.25.">
+<td align="left" valign="top">
+<a name="id452468"></a><a name="id452469"></a><p><b>11.25.</b></p>
+</td>
+<td align="left" valign="top"><p>
+                Can I get rid of build output so I can start over?
+            </p></td>
+</tr>
+<tr class="answer">
+<td align="left" valign="top"></td>
+<td align="left" valign="top">
+<p>
+                Yes - you can easily do this.
+                When you use BitBake to build an image, all the build output goes into the 
+                directory created when you source the <code class="filename">oe-init-build-env</code>
+                setup file.
+                By default, this <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a> 
+                is named <code class="filename">build</code> but can be named
+                anything you want.
+            </p>
+<p>
+                Within the build directory is the <code class="filename">tmp</code> directory. 
+                To remove all the build output yet preserve any source code or downloaded files
+                from previous builds, simply remove the <code class="filename">tmp</code> directory.
+            </p>
+</td>
+</tr>
+</tbody>
+</table>
+</div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/figures/poky-title.png b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/figures/poky-title.png
new file mode 100644
index 0000000000000000000000000000000000000000..2893d84620d74e5c3318c03fbb44bcf60853ae44
GIT binary patch
literal 11592
zcmd6N2Rocm*Dj;C5DZbG3kDG+A$l*Pj~O+B=tQq!M2RlCA$lE*-bL>rdKW^J=+UA_
z%Qq?S`<?R(&bh8_%*->_Ui;Z=t$VHe-cPuux*`c7Eg=R528ptg90UUc@D2U`9X<g4
zs?YKWhW>}?3Q?57C?BEUMt{Jzl2(((z^IBLx;Di@e<pBJ(s#wcxYPan53|p)$Q%QM
zXHi*B8tV08FXLw#thX-Y#%jOfQ!C*Kb{JEjDoI$8u)jZmC7TJv0^%HzC4Ula5)?Kr
zN2%&SsfFE1@Gin6H%!PGLpoN@LICq%)=14=tE8ajd|%?~GvnxMuVuHrVwfW=>vE(R
zR-%3p=cnY4{ckMyF_JQfeSr54*g3xUTkZ%rIuy<kD;OguXTtn50*c9m;TMMyo4<tJ
z)`}dWS})U|lKm=+pczp>K?ek>YJ>hwRV=$)7DcB~>Ue#?aO#!u)ckXfY-q7rXbB92
zIC_V}%lvP?9Wt+*VWAwYH#22;2(UY@e_1>RLF}J_jo<QP#t;fhXJ(TE{2qrCY))I6
zwn}|D0yutptUt~Q)C^F>_vWv&eq9%e$@VU0{qM|0>;Pl<&vlsVW>kikR_-_jhq250
zg53{j_Vr4)<f|)lQ89YHwp#CQI!AbmJ>AGRwwVL&vu;vJrhT@P&BGP<@3VHu3BSWJ
zKi{jehoo4yHwS*9_7^UF(NPE27N^`5rTWeLt;1>OyNhX)mdDN@1i-W!^mmUQN-uAX
z=bcL)YL2!QX6h{k%@$AdDK_6+(mCF07<~&TQ4_y9^En)sSB$2wVwk(`#1r}o|GvD!
zY8WWLLwj3Tj_LQS#b?o<xqD;SxYBu2bo_xErZtgu#uX#n`f^C$DofHs^Ehl0msDQ-
z>+G1R?<J{J^G<L<*-;Fy{?04k+4990o?DXCt*=u=GI*q`r^gJZYQC2*+&)cN>6Q=i
z)r>tvfG@{t*#2#FEtx+g<&n*Ra+Elt_@0EVn_IK_LQiB4RP#1JBr~BvU6zD)eZQhT
zQ}DpM^knCRWGbABMDqKK*|RrB-S6~u;kUiiE0`B&UmO`<)OsC;#Z?m4<;Y*lW^56(
zN88mtDc5OldUDosmE0b`C((8io}h6bBd358);zrEz1$wl^C<iE)K>CrORDRHCTb14
zzfbv3KsK=iXh__g<cB<{lQC0%<FI~=NtkwfM9s6w`SW<+Yx>t-UX0sH8RPBgiD~zW
zT>z(6WGgw%PVniA_LyIp0?Q{+2VNQ6pLuD;R*9j=GiMXS$gFRAuqO3QNdsDu4Q(6e
zl6xAbTXR=u&HGP%LWi^Ub%&*8ow91@UOf)7s&mpB$uX8ZamwV9LB@wNWU>E=*sUgP
zhYvQ)VuU;9d{YWchV$~;1ut)OQY|k_xgS@LN?g%@d1%01`zph&LUwu3sQqF+o+D}T
zxWuPVBenFJ!rQo@ZT1tH5c%b=wu{_(xE8Ja6QQG0SIf~9pD!7nrW~Ay-pebB8$-?N
zpNOs(KNlYG9W)y!w;u%HEy1ts7g<`Qla2W4Kx!%2Re|-mB#h2CQ9`B(TRDo<!%aIo
z1=^Q3t$~C&HVpbFdK=;Bh11+;Wc$1D32cwu1p>cr{s!<Qg~shjxU48Nv0z*TD+jch
zE=e_yR12OGdhzHD3!x#RrTz7BFtvuxK;DzEeCPhKIGy^dcHiqC%2D$O2<d6%;mjAw
z`FdVoucwZ4xvaK$cjy?r4&!=b>b(4;<!euNW`CWJ@-zta?#;Je)i>|Yi0box&1eeo
z7vg-yfet<4>i>iuy&}d4Y27O`*uLoU$wB+C7XX3#AVJG|QD`Ro@_bL_jW6q&HeB&l
zwvFXzqk>&36?N~b2Q^MQJ+<lwC1o1xKnJzf7v4V+;65(?EJA=qlh7GtmDotaeJs}g
zOT*Q?_eLYopj65v<Jm?FtAd+)Q!o^?U8)!V52d164~K=8ma$_AXFJr#-o}X8Vs^zX
zQW^JFA$<pD%8D^uN{H#_O9OQe&nva8LTbvE^MBA-WlZWY6k9Jd?diP!z8AIkMfNmG
zVpiR2jT|v>-*aiQpxod*KlZKU^S#CPriMiu=xn9KO$aeX7?>UFv4qSYD3b!%W1l$S
zpMXcTFQuE`TNkKi<*-5vRMT?&ro62i#V^-_VSMrd<-Yc<5YP_O5AKR`SPajHpHxU(
zrf{cz{Y<~;nRfs#FiwE*4IYVBn%vgZ5O+ny%scIY!{#DIlQo!YMU(^!ktWLA|D)nR
zbkC0JxW&Rdxg_z!I(z##^<2m=o63frb=i1aQl`H+iCXCeAX%A`)8n<%Y}JcX$Hs5!
zVu3<cCApNupqA6<=G;?ZqI^ySuVH;^sPCZ?*pQdbyf27Spjj@VKWC)%DyDSa!@T>~
zjiEi27AoJ#lICC0I3)MlIrr0y<Oc}vcxSX6msCK<RSHHm54y4VE#}>hf6~-gmYjet
z?%o+>>uNm<`8gnql{K)2nmnXrF;kZ~eVh*0f$<tw2~>ef^dcZXC$o&l#vhSzWK}yZ
zwI$Ziw4J3&#06nH(?%c6RkVqVtZcuv;{A2E!e@p-%q0=bjw3kux1hxOXJK4p%POS*
zSQ0n5Pe-CgMD;bW+EC(p%&n;9>h{VKNBB+YjAQ9d!;-rOixK@jhhvSYC+}!{m^0^F
zeLQ0d>dADWA1)D3!eJJgpfG<eFw!E;rl;S!T67wFL}dGT)QjpID~R`b)Archpx>)E
zC&t~3lEUyG=RRkQIU4L=-XC%O+Y@UJlS{f-JM8miCRydQUwLhJ3G8|GC?05xgV*at
zV+Kp8I=l}m7{|ct3(nuPTxQFS7U_IIT>gZD>6co=$O~xF%|2HdG**gT3nf*R0=D?V
zkrlK#tbM>BaW%)7M(r!~a+`EGvh8N0Lkk4FEr|PDRHa@3!l-F{_g{nI9qW&F(p|rM
zpWf;>JjG;o+-roN!3_GC;tXCM>)M@a&kDPLwD2O_KK42PzEl9+p^KYmt12dzKv2JU
zKHYXT**yBS)(+qJ%_*$)3hSH{QWnI!;JLgtguokxU-oHf++JLK2_-8=Ly*1dPs)Fl
zhF)>Gj)d;SIrB`6<zXlxL-YA(i90W$abdj!=^Jd3;spWSsqS)n8Ryr4UZ)AGo~@ec
zj}+!T?#GTpPeEJ~h!}~>5Ax*hj-v3BohElK`$hQGeUV(MXWt=W{F2w3TRx&O4p&Wk
z<cc5!<p_`Lzf^Mu@cM}K#edpil^j_p^{Tn)cix?6nm&x=D|<@%v|{P7$@^F8_j1R`
z%{{G{h3lop>QQ+$4J}YCSh!`<1Ke1S`J-#xw*6|qIpK;_ILWcV`D-ALOaz#HAO+`N
zYB7albXmGnmbtjR%W#Stm7aiqOc6==;-548xsRYWfZb2?`0y;~TsDoA(Lwa{yB?4M
zgLL(R%hi45dIsZuDCp5g&rmIu?4c^?<)asyZa?aT{Z@u8HyRp*90pA25MW$u_<uU9
z1?=*4pR(<rQXxW&D9PKOIPRS}6OWaeevSIw4C>z#z~OJ)bIH%KnbX$z9^c;^NZDYS
zN6KeF&yeYhZj)fkr$S3p0!2&PZ|{11D>WVc+WNs)GkJIVe5%7<B9hVg<%7}tLO)ht
zC4_+4>4YTY|Lx%&K>LUDwt9MyI|;Sw`+JsdpH2pcO8i1H`E93nlIv=)M_+d1yop@N
z8?|lEscdr|`s}Pz+jlu@tmr`n)Qudv;e6-InT|Ez+#qiHu=sLyknh*^D#)6P?VI1`
zqNm!Iuf7$Fbl6v>A(z|H_eB|BT)%&ve8iX}`DI^cTPvoERP1_d*5~Yfo&A;h6=HVC
zzFnQBmp0WY>SaBREHXZdE{o-FLy4J&5ua1{9LsHY=rCk<DeU6u*`BOe=~u>p3V<O<
zX*lq?lhC5~m)&Qsp>_LYD1ZHRZ)ulHzP1a9P9%3|Htu{6_<OiTi^)(C|7LX7<MkGz
zKGvRmLo*G0T4-QAwMOeyDfS3?zQtr;xap^#-#9W|JB6Q9MRAilZ`SC0t&}yau+=vW
z;m2gl2pc?5Yjx}FO4}T6zbhn@r)Xf11JXNM7}yllpavm^wl0|dH!JpyZ^8CkCiV=j
zogXMglooMmOe5YUAzR&%eJYBrQe@dfVKpOjx7&qnwv4~_C^()zuHVVj*#wuo^B)M{
zFLNn;@%`TQxBQQpd=>g;I!_#L0WBy-s0K=L42AH!PSC%n3#@<dxyz7C)e5lBe<g92
z7_UPnHCnD07ucnX_B5%ugvx&llgI8gA?n24Hlath#p_}$r~3nLQMo50KA>)>L1*H~
zGjgiP&R=1BX3Xu_-ZLoAK?~?Wn=10nCB3ebl^2o+%cyNNxc`**4&qY53;Zz6m)!$C
z)G2#7@RM3y7=`(U`qZS=CA0%H6{2Tgmv8+1bfQu#4{?Rf3rbtDwm~TJHp?6?F#!+o
z4C~j@S)ib2m`Be4flX$Aa|aO_oT~>2nV-AIql{h`amOE{4yG&GT|$=~cZ;)&jTby6
zStKX87pmRAS1@{C<f;^~{33kn@1&?<mem%PAn!kTD)cod>K=Bfuw8dt7P|%yo!^hO
z+qa=7&+M5P6xm57s{51msC3ySn_bpxQ)-+PzlHZbrb_4hpzOSVDztpG>6V7Yj)D?)
z_JjXsf74^ko|Ixbyy+Q@Rq<|h^Q*HP3PZ81S4+{<U5ZC0y;V%u({G|Aea`5GotRod
zN@N#~5C<<E_uL~t_*qIdjSxZp^Y`fv#0anmchcW(jR_MElfG3t$i`4fQFe0o*({lM
z0Co|SFz8e9Kb!Oc2)|2;Gf}sVnaL31ggI~%eWHx0DiXq}uA}hBm17q8@Jb8rJLF~+
zc%6l1)D%x2pFFb|oFQ!{_E+E8B1o(EvuTx>cYc1G<j;IGr(WHZlomGzKgcJQ+dQs(
zwGYSo%<?-zp>Y@jIT@m7G6=Aom5B6maSC%;#Kuies)T75)@Y{FhS>3`@uXq7)w|m`
z(zEn)>l0KlwO-Yais?E`FW%*VU%8Kj4=x_K(a3Fj;tBLt(;T?9(E#i4=gt>9yMf|e
zUB9{AGV9@TUZla}fvPDh-V}9(tkzRmZ*39tfpmYEW_botas^4l2HbYL>0G4eV<0Ga
zcnktd)&_C`+3^pRP@iYgA&m#YLY<Y@F2&g?Bev*G5=qC1A7)jiy>rDhi+_ilb>++X
z(!s%@PO~i*uQN!O=XDOG0X+N+S~<ZTt{DlIk5Yf#118}DUT7&SRH<U-L$-^vTy}*B
zC^aw&-{6rjK0B=*^lRSzbYIkiatXukF@CN5l+K!tvj}wN)sKzyvWHHku!8bpBV-^y
z=+jfpGEU&`NeV?87}?Yw{wf3e%}eY%3?fjInAk>aF4e<6&v5>7UMNm()c(x|-9qaw
zcgQ8_eGzjbr?4(BJj6G}i?@Ck<hi?&P9}XL86UnX%~UjH+iD{63(W{Ti`7sj%^Ztm
zEcZbd^RyPaWq?cWx*d}}5bz%9(R7z}y&(k{`QRN-xAg=rIa7cD*@v^spI9Npva0*r
z-64Fp!{j#P*FraVr1AlARvBhSoq0sxd>5MD2^%lS3HxsFSQ&f~_c<e`e@Y*2UG_jn
z;#c2fnqpB<{pZp6#$)G`%O)J5GwYqQqZ?M&a>P5vS*lfMw$Jj4-snzY>U@g3{NaNN
z)hn)bw}uEFeS=U!1;9iPrKyEB$e$p^x;48zeT65ybL9SwVdxeV_#@AlU93P3IWa!z
zf0}?nK&gbm5nkCOdA#eYU7*&t*!z9Pu@WR{-#?~}N1_lw#FrYBe#7W{T?Jbn?|U=Z
zYIWdD!S~{JA)+^i&t{yk@FZcDW`DkpsH)?GWxqH4lVdXT>-!JQ6)5@}uD)&zTL#=*
zk*2$U#o;CW>L>ZqP4m}lYIU#kn{VYL^B-&`1xL%?w;x){9WJ;H+FuBfuL1*$j8JS%
zF!L$_QRqMg6fmHCS<cirz(Yus5+@InK|&~%XV8tt7y-7^;%JK5h^%ahPR0KC_ce~J
z+txBDF6n(yQ<kqm@%}7T)u#v7JKP^c3XCLFBu}TyjXpedo|sZ8^LBC<bf9SY)frlP
zp8U{<JlqscbDnjvs6D1(H>05bC3{3@$(sngp3&Z7$W;4Hp#9Uq58=nAPjn3LAX0Te
z6JDH%t*TN0hoYLUJQ6b5t@uqjyX5W%uN~xvC9jK=yp@IyT*CdaD*SZkvuBzN!bDLo
z(WL%M`>zjq3TO?4R#YMho+5Z4@@i6VwY%_7Yx!9Ga^bj7y~TQ<mPY3$c{nvntVJ<~
zAv}6;&~8QwrIe+4(kT`2EivLGS#RmWRRp?BI`)M=rJL>t(@8=xUY}|1)t%QKeuVtO
zJf~gFT3gvb$;5lbxjcA9oQ!hYxxikEb-@@FFRCtLaof2CnaY~nm2AkT<HimvH1`)t
z>FD{CY*Mp<Zp!-Z_xt_2k~IH5oTor~Z(i(pprlIicplfs(HbqnbZnaL)jxMWrC+;f
z2y}AR&zUUDO&mZbkG5RSf2ZPUne(=tf$4hMy#j~F?l~b>ugM)5qU-2E;e}e29l}_A
zAT_%X<P=S7K<|sp<zAWKt~P7ZQ`RiMT+X){6pI2}rO-7OJB052aXzGAsXc3l=L2!9
z$5RjP;`A3W*wpJZkK7jPn74R%D>Q>cW!0WqwbyoLT+{Sy{KjY|Rg7jyt90=Pnz*LL
z-#FA10s>^y?n3SE-$j#RJI?n62?g}eCN|D4E)q1zMg;bbQgkw|+J7;Cd+!z=^$6_V
z_6thy{MgL&Yx5aRU^KoADko8=rdN!|^$dZ;8LysBaNY-TEge`?Q#D%43kDaFjX2rr
z4&H10IM|l~Mv}e7sws0qzC0sp^|0)V>q{$R)gr&+e|62hy-#RW6y?Cpo|lpC?sBX5
zIy6rk$rkYGdilZc7D~<J<oz-3lNfxA?MXk3r~aDDqa`|ZxYc6zz&Dqqqi%M)!F$Yd
zy<a^xjhtdn7{%6(`Pv>uc5(?Egy1Zud9!}*^}ZHT@r&$pZo<>w%{H4UH+H1z$XQq6
zOCx9)UbC4zXgrs=Fj~fpM=ak3TGd$YH39Huon>>bvvt8NZ)MqAG*eX6rAnm=gpF8T
zoS*c9pCTb)ohvKbn#jQWRD~OrsuAVuB0}ZbrEDOC-1~sx>>gVGsanB#QM3jpDXj-2
zh?Qc-F3%Koyd2^Nz?fq#&eD@)+YbwtmnaIKvl!7<l>6)j5>RN+JgPkCkUrkvlUk)H
zk=fl|z9;ArZ2lrCS*Kmha^ZrRb=2R4_AwlLE&7yafmbD&SN5}G)+BE35Qz})wbz%Y
zHjmUXGDID&n-3U0-8eZ|LLtsgFac~;xpor6WRjmOpj@ID?H}fvAbFbS*^sz9<b$Ma
z>v>R6QO{$p9kp<V9d#|xp=*$@Nr6?bGEXZmx0<?J7g_+jo?8BfE{QM>jMmk`ySnaQ
z2!%RwpkpC|l^x_%D{z#AV%Qx@rJp;bD(O3zh$2;niP_xqVh{{%hyH$!TUG=iUX_&o
zNFk+T0vBe6I`!kb_o!92vfpxndubj77B4@DlZ;nWV$2kn5Zb>$J&;9`X9V&5QCOeI
zb(BH#@sJY~oJWz(z{KT5CKpnra@zuJ%z#`M{fTA*J<T8SR(?}gUMbE6zs+6AA#?da
zghX<M5b5M;eFmVRZR*;TN9w()!ea+}6@&sJVoG-7V><nl?KLNnGu2N({302CJx-$K
z`{F0#rZ4|C?E&#*PTask!(O*p(b4#=ho2$?N|gXGfy&QC06l5mV77MnV14P>e4_S%
zJWaYlkxTo>f%6@)hFsx(HXqE2c!7_^%V7ZB7^SM0rZFI3WTT)^wnZa5q>NTm@A8mG
zv`j#YRU0?b;&1Cztlm)q%?FR=GN-~--yqL$h6d!vufM*Mx4Gydsuh*nyQ8;(<V55W
ztJ91m-q0Ecg%V3dIgqA2(0{|ac~mi=^2}m}f(jFI_RP$Zw=flH$%B>tMfN>N<cNBm
zKY8dAnvV$3>4*H5m<BY^rc9ayPbN61hsp=|dL+moq$&E&+H$zI3hV)tR$K^53#S1u
zD;>~?;EJiT>6{tx&hxiS=Nl99{!a?p2+X($YV?}={WIF~WVaFd?`Z!?8PG^6C6w?Y
zNGmkrT7jYM9%m)I0A3XxsG<ehR`Ei%CTyU~txlJak^RdlqJcq#;R{4|$@D(q-XcFy
zsJuVY1u!x5_$!ZP;|EAj)tV}j{ASwZk1vV{0L;k1JNcq?LthOBt@IYK6XoPjFPyA2
zK`A8aG)G_r;ehD51k~_#Vgz4RT8(9bvL1H-;a%V0z*EveFMExq83K$#h;mBQU;4ey
zq1ggKZ8bMj$`%}FyC#AIa0}lxKtW!LZ5^0xoL<yjg`JZKu$L^y&K3VOL=Rhzl;A4Y
zsR#<$ApLW%Qo5{TG+_4YMe*f&R1)OVE2n{7<yk5kTOzNwAa^MCZazerhBoQ%c>-sU
z)DJK_{VG#b`Q^R_+7z*JU1EgT5@nm^Gcq<gv}4BpsREk#0jmhYq2hjOh&vLJ-N_{j
z;YC7h78Fd#xFMjTKI+1ktrZC;(4AZ7mld_`TxNX&e@`JYG_nN~!50G-cJhyjI2b;4
z5{ANg!)I}yk&a`(ij{?Et!#a3lNArwW;UW6K#0P*&6y(o<gNS!+#W67<V}n~P;4Vq
zRIKRD4lrOFV+OO|^k{l*vR5%=cmoHYGDz<hrpO4b?`pi1y|)Z*h#1I&=6~nRX6iOz
zE`=Ut@vBqAz(pu8b8Mz>5LuFR353D5Snlxer7;n>g+bzkFgP}fdcDmU+?B=3Sz>xq
zZ&bC=z>qG`U0ipC^#uZ%DtQ=$G(`I>OC+I28den4b%7FFN?cV>_~bO1(3by>@?VH0
z21tc+0=K<7x>zd+y9_Ms`SnC`su@z`)F0~Vq);LuiJe@m2J%Q2arTjXIHUpQeV`FB
z@<@=0+v>ft#)e{&3kMvC<qP7fiTjgy+1J=2a;Sd3bxk(Ch@oEGl7b-~79&1^XQ7Q&
zm?<nodWil*Rp6Yzm70&a_#AQco!3A_1k`<JMs^a(Y!R`(C4-m8B4vwjSE&3IagP^6
zu=FQIQe)*LwH77*Soj@AqQ4@an?OJ`1T<ls%a`yL5KAksOf&boF(35-o6=+EEu%i7
zpO+0dlRc8Z)%6>{+Cd=T=Lf+`?>XLp1lQ1Lr9m#8DPym6|E*5`U{8v)I!UYRZT}#q
zIsg9+S6iIO!2M^`Y{qXOJj~&tp719{=j$%)4Px+Q8EOkBFYA&LX!?FR2BZ-F4g}0%
zJ9@JAZqGdeYD~hV*mP0@8A)1eh_n2=VkN-+A}Gj!66?<E(#Vm6F_&={1ta11r4p<4
zqm65ZgXi}J5161vsQlv~)QDgQ7nt4m1gr1;WL=)1wa}rLFbTgT*I#5Ckj*wjfFrDM
z22I_j6$6U&2o^r?8djy-nY+2G@(Vxefa!uNN%l*M9>@k<qrgYCx%URf3{-@1Ls*$0
z=<~Z{8ab7}tqW5wv{HSm%=a{gSSm*l&W{(1vqE>_=E_;{E{@?&3zv{Dk7x!_CSQ&c
zGwzj?z8DsO8>bFtctK@dB13uhgLpP!OIvFg$ADnru6^nbahuM{6CL47wvDL|0c9U4
zH~uBzSPC`^7%8QFD9)e~t)9(rnkSqV@}l#tCDqvpU*Bh@G19L1!!n_PAF)fz089@}
z7>4zcn?s(SnhKIUI3))-S7gIcAf5YBUVKBiz^(GFW{trgp&)=5TSNn8{wO*oF#&_h
zXR-z{JgGBMKK}1~uKI2^gzHP#l)rfJ0+SxrO@8>_)MjUrLP7$ii|$fDlT3x7rCU^&
zP+M~hn+LyH@Dv*+2$4!(Uwp4D*E8epFsv#x>hDpd8x8;pGBQmh+A@>3u_3gMf&KMs
ztQ0pU2&f*!1~_Vo@hF#z3FCOuA@kQ1+cJw3vg>u6oYae~d_EVjcV_Tk7b-DPpzWxB
zZu%-aGS!N2XzCqbE=2v=?Du_bLD7aXBAPwux~XECdi2^Sj)`U+Dr}zp(UGL42{chq
zUwrGoQZM?|KN$l-$bt7yWr~%0js8KR=PPTP|9peKy!qc>|3AJwl?j=vy-{iLfFIkx
z&Y2MSr}!`h1mf3nBZ3EK3)-D(9<IqqKV^f}y!>W7ZPdn*{*08*J?|h)G^uRv$Y$c0
z2PzI|dmYSAau0`p$LFy5ZD`4C+PpPQ7>{?54jro^H=0~v2Y4WJ<^AIUTzp~zD*;xb
zovi^n@G~hvXFV154xu_GajYb>oKq5Sj*_+bZ|<pha#Z3nCB4r1zd@EMRt05!t`PbL
ze>Kfh>Z!Z+WI9VQ*&!FOg|UcH1g)b9`u#`QlbXY)%!W?AQ0@DfgvG7nh2p0B{?JaN
z!-$$JbuM$KI<_oY8|Cx>9V*x6_>_52CY?&@Nomcsh+t3X5FrAL$In+k@4s<q|J76_
z4$MBviS7(@`hL?RuzdC-WS~2e6`-?*SI!kKG7_g<EM4qw21v!?A0PS3Yjn=gaDDVn
z6ai-Nh9_YwWka!B!0Qq0d_~6{N5KbZ>YWme@34;NfGSXVY6bxJZUVbc@*tlS48?nm
z)5T6Mc+f303f~JssQw~|1o4s`p2%w0@G~GS$`F-Vofz@cIE(usSvodO_oJPyiz8}|
zh_K%}xNWeM2QpCZ!A!#o5W;}wRK0!@0{Z-e-zr*=HTq{*ilU;p5|aGBGzh`TLWK_J
zA|PN6LFmod&K=qu^@QMsFOQg)X=9gz7E`VKp2#OJoR&PHeE2YID)uZX?dtiC+WXMT
zdwP-W;|>ACzO`mCuhgd<X&D`K=ds>O!{$nvx`jgOCkoAQ-NpyXUIU2KkSwj9GoZ+Q
zy(d8kLIpy15MU?x7jB4#I!5F@Vq9e-m@vcOJnw0zGEYGvc2l;!Kl_Dv#O>vyEU=qp
zH99S%)X28jkhuaw1N~SCQFYvp1CBu>ML3NwVe_#skVBWSL+qJXb^(d%d9Q|ZTp~ku
z@Trsrm$FM`Rw(P3b=?-Zpmb%-uEx0(i(S?M2q-d984A)H>E`Ee6IZiqvq?w?=7#rp
z!?lFB?~pEKZ$TB>1U<La<U(V9Z>Caq6Ltg?)V7#)`0NfMx_5$pE)g6O0te%)Dwn_3
z!4nkPgo3tQybvTxBw}=Tb~R(M-UN&JhL4z_1WPr6CAcc($^z<HV5Yb#F4+u~W^Ggu
zw<?OG5E6bTf~wjDzX+N;8UJ6e#osF=A9+-gOs0a3<|}iwM_j;7kj0yXk;!x@Xu^-x
zSE&uFb!Cb*siL3D)8&j^WEKgjstvP1Oz~@>ZJf5Tagm~wk@1k6ca>E;pYot<2fE9T
z5);*+pmCc|ztzY(8K&mnv~?Y@e4=_G;WVuA1&jc1grtLet#V#yx;{mp3s14;s=DkD
zZ-&HG5JC3W4piLARWeMsG3++<R%(kRi=lvh&dtm`iyG)XE+F_l4hRtu0%OR@g@miC
z{0k@q7Z8X?SXld9Kci0#X$2rH_IZDooRb=>m7F`Y-CLhK>dn%E;J|`r6NJB=ar2cr
z2q>71?e)V~WM@h%NmK|QN{ou=O#EKEPSC%Uy!AX;ME2v*4w%Onu%Qe^={fUmRY%O~
zxWYU%n?&FP_t;@CnXT^RSc|9lf-dA^@xDLGu9OQF8(bo?(?k954*Tn(-UoJY(B^*m
zHM5CYSgj&7_jtMas=q-KRfoxU&vHJg=2;e`YE@|sH|Uz2uP$soD;DxGFuk2`ym9{|
zte=+w7Bg+v%eJds<yMo=hExSVr!0PA)|xTGF*pcI)aV7nL-!4}HU&KT2#=8e$9D9Z
zPbO#OAAN6|+<qyqB-frV;%cK8=^XNV+b_3fRpf6s(C=t+Xp-&<$n@%mBP~_?gHO=z
z%@FBMq%KfS+SP<Gl|mEGm3)@deau&A*RY*Na=}0i%d7|q+wvg~OTT(4EtK3Q^Y89!
ziZcL^NGQRdVZ~pHGvO&vG{G)ck7#G!lv$@6zaD;uh;a3-)5+UfVYOlhNBh?dbelR*
zP);OoO?lp_s^iKFo!+)1&>*+R$WIfDNuLrKZzZ?7u1@Dz@fP3)QgG3_e|5ANCaF^^
z_%&8Yo{{vMvubi<yKn*FWQJKWmJMaoy~%-H20UdIF<guve$vI4UAQ5hA6K6a8d$<r
zQWtO@5g5|3w}B7Cw82!<XzzON5L?{}aZAX?$mBwP=(EJ=$cvM;nUZMK=X&_%Dj`LA
zy}d_-@N(^|{!~e5vXlZcFs9dfVpI;(l(&JVjdsIP354jVQ~a5hAOXyJL}(XR*~f12
z5;&1;Evuek%CC!Ey2vR`Q_Tf5UVbX3s)dZ-N+X!n4%6uEA!09l>BGwe5@+%SjidVi
zB#9E5E<#y6PF*r{PTBjQlxr(EbyrNrGgb~r#t*@d6U(85Hsx$!WKo;kW~+u(e-wkA
ziqc@P8!}KGMZ-PoB8VYY46S~hBhpov>!73=ARLegLfo#(DMtOp6gF&#2A8NtH*QbF
z!DF@MyqOdy!KN#1CE03nD`M7<rLh~}Txi6OiW}(4Erd9;uItq)i75IhgX)i5s0{6q
zBYcIzlzlU+{oCv-t$<t~s~drWb50TXU-e*`J+>HXf)unX<Wol$!5&=(7%It*>zptF
zC+HCot2VDSvl-G?YB_0OARVcgp-!__vqsek4yi&eAbli}u-00PfKPbw6=u)O@8^G*
zz}WyK%dGC{_QAq9pRIh%L+0Sel=i{k-sjs`D<4M)HYaIxH0_s}AbO|^2doZlGTHZ8
z0zfc&w$0wb@t+&b%$VW;b|n$YWv=zDLb~4pdi@w5S^!P=j1!*arNIh_(S=JX8m~YN
z1hT-)B=Wj<#6Jf=)+NsZYx#!XKDclTdE7w_Cf5PEOyU99oswhI<+mxaS+XJoZ%Ccw
z(-L00Gi#PsV51=}yzjU7BuM~h_}Q+~Rf!ZV?!Huw$ppFpqTUn?mIV-#AZv4nx$}*~
z`#id={7O%UJSVV|N-nHv*bS77bK40pGwyy~enh<?MH0@hU|N<SfhnSh(km0j>OuoG
z#h;4sh87#715$6Vb&aZ(u*XW#1#oI7#a^RlUeyN8UBb}hk4rlvWl41wM{i|aR6C)J
zZ+t1pAAH!`v3l2aiA_`XB_svH1*AE$h){Y)r(F#YP-hn*)&E^<6bPWD&@m0GlU!9P
za-~&=E{I*>fr?*5NdJ;1n0tQXdKg%D#p<b%4v{TiH^Barv!q4X#%!fXUo?APePO=Y
zgSyE5ux77@iClF>09O~oqwoJ=WazfkTnpsVEzfS(Ai_%ebWn{&|3UYU@oN%TKJ-XP
zHxUwt6`)l)V?v{98x3Xl4Od_FA92cjqnpfZ=rTiW%768KRXfg<k)|M}nxm97-y@Mu
zXvCzVQbQiMOp!0M)Eca)82dN6Bd`TPz|C-rZJjtR{0+hYQtcA|MA2}@56|epujFI2
zM>YtdAQvW+w2)m@{+A@$w{3ETj#8+LK-+Ew+{B0>$?uf1Dd*rWa4*;D@UsI^A9@{7
zl0!nf@Q@bWUx`e!`L~J28IeVhx^&+DC)a}7cw;GwCvqbp<c8zj={1c2G|1UN&6wH4
zyq83T($EM##~6LrdEVxA2;fP7m8{V8in$VY<7h5i@O~jQJx-`nGX1I0g7Lb!jOQ4a
z+pzMxXSR9Ae{RS&5#3M4AHk-%tl>7cKYnr_yi=Pc+y1F+A-i3+WjZqXyb8V2C-B&e
zbDH&C6}O#GM8qqjrWsHfb1LC8SB2RkjoyYV3-<gfZ+k9aqY-c~4u`ipF*=&{uVY~N
z=DMJ82Vi00{LiYi_tNSNb+F~5$B8Ru;u@~KAmG%-F}+^8FU^<V1>d<_L>6~irx*%P
zS#mqq%9#dRlFC6*a?_0w?1bDv;|(G1rFS;yBTP4jKfO~Fc|Q`GUKMb3q3p)o6UswH
z$I%(_SZ*T(WGnwArLnOKK?r*HhKO{DGo_Gk9L1;u8ei6&Vl2nR0nDA`5R8f1?KOCG
zqR}A&LeSCk4ICGWASBfDBzjLPAIhTtQBT?=N&Qs$dh77N(A*5^Ja;+HHCqDuCN=8)
zT08A`p}^BHU6RJtSiV2C%u_)t(}RSy3pNDVz(PU<YI6;T#?r~DEZgA%fIJhb8W!%d
zD*yR}PBNx<g>ad%VrE0*T*1$&1~d4@J%=le)aBAN*-egRTN@6^u<%c8z5uq{R1>fv
zCcAC%cP3^#zy<k=-pX?w_A#pmLdPmH-Z8n|e_(-4(+IE!M!N2Ha6D=Ig3^V$uJNNL
zX(0+8F0Q5msZRA3<H#Kqq$@@O*t31YN;DV##%yS13!g}z<2O%BOqa6aM#O*1e*KR*
zN}*v9%~Ok4vibk}O&^-kt_1yiMi-NulMl@ykD^I<f6GjN2KqAn|0kCNe&OByT<(20
URVo1e^fQLCyt-Vuj7i}C0Q1NVsQ>@~

literal 0
HcmV?d00001

diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/future-development-and-limitations.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/future-development-and-limitations.html
new file mode 100644
index 0000000..cd09ff8
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/future-development-and-limitations.html
@@ -0,0 +1,33 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.3.2. Future Development and Limitations</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="x32.html" title="3.3. x32">
+<link rel="prev" href="support.html" title="3.3.1. Support">
+<link rel="next" href="using-x32-right-now.html" title="3.3.3. Using x32 Right Now">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.3.2. Future Development and Limitations">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="future-development-and-limitations"></a>3.3.2. Future Development and Limitations</h3></div></div></div>
+<p>
+            As of this Yocto Project release, the x32 psABI kernel and library interfaces 
+            specifications are not finalized.
+        </p>
+<p>
+            Future Plans for the x32 psABI in the Yocto Project include the following:
+            </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>Enhance and fix the few remaining recipes so they  
+                    work with and support x32 toolchains.</p></li>
+<li class="listitem"><p>Enhance RPM Package Manager (RPM) support for x32 binaries.</p></li>
+<li class="listitem"><p>Support larger images.</p></li>
+<li class="listitem"><p>Integrate x32 recipes, toolchain, and kernel changes from 
+                    <code class="filename">experimental/meta-x32</code> into OE-core.</p></li>
+</ul></div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/handbook.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/handbook.html
new file mode 100644
index 0000000..7cc5c24
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/handbook.html
@@ -0,0 +1,25 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.1.3. documentation</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-core.html" title="4.1. Top level core components">
+<link rel="prev" href="structure-core-build.html" title="4.1.2. build/">
+<link rel="next" href="structure-core-meta.html" title="4.1.4. meta/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.3. documentation">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="handbook"></a>4.1.3. <code class="filename">documentation</code>
+</h3></div></div></div>
+<p>
+            This directory holds the source for the Yocto Project documentation
+            as well as templates and tools that allow you to generate PDF and HTML
+            versions of the manuals.  
+            Each manual is contained in a sub-folder.  
+            For example, the files for this manual reside in 
+            <code class="filename">poky-ref-manual</code>.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/index.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/index.html
new file mode 100644
index 0000000..3a7a572
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/index.html
@@ -0,0 +1,301 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>The Yocto Project Reference Manual</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="next" href="intro.html" title="Chapter 1. Introduction">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div lang="en" class="book" title="The Yocto Project Reference Manual">
+<div class="titlepage">
+<div>
+<div><h1 class="title">
+<a name="poky-ref-manual"></a>
+		  The Yocto Project Reference Manual
+		</h1></div>
+<div><div class="authorgroup">
+            <div class="author">
+<h3 class="author">
+<span class="firstname">Richard</span> <span class="surname">Purdie</span>
+</h3>
+<div class="affiliation">
+                    <span class="orgname">Linux Foundation<br></span>
+                </div>
+<code class="email">&lt;<a class="email" href="mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt;</code>
+</div>
+
+        </div></div>
+<div><p class="copyright">Copyright © 2010-2012 Linux Foundation</p></div>
+<div><div class="legalnotice" title="Legal Notice">
+<a name="id461272"></a>
+      <p>
+        Permission is granted to copy, distribute and/or modify this document under 
+        the terms of the <a class="ulink" href="http://creativecommons.org/licenses/by-sa/2.0/uk/" target="_self">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</a> as published by Creative Commons.
+      </p>
+      <div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+          Due to production processes, there could be differences between the Yocto Project
+          documentation bundled in the release tarball and the
+          <a class="link" href="../poky-ref-manual/index.html" target="_self">Yocto Project Reference Manual</a> on
+          the <a class="ulink" href="http://www.yoctoproject.org" target="_self">Yocto Project</a> website.
+          For the latest version of this manual, see the manual on the website.
+      </div>
+    </div></div>
+<div><div class="revhistory"><table border="1" width="100%" summary="Revision history">
+<tr><th align="left" valign="top" colspan="2"><b>Revision History</b></th></tr>
+            <tr>
+<td align="left">Revision 4.0+git</td>
+<td align="left">24 November 2010</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 0.9 Release</td></tr>
+            <tr>
+<td align="left">Revision 1.0</td>
+<td align="left">6 April 2011</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 1.0 Release.</td></tr>
+            <tr>
+<td align="left">Revision 1.0.1</td>
+<td align="left">23 May 2011</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 1.0.1 Release.</td></tr>
+            <tr>
+<td align="left">Revision 1.1</td>
+<td align="left">6 October 2011</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 1.1 Release.</td></tr>
+            <tr>
+<td align="left">Revision 1.2</td>
+<td align="left">April 2012</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 1.2 Release.</td></tr>
+            <tr>
+<td align="left">Revision 1.3</td>
+<td align="left">Sometime in 2012</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 1.3 Release.</td></tr>
+        </table></div></div>
+</div>
+<hr>
+</div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="chapter"><a href="intro.html">1. Introduction</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="intro-welcome.html">1.1. Introduction</a></span></dt>
+<dt><span class="section"><a href="intro-manualoverview.html">1.2. Documentation Overview</a></span></dt>
+<dt><span class="section"><a href="intro-requirements.html">1.3. System Requirements</a></span></dt>
+<dt><span class="section"><a href="intro-getit.html">1.4. Obtaining the Yocto Project</a></span></dt>
+<dt><span class="section"><a href="intro-getit-dev.html">1.5. Development Checkouts</a></span></dt>
+</dl></dd>
+<dt><span class="chapter"><a href="usingpoky.html">2. Using the Yocto Project</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="usingpoky-build.html">2.1. Running a Build</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="build-overview.html">2.1.1. Build Overview</a></span></dt>
+<dt><span class="section"><a href="building-an-image-using-gpl-components.html">2.1.2. Building an Image Using GPL Components</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="usingpoky-install.html">2.2. Installing and Using the Result</a></span></dt>
+<dt><span class="section"><a href="usingpoky-debugging.html">2.3. Debugging Build Failures</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="usingpoky-debugging-taskfailures.html">2.3.1. Task Failures</a></span></dt>
+<dt><span class="section"><a href="usingpoky-debugging-taskrunning.html">2.3.2. Running Specific Tasks</a></span></dt>
+<dt><span class="section"><a href="usingpoky-debugging-dependencies.html">2.3.3. Dependency Graphs</a></span></dt>
+<dt><span class="section"><a href="usingpoky-debugging-bitbake.html">2.3.4. General BitBake Problems</a></span></dt>
+<dt><span class="section"><a href="usingpoky-debugging-buildfile.html">2.3.5. Building with No Dependencies</a></span></dt>
+<dt><span class="section"><a href="usingpoky-debugging-variables.html">2.3.6. Variables</a></span></dt>
+<dt><span class="section"><a href="recipe-logging-mechanisms.html">2.3.7. Recipe Logging Mechanisms</a></span></dt>
+<dt><span class="section"><a href="usingpoky-debugging-others.html">2.3.8. Other Tips</a></span></dt>
+</dl></dd>
+</dl></dd>
+<dt><span class="chapter"><a href="technical-details.html">3. Technical Details</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="usingpoky-components.html">3.1. Yocto Project Components</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="usingpoky-components-bitbake.html">3.1.1. BitBake</a></span></dt>
+<dt><span class="section"><a href="usingpoky-components-metadata.html">3.1.2. Metadata (Recipes)</a></span></dt>
+<dt><span class="section"><a href="usingpoky-components-classes.html">3.1.3. Classes</a></span></dt>
+<dt><span class="section"><a href="usingpoky-components-configuration.html">3.1.4. Configuration</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="shared-state-cache.html">3.2. Shared State Cache</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="overall-architecture.html">3.2.1. Overall Architecture</a></span></dt>
+<dt><span class="section"><a href="checksums.html">3.2.2. Checksums (Signatures)</a></span></dt>
+<dt><span class="section"><a href="shared-state.html">3.2.3. Shared State</a></span></dt>
+<dt><span class="section"><a href="tips-and-tricks.html">3.2.4. Tips and Tricks</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="x32.html">3.3. x32</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="support.html">3.3.1. Support</a></span></dt>
+<dt><span class="section"><a href="future-development-and-limitations.html">3.3.2. Future Development and Limitations</a></span></dt>
+<dt><span class="section"><a href="using-x32-right-now.html">3.3.3. Using x32 Right Now</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="licenses.html">3.4. Licenses</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="usingpoky-configuring-LIC_FILES_CHKSUM.html">3.4.1. Tracking License Changes</a></span></dt>
+<dt><span class="section"><a href="enabling-commercially-licensed-recipes.html">3.4.2. Enabling Commercially Licensed Recipes</a></span></dt>
+</dl></dd>
+</dl></dd>
+<dt><span class="chapter"><a href="ref-structure.html">4. Source Directory Structure</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="structure-core.html">4.1. Top level core components</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="structure-core-bitbake.html">4.1.1. <code class="filename">bitbake/</code></a></span></dt>
+<dt><span class="section"><a href="structure-core-build.html">4.1.2. <code class="filename">build/</code></a></span></dt>
+<dt><span class="section"><a href="handbook.html">4.1.3. <code class="filename">documentation</code></a></span></dt>
+<dt><span class="section"><a href="structure-core-meta.html">4.1.4. <code class="filename">meta/</code></a></span></dt>
+<dt><span class="section"><a href="structure-core-meta-demoapps.html">4.1.5. <code class="filename">meta-demoapps/</code></a></span></dt>
+<dt><span class="section"><a href="structure-core-meta-rt.html">4.1.6. <code class="filename">meta-rt/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-skeleton.html">4.1.7. <code class="filename">meta-skeleton/</code></a></span></dt>
+<dt><span class="section"><a href="structure-core-scripts.html">4.1.8. <code class="filename">scripts/</code></a></span></dt>
+<dt><span class="section"><a href="structure-core-script.html">4.1.9. <code class="filename">oe-init-build-env</code></a></span></dt>
+<dt><span class="section"><a href="structure-basic-top-level.html">4.1.10. <code class="filename">LICENSE, README, and README.hardware</code></a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="structure-build.html">4.2. The Build Directory - <code class="filename">build/</code></a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="structure-build-pseudodone.html">4.2.1. <code class="filename">build/pseudodone</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-conf-local.conf.html">4.2.2. <code class="filename">build/conf/local.conf</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-conf-bblayers.conf.html">4.2.3. <code class="filename">build/conf/bblayers.conf</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-conf-sanity_info.html">4.2.4. <code class="filename">build/conf/sanity_info</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-downloads.html">4.2.5. <code class="filename">build/downloads/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-sstate-cache.html">4.2.6. <code class="filename">build/sstate-cache/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp.html">4.2.7. <code class="filename">build/tmp/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-buildstats.html">4.2.8. <code class="filename">build/tmp/buildstats/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-cache.html">4.2.9. <code class="filename">build/tmp/cache/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-deploy.html">4.2.10. <code class="filename">build/tmp/deploy/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-deploy-deb.html">4.2.11. <code class="filename">build/tmp/deploy/deb/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-deploy-rpm.html">4.2.12. <code class="filename">build/tmp/deploy/rpm/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-deploy-licenses.html">4.2.13. <code class="filename">build/tmp/deploy/licenses/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-deploy-images.html">4.2.14. <code class="filename">build/tmp/deploy/images/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-deploy-ipk.html">4.2.15. <code class="filename">build/tmp/deploy/ipk/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-sysroots.html">4.2.16. <code class="filename">build/tmp/sysroots/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-stamps.html">4.2.17. <code class="filename">build/tmp/stamps/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-log.html">4.2.18. <code class="filename">build/tmp/log/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-pkgdata.html">4.2.19. <code class="filename">build/tmp/pkgdata/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-work.html">4.2.20. <code class="filename">build/tmp/work/</code></a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="structure-meta.html">4.3. The Metadata - <code class="filename">meta/</code></a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="structure-meta-classes.html">4.3.1. <code class="filename">meta/classes/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-conf.html">4.3.2. <code class="filename">meta/conf/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-conf-machine.html">4.3.3. <code class="filename">meta/conf/machine/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-conf-distro.html">4.3.4. <code class="filename">meta/conf/distro/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-bsp.html">4.3.5. <code class="filename">meta/recipes-bsp/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-connectivity.html">4.3.6. <code class="filename">meta/recipes-connectivity/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-core.html">4.3.7. <code class="filename">meta/recipes-core/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-devtools.html">4.3.8. <code class="filename">meta/recipes-devtools/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-extended.html">4.3.9. <code class="filename">meta/recipes-extended/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-gnome.html">4.3.10. <code class="filename">meta/recipes-gnome/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-graphics.html">4.3.11. <code class="filename">meta/recipes-graphics/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-kernel.html">4.3.12. <code class="filename">meta/recipes-kernel/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-multimedia.html">4.3.13. <code class="filename">meta/recipes-multimedia/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-qt.html">4.3.14. <code class="filename">meta/recipes-qt/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-rt.html">4.3.15. <code class="filename">meta/recipes-rt/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-sato.html">4.3.16. <code class="filename">meta/recipes-sato/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-support.html">4.3.17. <code class="filename">meta/recipes-support/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-site.html">4.3.18. <code class="filename">meta/site/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-txt.html">4.3.19. <code class="filename">meta/recipes.txt</code></a></span></dt>
+</dl></dd>
+</dl></dd>
+<dt><span class="chapter"><a href="ref-bitbake.html">5. BitBake</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="ref-bitbake-parsing.html">5.1. Parsing</a></span></dt>
+<dt><span class="section"><a href="ref-bitbake-providers.html">5.2. Preferences and Providers</a></span></dt>
+<dt><span class="section"><a href="ref-bitbake-dependencies.html">5.3. Dependencies</a></span></dt>
+<dt><span class="section"><a href="ref-bitbake-tasklist.html">5.4. The Task List</a></span></dt>
+<dt><span class="section"><a href="ref-bitbake-runtask.html">5.5. Running a Task</a></span></dt>
+<dt><span class="section"><a href="ref-bitbake-commandline.html">5.6. BitBake Command Line</a></span></dt>
+<dt><span class="section"><a href="ref-bitbake-fetchers.html">5.7. Fetchers</a></span></dt>
+</dl></dd>
+<dt><span class="chapter"><a href="ref-classes.html">6. Classes</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="ref-classes-base.html">6.1. The base class - <code class="filename">base.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-autotools.html">6.2. Autotooled Packages - <code class="filename">autotools.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-update-alternatives.html">6.3. Alternatives - <code class="filename">update-alternatives.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-update-rc.d.html">6.4. Initscripts - <code class="filename">update-rc.d.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-binconfig.html">6.5. Binary config scripts - <code class="filename">binconfig.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-debian.html">6.6. Debian renaming - <code class="filename">debian.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-pkgconfig.html">6.7. Pkg-config - <code class="filename">pkgconfig.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-src-distribute.html">6.8. Distribution of sources - <code class="filename">src_distribute_local.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-perl.html">6.9. Perl modules - <code class="filename">cpan.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-distutils.html">6.10. Python extensions - <code class="filename">distutils.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-devshell.html">6.11. Developer Shell - <code class="filename">devshell.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-packagegroup.html">6.12. Package Groups - <code class="filename">packagegroup.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-package.html">6.13. Packaging - <code class="filename">package*.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-kernel.html">6.14. Building kernels - <code class="filename">kernel.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-image.html">6.15. Creating images - <code class="filename">image.bbclass</code> and <code class="filename">rootfs*.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-sanity.html">6.16. Host System sanity checks - <code class="filename">sanity.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-insane.html">6.17. Generated output quality assurance checks - <code class="filename">insane.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-siteinfo.html">6.18. Autotools configuration data cache - <code class="filename">siteinfo.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-useradd.html">6.19. Adding Users - <code class="filename">useradd.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-externalsrc.html">6.20. Using External Source - <code class="filename">externalsrc.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-others.html">6.21. Other Classes</a></span></dt>
+</dl></dd>
+<dt><span class="chapter"><a href="ref-images.html">7. Images</a></span></dt>
+<dt><span class="chapter"><a href="ref-features.html">8. Reference: Features</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="ref-features-distro.html">8.1. Distro</a></span></dt>
+<dt><span class="section"><a href="ref-features-machine.html">8.2. Machine</a></span></dt>
+<dt><span class="section"><a href="ref-features-image.html">8.3. Images</a></span></dt>
+</dl></dd>
+<dt><span class="chapter"><a href="ref-variables-glos.html">9. Variables Glossary</a></span></dt>
+<dd><dl><dt><span class="glossary"><a href="ref-variables-glos.html#ref-variables-glossary">Glossary</a></span></dt></dl></dd>
+<dt><span class="chapter"><a href="ref-varlocality.html">10. Variable Context</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="ref-varlocality-configuration.html">10.1. Configuration</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="ref-varlocality-config-distro.html">10.1.1. Distribution (Distro)</a></span></dt>
+<dt><span class="section"><a href="ref-varlocality-config-machine.html">10.1.2. Machine</a></span></dt>
+<dt><span class="section"><a href="ref-varlocality-config-local.html">10.1.3. Local</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="ref-varlocality-recipes.html">10.2. Recipes</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="ref-varlocality-recipe-required.html">10.2.1. Required</a></span></dt>
+<dt><span class="section"><a href="ref-varlocality-recipe-dependencies.html">10.2.2. Dependencies</a></span></dt>
+<dt><span class="section"><a href="ref-varlocality-recipe-paths.html">10.2.3. Paths</a></span></dt>
+<dt><span class="section"><a href="ref-varlocality-recipe-build.html">10.2.4. Extra Build Information</a></span></dt>
+</dl></dd>
+</dl></dd>
+<dt><span class="chapter"><a href="faq.html">11. FAQ</a></span></dt>
+<dt><span class="chapter"><a href="resources.html">12. Contributing to the Yocto Project</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="resources-intro.html">12.1. Introduction</a></span></dt>
+<dt><span class="section"><a href="resources-bugtracker.html">12.2. Tracking Bugs</a></span></dt>
+<dt><span class="section"><a href="resources-mailinglist.html">12.3. Mailing lists</a></span></dt>
+<dt><span class="section"><a href="resources-irc.html">12.4. Internet Relay Chat (IRC)</a></span></dt>
+<dt><span class="section"><a href="resources-links.html">12.5. Links</a></span></dt>
+<dt><span class="section"><a href="resources-contributions.html">12.6. Contributions</a></span></dt>
+</dl></dd>
+</dl>
+</div>
+    
+
+    
+
+    
+
+    
+
+    
+
+    
+
+    
+
+    
+
+    
+
+    
+
+    
+
+    
+
+    
+
+
+
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-getit-dev.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-getit-dev.html
new file mode 100644
index 0000000..625693b
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-getit-dev.html
@@ -0,0 +1,26 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.5. Development Checkouts</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="intro.html" title="Chapter 1. Introduction">
+<link rel="prev" href="intro-getit.html" title="1.4. Obtaining the Yocto Project">
+<link rel="next" href="usingpoky.html" title="Chapter 2. Using the Yocto Project">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.5. Development Checkouts">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="intro-getit-dev"></a>1.5. Development Checkouts</h2></div></div></div>
+<p>
+        Development using the Yocto Project requires a local 
+        <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>. 
+        You can set up the source directory by downloading a Yocto Project release tarball and unpacking it,  
+        or by cloning a copy of the upstream
+        <a class="link" href="../dev-manual/poky.html" target="_self">Poky</a> Git repository.
+        For information on both these methods, see the
+        "<a class="link" href="../dev-manual/getting-setup.html" target="_self">Getting Setup</a>" 
+        section in the Yocto Project Development Manual.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-getit.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-getit.html
new file mode 100644
index 0000000..eea7414
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-getit.html
@@ -0,0 +1,35 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.4. Obtaining the Yocto Project</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="intro.html" title="Chapter 1. Introduction">
+<link rel="prev" href="intro-requirements.html" title="1.3. System Requirements">
+<link rel="next" href="intro-getit-dev.html" title="1.5. Development Checkouts">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.4. Obtaining the Yocto Project">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="intro-getit"></a>1.4. Obtaining the Yocto Project</h2></div></div></div>
+<p>
+        The Yocto Project development team makes the Yocto Project available through a number 
+        of methods:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em>Releases:</em></span> Stable, tested releases are available through 
+                <a class="ulink" href="http://downloads.yoctoproject.org/releases/yocto/" target="_self">http://downloads.yoctoproject.org/releases/yocto/</a>.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Nightly Builds:</em></span> These releases are available at
+                <a class="ulink" href="http://autobuilder.yoctoproject.org/nightly" target="_self">http://autobuilder.yoctoproject.org/nightly</a>.  
+                These builds include Yocto Project releases, meta-toolchain tarball installation scripts, and 
+                experimental builds.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Yocto Project Website:</em></span> You can find releases
+                of the Yocto Project and supported BSPs at the
+                <a class="ulink" href="http://www.yoctoproject.org" target="_self">Yocto Project website</a>.
+                Along with these downloads, you can find lots of other information at this site.  
+                </p></li>
+</ul></div>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-manualoverview.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-manualoverview.html
new file mode 100644
index 0000000..712c8ca
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-manualoverview.html
@@ -0,0 +1,73 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.2. Documentation Overview</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="intro.html" title="Chapter 1. Introduction">
+<link rel="prev" href="intro-welcome.html" title="1.1. Introduction">
+<link rel="next" href="intro-requirements.html" title="1.3. System Requirements">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.2. Documentation Overview">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="intro-manualoverview"></a>1.2. Documentation Overview</h2></div></div></div>
+<p>
+        This reference manual consists of the following:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em>
+                <a class="link" href="usingpoky.html" title="Chapter 2. Using the Yocto Project">Using the Yocto Project</a>:</em></span> This chapter
+                provides an overview of the components that make up the Yocto Project 
+                followed by information about debugging images created in the Yocto Project.
+                </p></li>
+<li class="listitem"><p><span class="emphasis"><em>
+                <a class="link" href="technical-details.html" title="Chapter 3. Technical Details">Technical Details</a>:</em></span> 
+                This chapter describes fundamental Yocto Project components as well as an explanation
+                behind how the Yocto Project uses shared state (sstate) cache to speed build time.
+                </p></li>
+<li class="listitem"><p><span class="emphasis"><em>
+                <a class="link" href="ref-structure.html" title="Chapter 4. Source Directory Structure">Directory Structure</a>:</em></span> 
+                This chapter describes the 
+                <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a> created
+                either by unpacking a released Yocto Project tarball on your host development system, 
+                or by cloning the upstream 
+                <a class="link" href="../dev-manual/poky.html" target="_self">Poky</a> Git repository.
+                </p></li>
+<li class="listitem"><p><span class="emphasis"><em>
+                <a class="link" href="ref-bitbake.html" title="Chapter 5. BitBake">BitBake</a>:</em></span> 
+                This chapter provides an overview of the BitBake tool and its role within 
+                the Yocto Project.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>
+                <a class="link" href="ref-classes.html" title="Chapter 6. Classes">Classes</a>:</em></span> 
+                This chapter describes the classes used in the Yocto Project.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>
+                <a class="link" href="ref-images.html" title="Chapter 7. Images">Images</a>:</em></span> 
+                This chapter describes the standard images that the Yocto Project supports.
+                </p></li>
+<li class="listitem"><p><span class="emphasis"><em>
+                <a class="link" href="ref-features.html" title="Chapter 8. Reference: Features">Features</a>:</em></span> 
+                This chapter describes mechanisms for creating distribution, machine, and image 
+                features during the build process using the OpenEmbedded build system.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>
+                <a class="link" href="ref-variables-glos.html" title="Chapter 9. Variables Glossary">Variables Glossary</a>:</em></span> 
+                This chapter presents most variables used by the OpenEmbedded build system, which
+                using BitBake.
+                Entries describe the function of the variable and how to apply them.
+                </p></li>
+<li class="listitem"><p><span class="emphasis"><em>
+                <a class="link" href="ref-varlocality.html" title="Chapter 10. Variable Context">Variable Context</a>:</em></span> 
+                This chapter provides variable locality or context.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>
+                <a class="link" href="faq.html" title="Chapter 11. FAQ">FAQ</a>:</em></span> 
+                This chapter provides answers for commonly asked questions in the Yocto Project
+                development environment.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>
+                <a class="link" href="resources.html" title="Chapter 12. Contributing to the Yocto Project">Contributing to the Yocto Project</a>:</em></span> 
+                This chapter provides guidance on how you can contribute back to the Yocto 
+                Project.</p></li>
+</ul></div>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-requirements.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-requirements.html
new file mode 100644
index 0000000..220c2ff
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-requirements.html
@@ -0,0 +1,21 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.3. System Requirements</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="intro.html" title="Chapter 1. Introduction">
+<link rel="prev" href="intro-manualoverview.html" title="1.2. Documentation Overview">
+<link rel="next" href="intro-getit.html" title="1.4. Obtaining the Yocto Project">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.3. System Requirements">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="intro-requirements"></a>1.3. System Requirements</h2></div></div></div>
+<p>
+        For Yocto Project system requirements, see the
+        <a class="link" href="../yocto-project-qs/yp-resources.html" target="_self">
+        What You Need and How You Get It</a> section in the Yocto Project Quick Start.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-welcome.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-welcome.html
new file mode 100644
index 0000000..378b87f
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro-welcome.html
@@ -0,0 +1,30 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.1. Introduction</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="intro.html" title="Chapter 1. Introduction">
+<link rel="prev" href="intro.html" title="Chapter 1. Introduction">
+<link rel="next" href="intro-manualoverview.html" title="1.2. Documentation Overview">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.1. Introduction">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="intro-welcome"></a>1.1. Introduction</h2></div></div></div>
+<p>
+        This manual provides reference information for the current release of the Yocto Project.
+        The Yocto Project is an open-source collaboration project focused on embedded Linux
+        developers.
+        Amongst other things, the Yocto Project uses the OpenEmbedded build system, which 
+        is based on the Poky project, to construct complete Linux images.
+        You can find complete introductory and getting started information on the Yocto Project
+        by reading the 
+        <a class="link" href="../yocto-project-qs/index.html" target="_self">Yocto Project Quick Start</a>.
+        For task-based information using the Yocto Project, see the
+        <a class="link" href="../dev-manual/index.html" target="_self">Yocto Project Development Manual</a>.
+        You can also find lots of information on the Yocto Project on the 
+        <a class="ulink" href="http://www.yoctoproject.org" target="_self">Yocto Project website</a>.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro.html
new file mode 100644
index 0000000..219fbc3
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/intro.html
@@ -0,0 +1,26 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 1. Introduction</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="prev" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="next" href="intro-welcome.html" title="1.1. Introduction">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 1. Introduction">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="intro"></a>Chapter 1. Introduction</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="intro-welcome.html">1.1. Introduction</a></span></dt>
+<dt><span class="section"><a href="intro-manualoverview.html">1.2. Documentation Overview</a></span></dt>
+<dt><span class="section"><a href="intro-requirements.html">1.3. System Requirements</a></span></dt>
+<dt><span class="section"><a href="intro-getit.html">1.4. Obtaining the Yocto Project</a></span></dt>
+<dt><span class="section"><a href="intro-getit-dev.html">1.5. Development Checkouts</a></span></dt>
+</dl>
+</div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/invalidating-shared-state.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/invalidating-shared-state.html
new file mode 100644
index 0000000..425f179
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/invalidating-shared-state.html
@@ -0,0 +1,53 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.2.4.2. Invalidating Shared State</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="tips-and-tricks.html" title="3.2.4. Tips and Tricks">
+<link rel="prev" href="debugging.html" title="3.2.4.1. Debugging">
+<link rel="next" href="x32.html" title="3.3. x32">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2.4.2. Invalidating Shared State">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="invalidating-shared-state"></a>3.2.4.2. Invalidating Shared State</h4></div></div></div>
+<p>
+                The shared state code uses checksums and shared state
+                cache to avoid unnecessarily rebuilding tasks.
+                As with all schemes, this one has some drawbacks.
+                It is possible that you could make implicit changes that are not factored 
+                into the checksum calculation, but do affect a task's output. 
+                A good example is perhaps when a tool changes its output.
+                Let's say that the output of <code class="filename">rpmdeps</code> needed to change.
+                The result of the change should be that all the "package", "package_write_rpm",
+                and "package_deploy-rpm" shared state cache items would become invalid.
+                But, because this is a change that is external to the code and therefore implicit,
+                the associated shared state cache items do not become invalidated.
+                In this case, the build process would use the cached items rather than running the 
+                task again. 
+                Obviously, these types of implicit changes can cause problems.
+            </p>
+<p>
+                To avoid these problems during the build, you need to understand the effects of any
+                change you make.
+                Note that any changes you make directly to a function automatically are factored into 
+                the checksum calculation and thus, will invalidate the associated area of sstate cache.
+                You need to be aware of any implicit changes that are not obvious changes to the 
+                code and could affect the output of a given task. 
+                Once you are aware of such a change, you can take steps to invalidate the cache 
+                and force the task to run. 
+                The step to take is as simple as changing a function's comments in the source code. 
+                For example, to invalidate package shared state files, change the comment statements
+                of <code class="filename">do_package</code> or the comments of one of the functions it calls.
+                The change is purely cosmetic, but it causes the checksum to be recalculated and  
+                forces the task to be run again.
+            </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                For an example of a commit that makes a cosmetic change to invalidate 
+                a shared state, see this
+                <a class="ulink" href="http://git.yoctoproject.org/cgit.cgi/poky/commit/meta/classes/package.bbclass?id=737f8bbb4f27b4837047cb9b4fbfe01dfde36d54" target="_self">commit</a>.
+            </div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/license-flag-matching.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/license-flag-matching.html
new file mode 100644
index 0000000..8909689
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/license-flag-matching.html
@@ -0,0 +1,91 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.2.1. License Flag Matching</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="enabling-commercially-licensed-recipes.html" title="3.4.2. Enabling Commercially Licensed Recipes">
+<link rel="prev" href="enabling-commercially-licensed-recipes.html" title="3.4.2. Enabling Commercially Licensed Recipes">
+<link rel="next" href="other-variables-related-to-commercial-licenses.html" title="3.4.2.2. Other Variables Related to Commercial Licenses">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.2.1. License Flag Matching">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="license-flag-matching"></a>3.4.2.1. License Flag Matching</h4></div></div></div>
+<p>
+		        The definition of 'matching' in reference to a
+		        recipe's <code class="filename">LICENSE_FLAGS</code> setting is simple.
+                However, some things exist that you should know about in order to
+                correctly and effectively use it.
+            </p>
+<p>
+                Before a flag
+                defined by a particular recipe is tested against the
+                contents of the <code class="filename">LICENSE_FLAGS_WHITELIST</code> variable, the
+                string <code class="filename">_${PN}</code> (with 
+                <a class="link" href="ref-variables-glos.html#var-PN" title="PN"><code class="filename">PN</code></a> expanded of course) is
+                appended to the flag, thus automatically making each
+                <code class="filename">LICENSE_FLAGS</code> value recipe-specific.
+                That string is
+                then matched against the whitelist.
+                So if you specify <code class="filename">LICENSE_FLAGS = "commercial"</code> in recipe
+		        "foo" for example, the string <code class="filename">"commercial_foo"</code>
+                would normally be what is specified in the whitelist in order for it to
+                match.
+            </p>
+<p>
+                You can broaden the match by
+                putting any "_"-separated beginning subset of a
+                <code class="filename">LICENSE_FLAGS</code> flag in the whitelist, which will also
+                match.  
+                For example, simply specifying "commercial" in
+                the whitelist would match any expanded <code class="filename">LICENSE_FLAGS</code>
+                definition starting with "commercial" such as
+                "commercial_foo" and "commercial_bar", which are the
+                strings that would be automatically generated for
+                hypothetical "foo" and "bar" recipes assuming those
+                recipes had simply specified the following:
+                </p>
+<pre class="literallayout">
+     LICENSE_FLAGS = "commercial"
+                </pre>
+<p>
+            </p>
+<p>
+                Broadening the match allows for a range of specificity for the items
+                in the whitelist, from more general to perfectly
+                specific.  
+                So you have the choice of exhaustively
+                enumerating each license flag in the whitelist to
+                allow only those specific recipes into the image, or
+                of using a more general string to pick up anything
+                matching just the first component or components of the specified
+                string.
+            </p>
+<p>
+                This scheme works even if the flag already
+                has <code class="filename">_${PN}</code> appended - the extra <code class="filename">_${PN}</code> is
+                redundant, but does not affect the outcome.  
+                For example, a license flag of "commercial_1.2_foo" would
+                turn into "commercial_1.2_foo_foo" and would match
+                both the general "commercial" and the specific
+                "commercial_1.2_foo", as expected.
+                The flag would also match
+                "commercial_1.2_foo_foo" and "commercial_1.2", which
+                does not make much sense regarding use in the whitelist.
+            </p>
+<p>  
+                For a versioned string, you could instead specify
+                "commercial_foo_1.2", which would turn into
+                "commercial_foo_1.2_foo".
+                And, as expected, this flag allows
+                you to pick up this package along with
+                anything else "commercial" when you specify "commercial"
+                in the whitelist.
+                Or, the flag allows you to pick up this package along with anything "commercial_foo"
+                regardless of version when you use "commercial_foo" in the whitelist.
+                Finally, you can be completely specific about the package and version and specify
+                "commercial_foo_1.2" package and version.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/licenses.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/licenses.html
new file mode 100644
index 0000000..e1bcebe
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/licenses.html
@@ -0,0 +1,22 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4. Licenses</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="technical-details.html" title="Chapter 3. Technical Details">
+<link rel="prev" href="using-x32-right-now.html" title="3.3.3. Using x32 Right Now">
+<link rel="next" href="usingpoky-configuring-LIC_FILES_CHKSUM.html" title="3.4.1. Tracking License Changes">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4. Licenses">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="licenses"></a>3.4. Licenses</h2></div></div></div>
+<p>
+        This section describes the mechanism by which the OpenEmbedded build system 
+        tracks changes to licensing text.
+        The section also describes how to enable commercially licensed recipes, 
+        which by default are disabled.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/logging-with-bash.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/logging-with-bash.html
new file mode 100644
index 0000000..3cea310
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/logging-with-bash.html
@@ -0,0 +1,47 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.3.7.2. Logging With Bash</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="recipe-logging-mechanisms.html" title="2.3.7. Recipe Logging Mechanisms">
+<link rel="prev" href="logging-with-python.html" title="2.3.7.1. Logging With Python">
+<link rel="next" href="usingpoky-debugging-others.html" title="2.3.8. Other Tips">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.7.2. Logging With Bash">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="logging-with-bash"></a>2.3.7.2. Logging With Bash</h4></div></div></div>
+<p>
+                When creating recipes using Bash and inserting code that handles build
+                logs you have the same goals - informative with minimal console output. 
+                The syntax you use for recipes written in Bash is similar to that of 
+                recipes written in Python described in the previous section.
+            </p>
+<p>
+                Following is an example written in Bash.
+                The code logs the progress of the <code class="filename">do_my_function</code> function.
+                </p>
+<pre class="literallayout">
+     do_my_function() {
+         bbdebug 2 "Running do_my_function"
+         if [ exceptional_condition ]; then
+             bbnote "Hit exceptional_condition"
+         fi
+         bbdebug 2  "Got to point xyz"
+         if [ warning_trigger ]; then
+             bbwarn "Detected warning_trigger, this might cause a problem later."
+         fi
+         if [ recoverable_error ]; then
+             bberror "Hit recoverable_error, correcting"
+         fi
+         if [ fatal_error ]; then
+             bbfatal "fatal_error detected"
+         fi
+         bbdebug 2 "Completed do_my_function"
+     }
+                </pre>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/logging-with-python.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/logging-with-python.html
new file mode 100644
index 0000000..e57b647
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/logging-with-python.html
@@ -0,0 +1,45 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.3.7.1. Logging With Python</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="recipe-logging-mechanisms.html" title="2.3.7. Recipe Logging Mechanisms">
+<link rel="prev" href="recipe-logging-mechanisms.html" title="2.3.7. Recipe Logging Mechanisms">
+<link rel="next" href="logging-with-bash.html" title="2.3.7.2. Logging With Bash">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.7.1. Logging With Python">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="logging-with-python"></a>2.3.7.1. Logging With Python</h4></div></div></div>
+<p>
+                When creating recipes using Python and inserting code that handles build logs
+                keep in mind the goal is to have informative logs while keeping the console as 
+                "silent" as possible. 
+                Also, if you want status messages in the log use the "debug" loglevel.
+            </p>
+<p>
+                Following is an example written in Python.
+                The code handles logging for a function that determines the number of tasks 
+                needed to be run:
+                </p>
+<pre class="literallayout">
+     python do_listtasks() {
+         bb.debug(2, "Starting to figure out the task list")
+         if noteworthy_condition:
+             bb.note("There are 47 tasks to run")
+         bb.debug(2, "Got to point xyz")
+         if warning_trigger:
+             bb.warn("Detected warning_trigger, this might be a problem later.")
+         if recoverable_error:
+             bb.error("Hit recoverable_error, you really need to fix this!")
+         if fatal_error:
+             bb.fatal("fatal_error detected, unable to print the task list")
+         bb.plain("The tasks present are abc")
+         bb.debug(2, "Finished figuring out the tasklist")
+     }
+                </pre>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/other-variables-related-to-commercial-licenses.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/other-variables-related-to-commercial-licenses.html
new file mode 100644
index 0000000..20a793f
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/other-variables-related-to-commercial-licenses.html
@@ -0,0 +1,60 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.2.2. Other Variables Related to Commercial Licenses</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="enabling-commercially-licensed-recipes.html" title="3.4.2. Enabling Commercially Licensed Recipes">
+<link rel="prev" href="license-flag-matching.html" title="3.4.2.1. License Flag Matching">
+<link rel="next" href="ref-structure.html" title="Chapter 4. Source Directory Structure">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.2.2. Other Variables Related to Commercial Licenses">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="other-variables-related-to-commercial-licenses"></a>3.4.2.2. Other Variables Related to Commercial Licenses</h4></div></div></div>
+<p>
+                Other helpful variables related to commercial
+                license handling exist and are defined in the
+                <code class="filename">$HOME/poky/meta/conf/distro/include/default-distrovars.inc</code> file:
+                </p>
+<pre class="literallayout">
+     COMMERCIAL_AUDIO_PLUGINS ?= ""
+     COMMERCIAL_VIDEO_PLUGINS ?= ""
+     COMMERCIAL_QT = ""
+                </pre>
+<p>
+                If you want to enable these components, you can do so by making sure you have
+                the following statements in your <code class="filename">local.conf</code> configuration file:
+                </p>
+<pre class="literallayout">
+     COMMERCIAL_AUDIO_PLUGINS = "gst-plugins-ugly-mad \
+        gst-plugins-ugly-mpegaudioparse"
+     COMMERCIAL_VIDEO_PLUGINS = "gst-plugins-ugly-mpeg2dec \
+        gst-plugins-ugly-mpegstream gst-plugins-bad-mpegvideoparse"
+     COMMERCIAL_QT ?= "qmmp"
+     LICENSE_FLAGS_WHITELIST = "commercial_gst-plugins-ugly commercial_gst-plugins-bad commercial_qmmp"
+                </pre>
+<p>
+                Of course, you could also create a matching whitelist
+                for those components using the more general "commercial"
+                in the whitelist, but that would also enable all the
+                other packages with <code class="filename">LICENSE_FLAGS</code> containing
+                "commercial", which you may or may not want:
+                </p>
+<pre class="literallayout">
+     LICENSE_FLAGS_WHITELIST = "commercial"
+                </pre>
+<p>
+            </p>
+<p>
+                Specifying audio and video plug-ins as part of the 
+                <code class="filename">COMMERCIAL_AUDIO_PLUGINS</code> and 
+                <code class="filename">COMMERCIAL_VIDEO_PLUGINS</code> statements
+                or commercial qt components as part of
+                the <code class="filename">COMMERCIAL_QT</code> statement (along
+                with the enabling <code class="filename">LICENSE_FLAGS_WHITELIST</code>) includes the
+                plug-ins or components into built images, thus adding
+                support for media formats or components.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/overall-architecture.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/overall-architecture.html
new file mode 100644
index 0000000..89a6979
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/overall-architecture.html
@@ -0,0 +1,31 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.2.1. Overall Architecture</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="shared-state-cache.html" title="3.2. Shared State Cache">
+<link rel="prev" href="shared-state-cache.html" title="3.2. Shared State Cache">
+<link rel="next" href="checksums.html" title="3.2.2. Checksums (Signatures)">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2.1. Overall Architecture">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="overall-architecture"></a>3.2.1. Overall Architecture</h3></div></div></div>
+<p>
+            When determining what parts of the system need to be built, BitBake 
+            uses a per-task basis and does not use a per-recipe basis.
+            You might wonder why using a per-task basis is preferred over a per-recipe basis.
+            To help explain, consider having the IPK packaging backend enabled and then switching to DEB. 
+            In this case, <code class="filename">do_install</code> and <code class="filename">do_package</code>
+            output are still valid.
+            However, with a per-recipe approach, the build would not include the 
+            <code class="filename">.deb</code> files.        
+            Consequently, you would have to invalidate the whole build and rerun it. 
+            Rerunning everything is not the best situation.
+            Also in this case, the core must be "taught" much about specific tasks. 
+            This methodology does not scale well and does not allow users to easily add new tasks 
+            in layers or as external recipes without touching the packaged-staging core.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/recipe-logging-mechanisms.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/recipe-logging-mechanisms.html
new file mode 100644
index 0000000..883d04d
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/recipe-logging-mechanisms.html
@@ -0,0 +1,41 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.3.7. Recipe Logging Mechanisms</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
+<link rel="prev" href="usingpoky-debugging-variables.html" title="2.3.6. Variables">
+<link rel="next" href="logging-with-python.html" title="2.3.7.1. Logging With Python">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.7. Recipe Logging Mechanisms">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="recipe-logging-mechanisms"></a>2.3.7. Recipe Logging Mechanisms</h3></div></div></div>
+<p>
+            Best practices exist while writing recipes that both log build progress and 
+            act on build conditions such as warnings and errors. 
+            Both Python and Bash language bindings exist for the logging mechanism:
+            </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em>Python:</em></span> For Python functions, BitBake
+                    supports several loglevels: <code class="filename">bb.fatal</code>, 
+                    <code class="filename">bb.error</code>, <code class="filename">bb.warn</code>,
+                    <code class="filename">bb.note</code>, <code class="filename">bb.plain</code>,
+                    and <code class="filename">bb.debug</code>.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Bash:</em></span> For Bash functions, the same set 
+                    of loglevels exist and are accessed with a similar syntax:
+                    <code class="filename">bbfatal</code>, <code class="filename">bberror</code>, 
+                    <code class="filename">bbwarn</code>, <code class="filename">bbnote</code>, 
+                    <code class="filename">bbplain</code>, and <code class="filename">bbdebug</code>.</p></li>
+</ul></div>
+<p>
+        </p>
+<p>
+            For guidance on how logging is handled in both Python and Bash recipes, see the 
+            <code class="filename">logging.bbclass</code> file in the 
+            <code class="filename">meta/classes</code> folder of the 
+            <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-commandline.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-commandline.html
new file mode 100644
index 0000000..2e49513
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-commandline.html
@@ -0,0 +1,79 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>5.6. BitBake Command Line</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-bitbake.html" title="Chapter 5. BitBake">
+<link rel="prev" href="ref-bitbake-runtask.html" title="5.5. Running a Task">
+<link rel="next" href="ref-bitbake-fetchers.html" title="5.7. Fetchers">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.6. BitBake Command Line">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-bitbake-commandline"></a>5.6. BitBake Command Line</h2></div></div></div>
+<p>
+            Following is the BitBake help output:
+        </p>
+<pre class="screen">
+$ bitbake --help
+Usage: bitbake [options] [package ...]
+
+Executes the specified task (default is 'build') for a given set of BitBake files.
+It expects that BBFILES is defined, which is a space separated list of files to
+be executed.  BBFILES does support wildcards.
+Default BBFILES are the .bb files in the current directory.
+
+Options:
+  --version             show program's version number and exit
+  -h, --help            show this help message and exit
+  -b BUILDFILE, --buildfile=BUILDFILE
+                        execute the task against this .bb file, rather than a
+                        package from BBFILES. Does not handle any
+                        dependencies.
+  -k, --continue        continue as much as possible after an error. While the
+                        target that failed, and those that depend on it,
+                        cannot be remade, the other dependencies of these
+                        targets can be processed all the same.
+  -a, --tryaltconfigs   continue with builds by trying to use alternative
+                        providers where possible.
+  -f, --force           force run of specified cmd, regardless of stamp status
+  -c CMD, --cmd=CMD     Specify task to execute. Note that this only executes
+                        the specified task for the providee and the packages
+                        it depends on, i.e. 'compile' does not implicitly call
+                        stage for the dependencies (IOW: use only if you know
+                        what you are doing). Depending on the base.bbclass a
+                        listtasks tasks is defined and will show available
+                        tasks
+  -r PREFILE, --read=PREFILE
+                        read the specified file before bitbake.conf
+  -R POSTFILE, --postread=POSTFILE
+                        read the specified file after bitbake.conf
+  -v, --verbose         output more chit-chat to the terminal
+  -D, --debug           Increase the debug level. You can specify this more
+                        than once.
+  -n, --dry-run         don't execute, just go through the motions
+  -S, --dump-signatures
+                        don't execute, just dump out the signature
+                        construction information
+  -p, --parse-only      quit after parsing the BB files (developers only)
+  -s, --show-versions   show current and preferred versions of all packages
+  -e, --environment     show the global or per-package environment (this is
+                        what used to be bbread)
+  -g, --graphviz        emit the dependency trees of the specified packages in
+                        the dot syntax
+  -I EXTRA_ASSUME_PROVIDED, --ignore-deps=EXTRA_ASSUME_PROVIDED
+                        Assume these dependencies don't exist and are already
+                        provided (equivalent to ASSUME_PROVIDED). Useful to
+                        make dependency graphs more appealing
+  -l DEBUG_DOMAINS, --log-domains=DEBUG_DOMAINS
+                        Show debug logging for the specified logging domains
+  -P, --profile         profile the command and print a report
+  -u UI, --ui=UI        userinterface to use
+  -t SERVERTYPE, --servertype=SERVERTYPE
+                        Choose which server to use, none, process or xmlrpc
+  --revisions-changed   Set the exit code depending on whether upstream
+                        floating revisions have changed or not
+        </pre>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-dependencies.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-dependencies.html
new file mode 100644
index 0000000..c3d826f
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-dependencies.html
@@ -0,0 +1,34 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>5.3. Dependencies</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-bitbake.html" title="Chapter 5. BitBake">
+<link rel="prev" href="ref-bitbake-providers.html" title="5.2. Preferences and Providers">
+<link rel="next" href="ref-bitbake-tasklist.html" title="5.4. The Task List">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.3. Dependencies">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-bitbake-dependencies"></a>5.3. Dependencies</h2></div></div></div>
+<p>
+            Each target BitBake builds consists of multiple tasks such as 
+            <code class="filename">fetch</code>, <code class="filename">unpack</code>, 
+            <code class="filename">patch</code>, <code class="filename">configure</code>, 
+            and <code class="filename">compile</code>. 
+            For best performance on multi-core systems, BitBake considers each task as an independent 
+            entity with its own set of dependencies. 
+        </p>
+<p>
+            Dependencies are defined through several variables.
+            You can find information about variables BitBake uses in the BitBake documentation,
+            which is found in the <code class="filename">bitbake/doc/manual</code> directory within the
+            <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>. 
+            At a basic level, it is sufficient to know that BitBake uses the 
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-DEPENDS" title="DEPENDS">DEPENDS</a></code> and 
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-RDEPENDS" title="RDEPENDS">RDEPENDS</a></code> variables when 
+            calculating dependencies. 
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-fetchers.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-fetchers.html
new file mode 100644
index 0000000..601f21e
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-fetchers.html
@@ -0,0 +1,43 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>5.7. Fetchers</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-bitbake.html" title="Chapter 5. BitBake">
+<link rel="prev" href="ref-bitbake-commandline.html" title="5.6. BitBake Command Line">
+<link rel="next" href="ref-classes.html" title="Chapter 6. Classes">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.7. Fetchers">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-bitbake-fetchers"></a>5.7. Fetchers</h2></div></div></div>
+<p>
+            BitBake also contains a set of "fetcher" modules that allow 
+            retrieval of source code from various types of sources. 
+            For example, BitBake can get source code from a disk with the metadata, from websites, 
+            from remote shell accounts or from Source Code Management (SCM) systems 
+            like <code class="filename">cvs/subversion/git</code>. 
+        </p>
+<p>
+            Fetchers are usually triggered by entries in 
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-SRC_URI" title="SRC_URI">SRC_URI</a></code>. 
+            You can find information about the options and formats of entries for specific 
+            fetchers in the BitBake manual located in the 
+            <code class="filename">bitbake/doc/manual</code> directory of the 
+            <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>.
+        </p>
+<p>
+            One useful feature for certain Source Code Manager (SCM) fetchers is the ability to 
+            "auto-update" when the upstream SCM changes version. 
+            Since this ability requires certain functionality from the SCM, not all
+            systems support it.
+            Currently Subversion, Bazaar and to a limited extent, Git support the ability to "auto-update". 
+            This feature works using the <code class="filename"><a class="link" href="ref-variables-glos.html#var-SRCREV" title="SRCREV">SRCREV</a></code> 
+            variable. 
+            See the 
+            "<a class="link" href="../dev-manual/platdev-appdev-srcrev.html" target="_self">Using an External SCM</a>" section 
+            in the Yocto Project Development Manual for more information.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-parsing.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-parsing.html
new file mode 100644
index 0000000..6f7e162
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-parsing.html
@@ -0,0 +1,93 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>5.1. Parsing</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-bitbake.html" title="Chapter 5. BitBake">
+<link rel="prev" href="ref-bitbake.html" title="Chapter 5. BitBake">
+<link rel="next" href="ref-bitbake-providers.html" title="5.2. Preferences and Providers">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.1. Parsing">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-bitbake-parsing"></a>5.1. Parsing</h2></div></div></div>
+<p>
+            BitBake parses configuration files, classes, and <code class="filename">.bb</code> files. 
+        </p>
+<p>
+            The first thing BitBake does is look for the <code class="filename">bitbake.conf</code> file.
+            This file resides in the 
+            <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>
+            within the <code class="filename">meta/conf/</code> directory.
+            BitBake finds it by examining its 
+            <a class="link" href="ref-variables-glos.html#var-BBPATH" title="BBPATH"><code class="filename">BBPATH</code></a> environment 
+            variable and looking for the <code class="filename">meta/conf/</code> 
+            directory.
+        </p>
+<p>
+            The <code class="filename">bitbake.conf</code> file lists other configuration 
+            files to include from a <code class="filename">conf/</code> 
+            directory below the directories listed in <code class="filename">BBPATH</code>. 
+            In general, the most important configuration file from a user's perspective 
+            is <code class="filename">local.conf</code>, which contains a user's customized 
+            settings for the OpenEmbedded build environment. 
+            Other notable configuration files are the distribution 
+            configuration file (set by the 
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO" title="DISTRO">DISTRO</a></code> variable) 
+            and the machine configuration file 
+            (set by the 
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE" title="MACHINE">MACHINE</a></code> variable).  
+            The <code class="filename">DISTRO</code> and <code class="filename">MACHINE</code> BitBake environment 
+            variables are both usually set in 
+            the <code class="filename">local.conf</code> file. 
+            Valid distribution 
+            configuration files are available in the <code class="filename">meta/conf/distro/</code> directory 
+            and valid machine configuration 
+            files in the <code class="filename">meta/conf/machine/</code> directory. 
+            Within the <code class="filename">meta/conf/machine/include/</code> 
+            directory are various <code class="filename">tune-*.inc</code> configuration files that provide common 
+            "tuning" settings specific to and shared between particular architectures and machines.
+        </p>
+<p>
+            After the parsing of the configuration files, some standard classes are included. 
+            The <code class="filename">base.bbclass</code> file is always included.
+            Other classes that are specified in the configuration using the 
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-INHERIT" title="INHERIT">INHERIT</a></code>
+            variable are also included. 
+            Class files are searched for in a <code class="filename">classes</code> subdirectory 
+            under the paths in <code class="filename">BBPATH</code> in the same way as
+            configuration files.
+        </p>
+<p>
+            After classes are included, the variable 
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-BBFILES" title="BBFILES">BBFILES</a></code> 
+            is set, usually in
+            <code class="filename">local.conf</code>, and defines the list of places to search for 
+            <code class="filename">.bb</code> files. 
+            By default, the <code class="filename">BBFILES</code> variable specifies the 
+            <code class="filename">meta/recipes-*/</code> directory within Poky. 
+            Adding extra content to <code class="filename">BBFILES</code> is best achieved through the use of 
+            BitBake layers as described in the 
+            "<a class="link" href="../dev-manual/understanding-and-creating-layers.html" target="_self">Understanding and 
+            Creating Layers</a>" section of the Yocto Project Development Manual.
+        </p>
+<p>
+            BitBake parses each <code class="filename">.bb</code> file in <code class="filename">BBFILES</code> and 
+            stores the values of various variables.  
+            In summary, for each <code class="filename">.bb</code> 
+            file the configuration plus the base class of variables are set, followed 
+            by the data in the <code class="filename">.bb</code> file 
+            itself, followed by any inherit commands that
+            <code class="filename">.bb</code> file might contain.
+        </p>
+<p>
+            Because parsing <code class="filename">.bb</code> files is a time 
+            consuming process, a cache is kept to speed up subsequent parsing. 
+            This cache is invalid if the timestamp of the <code class="filename">.bb</code> 
+            file itself changes, or if the timestamps of any of the include, 
+            configuration or class files the <code class="filename">.bb</code>
+            file depends on changes.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-providers.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-providers.html
new file mode 100644
index 0000000..4fb6247
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-providers.html
@@ -0,0 +1,63 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>5.2. Preferences and Providers</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-bitbake.html" title="Chapter 5. BitBake">
+<link rel="prev" href="ref-bitbake-parsing.html" title="5.1. Parsing">
+<link rel="next" href="ref-bitbake-dependencies.html" title="5.3. Dependencies">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.2. Preferences and Providers">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-bitbake-providers"></a>5.2. Preferences and Providers</h2></div></div></div>
+<p>
+            Once all the <code class="filename">.bb</code> files have been 
+            parsed, BitBake starts to build the target (<code class="filename">core-image-sato</code>
+            in the previous section's example) and looks for providers of that target.
+            Once a provider is selected, BitBake resolves all the dependencies for  
+            the target. 
+            In the case of <code class="filename">core-image-sato</code>, it would lead to 
+            <code class="filename">packagegroup-core-x11-sato</code>, 
+            which in turn leads to recipes like <code class="filename">matchbox-terminal</code>, 
+            <code class="filename">pcmanfm</code> and <code class="filename">gthumb</code>.
+            These recipes in turn depend on <code class="filename">eglibc</code> and the toolchain.
+        </p>
+<p>
+            Sometimes a target might have multiple providers.
+            A common example is "virtual/kernel", which is provided by each kernel package. 
+            Each machine often selects the best kernel provider by using a line similar to the 
+            following in the machine configuration file:
+        </p>
+<pre class="literallayout">
+     PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+        </pre>
+<p>
+            The default <code class="filename"><a class="link" href="ref-variables-glos.html#var-PREFERRED_PROVIDER" title="PREFERRED_PROVIDER">PREFERRED_PROVIDER</a></code> 
+            is the provider with the same name as the target.
+        </p>
+<p>
+            Understanding how providers are chosen is made complicated by the fact
+            that multiple versions might exist. 
+            BitBake defaults to the highest version of a provider.
+            Version comparisons are made using the same method as Debian. 
+            You can use the
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-PREFERRED_VERSION" title="PREFERRED_VERSION">PREFERRED_VERSION</a></code>
+            variable to specify a particular version (usually in the distro configuration).
+            You can influence the order by using the 
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-DEFAULT_PREFERENCE" title="DEFAULT_PREFERENCE">DEFAULT_PREFERENCE</a></code> 
+            variable. 
+            By default, files have a preference of "0". 
+            Setting the <code class="filename">DEFAULT_PREFERENCE</code> to "-1" makes the 
+            package unlikely to be used unless it is explicitly referenced.
+            Setting the <code class="filename">DEFAULT_PREFERENCE</code> to "1" makes it likely the package is used. 
+            <code class="filename">PREFERRED_VERSION</code> overrides any <code class="filename">DEFAULT_PREFERENCE</code> setting.
+            <code class="filename">DEFAULT_PREFERENCE</code> is often used to mark newer and more experimental package
+            versions until they have undergone sufficient testing to be considered stable.
+        </p>
+<p>
+            In summary, BitBake has created a list of providers, which is prioritized, for each target.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-runtask.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-runtask.html
new file mode 100644
index 0000000..f48dd6d
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-runtask.html
@@ -0,0 +1,86 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>5.5. Running a Task</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-bitbake.html" title="Chapter 5. BitBake">
+<link rel="prev" href="ref-bitbake-tasklist.html" title="5.4. The Task List">
+<link rel="next" href="ref-bitbake-commandline.html" title="5.6. BitBake Command Line">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.5. Running a Task">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-bitbake-runtask"></a>5.5. Running a Task</h2></div></div></div>
+<p>
+            Tasks can either be a shell task or a Python task.
+            For shell tasks, BitBake writes a shell script to 
+            <code class="filename">${WORKDIR}/temp/run.do_taskname.pid</code> and then executes the script. 
+            The generated shell script contains all the exported variables, and the shell functions 
+            with all variables expanded. 
+            Output from the shell script goes to the file <code class="filename">${WORKDIR}/temp/log.do_taskname.pid</code>.
+            Looking at the expanded shell functions in the run file and the output in the log files 
+            is a useful debugging technique.
+        </p>
+<p>
+            For Python tasks, BitBake executes the task internally and logs information to the 
+            controlling terminal. 
+            Future versions of BitBake will write the functions to files similar to the way 
+            shell tasks are handled.
+            Logging will be handled in way similar to shell tasks as well.
+        </p>
+<p>
+            Once all the tasks have been completed BitBake exits.
+        </p>
+<p>
+            When running a task, BitBake tightly controls the execution environment 
+            of the build tasks to make sure unwanted contamination from the build machine
+            cannot influence the build. 
+            Consequently, if you do want something to get passed into the build 
+            task's environment, you must take a few steps:
+            </p>
+<div class="orderedlist"><ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Tell BitBake to load what you want from the environment
+                    into the data store. 
+                    You can do so through the <code class="filename">BB_ENV_EXTRAWHITE</code>
+                    variable.
+                    For example, assume you want to prevent the build system from 
+                    accessing your <code class="filename">$HOME/.ccache</code> directory.
+                    The following command tells BitBake to load 
+                    <code class="filename">CCACHE_DIR</code> from the environment into the data
+                    store:
+                    </p>
+<pre class="literallayout">
+     export BB_ENV_EXTRAWHITE="$BB_ENV_EXTRAWHITE CCACHE_DIR" 
+                    </pre>
+</li>
+<li class="listitem">
+<p>Tell BitBake to export what you have loaded into the 
+                    environment store to the task environment of every running task.
+                    Loading something from the environment into the data store
+                    (previous step) only makes it available in the datastore. 
+                    To export it to the task environment of every running task,
+                    use a command similar to the following in your 
+                    <code class="filename">local.conf</code> or distro configuration file:
+                    </p>
+<pre class="literallayout">
+     export CCACHE_DIR
+                    </pre>
+</li>
+</ol></div>
+<p>
+        </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+            A side effect of the previous steps is that BitBake records the variable
+            as a dependency of the build process in things like the shared state
+            checksums. 
+            If doing so results in unnecessary rebuilds of tasks, you can whitelist the 
+            variable so that the shared state code ignores the dependency when it creates
+            checksums.
+            For information on this process, see the <code class="filename">BB_HASHBASE_WHITELIST</code>
+            example in the "<a class="link" href="checksums.html" title="3.2.2. Checksums (Signatures)">Checksums (Signatures)</a>" section.
+        </div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-tasklist.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-tasklist.html
new file mode 100644
index 0000000..2c58934
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake-tasklist.html
@@ -0,0 +1,54 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>5.4. The Task List</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-bitbake.html" title="Chapter 5. BitBake">
+<link rel="prev" href="ref-bitbake-dependencies.html" title="5.3. Dependencies">
+<link rel="next" href="ref-bitbake-runtask.html" title="5.5. Running a Task">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="5.4. The Task List">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-bitbake-tasklist"></a>5.4. The Task List</h2></div></div></div>
+<p>
+            Based on the generated list of providers and the dependency information, 
+            BitBake can now calculate exactly what tasks it needs to run and in what 
+            order it needs to run them. 
+            The build now starts with BitBake forking off threads up to the limit set in the 
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-BB_NUMBER_THREADS" title="BB_NUMBER_THREADS">BB_NUMBER_THREADS</a></code> variable.
+            BitBake continues to fork threads as long as there are tasks ready to run,
+            those tasks have all their dependencies met, and the thread threshold has not been 
+            exceeded.
+        </p>
+<p>
+            It is worth noting that you can greatly speed up the build time by properly setting 
+            the <code class="filename">BB_NUMBER_THREADS</code> variable.  
+            See the
+            "<a class="link" href="../yocto-project-qs/building-image.html" target="_self">Building an Image</a>"
+            section in the Yocto Project Quick Start for more information.
+        </p>
+<p>
+            As each task completes, a timestamp is written to the directory specified by the 
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-STAMP" title="STAMP">STAMP</a></code> variable (usually
+            <code class="filename">build/tmp/stamps/*/</code>). 
+            On subsequent runs, BitBake looks at the <code class="filename">/build/tmp/stamps</code>
+            directory and does not rerun
+            tasks that are already completed unless a timestamp is found to be invalid. 
+            Currently, invalid timestamps are only considered on a per 
+            <code class="filename">.bb</code> file basis.
+            So, for example, if the configure stamp has a timestamp greater than the 
+            compile timestamp for a given target, then the compile task would rerun.
+            Running the compile task again, however, has no effect on other providers 
+            that depend on that target. 
+            This behavior could change or become configurable in future versions of BitBake. 
+        </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+            Some tasks are marked as "nostamp" tasks.
+            No timestamp file is created when these tasks are run.
+            Consequently, "nostamp" tasks are always rerun.
+        </div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake.html
new file mode 100644
index 0000000..ed73efe
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-bitbake.html
@@ -0,0 +1,48 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 5. BitBake</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="prev" href="structure-meta-recipes-txt.html" title="4.3.19. meta/recipes.txt">
+<link rel="next" href="ref-bitbake-parsing.html" title="5.1. Parsing">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 5. BitBake">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="ref-bitbake"></a>Chapter 5. BitBake</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="ref-bitbake-parsing.html">5.1. Parsing</a></span></dt>
+<dt><span class="section"><a href="ref-bitbake-providers.html">5.2. Preferences and Providers</a></span></dt>
+<dt><span class="section"><a href="ref-bitbake-dependencies.html">5.3. Dependencies</a></span></dt>
+<dt><span class="section"><a href="ref-bitbake-tasklist.html">5.4. The Task List</a></span></dt>
+<dt><span class="section"><a href="ref-bitbake-runtask.html">5.5. Running a Task</a></span></dt>
+<dt><span class="section"><a href="ref-bitbake-commandline.html">5.6. BitBake Command Line</a></span></dt>
+<dt><span class="section"><a href="ref-bitbake-fetchers.html">5.7. Fetchers</a></span></dt>
+</dl>
+</div>
+<p>
+        BitBake is a program written in Python that interprets the metadata used by the OpenEmbedded
+        build system.
+        At some point, developers wonder what actually happens when you enter:
+        </p>
+<pre class="literallayout">
+     $ bitbake core-image-sato
+        </pre>
+<p>
+    </p>
+<p>
+        This chapter provides an overview of what happens behind the scenes from BitBake's perspective.
+    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+        BitBake strives to be a generic "task" executor that is capable of handling complex dependency relationships. 
+        As such, it has no real knowledge of what the tasks being executed actually do. 
+        BitBake just considers a list of tasks with dependencies and handles metadata 
+        that consists of variables in a certain format that get passed to the tasks.
+    </div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-autotools.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-autotools.html
new file mode 100644
index 0000000..eada85c
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-autotools.html
@@ -0,0 +1,52 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.2. Autotooled Packages - autotools.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-base.html" title="6.1. The base class - base.bbclass">
+<link rel="next" href="ref-classes-update-alternatives.html" title="6.3. Alternatives - update-alternatives.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.2. Autotooled Packages - autotools.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-autotools"></a>6.2. Autotooled Packages - <code class="filename">autotools.bbclass</code>
+</h2></div></div></div>
+<p>
+        Autotools (<code class="filename">autoconf</code>, <code class="filename">automake</code>, 
+        and <code class="filename">libtool</code>) bring standardization. 
+        This class defines a set of tasks (configure, compile etc.) that 
+        work for all Autotooled packages.  
+        It should usually be enough to define a few standard variables 
+        and then simply <code class="filename">inherit autotools</code>.
+        This class can also work with software that emulates Autotools.
+        For more information, see the  
+        "<a class="link" href="../dev-manual/usingpoky-extend-addpkg-autotools.html" target="_self">Autotooled Package</a>"
+        section in the Yocto Project Development Manual.
+    </p>
+<p>
+        It's useful to have some idea of how the tasks defined by this class work
+        and what they do behind the scenes.
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><code class="filename">do_configure</code> &#8208; regenerates the 
+                configure script (using <code class="filename">autoreconf</code>) and then launches it 
+                with a standard set of arguments used during cross-compilation. 
+                You can pass additional parameters to <code class="filename">configure</code> through the 
+                <code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_OECONF" title="EXTRA_OECONF">EXTRA_OECONF</a></code> variable.
+                </p></li>
+<li class="listitem"><p><code class="filename">do_compile</code> &#8208; runs <code class="filename">make</code> with 
+                arguments that specify the compiler and linker. 
+                You can pass additional arguments through 
+                the <code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_OEMAKE" title="EXTRA_OEMAKE">EXTRA_OEMAKE</a></code> variable.
+                </p></li>
+<li class="listitem"><p><code class="filename">do_install</code> &#8208; runs <code class="filename">make install</code> 
+                and passes a DESTDIR option, which takes its value from the standard 
+                <code class="filename"><a class="link" href="ref-variables-glos.html#var-DESTDIR" title="DESTDIR">DESTDIR</a></code> variable.
+                </p></li>
+</ul></div>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-base.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-base.html
new file mode 100644
index 0000000..f553679
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-base.html
@@ -0,0 +1,28 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.1. The base class - base.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="next" href="ref-classes-autotools.html" title="6.2. Autotooled Packages - autotools.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.1. The base class - base.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-base"></a>6.1. The base class - <code class="filename">base.bbclass</code>
+</h2></div></div></div>
+<p>
+        The base class is special in that every <code class="filename">.bb</code> 
+        file inherits it automatically. 
+        This class contains definitions for standard basic 
+        tasks such as fetching, unpacking, configuring (empty by default), compiling 
+        (runs any <code class="filename">Makefile</code> present), installing (empty by default) and packaging 
+        (empty by default). 
+        These classes are often overridden or extended by other classes 
+        such as <code class="filename">autotools.bbclass</code> or <code class="filename">package.bbclass</code>. 
+        The class also contains some commonly used functions such as <code class="filename">oe_runmake</code>.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-binconfig.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-binconfig.html
new file mode 100644
index 0000000..ffb7ca6
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-binconfig.html
@@ -0,0 +1,30 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.5. Binary config scripts - binconfig.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-update-rc.d.html" title="6.4. Initscripts - update-rc.d.bbclass">
+<link rel="next" href="ref-classes-debian.html" title="6.6. Debian renaming - debian.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.5. Binary config scripts - binconfig.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-binconfig"></a>6.5. Binary config scripts - <code class="filename">binconfig.bbclass</code>
+</h2></div></div></div>
+<p>
+        Before <code class="filename">pkg-config</code> had become widespread, libraries shipped shell
+        scripts to give information about the libraries and include paths needed 
+        to build software (usually named <code class="filename">LIBNAME-config</code>).
+        This class assists any recipe using such scripts.
+    </p>
+<p>
+        During staging, BitBake installs such scripts into the
+        <code class="filename">sysroots/</code> directory. 
+        BitBake also changes all paths to point into the <code class="filename">sysroots/</code>
+        directory so all builds that use the script will use the correct 
+        directories for the cross compiling layout.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-debian.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-debian.html
new file mode 100644
index 0000000..14bbf26
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-debian.html
@@ -0,0 +1,22 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.6. Debian renaming - debian.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-binconfig.html" title="6.5. Binary config scripts - binconfig.bbclass">
+<link rel="next" href="ref-classes-pkgconfig.html" title="6.7. Pkg-config - pkgconfig.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.6. Debian renaming - debian.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-debian"></a>6.6. Debian renaming - <code class="filename">debian.bbclass</code>
+</h2></div></div></div>
+<p>
+        This class renames packages so that they follow the Debian naming
+        policy (i.e. <code class="filename">eglibc</code> becomes <code class="filename">libc6</code>
+        and <code class="filename">eglibc-devel</code> becomes <code class="filename">libc6-dev</code>.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-devshell.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-devshell.html
new file mode 100644
index 0000000..3d27969
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-devshell.html
@@ -0,0 +1,24 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.11. Developer Shell - devshell.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-distutils.html" title="6.10. Python extensions - distutils.bbclass">
+<link rel="next" href="ref-classes-packagegroup.html" title="6.12. Package Groups - packagegroup.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.11. Developer Shell - devshell.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-devshell"></a>6.11. Developer Shell - <code class="filename">devshell.bbclass</code>
+</h2></div></div></div>
+<p>
+        This class adds the <code class="filename">devshell</code> task. 
+        Distribution policy dictates whether to include this class.
+        See the 
+        "<a class="link" href="../dev-manual/platdev-appdev-devshell.html" target="_self">Using a Development Shell</a>" section 
+        in the Yocto Project Development Manual for more information about using <code class="filename">devshell</code>.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-distutils.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-distutils.html
new file mode 100644
index 0000000..960da56
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-distutils.html
@@ -0,0 +1,31 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.10. Python extensions - distutils.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-perl.html" title="6.9. Perl modules - cpan.bbclass">
+<link rel="next" href="ref-classes-devshell.html" title="6.11. Developer Shell - devshell.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.10. Python extensions - distutils.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-distutils"></a>6.10. Python extensions - <code class="filename">distutils.bbclass</code>
+</h2></div></div></div>
+<p>
+        Recipes for Python extensions are simple.
+        These recipes usually only need to point to the source's archive and then inherit
+        the proper <code class="filename">.bbclass</code> file.
+        Building is split into two methods dependling on which method the module authors used.
+    </p>
+<p>
+        Extensions that use an Autotools-based build system require Autotools and 
+        <code class="filename">distutils</code>-based <code class="filename">.bbclasse</code> files in their recipes.
+    </p>
+<p>
+        Extensions that use <code class="filename">distutils</code>-based build systems require 
+        <code class="filename">distutils.bbclass</code> in their recipes.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-externalsrc.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-externalsrc.html
new file mode 100644
index 0000000..9c021b3
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-externalsrc.html
@@ -0,0 +1,72 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.20. Using External Source - externalsrc.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-useradd.html" title="6.19. Adding Users - useradd.bbclass">
+<link rel="next" href="ref-classes-others.html" title="6.21. Other Classes">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.20. Using External Source - externalsrc.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-externalsrc"></a>6.20. Using External Source - <code class="filename">externalsrc.bbclass</code>
+</h2></div></div></div>
+<p>
+        You can use this class to build software from source code that is external to the 
+        OpenEmbedded build system.  
+        In other words, your source code resides in an external tree outside of the Yocto Project.
+        Building software from an external source tree means that the normal fetch, unpack, and 
+        patch process is not used.
+    </p>
+<p>
+        To use the class, you need to define the 
+        <a class="link" href="ref-variables-glos.html#var-S" title="S"><code class="filename">S</code></a> variable to point to the directory that contains the source files. 
+        You also need to have your recipe inherit the <code class="filename">externalsrc.bbclass</code> class.
+    </p>
+<p>
+        This class expects the source code to support recipe builds that use the 
+        <a class="link" href="ref-variables-glos.html#var-B" title="B"><code class="filename">B</code></a> variable to point to the directory in 
+        which the OpenEmbedded build system places the generated objects built from the recipes.
+        By default, the <code class="filename">B</code> directory is set to the following, which is separate from the 
+        source directory (<code class="filename">S</code>):
+        </p>
+<pre class="literallayout">
+     ${WORKDIR}/${BPN}-{PV}/
+        </pre>
+<p>
+        See the glossary entries for the
+        <a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR"><code class="filename">WORKDIR</code></a>, 
+        <a class="link" href="ref-variables-glos.html#var-BPN" title="BPN"><code class="filename">BPN</code></a>, 
+        <a class="link" href="ref-variables-glos.html#var-PV" title="PV"><code class="filename">PV</code></a>,
+        <a class="link" href="ref-variables-glos.html#var-S" title="S"><code class="filename">S</code></a>, and 
+        <a class="link" href="ref-variables-glos.html#var-B" title="B"><code class="filename">B</code></a> for more information.
+    </p>
+<p>
+        You can build object files in the external tree by setting the
+        <code class="filename">B</code> variable equal to <code class="filename">"${S}"</code>.
+        However, this practice does not work well if you use the source for more than one variant
+        (i.e., "natives" such as <code class="filename">quilt-native</code>, 
+        or "crosses" such as <code class="filename">gcc-cross</code>).
+        So, be sure there are no "native", "cross", or "multilib" variants of the recipe.
+    </p>
+<p>
+        If you do want to build different variants of a recipe, you can use the 
+        <a class="link" href="ref-variables-glos.html#var-BBCLASSEXTEND" title="BBCLASSEXTEND"><code class="filename">BBCLASSEXTEND</code></a> variable. 
+        When you do, the <a class="link" href="ref-variables-glos.html#var-B" title="B"><code class="filename">B</code></a> variable must support the 
+        recipe's ability to build variants in different working directories.
+        Most autotools-based recipes support separating these directories.
+        The OpenEmbedded build system defaults to using separate directories for <code class="filename">gcc</code>
+        and some kernel recipes.
+        Alternatively, you can make sure that separate recipes exist that each 
+        use the <code class="filename">BBCLASSEXTEND</code> variable to build each variant.
+        The separate recipes can inherit a single target recipe.
+    </p>
+<p>
+        For information on how to use this class, see the 
+        "<a class="link" href="../dev-manual/building-software-from-an-external-source.html" target="_self">Building
+        Software from an External Source</a>" section in the Yocto Project Development Manual.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-image.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-image.html
new file mode 100644
index 0000000..cc86a97
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-image.html
@@ -0,0 +1,31 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.15. Creating images - image.bbclass and rootfs*.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-kernel.html" title="6.14. Building kernels - kernel.bbclass">
+<link rel="next" href="ref-classes-sanity.html" title="6.16. Host System sanity checks - sanity.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.15. Creating images - image.bbclass and rootfs*.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-image"></a>6.15. Creating images - <code class="filename">image.bbclass</code> and <code class="filename">rootfs*.bbclass</code>
+</h2></div></div></div>
+<p>
+        These classes add support for creating images in several formats. 
+        First, the root filesystem is created from packages using
+        one of the <code class="filename">rootfs_*.bbclass</code> 
+        files (depending on the package format used) and then the image is created.
+    </p>
+<p>
+        The <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_FSTYPES" title="IMAGE_FSTYPES">IMAGE_FSTYPES</a></code>
+        variable controls the types of images to generate.
+    </p>
+<p>        
+        The <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_INSTALL" title="IMAGE_INSTALL">IMAGE_INSTALL</a></code>
+        variable controls the list of packages to install into the image.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-insane.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-insane.html
new file mode 100644
index 0000000..96d351b
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-insane.html
@@ -0,0 +1,105 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.17. Generated output quality assurance checks - insane.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-sanity.html" title="6.16. Host System sanity checks - sanity.bbclass">
+<link rel="next" href="ref-classes-siteinfo.html" title="6.18. Autotools configuration data cache - siteinfo.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.17. Generated output quality assurance checks - insane.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-insane"></a>6.17. Generated output quality assurance checks - <code class="filename">insane.bbclass</code>
+</h2></div></div></div>
+<p>
+        This class adds a step to the package generation process that sanity checks the
+        packages generated by the OpenEmbedded build system.
+        A range of checks are performed that check the build's output
+        for common problems that show up during runtime.
+        Distribution policy usually dictates whether to include this class.
+    </p>
+<p>
+        You can configure the sanity checks so that specific test failures either raise a warning or 
+        an error message.  
+        Typically, failures for new tests generate a warning.
+        Subsequent failures for the same test would then generate an error message 
+        once the metadata is in a known and good condition.
+        You use the <code class="filename">WARN_QA</code> variable to specify tests for which you 
+        want to generate a warning message on failure.
+        You use the <code class="filename">ERROR_QA</code> variable to specify tests for which you 
+        want to generate an error message on failure.
+    </p>
+<p>
+        The following list shows the tests you can list with the <code class="filename">WARN_QA</code>
+        and <code class="filename">ERROR_QA</code> variables:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">ldflags:</code></em></span>
+                Ensures that the binaries were linked with the 
+                <code class="filename">LDFLAGS</code> options provided by the build system. 
+                If this test fails, check that the <code class="filename">LDFLAGS</code> variable
+                is being passed to the linker command.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">useless-rpaths:</code></em></span>
+                Checks for dynamic library load paths (rpaths) in the binaries that 
+                by default on a standard system are searched by the linker (e.g.
+                <code class="filename">/lib</code> and <code class="filename">/usr/lib</code>). 
+                While these paths will not cause any breakage, they do waste space and 
+                are unnecessary.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">rpaths:</code></em></span>
+                Checks for rpaths in the binaries that contain build system paths such
+                as <code class="filename">TMPDIR</code>.
+                If this test fails, bad <code class="filename">-rpath</code> options are being 
+                passed to the linker commands and your binaries have potential security 
+                issues.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">dev-so:</code></em></span>
+                Checks that the <code class="filename">.so</code> symbolic links are in the 
+                <code class="filename">-dev</code> package and not in any of the other packages. 
+                In general, these symlinks are only useful for development purposes.
+                Thus, the <code class="filename">-dev</code> package is the correct location for
+                them. 
+                Some very rare cases do exist for dynamically loaded modules where 
+                these symlinks are needed instead in the main package.
+                </p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">debug-files:</code></em></span>
+                Checks for <code class="filename">.debug</code> directories in anything but the 
+                <code class="filename">-dbg</code> package. 
+                The debug files should all be in the <code class="filename">-dbg</code> package.
+                Thus, anything packaged elsewhere is incorrect packaging.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">arch:</code></em></span>
+                Checks the Executable and Linkable Format (ELF) type, bit size and endianness 
+                of any binaries to ensure it matches the target architecture. 
+                This test fails if any binaries don't match the type since there would be an 
+                incompatibility. 
+                Sometimes software, like bootloaders, might need to bypass this check.
+                </p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">debug-deps:</code></em></span>
+                Checks that <code class="filename">-dbg</code> packages only depend on other
+                <code class="filename">-dbg</code> packages and not on any other types of packages,
+                which would cause a packaging bug.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">dev-deps:</code></em></span>
+                Checks that <code class="filename">-dev</code> packages only depend on other 
+                <code class="filename">-dev</code> packages and not on any other types of packages,
+                which would be a packaging bug.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">pkgconfig:</code></em></span>
+                Checks <code class="filename">.pc</code> files for any 
+                <code class="filename">TMPDIR/WORKDIR</code> paths. 
+                Any <code class="filename">.pc</code> file containing these paths is incorrect 
+                since <code class="filename">pkg-config</code> itself adds the correct sysroot prefix 
+                when the files are accessed.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">la:</code></em></span>
+                Checks <code class="filename">.la</code> files for any <code class="filename">TMPDIR</code>
+                paths. 
+                Any <code class="filename">.la</code> file continaing these paths is incorrect since 
+                <code class="filename">libtool</code> adds the correct sysroot prefix when using the 
+                files automatically itself.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">desktop:</code></em></span>
+                Runs the <code class="filename">desktop-file-validate</code> program against any 
+                <code class="filename">.desktop</code> files to validate their contents against 
+                the specification for <code class="filename">.desktop</code> files.</p></li>
+</ul></div>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-kernel.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-kernel.html
new file mode 100644
index 0000000..cefb7ef
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-kernel.html
@@ -0,0 +1,36 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.14. Building kernels - kernel.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-package.html" title="6.13. Packaging - package*.bbclass">
+<link rel="next" href="ref-classes-image.html" title="6.15. Creating images - image.bbclass and rootfs*.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.14. Building kernels - kernel.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-kernel"></a>6.14. Building kernels - <code class="filename">kernel.bbclass</code>
+</h2></div></div></div>
+<p>
+        This class handles building Linux kernels. 
+        The class contains code to build all kernel trees. 
+        All needed headers are staged into the
+        <code class="filename"><a class="link" href="ref-variables-glos.html#var-STAGING_KERNEL_DIR" title="STAGING_KERNEL_DIR">STAGING_KERNEL_DIR</a></code>
+        directory to allow out-of-tree module builds using <code class="filename">module.bbclass</code>.
+    </p>
+<p>
+        This means that each built kernel module is packaged separately and inter-module 
+        dependencies are created by parsing the <code class="filename">modinfo</code> output. 
+        If all modules are required, then installing the <code class="filename">kernel-modules</code>
+        package installs all packages with modules and various other kernel packages 
+        such as <code class="filename">kernel-vmlinux</code>.
+    </p>
+<p>
+        Various other classes are used by the kernel and module classes internally including 
+        <code class="filename">kernel-arch.bbclass</code>, <code class="filename">module_strip.bbclass</code>, 
+        <code class="filename">module-base.bbclass</code>, and <code class="filename">linux-kernel-base.bbclass</code>.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-others.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-others.html
new file mode 100644
index 0000000..22dc182
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-others.html
@@ -0,0 +1,24 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.21. Other Classes</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-externalsrc.html" title="6.20. Using External Source - externalsrc.bbclass">
+<link rel="next" href="ref-images.html" title="Chapter 7. Images">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.21. Other Classes">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-others"></a>6.21. Other Classes</h2></div></div></div>
+<p>
+        Thus far, this chapter has discussed only the most useful and important 
+        classes.
+        However, other classes exist within the <code class="filename">meta/classes</code> directory 
+        in the <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.
+        You can examine the <code class="filename">.bbclass</code> files directly for more 
+        information. 
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-package.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-package.html
new file mode 100644
index 0000000..c6a864b
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-package.html
@@ -0,0 +1,73 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.13. Packaging - package*.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-packagegroup.html" title="6.12. Package Groups - packagegroup.bbclass">
+<link rel="next" href="ref-classes-kernel.html" title="6.14. Building kernels - kernel.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.13. Packaging - package*.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-package"></a>6.13. Packaging - <code class="filename">package*.bbclass</code>
+</h2></div></div></div>
+<p>
+        The packaging classes add support for generating packages from a build's
+        output. 
+        The core generic functionality is in <code class="filename">package.bbclass</code>.
+        The code specific to particular package types is contained in various sub-classes such as
+        <code class="filename">package_deb.bbclass</code>, <code class="filename">package_ipk.bbclass</code>,
+        and <code class="filename">package_rpm.bbclass</code>. 
+        Most users will want one or more of these classes.
+    </p>
+<p>
+        You can control the list of resulting package formats by using the 
+        <code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGE_CLASSES" title="PACKAGE_CLASSES">PACKAGE_CLASSES</a></code> 
+        variable defined in the <code class="filename">local.conf</code> configuration file, 
+        which is located in the <code class="filename">conf</code> folder of the 
+        <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>. 
+        When defining the variable, you can specify one or more package types.
+        Since images are generated from packages, a packaging class is 
+        needed to enable image generation.
+        The first class listed in this variable is used for image generation. 
+    </p>
+<p>
+        The package class you choose can affect build-time performance and has space
+        ramifications.
+        In general, building a package with RPM takes about thirty percent more time as 
+        compared to using IPK to build the same or similar package.
+        This comparison takes into account a complete build of the package with all 
+        dependencies previously built.
+        The reason for this discrepancy is because the RPM package manager creates and 
+        processes more metadata than the IPK package manager.
+        Consequently, you might consider setting <code class="filename">PACKAGE_CLASSES</code>
+        to "package_ipk" if you are building smaller systems.
+    </p>
+<p>
+        Keep in mind, however, that RPM starts to provide more abilities than IPK due to 
+        the fact that it processes more metadata.
+        For example, this information includes individual file types, file checksum generation
+        and evaluation on install, sparse file support, conflict detection and resolution
+        for multilib systems, ACID style upgrade, and repackaging abilities for rollbacks.
+    </p>
+<p>
+        Another consideration for packages built using the RPM package manager is space.
+        For smaller systems, the extra space used for the Berkley Database and the amount 
+        of metadata can affect your ability to do on-device upgrades.
+    </p>
+<p>
+        You can find additional information on the effects of the package class at these 
+        two Yocto Project mailing list links:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><a class="ulink" href="http://lists.yoctoproject.org/pipermail/poky/2011-May/006362.html" target="_self">
+                https://lists.yoctoproject.org/pipermail/poky/2011-May/006362.html</a></p></li>
+<li class="listitem"><p><a class="ulink" href="http://lists.yoctoproject.org/pipermail/poky/2011-May/006363.html" target="_self">
+                https://lists.yoctoproject.org/pipermail/poky/2011-May/006363.html</a></p></li>
+</ul></div>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-packagegroup.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-packagegroup.html
new file mode 100644
index 0000000..eb57191
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-packagegroup.html
@@ -0,0 +1,33 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.12. Package Groups - packagegroup.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-devshell.html" title="6.11. Developer Shell - devshell.bbclass">
+<link rel="next" href="ref-classes-package.html" title="6.13. Packaging - package*.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.12. Package Groups - packagegroup.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-packagegroup"></a>6.12. Package Groups - <code class="filename">packagegroup.bbclass</code>
+</h2></div></div></div>
+<p>
+        This class sets default values appropriate for package group recipes (such as 
+        <code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGES" title="PACKAGES">PACKAGES</a></code>, 
+        <code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGE_ARCH" title="PACKAGE_ARCH">PACKAGE_ARCH</a></code>, 
+        <code class="filename"><a class="link" href="ref-variables-glos.html#var-ALLOW_EMPTY" title="ALLOW_EMPTY">ALLOW_EMPTY</a></code>, 
+        and so forth. 
+        It is highly recommended that all package group recipes inherit this class.
+    </p>
+<p>
+        For information on how to use this class, see the 
+        "<a class="link" href="../dev-manual/usingpoky-extend-customimage-customtasks.html" target="_self">Customizing Images Using Custom Package Tasks</a>" 
+        section in the Yocto Project Development Manual.
+    </p>
+<p>
+        Previously, this class was named <code class="filename">task.bbclass</code>.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-perl.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-perl.html
new file mode 100644
index 0000000..699595b
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-perl.html
@@ -0,0 +1,31 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.9. Perl modules - cpan.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-src-distribute.html" title="6.8. Distribution of sources - src_distribute_local.bbclass">
+<link rel="next" href="ref-classes-distutils.html" title="6.10. Python extensions - distutils.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.9. Perl modules - cpan.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-perl"></a>6.9. Perl modules - <code class="filename">cpan.bbclass</code>
+</h2></div></div></div>
+<p>
+        Recipes for Perl modules are simple.
+        These recipes usually only need to point to the source's archive and then inherit the 
+        proper <code class="filename">.bbclass</code> file.
+        Building is split into two methods depending on which method the module authors used.
+    </p>
+<p>
+        Modules that use old <code class="filename">Makefile.PL</code>-based build system require
+        <code class="filename">cpan.bbclass</code> in their recipes.
+    </p>
+<p>
+        Modules that use <code class="filename">Build.PL</code>-based build system require
+        using <code class="filename">cpan_build.bbclass</code> in their recipes.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-pkgconfig.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-pkgconfig.html
new file mode 100644
index 0000000..3c43569
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-pkgconfig.html
@@ -0,0 +1,27 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.7. Pkg-config - pkgconfig.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-debian.html" title="6.6. Debian renaming - debian.bbclass">
+<link rel="next" href="ref-classes-src-distribute.html" title="6.8. Distribution of sources - src_distribute_local.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.7. Pkg-config - pkgconfig.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-pkgconfig"></a>6.7. Pkg-config - <code class="filename">pkgconfig.bbclass</code>
+</h2></div></div></div>
+<p>
+        <code class="filename">pkg-config</code> brought standardization and this class aims to make its
+        integration smooth for all libraries that make use of it.
+    </p>
+<p>
+        During staging, BitBake installs <code class="filename">pkg-config</code> data into the
+        <code class="filename">sysroots/</code> directory. 
+        By making use of sysroot functionality within <code class="filename">pkg-config</code>,
+        this class no longer has to manipulate the files.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-sanity.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-sanity.html
new file mode 100644
index 0000000..8604b0c
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-sanity.html
@@ -0,0 +1,25 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.16. Host System sanity checks - sanity.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-image.html" title="6.15. Creating images - image.bbclass and rootfs*.bbclass">
+<link rel="next" href="ref-classes-insane.html" title="6.17. Generated output quality assurance checks - insane.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.16. Host System sanity checks - sanity.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-sanity"></a>6.16. Host System sanity checks - <code class="filename">sanity.bbclass</code>
+</h2></div></div></div>
+<p>
+        This class checks to see if prerequisite software is present so that 
+        users can be notified of potential problems that might affect their build. 
+        The class also performs basic user configuration checks from 
+        the <code class="filename">local.conf</code> configuration file to
+        prevent common mistakes that cause build failures. 
+        Distribution policy usually determines whether to include this class.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-siteinfo.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-siteinfo.html
new file mode 100644
index 0000000..6c7877f
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-siteinfo.html
@@ -0,0 +1,39 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.18. Autotools configuration data cache - siteinfo.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-insane.html" title="6.17. Generated output quality assurance checks - insane.bbclass">
+<link rel="next" href="ref-classes-useradd.html" title="6.19. Adding Users - useradd.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.18. Autotools configuration data cache - siteinfo.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-siteinfo"></a>6.18. Autotools configuration data cache - <code class="filename">siteinfo.bbclass</code>
+</h2></div></div></div>
+<p>
+        Autotools can require tests that must execute on the target hardware.
+        Since this is not possible in general when cross compiling, site information is
+        used to provide cached test results so these tests can be skipped over but
+        still make the correct values available.
+        The <code class="filename"><a class="link" href="structure-meta-site.html" title="4.3.18. meta/site/">meta/site directory</a></code>
+        contains test results sorted into different categories such as architecture, endianness, and
+        the <code class="filename">libc</code> used. 
+        Site information provides a list of files containing data relevant to 
+        the current build in the 
+        <code class="filename"><a class="link" href="ref-variables-glos.html#var-CONFIG_SITE" title="CONFIG_SITE">CONFIG_SITE</a></code> variable 
+        that Autotools automatically picks up.
+    </p>
+<p>
+        The class also provides variables like 
+        <code class="filename"><a class="link" href="ref-variables-glos.html#var-SITEINFO_ENDIANNESS" title="SITEINFO_ENDIANNESS">SITEINFO_ENDIANNESS</a></code> 
+        and <code class="filename"><a class="link" href="ref-variables-glos.html#var-SITEINFO_BITS" title="SITEINFO_BITS">SITEINFO_BITS</a></code> 
+        that can be used elsewhere in the metadata.
+    </p>
+<p>
+        Because this class is included from <code class="filename">base.bbclass</code>, it is always active.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-src-distribute.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-src-distribute.html
new file mode 100644
index 0000000..76b19f1
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-src-distribute.html
@@ -0,0 +1,43 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.8. Distribution of sources - src_distribute_local.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-pkgconfig.html" title="6.7. Pkg-config - pkgconfig.bbclass">
+<link rel="next" href="ref-classes-perl.html" title="6.9. Perl modules - cpan.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.8. Distribution of sources - src_distribute_local.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-src-distribute"></a>6.8. Distribution of sources - <code class="filename">src_distribute_local.bbclass</code>
+</h2></div></div></div>
+<p>
+        Many software licenses require that source files be provided along with the binaries.
+        To simplify this process, two classes were created:
+        <code class="filename">src_distribute.bbclass</code> and 
+        <code class="filename">src_distribute_local.bbclass</code>.
+    </p>
+<p>
+        The results of these classes are <code class="filename">tmp/deploy/source/</code> 
+        subdirs with sources sorted by 
+        <code class="filename"><a class="link" href="ref-variables-glos.html#var-LICENSE" title="LICENSE">LICENSE</a></code> field. 
+        If recipes list few licenses (or have entries like "Bitstream Vera"),
+        the source archive is placed in each license directory.
+    </p>
+<p>
+        This class operates using three modes:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em>copy:</em></span> Copies the files to the 
+                distribute directory.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>symlink:</em></span> Symlinks the files to the 
+                distribute directory.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>move+symlink:</em></span> Moves the files into 
+                the distribute directory and then symlinks them back.</p></li>
+</ul></div>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-update-alternatives.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-update-alternatives.html
new file mode 100644
index 0000000..f63ae37
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-update-alternatives.html
@@ -0,0 +1,48 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.3. Alternatives - update-alternatives.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-autotools.html" title="6.2. Autotooled Packages - autotools.bbclass">
+<link rel="next" href="ref-classes-update-rc.d.html" title="6.4. Initscripts - update-rc.d.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.3. Alternatives - update-alternatives.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-update-alternatives"></a>6.3. Alternatives - <code class="filename">update-alternatives.bbclass</code>
+</h2></div></div></div>
+<p>
+        Several programs can fulfill the same or similar function and be installed with the same name. 
+        For example, the <code class="filename">ar</code> command is available from the 
+        <code class="filename">busybox</code>, <code class="filename">binutils</code> and 
+        <code class="filename">elfutils</code> packages. 
+        The <code class="filename">update-alternatives.bbclass</code> class handles renaming the 
+        binaries so that multiple packages can be installed without conflicts. 
+        The <code class="filename">ar</code> command still works regardless of which packages are installed
+        or subsequently removed. 
+        The class renames the conflicting binary in each package and symlinks the highest 
+        priority binary during installation or removal of packages.
+    </p>
+<p>
+        Four variables control this class:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><code class="filename">ALTERNATIVE_NAME</code> &#8208; The name of the 
+                binary that is replaced (<code class="filename">ar</code> in this example).</p></li>
+<li class="listitem"><p><code class="filename">ALTERNATIVE_LINK</code> &#8208; The path to 
+                the resulting binary (<code class="filename">/bin/ar</code> in this example).</p></li>
+<li class="listitem"><p><code class="filename">ALTERNATIVE_PATH</code> &#8208; The path to the 
+                real binary (<code class="filename">/usr/bin/ar.binutils</code> in this example).</p></li>
+<li class="listitem"><p><code class="filename">ALTERNATIVE_PRIORITY</code> &#8208; The priority of 
+                the binary. 
+                The version with the most features should have the highest priority.</p></li>
+</ul></div>
+<p>
+    </p>
+<p>
+	Currently, the OpenEmbedded build system supports only one binary per package.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-update-rc.d.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-update-rc.d.html
new file mode 100644
index 0000000..a2c03ee
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-update-rc.d.html
@@ -0,0 +1,28 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.4. Initscripts - update-rc.d.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-update-alternatives.html" title="6.3. Alternatives - update-alternatives.bbclass">
+<link rel="next" href="ref-classes-binconfig.html" title="6.5. Binary config scripts - binconfig.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.4. Initscripts - update-rc.d.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-update-rc.d"></a>6.4. Initscripts - <code class="filename">update-rc.d.bbclass</code>
+</h2></div></div></div>
+<p>
+        This class uses <code class="filename">update-rc.d</code> to safely install an 
+        initialization script on behalf of the package. 
+        The OpenEmbedded build system takes care of details such as making sure the script is stopped before 
+        a package is removed and started when the package is installed. 
+        Three variables control this class: 
+        <code class="filename"><a class="link" href="ref-variables-glos.html#var-INITSCRIPT_PACKAGES" title="INITSCRIPT_PACKAGES">INITSCRIPT_PACKAGES</a></code>, 
+        <code class="filename"><a class="link" href="ref-variables-glos.html#var-INITSCRIPT_NAME" title="INITSCRIPT_NAME">INITSCRIPT_NAME</a></code> and
+        <code class="filename"><a class="link" href="ref-variables-glos.html#var-INITSCRIPT_PARAMS" title="INITSCRIPT_PARAMS">INITSCRIPT_PARAMS</a></code>.
+        See the variable links for details.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-useradd.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-useradd.html
new file mode 100644
index 0000000..391a362
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes-useradd.html
@@ -0,0 +1,28 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>6.19. Adding Users - useradd.bbclass</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-classes.html" title="Chapter 6. Classes">
+<link rel="prev" href="ref-classes-siteinfo.html" title="6.18. Autotools configuration data cache - siteinfo.bbclass">
+<link rel="next" href="ref-classes-externalsrc.html" title="6.20. Using External Source - externalsrc.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="6.19. Adding Users - useradd.bbclass">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-classes-useradd"></a>6.19. Adding Users - <code class="filename">useradd.bbclass</code>
+</h2></div></div></div>
+<p>
+        If you have packages that install files that are owned by custom users or groups, 
+        you can use this class to specify those packages and associate the users and groups
+        with those packages.
+        The <code class="filename">meta-skeleton/recipes-skeleton/useradd/useradd-example.bb</code> 
+        recipe in the <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>
+        provides a simple exmample that shows how to add three 
+        users and groups to two packages.
+        See the <code class="filename">useradd-example.bb</code> for more information on how to 
+        use this class.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes.html
new file mode 100644
index 0000000..7ebd3b3
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-classes.html
@@ -0,0 +1,61 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 6. Classes</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="prev" href="ref-bitbake-fetchers.html" title="5.7. Fetchers">
+<link rel="next" href="ref-classes-base.html" title="6.1. The base class - base.bbclass">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 6. Classes">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="ref-classes"></a>Chapter 6. Classes</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="ref-classes-base.html">6.1. The base class - <code class="filename">base.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-autotools.html">6.2. Autotooled Packages - <code class="filename">autotools.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-update-alternatives.html">6.3. Alternatives - <code class="filename">update-alternatives.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-update-rc.d.html">6.4. Initscripts - <code class="filename">update-rc.d.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-binconfig.html">6.5. Binary config scripts - <code class="filename">binconfig.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-debian.html">6.6. Debian renaming - <code class="filename">debian.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-pkgconfig.html">6.7. Pkg-config - <code class="filename">pkgconfig.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-src-distribute.html">6.8. Distribution of sources - <code class="filename">src_distribute_local.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-perl.html">6.9. Perl modules - <code class="filename">cpan.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-distutils.html">6.10. Python extensions - <code class="filename">distutils.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-devshell.html">6.11. Developer Shell - <code class="filename">devshell.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-packagegroup.html">6.12. Package Groups - <code class="filename">packagegroup.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-package.html">6.13. Packaging - <code class="filename">package*.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-kernel.html">6.14. Building kernels - <code class="filename">kernel.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-image.html">6.15. Creating images - <code class="filename">image.bbclass</code> and <code class="filename">rootfs*.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-sanity.html">6.16. Host System sanity checks - <code class="filename">sanity.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-insane.html">6.17. Generated output quality assurance checks - <code class="filename">insane.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-siteinfo.html">6.18. Autotools configuration data cache - <code class="filename">siteinfo.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-useradd.html">6.19. Adding Users - <code class="filename">useradd.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-externalsrc.html">6.20. Using External Source - <code class="filename">externalsrc.bbclass</code></a></span></dt>
+<dt><span class="section"><a href="ref-classes-others.html">6.21. Other Classes</a></span></dt>
+</dl>
+</div>
+<p>
+    Class files are used to abstract common functionality and share it amongst multiple 
+    <code class="filename">.bb</code> files. 
+    Any metadata usually found in a <code class="filename">.bb</code> file can also be placed in a class 
+    file. 
+    Class files are identified by the extension <code class="filename">.bbclass</code> and are usually placed 
+    in a <code class="filename">classes/</code> directory beneath the 
+    <code class="filename">meta*/</code> directory found in the 
+    <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.
+    Class files can also be pointed to by BUILDDIR (e.g. <code class="filename">build/</code>)in the same way as
+    <code class="filename">.conf</code> files in the <code class="filename">conf</code> directory. 
+    Class files are searched for in <a class="link" href="ref-variables-glos.html#var-BBPATH" title="BBPATH"><code class="filename">BBPATH</code></a>
+    using the same method by which <code class="filename">.conf</code> files are searched.
+</p>
+<p>
+    In most cases inheriting the class is enough to enable its features, although 
+    for some classes you might need to set variables or override some of the 
+    default behaviour.
+</p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features-distro.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features-distro.html
new file mode 100644
index 0000000..40a538a
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features-distro.html
@@ -0,0 +1,59 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>8.1. Distro</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-features.html" title="Chapter 8. Reference: Features">
+<link rel="prev" href="ref-features.html" title="Chapter 8. Reference: Features">
+<link rel="next" href="ref-features-machine.html" title="8.2. Machine">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="8.1. Distro">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-features-distro"></a>8.1. Distro</h2></div></div></div>
+<p>
+            The items below are valid options for 
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO_FEATURES" title="DISTRO_FEATURES">DISTRO_FEATURES</a></code>:
+            </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em>alsa:</em></span> ALSA support will be included (OSS compatibility 
+                    kernel modules will be installed if available).</p></li>
+<li class="listitem"><p><span class="emphasis"><em>bluetooth:</em></span> Include bluetooth support (integrated BT only)
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>ext2:</em></span> Include tools for supporting for devices with internal
+                    HDD/Microdrive for storing files (instead of Flash only devices)
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>irda:</em></span> Include Irda support
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>keyboard:</em></span> Include keyboard support (e.g. keymaps will be 
+                    loaded during boot).
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>pci:</em></span> Include PCI bus support
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>pcmcia:</em></span> Include PCMCIA/CompactFlash support
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>usbgadget:</em></span> USB Gadget Device support (for USB
+                    networking/serial/storage)
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>usbhost:</em></span> USB Host support (allows to connect external
+                    keyboard, mouse, storage, network etc)
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>wifi:</em></span> WiFi support (integrated only)
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>cramfs:</em></span> CramFS support
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>ipsec:</em></span> IPSec support
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>ipv6:</em></span> IPv6 support
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>nfs:</em></span> NFS client support (for mounting NFS exports on
+                    device)</p></li>
+<li class="listitem"><p><span class="emphasis"><em>ppp:</em></span> PPP dialup support</p></li>
+<li class="listitem"><p><span class="emphasis"><em>smbfs:</em></span> SMB networks client support (for mounting
+                    Samba/Microsoft Windows shares on device)</p></li>
+</ul></div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features-image.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features-image.html
new file mode 100644
index 0000000..21804be
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features-image.html
@@ -0,0 +1,70 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>8.3. Images</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-features.html" title="Chapter 8. Reference: Features">
+<link rel="prev" href="ref-features-machine.html" title="8.2. Machine">
+<link rel="next" href="ref-variables-glos.html" title="Chapter 9. Variables Glossary">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="8.3. Images">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-features-image"></a>8.3. Images</h2></div></div></div>
+<p>
+            The contents of images generated by the OpenEmbedded build system can be controlled by the 
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_FEATURES" title="IMAGE_FEATURES">IMAGE_FEATURES</a></code>
+            and <code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_IMAGE_FEATURES" title="EXTRA_IMAGE_FEATURES">EXTRA_IMAGE_FEATURES</a></code>
+            variables that you typically configure in your image recipes.
+            Through these variables you can add several different
+            predefined packages such as development utilities or packages with debug
+            information needed to investigate application problems or profile applications.
+        </p>
+<p>
+            Current list of 
+            <code class="filename">IMAGE_FEATURES</code> contains the following:
+            </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em>splash:</em></span> Enables showing a splash screen during boot. 
+                    By default, this screen is provided by <code class="filename">psplash</code>, which does 
+                    allow customization. 
+                    If you prefer to use an alternative splash screen package, you can do so by 
+                    setting the <code class="filename">SPLASH</code> variable
+                    to a different package name (or names) within the image recipe or at the distro
+                    configuration level.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>ssh-server-dropbear:</em></span> Installs the Dropbear minimal 
+                    SSH server.
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>ssh-server-openssh:</em></span> Installs the OpenSSH SSH server,
+                    which is more full-featured than Dropbear. 
+                    Note that if both the OpenSSH SSH server and the Dropbear minimal SSH server
+                    are present in <code class="filename">IMAGE_FEATURES</code>, then OpenSSH will take
+                    precedence and Dropbear will not be installed.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>x11:</em></span> Installs the X server</p></li>
+<li class="listitem"><p><span class="emphasis"><em>x11-base:</em></span> Installs the X server with a 
+                    minimal environment.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>x11-sato:</em></span> Installs the OpenedHand Sato environment.
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>tools-sdk:</em></span> Installs a full SDK that runs on the device.
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>tools-debug:</em></span> Installs debugging tools such as 
+                    <code class="filename">strace</code> and <code class="filename">gdb</code>.
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>tools-profile:</em></span> Installs profiling tools such as 
+                    <code class="filename">oprofile</code>, <code class="filename">exmap</code>, and 
+                    <code class="filename">LTTng</code>.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>tools-testapps:</em></span> Installs device testing tools (e.g.
+                    touchscreen debugging).</p></li>
+<li class="listitem"><p><span class="emphasis"><em>nfs-server:</em></span> Installs an NFS server.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>dev-pkgs:</em></span> Installs development packages (headers and 
+                    extra library links) for all packages installed in a given image.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>dbg-pkgs:</em></span> Installs debug symbol packages for all packages 
+                    installed in a given image.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>doc-pkgs:</em></span> Installs documentation packages for all packages 
+                    installed in a given image.</p></li>
+</ul></div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features-machine.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features-machine.html
new file mode 100644
index 0000000..1023387
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features-machine.html
@@ -0,0 +1,54 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>8.2. Machine</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-features.html" title="Chapter 8. Reference: Features">
+<link rel="prev" href="ref-features-distro.html" title="8.1. Distro">
+<link rel="next" href="ref-features-image.html" title="8.3. Images">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="8.2. Machine">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-features-machine"></a>8.2. Machine</h2></div></div></div>
+<p>
+            The items below are valid options for 
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_FEATURES" title="MACHINE_FEATURES">MACHINE_FEATURES</a></code>:
+            </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em>acpi:</em></span> Hardware has ACPI (x86/x86_64 only)
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>alsa:</em></span> Hardware has ALSA audio drivers
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>apm:</em></span> Hardware uses APM (or APM emulation)
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>bluetooth:</em></span> Hardware has integrated BT
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>ext2:</em></span> Hardware HDD or Microdrive
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>irda:</em></span> Hardware has Irda support
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>keyboard:</em></span> Hardware has a keyboard
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>pci:</em></span> Hardware has a PCI bus
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>pcmcia:</em></span> Hardware has PCMCIA or CompactFlash sockets
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>screen:</em></span> Hardware has a screen
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>serial:</em></span> Hardware has serial support (usually RS232)
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>touchscreen:</em></span> Hardware has a touchscreen
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>usbgadget:</em></span> Hardware is USB gadget device capable
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>usbhost:</em></span> Hardware is USB Host capable
+                    </p></li>
+<li class="listitem"><p><span class="emphasis"><em>wifi:</em></span> Hardware has integrated WiFi
+                    </p></li>
+</ul></div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features.html
new file mode 100644
index 0000000..b0178ee
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-features.html
@@ -0,0 +1,41 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 8. Reference: Features</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="prev" href="ref-images.html" title="Chapter 7. Images">
+<link rel="next" href="ref-features-distro.html" title="8.1. Distro">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 8. Reference: Features">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="ref-features"></a>Chapter 8. Reference: Features</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="ref-features-distro.html">8.1. Distro</a></span></dt>
+<dt><span class="section"><a href="ref-features-machine.html">8.2. Machine</a></span></dt>
+<dt><span class="section"><a href="ref-features-image.html">8.3. Images</a></span></dt>
+</dl>
+</div>
+<p>
+        Features provide a mechanism for working out which packages
+        should be included in the generated images. 
+        Distributions can select which features they want to support through the
+        <code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO_FEATURES" title="DISTRO_FEATURES">DISTRO_FEATURES</a></code>
+        variable, which is set in the <code class="filename">poky.conf</code> distribution configuration file.
+        Machine features are set in the
+        <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_FEATURES" title="MACHINE_FEATURES">MACHINE_FEATURES</a></code>
+        variable, which is set in the machine configuration file and
+        specifies the hardware features for a given machine.
+    </p>
+<p>
+        These two variables combine to work out which kernel modules,
+        utilities, and other packages to include. 
+        A given distribution can support a selected subset of features so some machine features might not
+        be included if the distribution itself does not support them.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-images.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-images.html
new file mode 100644
index 0000000..5ee0958
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-images.html
@@ -0,0 +1,137 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 7. Images</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="prev" href="ref-classes-others.html" title="6.21. Other Classes">
+<link rel="next" href="ref-features.html" title="Chapter 8. Reference: Features">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 7. Images">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="ref-images"></a>Chapter 7. Images</h2></div></div></div>
+<p>
+        The OpenEmbedded build process supports several types of images to satisfy different needs.  
+        When you issue the <code class="filename">bitbake</code> command you provide a &#8220;top-level&#8221; recipe 
+        that essentially begins the build for the type of image you want.
+    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+        Building an image without GNU Public License Version 3 (GPLv3) components is 
+        only supported for minimal and base images.
+        Furthermore, if you are going to build an image using non-GPLv3 components,
+        you must make the following changes in the <code class="filename">local.conf</code> file
+        before using the BitBake command to build the minimal or base image:
+        <pre class="literallayout">
+     1. Comment out the EXTRA_IMAGE_FEATURES line
+     2. Set INCOMPATIBLE_LICENSE = "GPLv3"
+        </pre>
+</div>
+<p>
+        From within the <code class="filename">poky</code> Git repository, use the following command to list 
+        the supported images:
+        </p>
+<pre class="literallayout">
+     $ ls meta*/recipes*/images/*.bb
+        </pre>
+<p>
+        These recipes reside in the <code class="filename">meta/recipes-core/images</code>,
+        <code class="filename">meta/recipes-extended/images</code>, 
+        <code class="filename">meta/recipes-graphics/images</code>, and 
+        <code class="filename">meta/recipes-sato/images</code> directories 
+        within the <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.  
+        Although the recipe names are somewhat explanatory, here is a list that describes them:
+    </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-base</code>:</em></span>
+            A console-only image that fully supports the target device hardware.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-minimal</code>:</em></span>
+            A small image just capable of allowing a device to boot.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-minimal-dev</code>:</em></span>
+            A <code class="filename">core-image-minimal</code> image suitable for development work
+            using the host.
+            The image includes headers and libraries you can use in a host development 
+            environment.
+            </p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-minimal-initramfs</code>:</em></span>
+            A <code class="filename">core-image-minimal</code> image that has the Minimal RAM-based 
+            Initial Root Filesystem (<code class="filename">initramfs</code>) as part of the kernel, 
+            which allows the system to find the first &#8220;init&#8221; program more efficiently.
+            </p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-minimal-mtdutils</code>:</em></span>
+            A <code class="filename">core-image-minimal</code> image that has support 
+            for the Minimal MTD Utilities, which let the user interact with the 
+            MTD subsystem in the kernel to perform operations on flash devices.
+            </p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-x11</code>:</em></span>
+            A very basic X11 image with a terminal.
+            </p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-basic</code>:</em></span>
+            A console-only image with more full-featured Linux system
+            functionality installed.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-lsb</code>:</em></span>
+            An image that conforms to the Linux Standard Base (LSB) specification.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-lsb-dev</code>:</em></span>
+            A <code class="filename">core-image-lsb</code> image that is suitable for development work
+            using the host.
+            The image includes headers and libraries you can use in a host development 
+            environment.
+            </p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-lsb-sdk</code>:</em></span>
+            A <code class="filename">core-image-lsb</code> that includes everything in meta-toolchain 
+            but also includes development headers and libraries to form a complete standalone SDK.
+            This image is suitable for development using the target.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-clutter</code>:</em></span>
+            An image with support for the Open GL-based toolkit Clutter, which enables development of 
+            rich and animated graphical user interfaces.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-sato</code>:</em></span>
+            An image with Sato support, a mobile environment and visual style that works well 
+            with mobile devices.
+            The image supports X11 with a Sato theme and applications such as
+            a terminal, editor, file manager, media player, and so forth.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-sato-dev</code>:</em></span>
+            A <code class="filename">core-image-sato</code> image suitable for development 
+            using the host.
+            The image includes libraries needed to build applications on the device itself, 
+            testing and profiling tools, and debug symbols.  
+            This image was formerly <code class="filename">core-image-sdk</code>.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-sato-sdk</code>:</em></span>
+            A <code class="filename">core-image-sato</code> image that includes everything in meta-toolchain. 
+            The image also includes development headers and libraries to form a complete standalone SDK
+            and is suitable for development using the target.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-rt</code>:</em></span>
+            A <code class="filename">core-image-minimal</code> image plus a real-time test suite and 
+            tools appropriate for real-time use.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-rt-sdk</code>:</em></span>
+            A <code class="filename">core-image-rt</code> image that includes everything in 
+            <code class="filename">meta-toolchain</code>.  
+            The image also includes development headers and libraries to form a complete 
+            stand-alone SDK and is suitable for development using the target.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">core-image-gtk-directfb</code>:</em></span>
+            An image that uses <code class="filename">gtk+</code> over <code class="filename">directfb</code> 
+            instead of X11.  
+            In order to build, this image requires specific distro configuration that enables 
+            <code class="filename">gtk</code> over <code class="filename">directfb</code>.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">build-appliance-image</code>:</em></span>
+            An image you can boot and run using either the
+            <a class="ulink" href="http://www.vmware.com/products/player/overview.html" target="_self">VMware Player</a>
+            or <a class="ulink" href="http://www.vmware.com/products/workstation/overview.html" target="_self">VMware Workstation</a>.
+            For more information on this image, see the
+            <a class="ulink" href="http://www.yoctoproject.org/documentation/build-appliance" target="_self">Build Appliance</a> page on 
+            the Yocto Project website.</p></li>
+</ul></div>
+<div class="tip" title="Tip" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Tip</h3>
+        From the Yocto Project release 1.1 onwards, <code class="filename">-live</code> and 
+        <code class="filename">-directdisk</code> images have been replaced by a "live"
+        option in <code class="filename">IMAGE_FSTYPES</code> that will work with any image to produce an 
+        image file that can be
+        copied directly to a CD or USB device and run as is. 
+        To build a live image, simply add
+        "live" to <code class="filename">IMAGE_FSTYPES</code> within the <code class="filename">local.conf</code>
+        file or wherever appropriate and then build the desired image as normal.
+    </div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-structure.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-structure.html
new file mode 100644
index 0000000..5030708
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-structure.html
@@ -0,0 +1,90 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 4. Source Directory Structure</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="prev" href="other-variables-related-to-commercial-licenses.html" title="3.4.2.2. Other Variables Related to Commercial Licenses">
+<link rel="next" href="structure-core.html" title="4.1. Top level core components">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 4. Source Directory Structure">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="ref-structure"></a>Chapter 4. Source Directory Structure</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="structure-core.html">4.1. Top level core components</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="structure-core-bitbake.html">4.1.1. <code class="filename">bitbake/</code></a></span></dt>
+<dt><span class="section"><a href="structure-core-build.html">4.1.2. <code class="filename">build/</code></a></span></dt>
+<dt><span class="section"><a href="handbook.html">4.1.3. <code class="filename">documentation</code></a></span></dt>
+<dt><span class="section"><a href="structure-core-meta.html">4.1.4. <code class="filename">meta/</code></a></span></dt>
+<dt><span class="section"><a href="structure-core-meta-demoapps.html">4.1.5. <code class="filename">meta-demoapps/</code></a></span></dt>
+<dt><span class="section"><a href="structure-core-meta-rt.html">4.1.6. <code class="filename">meta-rt/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-skeleton.html">4.1.7. <code class="filename">meta-skeleton/</code></a></span></dt>
+<dt><span class="section"><a href="structure-core-scripts.html">4.1.8. <code class="filename">scripts/</code></a></span></dt>
+<dt><span class="section"><a href="structure-core-script.html">4.1.9. <code class="filename">oe-init-build-env</code></a></span></dt>
+<dt><span class="section"><a href="structure-basic-top-level.html">4.1.10. <code class="filename">LICENSE, README, and README.hardware</code></a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="structure-build.html">4.2. The Build Directory - <code class="filename">build/</code></a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="structure-build-pseudodone.html">4.2.1. <code class="filename">build/pseudodone</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-conf-local.conf.html">4.2.2. <code class="filename">build/conf/local.conf</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-conf-bblayers.conf.html">4.2.3. <code class="filename">build/conf/bblayers.conf</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-conf-sanity_info.html">4.2.4. <code class="filename">build/conf/sanity_info</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-downloads.html">4.2.5. <code class="filename">build/downloads/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-sstate-cache.html">4.2.6. <code class="filename">build/sstate-cache/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp.html">4.2.7. <code class="filename">build/tmp/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-buildstats.html">4.2.8. <code class="filename">build/tmp/buildstats/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-cache.html">4.2.9. <code class="filename">build/tmp/cache/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-deploy.html">4.2.10. <code class="filename">build/tmp/deploy/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-deploy-deb.html">4.2.11. <code class="filename">build/tmp/deploy/deb/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-deploy-rpm.html">4.2.12. <code class="filename">build/tmp/deploy/rpm/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-deploy-licenses.html">4.2.13. <code class="filename">build/tmp/deploy/licenses/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-deploy-images.html">4.2.14. <code class="filename">build/tmp/deploy/images/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-deploy-ipk.html">4.2.15. <code class="filename">build/tmp/deploy/ipk/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-sysroots.html">4.2.16. <code class="filename">build/tmp/sysroots/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-stamps.html">4.2.17. <code class="filename">build/tmp/stamps/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-log.html">4.2.18. <code class="filename">build/tmp/log/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-pkgdata.html">4.2.19. <code class="filename">build/tmp/pkgdata/</code></a></span></dt>
+<dt><span class="section"><a href="structure-build-tmp-work.html">4.2.20. <code class="filename">build/tmp/work/</code></a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="structure-meta.html">4.3. The Metadata - <code class="filename">meta/</code></a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="structure-meta-classes.html">4.3.1. <code class="filename">meta/classes/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-conf.html">4.3.2. <code class="filename">meta/conf/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-conf-machine.html">4.3.3. <code class="filename">meta/conf/machine/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-conf-distro.html">4.3.4. <code class="filename">meta/conf/distro/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-bsp.html">4.3.5. <code class="filename">meta/recipes-bsp/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-connectivity.html">4.3.6. <code class="filename">meta/recipes-connectivity/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-core.html">4.3.7. <code class="filename">meta/recipes-core/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-devtools.html">4.3.8. <code class="filename">meta/recipes-devtools/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-extended.html">4.3.9. <code class="filename">meta/recipes-extended/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-gnome.html">4.3.10. <code class="filename">meta/recipes-gnome/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-graphics.html">4.3.11. <code class="filename">meta/recipes-graphics/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-kernel.html">4.3.12. <code class="filename">meta/recipes-kernel/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-multimedia.html">4.3.13. <code class="filename">meta/recipes-multimedia/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-qt.html">4.3.14. <code class="filename">meta/recipes-qt/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-rt.html">4.3.15. <code class="filename">meta/recipes-rt/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-sato.html">4.3.16. <code class="filename">meta/recipes-sato/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-support.html">4.3.17. <code class="filename">meta/recipes-support/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-site.html">4.3.18. <code class="filename">meta/site/</code></a></span></dt>
+<dt><span class="section"><a href="structure-meta-recipes-txt.html">4.3.19. <code class="filename">meta/recipes.txt</code></a></span></dt>
+</dl></dd>
+</dl>
+</div>
+<p>
+    The <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a> consists of several components.
+    Understanding them and knowing where they are located is key to using the Yocto Project well.
+    This chapter describes the source directory and gives information about the various 
+    files and directories.
+</p>
+<p>
+    For information on how to establish a local source directory on your development system, see the
+    "<a class="link" href="../dev-manual/getting-setup.html" target="_self">Getting Set Up</a>"
+    section in the Yocto Project Development Manual.
+</p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-variables-glos.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-variables-glos.html
new file mode 100644
index 0000000..ed512b5
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-variables-glos.html
@@ -0,0 +1,1903 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 9. Variables Glossary</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="prev" href="ref-features-image.html" title="8.3. Images">
+<link rel="next" href="ref-varlocality.html" title="Chapter 10. Variable Context">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 9. Variables Glossary">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="ref-variables-glos"></a>Chapter 9. Variables Glossary</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl><dt><span class="glossary"><a href="ref-variables-glos.html#ref-variables-glossary">Glossary</a></span></dt></dl>
+</div>
+<p>
+    This chapter lists common variables used in the OpenEmbedded build system and gives an overview
+    of their function and contents.
+</p>
+<div class="glossary" title="Glossary">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="ref-variables-glossary"></a>Glossary</h2></div></div></div>
+<p>
+       <a class="link" href="ref-variables-glos.html#var-ALLOW_EMPTY" title="ALLOW_EMPTY">A</a> 
+       <a class="link" href="ref-variables-glos.html#var-B" title="B">B</a> 
+       <a class="link" href="ref-variables-glos.html#var-CFLAGS" title="CFLAGS">C</a> 
+       <a class="link" href="ref-variables-glos.html#var-D" title="D">D</a> 
+       <a class="link" href="ref-variables-glos.html#var-ENABLE_BINARY_LOCALE_GENERATION" title="ENABLE_BINARY_LOCALE_GENERATION">E</a> 
+       <a class="link" href="ref-variables-glos.html#var-FILES" title="FILES">F</a> 
+
+       <a class="link" href="ref-variables-glos.html#var-HOMEPAGE" title="HOMEPAGE">H</a> 
+       <a class="link" href="ref-variables-glos.html#var-IMAGE_FEATURES" title="IMAGE_FEATURES">I</a> 
+
+       <a class="link" href="ref-variables-glos.html#var-KBRANCH" title="KBRANCH">K</a>
+       <a class="link" href="ref-variables-glos.html#var-LAYERDIR" title="LAYERDIR">L</a> 
+       <a class="link" href="ref-variables-glos.html#var-MACHINE" title="MACHINE">M</a> 
+
+
+       <a class="link" href="ref-variables-glos.html#var-PACKAGE_ARCH" title="PACKAGE_ARCH">P</a> 
+
+       <a class="link" href="ref-variables-glos.html#var-RCONFLICTS" title="RCONFLICTS">R</a> 
+       <a class="link" href="ref-variables-glos.html#var-S" title="S">S</a> 
+       <a class="link" href="ref-variables-glos.html#var-TARGET_ARCH" title="TARGET_ARCH">T</a> 
+
+
+       <a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR">W</a> 
+
+
+
+    </p>
+<div class="glossdiv" title="A">
+<h3 class="title">A</h3>
+<dl>
+<dt>
+<a name="var-ALLOW_EMPTY"></a>ALLOW_EMPTY</dt>
+<dd>
+<p>
+                   Specifies if an output package should still be produced if it is empty.
+                   By default, BitBake does not produce empty packages.
+                   This default behavior can cause issues when there is an 
+                   <a class="link" href="ref-variables-glos.html#var-RDEPENDS" title="RDEPENDS"><code class="filename">RDEPENDS</code></a> or 
+                   some other runtime hard-requirement on the existence of the package.
+                </p>
+<p>
+                   Like all package-controlling variables, you must always use them in 
+                   conjunction with a package name override.
+                   Here is an example:
+                   </p>
+<pre class="literallayout">
+     ALLOW_EMPTY_${PN} = "1"
+                   </pre>
+<p>
+                </p>
+</dd>
+<dt>
+<a name="var-AUTHOR"></a>AUTHOR</dt>
+<dd><p>The email address used to contact the original author or authors in 
+                    order to send patches, forward bugs, etc.</p></dd>
+<dt>
+<a name="var-AUTOREV"></a>AUTOREV</dt>
+<dd>
+<p>When <code class="filename"><a class="link" href="ref-variables-glos.html#var-SRCREV" title="SRCREV">SRCREV</a></code>
+                    is set to the value of this variable, it specifies that the latest
+                    source revision in the repository should be used. Here is an example:
+                    </p>
+<pre class="literallayout">
+     SRCREV = "${AUTOREV}"
+                    </pre>
+<p>
+                </p>
+</dd>
+</dl>
+</div>
+<div class="glossdiv" title="B">
+<h3 class="title">B</h3>
+<dl>
+<dt>
+<a name="var-B"></a>B</dt>
+<dd>
+<p>
+                    The directory in which the OpenEmbedded build system places
+                    generated objects during a recipe's build process.
+                    By default, this directory is the same as the <a class="link" href="ref-variables-glos.html#var-S" title="S"><code class="filename">S</code></a>
+                    directory:
+                    </p>
+<pre class="literallayout">
+     B = ${WORKDIR}/${BPN}-{PV}/
+                    </pre>
+<p>
+                    You can separate the source directory (<code class="filename">S</code>) and the directory pointed to 
+                    by the <code class="filename">B</code> variable.
+                    Most autotools-based recipes support separating these directories.
+                    The build system defaults to using separate directories for <code class="filename">gcc</code>
+                    and some kernel recipes.
+                </p>
+</dd>
+<dt>
+<a name="var-BAD_RECOMMENDATIONS"></a>BAD_RECOMMENDATIONS</dt>
+<dd><p>
+                    A list of packages not to install despite being recommended by a recipe.
+                    Support for this variable exists only for images that use the 
+                    <code class="filename">ipkg</code> packaging system.
+                </p></dd>
+<dt>
+<a name="var-BBCLASSEXTEND"></a>BBCLASSEXTEND</dt>
+<dd>
+<p>
+                    Allows you to extend a recipe so that it builds variants of the software.
+                    Common variants for recipes exist such as "natives" like <code class="filename">quilt-native</code>,
+                    which is a copy of quilt built to run on the build system;
+                    "crosses" such as <code class="filename">gcc-cross</code>,
+                    which is a compiler built to run on the build machine but produces binaries
+                    that run on the target <a class="link" href="ref-variables-glos.html#var-MACHINE" title="MACHINE"><code class="filename">MACHINE</code></a>;
+                    "nativesdk", which targets the SDK machine instead of <code class="filename">MACHINE</code>;
+                    and "mulitlibs" in the form "<code class="filename">multilib:&lt;multilib_name&gt;</code>".
+                </p>
+<p>
+                    To build a different variant of the recipe with a minimal amount of code, it usually
+                    is as simple as adding the following to your recipe:
+                    </p>
+<pre class="literallayout">
+     BBCLASSEXTEND =+ "native nativesdk"
+     BBCLASSEXTEND =+ "multilib:&lt;multilib_name&gt;"
+                    </pre>
+<p>
+                </p>
+</dd>
+<dt>
+<a name="var-BBMASK"></a>BBMASK</dt>
+<dd>
+<p>Prevents BitBake from processing recipes and recipe append files.
+                    You can use the <code class="filename">BBMASK</code> variable to "hide" 
+                    these <code class="filename">.bb</code> and <code class="filename">.bbappend</code> files.
+                    BitBake ignores any recipe or recipe append files that match the expression.
+                    It is as if BitBake does not see them at all.
+                    Consequently, matching files are not parsed or otherwise used by 
+                    BitBake.</p>
+<p>The value you provide is passed to python's regular expression compiler.
+                    For complete syntax information, see python's documentation at 
+                    <a class="ulink" href="http://docs.python.org/release/2.3/lib/re-syntax.html" target="_self">http://docs.python.org/release/2.3/lib/re-syntax.html</a>.
+                    The expression is compared against the full paths to the files. 
+                    For example, the following uses a complete regular expression to tell
+                    BitBake to ignore all recipe and recipe append files in the 
+                    <code class="filename">.*/meta-ti/recipes-misc/</code> directory:
+                    </p>
+<pre class="literallayout">
+     BBMASK = ".*/meta-ti/recipes-misc/"
+                    </pre>
+<p>Use the <code class="filename">BBMASK</code> variable from within the 
+                    <code class="filename">conf/local.conf</code> file found 
+                    in the <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>.</p>
+</dd>
+<dt>
+<a name="var-BB_NUMBER_THREADS"></a>BB_NUMBER_THREADS</dt>
+<dd><p>The maximum number of tasks BitBake should run in parallel at any one time.
+                    If your host development system supports multiple cores a good rule of thumb
+                    is to set this variable to twice the number of cores.</p></dd>
+<dt>
+<a name="var-BBFILE_COLLECTIONS"></a>BBFILE_COLLECTIONS</dt>
+<dd><p>Lists the names of configured layers. 
+                    These names are used to find the other <code class="filename">BBFILE_*</code>
+                    variables. 
+                    Typically, each layer will append its name to this variable in its
+                    <code class="filename">conf/layer.conf</code> file.
+                </p></dd>
+<dt>
+<a name="var-BBFILE_PATTERN"></a>BBFILE_PATTERN</dt>
+<dd><p>Variable that expands to match files from <code class="filename">BBFILES</code> in a particular layer.  
+                    This variable is used in the <code class="filename">conf/layer.conf</code> file and must 
+                    be suffixed with the name of the specific layer (e.g. 
+                    <code class="filename">BBFILE_PATTERN_emenlow</code>).</p></dd>
+<dt>
+<a name="var-BBFILE_PRIORITY"></a>BBFILE_PRIORITY</dt>
+<dd>
+<p>Assigns the priority for recipe files in each layer.</p>
+<p>This variable is useful in situations where the same package appears in
+                    more than one layer. 
+                    Setting this variable allows you to prioritize a
+                    layer against other layers that contain the same package - effectively
+                    letting you control the precedence for the multiple layers. 
+                    The precedence established through this variable stands regardless of a
+                    layer's package version (<code class="filename">PV</code> variable). 
+                    For example, a layer that has a package with a higher <code class="filename">PV</code> value but for 
+                    which the <code class="filename">BBFILE_PRIORITY</code> is set to have a lower precedence still has a 
+                    lower precedence.</p>
+<p>A larger value for the <code class="filename">BBFILE_PRIORITY</code> variable results in a higher
+                    precedence. 
+                    For example, the value 6 has a higher precedence than the value 5. 
+                    If not specified, the <code class="filename">BBFILE_PRIORITY</code> variable is set based on layer
+                    dependencies (see the
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-LAYERDEPENDS" title="LAYERDEPENDS">LAYERDEPENDS</a></code> variable for 
+                    more information.
+                    The default priority, if unspecified
+                    for a layer with no dependencies, is the lowest defined priority + 1
+                    (or 1 if no priorities are defined).</p>
+<div class="tip" title="Tip" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Tip</h3>
+                    You can use the command <code class="filename">bitbake-layers show_layers</code> to list
+                    all configured layers along with their priorities.
+                </div>
+</dd>
+<dt>
+<a name="var-BBFILES"></a>BBFILES</dt>
+<dd><p>List of recipe files used by BitBake to build software</p></dd>
+<dt>
+<a name="var-BBPATH"></a>BBPATH</dt>
+<dd><p>Used by BitBake to locate <code class="filename">.bbclass</code> and configuration files.  
+                    This variable is analogous to the <code class="filename">PATH</code> variable.</p></dd>
+<dt>
+<a name="var-BBINCLUDELOGS"></a>BBINCLUDELOGS</dt>
+<dd><p>Variable that controls how BitBake displays logs on build failure.</p></dd>
+<dt>
+<a name="var-BBLAYERS"></a>BBLAYERS</dt>
+<dd>
+<p>Lists the layers to enable during the build. 
+                    This variable is defined in the <code class="filename">bblayers.conf</code> configuration 
+                    file in the <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>. 
+                    Here is an example:
+                    </p>
+<pre class="literallayout">
+     BBLAYERS = " \
+       /home/scottrif/poky/meta \
+       /home/scottrif/poky/meta-yocto \
+       /home/scottrif/poky/meta-mykernel \
+       "
+                    </pre>
+<p>
+                    This example enables three layers, one of which is a custom, user-defined layer 
+                    named <code class="filename">meta-mykernel</code>.
+                </p>
+</dd>
+<dt>
+<a name="var-BPN"></a>BPN</dt>
+<dd><p>Bare name of package with any suffixes like -cross -native removed.</p></dd>
+</dl>
+</div>
+<div class="glossdiv" title="C">
+<h3 class="title">C</h3>
+<dl>
+<dt>
+<a name="var-CFLAGS"></a>CFLAGS</dt>
+<dd><p>
+                    Flags passed to C compiler for the target system. 
+                    This variable evaluates to the same as 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-TARGET_CFLAGS" title="TARGET_CFLAGS">TARGET_CFLAGS</a></code>.
+                </p></dd>
+<dt>
+<a name="var-COMPATIBLE_MACHINE"></a>COMPATIBLE_MACHINE</dt>
+<dd><p>A regular expression which evaluates to match the machines the recipe 
+                    works with. 
+                    It stops recipes being run on machines for which they are not compatible. 
+                    This is particularly useful with kernels. 
+                    It also helps to increase parsing speed as further parsing of the recipe is skipped 
+                    if it is found the current machine is not compatible.</p></dd>
+<dt>
+<a name="var-CONFFILES"></a>CONFFILES</dt>
+<dd>
+<p>
+                    Identifies editable or configurable files that are part of a package.
+                    If the Package Management System (PMS) is being used to update
+                    packages on the target system, it is possible that 
+                    configuration files you have changed after the original installation
+                    and that you now want to remain unchanged are overwritten.
+                    In other words, editable files might exist in the package that you do not 
+                    want reset as part of the package update process.
+                    You can use the <code class="filename">CONFFILES</code> variable to list the files in the 
+                    package that you wish to prevent the PMS from overwriting during this update process.
+                </p>
+<p>  
+                    To use the <code class="filename">CONFFILES</code> variable, provide a package name
+                    override that identifies the package.
+                    Then, provide a space-separated list of files.
+                    Here is an example:
+                    </p>
+<pre class="literallayout">                       
+  CONFFILES_${PN} += "${sysconfdir}/file1 \
+     ${sysconfdir}/file2 ${sysconfdir}/file3"
+                    </pre>
+<p>
+                </p>
+<p>
+                    A relationship exists between the <code class="filename">CONFFILES</code> and 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-FILES" title="FILES">FILES</a></code> variables.
+                    The files listed within <code class="filename">CONFFILES</code> must be a subset of 
+                    the files listed within <code class="filename">FILES</code>.
+                    Because the configuration files you provide with <code class="filename">CONFFILES</code> 
+                    are simply being identified so that the PMS will not overwrite them, 
+                    it makes sense that
+                    the files must already be included as part of the package through the 
+                    <code class="filename">FILES</code> variable.
+                </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                    When specifying paths as part of the <code class="filename">CONFFILES</code> variable, 
+                    it is good practice to use appropriate path variables. 
+                    For example, <code class="filename">${sysconfdir}</code> rather than 
+                    <code class="filename">/etc</code> or <code class="filename">${bindir}</code> rather 
+                    than <code class="filename">/usr/bin</code>.
+                    You can find a list of these variables at the top of the 
+                    <code class="filename">/meta/conf/bitbake.conf</code> file in the 
+                    <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.
+                </div>
+</dd>
+<dt>
+<a name="var-CONFIG_SITE"></a>CONFIG_SITE</dt>
+<dd><p>
+                    A list of files that contains <code class="filename">autoconf</code> test results relevant 
+                    to the current build. 
+                    This variable is used by the Autotools utilities when running 
+                    <code class="filename">configure</code>.
+                </p></dd>
+<dt>
+<a name="var-CORE_IMAGE_EXTRA_INSTALL"></a>CORE_IMAGE_EXTRA_INSTALL</dt>
+<dd>
+<p>
+                    Specifies the list of packages to be added to the image. 
+                    This variable should only be set in the <code class="filename">local.conf</code>
+                    configuration file found in the 
+                    <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>.
+                </p>
+<p>
+                    This variable replaces <code class="filename">POKY_EXTRA_INSTALL</code>, which is no longer supported.
+                </p>
+</dd>
+</dl>
+</div>
+<div class="glossdiv" title="D">
+<h3 class="title">D</h3>
+<dl>
+<dt>
+<a name="var-D"></a>D</dt>
+<dd><p>The destination directory.</p></dd>
+<dt>
+<a name="var-DEBUG_BUILD"></a>DEBUG_BUILD</dt>
+<dd><p>
+                    Specifies to build packages with debugging information. 
+                    This influences the value of the 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-SELECTED_OPTIMIZATION" title="SELECTED_OPTIMIZATION">SELECTED_OPTIMIZATION</a></code> 
+                    variable.
+                </p></dd>
+<dt>
+<a name="var-DEBUG_OPTIMIZATION"></a>DEBUG_OPTIMIZATION</dt>
+<dd><p>
+                    The options to pass in 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-TARGET_CFLAGS" title="TARGET_CFLAGS">TARGET_CFLAGS</a></code>
+                    and <code class="filename"><a class="link" href="ref-variables-glos.html#var-CFLAGS" title="CFLAGS">CFLAGS</a></code> when compiling 
+                    a system for debugging.
+                    This variable defaults to "-O -fno-omit-frame-pointer -g".
+                </p></dd>
+<dt>
+<a name="var-DEFAULT_PREFERENCE"></a>DEFAULT_PREFERENCE</dt>
+<dd><p>Specifies the priority of recipes.</p></dd>
+<dt>
+<a name="var-DEPENDS"></a>DEPENDS</dt>
+<dd><p>
+                    A list of build-time dependencies for a given recipe. 
+                    The variable indicates recipes that must have been staged before a 
+                    particular recipe can configure.
+                </p></dd>
+<dt>
+<a name="var-DESCRIPTION"></a>DESCRIPTION</dt>
+<dd><p>The package description used by package managers.</p></dd>
+<dt>
+<a name="var-DESTDIR"></a>DESTDIR</dt>
+<dd><p>the destination directory.</p></dd>
+<dt>
+<a name="var-DISTRO"></a>DISTRO</dt>
+<dd><p>The short name of the distribution.</p></dd>
+<dt>
+<a name="var-DISTRO_EXTRA_RRECOMMENDS"></a>DISTRO_EXTRA_RRECOMMENDS</dt>
+<dd>
+<p></p>
+<p>The list of packages which extend usability of the image. 
+                    Those packages will automatically be installed but can be removed by user.</p>
+</dd>
+<dt>
+<a name="var-DISTRO_FEATURES"></a>DISTRO_FEATURES</dt>
+<dd><p>The features of the distribution.</p></dd>
+<dt>
+<a name="var-DISTRO_NAME"></a>DISTRO_NAME</dt>
+<dd><p>The long name of the distribution.</p></dd>
+<dt>
+<a name="var-DISTRO_PN_ALIAS"></a>DISTRO_PN_ALIAS</dt>
+<dd>
+<p>Alias names used for the recipe in various Linux distributions.</p>
+<p>See the  
+                    "<a class="link" href="../dev-manual/usingpoky-configuring-DISTRO_PN_ALIAS.html" target="_self">Handling
+                    a Package Name Alias</a>" section in the Yocto Project Development 
+                    Manual for more information.</p>
+</dd>
+<dt>
+<a name="var-DISTRO_VERSION"></a>DISTRO_VERSION</dt>
+<dd><p>the version of the distribution.</p></dd>
+<dt>
+<a name="var-DL_DIR"></a>DL_DIR</dt>
+<dd>
+<p>
+                    The central download directory used by the build process to store downloads.
+                    You can set this directory by defining the <code class="filename">DL_DIR</code>
+                    variable in the <code class="filename">/conf/local.conf</code> file.
+                    This directory is self-maintaining and you should not have
+                    to touch it. 
+                    By default, the directory is <code class="filename">downloads</code> in the 
+                    <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>.
+                    </p>
+<pre class="literallayout">
+     #DL_DIR ?= "${TOPDIR}/downloads"
+                    </pre>
+<p>
+                    To specify a different download directory, simply uncomment the line
+                    and provide your directory.
+                </p>
+<p>
+                    During a first build, the system downloads many different source code 
+                    tarballs from various upstream projects. 
+                    Downloading can take a while, particularly if your network
+                    connection is slow. 
+                    Tarballs are all stored in the directory defined by 
+                    <code class="filename">DL_DIR</code> and the build system looks there first 
+                    to find source tarballs. 
+                    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                        When wiping and rebuilding, you can preserve this directory to speed 
+                        up this part of subsequent builds. 
+                    </div>
+<p>
+                </p>
+<p>
+                    You can safely share this directory between multiple builds on the 
+                    same development machine.  
+                    For additional information on how the build process gets source files
+                    when working behind a firewall or proxy server, see the
+                    "<a class="link" href="faq.html#how-does-the-yocto-project-obtain-source-code-and-will-it-work-behind-my-firewall-or-proxy-server">FAQ</a>"
+                    chapter.
+                </p>
+</dd>
+</dl>
+</div>
+<div class="glossdiv" title="E">
+<h3 class="title">E</h3>
+<dl>
+<dt>
+<a name="var-ENABLE_BINARY_LOCALE_GENERATION"></a>ENABLE_BINARY_LOCALE_GENERATION</dt>
+<dd>
+<p></p>
+<p>Variable that controls which locales for <code class="filename">eglibc</code> are
+                    to be generated during the build (useful if the target device has 64Mbytes
+                    of RAM or less).</p>
+</dd>
+<dt>
+<a name="var-EXTRA_IMAGE_FEATURES"></a>EXTRA_IMAGE_FEATURES</dt>
+<dd>
+<p>Allows extra packages to be added to the generated images.
+                    You set this variable in the <code class="filename">local.conf</code>
+                    configuration file.
+                    Note that some image features are also added using the 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_FEATURES" title="IMAGE_FEATURES">IMAGE_FEATURES</a></code>
+                    variable generally configured in image recipes.
+                    You can use this variable to add more features in addition to those.
+                    Here are some examples of features you can add:</p>
+<pre class="literallayout">
+"dbg-pkgs" - Adds -dbg packages for all installed packages
+             including symbol information for debugging and 
+             profiling.
+
+"dev-pkgs" - Adds -dev packages for all installed packages.  
+             This is useful if you want to develop against 
+             the libraries in the image.
+
+"tools-sdk" - Adds development tools such as gcc, make, 
+              pkgconfig and so forth.
+
+"tools-debug" - Adds debugging tools such as gdb and 
+                strace.
+
+"tools-profile" - Adds profiling tools such as oprofile, 
+                  exmap, lttng and valgrind (x86 only).
+
+"tools-testapps" - Adds useful testing tools such as 
+                   ts_print, aplay, arecord and so 
+                   forth.
+
+"debug-tweaks" - Makes an image suitable for development.  
+                 For example, ssh root access has a blank 
+                 password.  You should remove this feature 
+                 before you produce a production image.  
+                    </pre>
+<p>There are other valid features too, see the
+                 <a class="link" href="ref-features-image.html" title="8.3. Images">Images</a>
+                 section for more details.</p>
+</dd>
+<dt>
+<a name="var-EXTRA_IMAGEDEPENDS"></a>EXTRA_IMAGEDEPENDS</dt>
+<dd>
+<p>A list of recipes to be built that do not provide packages to be installed in
+                    the root filesystem.
+                </p>
+<p>Sometimes a recipe is required to build the final image but is not
+                    needed in the root filesystem.
+                    You can use the <code class="filename">EXTRA_IMAGEDEPENDS</code> variable to 
+                    list these recipes and thus, specify the dependencies. 
+                    A typical example is a required bootloader in a machine configuration.
+                </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                    To add packages to the root filesystem, see the various 
+                    <code class="filename">*DEPENDS</code> and <code class="filename">*RECOMMENDS</code>
+                    variables.
+                </div>
+</dd>
+<dt>
+<a name="var-EXTRA_OECMAKE"></a>EXTRA_OECMAKE</dt>
+<dd><p>Additional <code class="filename">cmake</code> options.</p></dd>
+<dt>
+<a name="var-EXTRA_OECONF"></a>EXTRA_OECONF</dt>
+<dd><p>Additional <code class="filename">configure</code> script options.</p></dd>
+<dt>
+<a name="var-EXTRA_OEMAKE"></a>EXTRA_OEMAKE</dt>
+<dd><p>Additional GNU <code class="filename">make</code> options.</p></dd>
+</dl>
+</div>
+<div class="glossdiv" title="F">
+<h3 class="title">F</h3>
+<dl>
+<dt>
+<a name="var-FILES"></a>FILES</dt>
+<dd>
+<p>
+                    The list of directories or files that are placed in packages.
+                </p>
+<p>
+                    To use the <code class="filename">FILES</code> variable, provide a package name
+                    override that identifies the package.
+                    Then, provide a space-separated list of files or paths that identifies the 
+                    files you want included as part of the package.
+                    Here is an example:
+                    </p>
+<pre class="literallayout">                       
+  FILES_${PN} += "${bindir}/mydir1/ ${bindir}/mydir2/myfile"
+                    </pre>
+<p>
+                </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                    When specifying paths as part of the <code class="filename">FILES</code> variable, 
+                    it is good practice to use appropriate path variables. 
+                    For example, <code class="filename">${sysconfdir}</code> rather than 
+                    <code class="filename">/etc</code> or <code class="filename">${bindir}</code> rather 
+                    than <code class="filename">/usr/bin</code>.
+                    You can find a list of these variables at the top of the 
+                    <code class="filename">/meta/conf/bitbake.conf</code> file in the 
+                    <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.
+                </div>
+<p>
+                    If some of the files you provide with the <code class="filename">FILES</code> variable
+                    are editable and you know they should not be 
+                    overwritten during the package update process by the Package Management
+                    System (PMS), you can identify these files so that the PMS will not 
+                    overwrite them. 
+                    See the <code class="filename"><a class="link" href="ref-variables-glos.html#var-CONFFILES" title="CONFFILES">CONFFILES</a></code> 
+                    variable for information on how to identify these files to the PMS.
+                </p>
+</dd>
+<dt>
+<a name="var-FILESEXTRAPATHS"></a>FILESEXTRAPATHS</dt>
+<dd>
+<p>
+                    Extends the search path the OpenEmbedded build system uses when 
+                    looking for files and patches as it processes recipes. 
+                    The directories BitBake uses when it processes recipes is defined by the
+                    <a class="link" href="ref-variables-glos.html#var-FILESPATH" title="FILESPATH"><code class="filename">FILESPATH</code></a> variable. 
+                    You can add directories to the search path by defining the 
+                    <code class="filename">FILESEXTRAPATHS</code> variable.
+                </p>
+<p>
+                    To add paths to the search order, provide a list of directories and separate
+                    each path using a colon character as follows:
+                    </p>
+<pre class="literallayout">
+     FILESEXTRAPATHS_prepend := "path_1:path_2:path_3:"
+                    </pre>
+<p>
+                    Typically, you want your directories search first. 
+                    To make sure that happens, use <code class="filename">_prepend</code> and 
+                    the immediate expansion (<code class="filename">:=</code>) operator as shown in the 
+                    previous example.
+                    Finally, to maintain the integrity of the <code class="filename">FILESPATH</code> variable, 
+                    you must include the appropriate beginning or ending (as needed) colon character.
+                </p>
+<p>
+                    The <code class="filename">FILESEXTRAPATHS</code> variable is intended for use in 
+                    <code class="filename">.bbappend</code> files to include any additional files provided in that layer. 
+                    You typically accomplish this with the following:
+                    </p>
+<pre class="literallayout">
+     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+                    </pre>
+<p>
+                </p>
+</dd>
+<dt>
+<a name="var-FILESPATH"></a>FILESPATH</dt>
+<dd>
+<p>
+                    The default set of directories the OpenEmbedded build system uses
+                    when searching for patches and files.
+                    During the build process, BitBake searches each directory in 
+                    <code class="filename">FILESPATH</code> in the specified order when looking for 
+                    files and patches specified by each <code class="filename">file://</code> URI in a recipe.
+                </p>
+<p>
+                    The default value for the <code class="filename">FILESPATH</code> variable is defined
+                    in the <code class="filename">base.bbclass</code> class found in 
+                    <code class="filename">meta/classes</code> in the 
+                    <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>:
+                    </p>
+<pre class="literallayout">
+FILESPATH = "${@base_set_filespath([ "${FILE_DIRNAME}/${PF}", \
+   "${FILE_DIRNAME}/${P}", "${FILE_DIRNAME}/${PN}", \
+   "${FILE_DIRNAME}/${BP}", "${FILE_DIRNAME}/${BPN}", \
+   "${FILE_DIRNAME}/files", "${FILE_DIRNAME}" ], d)}"
+                    </pre>
+<p>
+                    Do not hand-edit the <code class="filename">FILESPATH</code> variable. 
+                    If you want to extend the set of pathnames that BitBake uses when searching for 
+                    files and patches, use the 
+                    <a class="link" href="ref-variables-glos.html#var-FILESEXTRAPATHS" title="FILESEXTRAPATHS"><code class="filename">FILESEXTRAPATHS</code></a> variable.
+                </p>
+</dd>
+<dt>
+<a name="var-FILESYSTEM_PERMS_TABLES"></a>FILESYSTEM_PERMS_TABLES</dt>
+<dd>
+<p>Allows you to define your own file permissions settings table as part of
+                    your configuration for the packaging process.
+                    For example, suppose you need a consistent set of custom permissions for 
+                    a set of groups and users across an entire work project.
+                    It is best to do this in the packages themselves but this is not always 
+                    possible.
+                </p>
+<p>
+                    By default, the OpenEmbedded build system uses the <code class="filename">fs-perms.txt</code>, which
+                    is located in the <code class="filename">meta/files</code> folder in the 
+                    <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.
+                    If you create your own file permissions setting table, you should place it in your
+                    layer or the distros layer. 
+                </p>
+<p>
+                    You define the <code class="filename">FILESYSTEM_PERMS_TABLES</code> variable in the 
+                    <code class="filename">conf/local.conf</code> file, which is found in the 
+                    <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>, to 
+                    point to your custom <code class="filename">fs-perms.txt</code>.
+                    You can specify more than a single file permissions setting table.
+                    The paths you specify to these files must be defined within the 
+                    <code class="filename">BBPATH</code> variable.  
+                </p>
+<p>
+                    For guidance on how to create your own file permissions settings table file, 
+                    examine the existing <code class="filename">fs-perms.txt</code>.
+                </p>
+</dd>
+<dt>
+<a name="var-FULL_OPTIMIZATION"></a>FULL_OPTIMIZATION</dt>
+<dd><p>
+                    The options to pass in 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-TARGET_CFLAGS" title="TARGET_CFLAGS">TARGET_CFLAGS</a></code>
+                    and <code class="filename"><a class="link" href="ref-variables-glos.html#var-CFLAGS" title="CFLAGS">CFLAGS</a></code>
+                    when compiling an optimized system.
+                    This variable defaults to 
+                    "-fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2".
+                </p></dd>
+</dl>
+</div>
+<div class="glossdiv" title="H">
+<h3 class="title">H</h3>
+<dl>
+<dt>
+<a name="var-HOMEPAGE"></a>HOMEPAGE</dt>
+<dd><p>Website where more info about package can be found</p></dd>
+</dl>
+</div>
+<div class="glossdiv" title="I">
+<h3 class="title">I</h3>
+<dl>
+<dt>
+<a name="var-IMAGE_FEATURES"></a>IMAGE_FEATURES</dt>
+<dd><p>The list of features present in images.
+                Typically, you configure this variable in image recipes.
+                Note that you can add extra features to the image by using the
+                <code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_IMAGE_FEATURES" title="EXTRA_IMAGE_FEATURES">EXTRA_IMAGE_FEATURES</a></code> variable.
+                See the "<a class="link" href="ref-features-image.html" title="8.3. Images">Images</a>" section for the 
+                list of features present in images built by the OpenEmbedded build system.</p></dd>
+<dt>
+<a name="var-IMAGE_FSTYPES"></a>IMAGE_FSTYPES</dt>
+<dd><p>Formats of root filesystem images that you want to have created.</p></dd>
+<dt>
+<a name="var-IMAGE_INSTALL"></a>IMAGE_INSTALL</dt>
+<dd>
+<p>
+                    Specifies the packages to install into an image.
+                    The <code class="filename">IMAGE_INSTALL</code> variable is a mechanism for an image
+                    recipe and you should use it with care to avoid ordering issues.
+                </p>
+<p>
+                    Image recipes set <code class="filename">IMAGE_INSTALL</code> to specify the 
+                    packages to install into an image through <code class="filename">image.bbclass</code>.
+                    Additionally, "helper" classes exist, such as <code class="filename">core-image.bbclass</code>,
+                    that can take 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_FEATURES" title="IMAGE_FEATURES">IMAGE_FEATURES</a></code> lists
+                    and turn these into auto-generated entries in 
+                    <code class="filename">IMAGE_INSTALL</code> in addition to its default contents.
+                </p>
+<p>
+                    Using <code class="filename">IMAGE_INSTALL</code> with the <code class="filename">+=</code>
+                    operator from the <code class="filename">/conf/local.conf</code> file or from within 
+                    an image recipe is not recommended as it can cause ordering issues. 
+                    Since <code class="filename">core-image.bbclass</code> sets <code class="filename">IMAGE_INSTALL</code> 
+                    to a default value using the <code class="filename">?=</code> operator, using a  
+                    <code class="filename">+=</code> operation against <code class="filename">IMAGE_INSTALL</code> 
+                    will result in unexpected behavior when used in 
+                    <code class="filename">/conf/local.conf</code>.
+                    Furthermore, the same operation from with an image recipe may or may not 
+                    succeed depending on the specific situation.
+                    In both these cases, the behavior is contrary to how most users expect 
+                    the <code class="filename">+=</code> operator to work. 
+                </p>
+<p>
+                    When you use this variable, it is best to use it as follows:
+                    </p>
+<pre class="literallayout">
+     IMAGE_INSTALL_append = " package-name"
+                    </pre>
+<p>
+                    Be sure to include the space between the quotation character and the start of the
+                    package name.
+                </p>
+</dd>
+<dt>
+<a name="var-IMAGE_OVERHEAD_FACTOR"></a>IMAGE_OVERHEAD_FACTOR</dt>
+<dd>
+<p>
+                    Defines a multiplier that the build system applies to the initial image
+                    size for cases when the multiplier times the returned disk usage value
+                    for the image is greater than the sum of 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_ROOTFS_SIZE" title="IMAGE_ROOTFS_SIZE">IMAGE_ROOTFS_SIZE</a></code>
+                    and 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_ROOTFS_EXTRA_SPACE" title="IMAGE_ROOTFS_EXTRA_SPACE">IMAGE_ROOTFS_EXTRA_SPACE</a></code>.
+                    The result of the multiplier applied to the initial image size creates
+                    free disk space in the image as overhead.
+                    By default, the build process uses a multiplier of 1.3 for this variable. 
+                    This default value results in 30% free disk space added to the image when this 
+                    method is used to determine the final generated image size.
+                    You should be aware that post install scripts and the package management
+                    system uses disk space inside this overhead area. 
+                    Consequently, the multiplier does not produce an image with 
+                    all the theoretical free disk space.                     
+                    See <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_ROOTFS_SIZE" title="IMAGE_ROOTFS_SIZE">IMAGE_ROOTFS_SIZE</a></code>
+                    for information on how the build system determines the overall image size.
+                </p>
+<p>
+                    The default 30% free disk space typically gives the image enough room to boot 
+                    and allows for basic post installs while still leaving a small amount of 
+                    free disk space. 
+                    If 30% free space is inadequate, you can increase the default value.
+                    For example, the following setting gives you 50% free space added to the image:
+                    </p>
+<pre class="literallayout">
+     IMAGE_OVERHEAD_FACTOR = "1.5"
+                    </pre>
+<p>
+                </p>
+<p>
+                    Alternatively, you can ensure a specific amount of free disk space is added
+                    to the image by using     
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_ROOTFS_EXTRA_SPACE" title="IMAGE_ROOTFS_EXTRA_SPACE">IMAGE_ROOTFS_EXTRA_SPACE</a></code>
+                    the variable.
+                </p>
+</dd>
+<dt>
+<a name="var-IMAGE_ROOTFS_EXTRA_SPACE"></a>IMAGE_ROOTFS_EXTRA_SPACE</dt>
+<dd>
+<p>
+                    Defines additional free disk space created in the image in Kbytes.
+                    By default, this variable is set to "0".
+                    This free disk space is added to the image after the build system determines
+                    the image size as described in 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_ROOTFS_SIZE" title="IMAGE_ROOTFS_SIZE">IMAGE_ROOTFS_SIZE</a></code>.
+                </p>
+<p>
+                    This variable is particularly useful when you want to ensure that a 
+                    specific amount of free disk space is available on a device after an image 
+                    is installed and running. 
+                    For example, to be sure 5 Gbytes of free disk space is available, set the 
+                    variable as follows:
+                    </p>
+<pre class="literallayout">
+     IMAGE_ROOTFS_EXTRA_SPACE = "5242880"
+                    </pre>
+<p>
+                </p>
+</dd>
+<dt>
+<a name="var-IMAGE_ROOTFS_SIZE"></a>IMAGE_ROOTFS_SIZE</dt>
+<dd>
+<p>
+                    Defines the size in Kbytes for the generated image.
+                    The OpenEmbedded build system determines the final size for the generated 
+                    image using an algorithm that takes into account the initial disk space used
+                    for the generated image, a requested size for the image, and requested 
+                    additional free disk space to be added to the image.
+                    Programatically, the build system determines the final size of the 
+                    generated image as follows:
+                    </p>
+<pre class="literallayout">
+    if (image-du * overhead) &lt; rootfs-size:
+	internal-rootfs-size = rootfs-size + xspace
+    else:
+	internal-rootfs-size = (image-du * overhead) + xspace
+
+    where:
+
+      image-du = Returned value of the du command on
+                 the image.
+      
+      overhead = IMAGE_OVERHEAD_FACTOR
+
+      rootfs-size = IMAGE_ROOTFS_SIZE
+
+      internal-rootfs-size = Initial root filesystem
+                             size before any modifications.
+
+      xspace = IMAGE_ROOTFS_EXTRA_SPACE
+                    </pre>
+<p>
+                   
+                </p>
+</dd>
+<dt>
+<a name="var-INC_PR"></a>INC_PR</dt>
+<dd>
+<p>Defines the Package revision.  
+                    You manually combine values for <code class="filename">INC_PR</code> into the 
+                    <a class="link" href="ref-variables-glos.html#var-PR" title="PR"><code class="filename">PR</code></a> field of the parent recipe.
+                    When you change this variable, you change the <code class="filename">PR</code>
+                    value for every person that includes the file.</p>
+<p>
+                    The following example shows how to use the <code class="filename">INC_PR</code> variable
+                    given a common <code class="filename">.inc</code> file that defines the variable.
+                    Once defined, you can use the variable to set the 
+                    <code class="filename">PR</code> value:
+                </p>
+<pre class="literallayout">
+recipes-graphics/xorg-font/encodings_1.0.4.bb:PR = "${INC_PR}.1"
+recipes-graphics/xorg-font/font-util_1.3.0.bb:PR = "${INC_PR}.0"
+recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
+recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
+                </pre>
+</dd>
+<dt>
+<a name="var-INHIBIT_PACKAGE_STRIP"></a>INHIBIT_PACKAGE_STRIP</dt>
+<dd><p>
+                    Causes the build to not strip binaries in resulting packages.
+                </p></dd>
+<dt>
+<a name="var-INHERIT"></a>INHERIT</dt>
+<dd><p>
+                    Causes the named class to be inherited at 
+                    this point during parsing. 
+                    The variable is only valid in configuration files.
+                </p></dd>
+<dt>
+<a name="var-INITSCRIPT_PACKAGES"></a>INITSCRIPT_PACKAGES</dt>
+<dd>
+<p>
+                    A list of the packages that contain initscripts. 
+                    If multiple packages are specified, you need to append the package name 
+                    to the other <code class="filename">INITSCRIPT_*</code> as an override.</p>
+<p>
+                    This variable is used in recipes when using <code class="filename">update-rc.d.bbclass</code>.
+                    The variable is optional and defaults to the <code class="filename">PN</code> variable.
+                </p>
+</dd>
+<dt>
+<a name="var-INITSCRIPT_NAME"></a>INITSCRIPT_NAME</dt>
+<dd>
+<p>
+                    The filename of the initscript (as installed to <code class="filename">${etcdir}/init.d)</code>.
+                </p>
+<p>
+                    This variable is used in recipes when using <code class="filename">update-rc.d.bbclass</code>.
+                    The variable is Mandatory.
+                </p>
+</dd>
+<dt>
+<a name="var-INITSCRIPT_PARAMS"></a>INITSCRIPT_PARAMS</dt>
+<dd>
+<p>
+                    Specifies the options to pass to <code class="filename">update-rc.d</code>.
+                    An example is <code class="filename">start 99 5 2 . stop 20 0 1 6 .</code>, which gives the script a 
+                    runlevel of 99, starts the script in initlevels 2 and 5, and 
+                    stops the script in levels 0, 1 and 6. 
+                </p>
+<p>
+                    The variable is mandatory and is used in recipes when using 
+                    <code class="filename">update-rc.d.bbclass</code>.
+                </p>
+</dd>
+</dl>
+</div>
+<div class="glossdiv" title="K">
+<h3 class="title">K</h3>
+<dl>
+<dt>
+<a name="var-KBRANCH"></a>KBRANCH</dt>
+<dd>
+<p>
+                    A regular expression used by the build process to explicitly identify the kernel 
+                    branch that is validated, patched and configured during a build.  
+                    The <code class="filename">KBRANCH</code> variable is optional.
+                    You can use it to trigger checks to ensure the exact kernel branch you want is 
+                    being used by the build process.
+                </p>
+<p>
+                    Values for this variable are set in the kernel's recipe file and the kernel's 
+                    append file.  
+                    For example, if you are using the Yocto Project kernel that is based on the 
+                    Linux 3.2 kernel, the kernel recipe file is the 
+                    <code class="filename">meta/recipes-kernel/linux/linux-yocto_3.2.bb</code> file. 
+                    Following is the default value for <code class="filename">KBRANCH</code> and the five overrides 
+                    for the architectures the Yocto Project supports:
+                    </p>
+<pre class="literallayout">
+     KBRANCH = "standard/default/base"
+     KBRANCH_qemux86  = "standard/default/common-pc/base"
+     KBRANCH_qemux86-64  = "standard/default/common-pc-64/base"
+     KBRANCH_qemuppc  = "standard/default/qemu-ppc32"
+     KBRANCH_qemumips = "standard/default/mti-malta32-be"
+     KBRANCH_qemuarm  = "standard/default/arm-versatile-926ejs"
+                    </pre>
+<p>
+                    Each of the above branches exist in the <code class="filename">linux-yocto-3.2</code> kernel Git 
+                    repository <a class="ulink" href="http://git.yoctoproject.org/cgit.cgi/linux-yocto-3.2/refs/heads" target="_self">http://git.yoctoproject.org/cgit.cgi/linux-yocto-3.2/refs/heads</a>.  
+                </p>
+<p>
+                    This variable is also used from the kernel's append file to identify the kernel 
+                    branch specific to a particular machine or target hardware.  
+                    The kernel's append file is located in the BSP layer for a given machine.  
+                    For example, the kernel append file for the Crown Bay BSP is in the 
+                    <code class="filename">meta-intel</code> Git repository and is named 
+                    <code class="filename">meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend</code>.  
+                    Here are the related statements from the append file:
+                    </p>
+<pre class="literallayout">
+     COMPATIBLE_MACHINE_crownbay = "crownbay"
+     KMACHINE_crownbay  = "crownbay"
+     KBRANCH_crownbay  = "standard/default/crownbay"
+     
+     COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
+     KMACHINE_crownbay-noemgd  = "crownbay"
+     KBRANCH_crownbay-noemgd  = "standard/default/crownbay"
+                    </pre>
+<p>
+                        The <code class="filename">KBRANCH_*</code> statements identify the kernel branch to 
+                        use when building for the Crown Bay BSP.  
+                        In this case there are two identical statements: one for each type of 
+                        Crown Bay machine.
+                </p>
+</dd>
+<dt>
+<a name="var-KERNEL_FEATURES"></a>KERNEL_FEATURES</dt>
+<dd>
+<p>Includes additional metadata from the Yocto Project kernel Git repository.
+                    In the OpenEmbedded build system, the default Board Support Packages (BSPs)
+                    metadata is provided through 
+                    the <code class="filename">KMACHINE</code> and <code class="filename">KBRANCH</code> variables.
+                    You can use the <code class="filename">KERNEL_FEATURES</code> variable to further 
+                    add metadata for all BSPs.</p>
+<p>The metadata you add through this variable includes config fragments and 
+                    features descriptions,
+                    which usually includes patches as well as config fragments.
+                    You typically override the <code class="filename">KERNEL_FEATURES</code> variable
+                    for a specific machine.
+                    In this way, you can provide validated, but optional, sets of kernel
+                    configurations and features.</p>
+<p>For example, the following adds <code class="filename">netfilter</code> to all 
+                    the Yocto Project kernels and adds sound support to the <code class="filename">qemux86</code>
+                    machine:
+                    </p>
+<pre class="literallayout">
+     # Add netfilter to all linux-yocto kernels
+     KERNEL_FEATURES="features/netfilter"
+
+     # Add sound support to the qemux86 machine
+     KERNEL_FEATURES_append_qemux86="cfg/sound"
+                    </pre>
+</dd>
+<dt>
+<a name="var-KERNEL_IMAGETYPE"></a>KERNEL_IMAGETYPE</dt>
+<dd><p>The type of kernel to build for a device, usually set by the 
+                    machine configuration files and defaults to "zImage". 
+                    This variable is used 
+                    when building the kernel and is passed to <code class="filename">make</code> as the target to 
+                    build.</p></dd>
+<dt>
+<a name="var-KMACHINE"></a>KMACHINE</dt>
+<dd>
+<p>
+                    The machine as known by the kernel.
+                    Sometimes the machine name used by the kernel does not match the machine name
+                    used by the OpenEmbedded build system.
+                    For example, the machine name that the OpenEmbedded build system understands as 
+                    <code class="filename">qemuarm</code> goes by a different name in the Linux Yocto kernel.
+                    The kernel understands that machine as <code class="filename">arm_versatile926ejs</code>.
+                    For cases like these, the <code class="filename">KMACHINE</code> variable maps the 
+                    kernel machine name to the OpenEmbedded build system machine name.
+                </p>
+<p>
+                    Kernel machine names are initially defined in the 
+                    <a class="link" href="../dev-manual/local-kernel-files.html" target="_self">Yocto Project Kernel</a> in 
+                    the <code class="filename">meta/cfg/kernel-cache/bsp/&lt;bsp_name&gt;/&lt;bsp-name&gt;-&lt;kernel-type&gt;.scc</code> file.
+                    For example, in the <code class="filename">linux-yocto-3.4</code> kernel in the 
+                    <code class="filename">meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc</code> file, 
+                    has the following:
+                    </p>
+<pre class="literallayout">
+     define KMACHINE cedartrail
+     define KTYPE standard
+     define KARCH i386
+
+     include ktypes/standard
+     branch cedartrail
+
+     include cedartrail.scc
+                    </pre>
+<p>
+                    You can see that the kernel understands the machine name for the Cedar Trail BSP as
+                    <code class="filename">cedartrail</code>.
+                </p>
+<p>
+                    If you look in the Cedar Trail BSP layer in the <code class="filename">meta-intel</code> source
+                    repository at <code class="filename">meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend</code>,
+                    you will find the following statements among others:
+                    </p>
+<pre class="literallayout">
+     COMPATIBLE_MACHINE_cedartrail = "cedartrail"
+     KMACHINE_cedartrail  = "cedartrail"
+     KBRANCH_cedartrail  = "yocto/standard/cedartrail"
+     KERNEL_FEATURES_append_cedartrail += "bsp/cedartrail/cedartrail-pvr-merge.scc"
+     KERNEL_FEATURES_append_cedartrail += "cfg/efi-ext.scc"
+
+     COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
+     KMACHINE_cedartrail-nopvr  = "cedartrail"
+     KBRANCH_cedartrail-nopvr  = "yocto/standard/cedartrail"
+     KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
+                    </pre>
+<p>
+                    The <code class="filename">KMACHINE</code> statements in the kernel's append file make sure that 
+                    the OpenEmbedded build system and the Yocto Linux kernel understand the same machine 
+                    names. 
+                </p>
+<p>
+                    This append file uses two <code class="filename">KMACHINE</code> statements.
+                    The first is not really necessary but does ensure that the machine known to the 
+                    OpenEmbedded build system as <code class="filename">cedartrail</code> maps to the machine
+                    in the kernel also known as <code class="filename">cedartrail</code>:
+                    </p>
+<pre class="literallayout">
+     KMACHINE_cedartrail  = "cedartrail"
+                    </pre>
+<p>
+                </p>
+<p>
+                    The second statement is a good example of why the <code class="filename">KMACHINE</code> variable
+                    is needed. 
+                    In this example, the OpenEmbedded build system uses the <code class="filename">cedartrail-nopvr</code>
+                    machine name to refer to the Cedar Trail BSP that does not support the propriatory 
+                    PowerVR driver.
+                    The kernel, however, uses the machine name <code class="filename">cedartrail</code>.
+                    Thus, the append file must map the <code class="filename">cedartrail-nopvr</code> machine name to 
+                    the kernel's <code class="filename">cedartrail</code> name:
+                    </p>
+<pre class="literallayout">
+     KMACHINE_cedartrail-nopvr  = "cedartrail"
+                    </pre>
+<p>
+                </p>
+<p>
+                    BSPs that ship with the Yocto Project release provide all mappings between the Yocto 
+                    Project kernel machine names and the OpenEmbedded machine names. 
+                    Be sure to use the <code class="filename">KMACHINE</code> if you create a BSP and the machine 
+                    name you use is different than that used in the kernel.
+                </p>
+</dd>
+</dl>
+</div>
+<div class="glossdiv" title="L">
+<h3 class="title">L</h3>
+<dl>
+<dt>
+<a name="var-LAYERDEPENDS"></a>LAYERDEPENDS</dt>
+<dd><p>Lists the layers that this recipe depends upon, separated by spaces.
+                    Optionally, you can specify a specific layer version for a dependency
+                    by adding it to the end of the layer name with a colon, (e.g. "anotherlayer:3"
+                    to be compared against <code class="filename">LAYERVERSION_anotherlayer</code> in this case).
+                    An error will be produced if any dependency is missing or
+                    the version numbers do not match exactly (if specified).
+                    This variable is used in the <code class="filename">conf/layer.conf</code> file 
+                    and must be suffixed with the name of the specific layer (e.g. 
+                    <code class="filename">LAYERDEPENDS_mylayer</code>).</p></dd>
+<dt>
+<a name="var-LAYERDIR"></a>LAYERDIR</dt>
+<dd><p>When used inside the <code class="filename">layer.conf</code> configuration 
+                    file, this variable provides the path of the current layer. 
+                    This variable requires immediate expansion
+                    (see the BitBake manual) as lazy expansion can result in
+                    the expansion happening in the wrong directory and therefore
+                    giving the wrong value.</p></dd>
+<dt>
+<a name="var-LAYERVERSION"></a>LAYERVERSION</dt>
+<dd><p>Optionally specifies the version of a layer as a single number.
+                    You can use this within <code class="filename">LAYERDEPENDS</code> for another layer in order to
+                    depend on a specific version of the layer.
+                    This variable is used in the <code class="filename">conf/layer.conf</code> file 
+                    and must be suffixed with the name of the specific layer (e.g.
+                    <code class="filename">LAYERVERSION_mylayer</code>).</p></dd>
+<dt>
+<a name="var-LIC_FILES_CHKSUM"></a>LIC_FILES_CHKSUM</dt>
+<dd>
+<p>Checksums of the license text in the recipe source code.</p>
+<p>This variable tracks changes in license text of the source
+                    code files. 
+                    If the license text is changed, it will trigger a build
+                    failure, which gives the developer an opportunity to review any 
+                    license change.</p>
+<p>
+                    This variable must be defined for all recipes (unless <code class="filename">LICENSE</code>
+                    is set to "CLOSED")</p>
+<p>For more information, see the
+                    <a class="link" href="usingpoky-configuring-LIC_FILES_CHKSUM.html" title="3.4.1. Tracking License Changes">
+                    Tracking License Changes</a> section</p>
+</dd>
+<dt>
+<a name="var-LICENSE"></a>LICENSE</dt>
+<dd><p>The list of package source licenses.</p></dd>
+<dt>
+<a name="var-LICENSE_DIR"></a>LICENSE_DIR</dt>
+<dd>
+<p>Path to additional licenses used during the build.
+                    By default, the OpenEmbedded build system uses <code class="filename">COMMON_LICENSE_DIR</code>  
+                    to define the directory that holds common license text used during the build. 
+                    The <code class="filename">LICENSE_DIR</code> variable allows you to extend that
+                    location to other areas that have additional licenses: 
+                    </p>
+<pre class="literallayout">
+  LICENSE_DIR += "/path/to/additional/common/licenses"
+                    </pre>
+</dd>
+</dl>
+</div>
+<div class="glossdiv" title="M">
+<h3 class="title">M</h3>
+<dl>
+<dt>
+<a name="var-MACHINE"></a>MACHINE</dt>
+<dd><p>Specifies the target device.</p></dd>
+<dt>
+<a name="var-MACHINE_ESSENTIAL_EXTRA_RDEPENDS"></a>MACHINE_ESSENTIAL_EXTRA_RDEPENDS</dt>
+<dd>
+<p></p>
+<p>
+                    A list of required packages to install as part of the package being
+                    built.
+                    The build process depends on these packages being present.
+                    Furthermore, because this is a "machine essential" variable, the list of 
+                    packages are essential for the machine to boot.
+                    The impact of this variable affects images based on <code class="filename">packagegroup-core-boot</code>,
+                    including the <code class="filename">core-image-minimal</code> image.
+                </p>
+<p>
+                    This variable is similar to the 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS" title="MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS">MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS</a></code>
+                    variable with the exception that the package being built has a build 
+                    dependency on the variable's list of packages.
+                    In other words, the image will not build if a file in this list is not found.
+                </p>
+<p>
+                    For example, suppose you are building a runtime package that depends
+                    on a certain disk driver.
+                    In this case, you would use the following:
+                    </p>
+<pre class="literallayout">
+     MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "&lt;disk_driver&gt;"
+                    </pre>
+<p>
+                </p>
+</dd>
+<dt>
+<a name="var-MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS"></a>MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS</dt>
+<dd>
+<p></p>
+<p>
+                    A list of recommended packages to install as part of the package being 
+                    built. 
+                    The build process does not depend on these packages being present.
+                    Furthermore, because this is a "machine essential" variable, the list of 
+                    packages are essential for the machine to boot.
+                    The impact of this variable affects images based on <code class="filename">packagegroup-core-boot</code>,
+                    including the <code class="filename">core-image-minimal</code> image.
+                </p>
+<p>
+                    This variable is similar to the 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_ESSENTIAL_EXTRA_RDEPENDS" title="MACHINE_ESSENTIAL_EXTRA_RDEPENDS">MACHINE_ESSENTIAL_EXTRA_RDEPENDS</a></code>
+                    variable with the exception that the package being built does not have a build 
+                    dependency on the variable's list of packages.
+                    In other words, the image will build if a file in this list is not found.
+                    However, because this is one of the "essential" variables, the resulting image
+                    might not boot on the machine. 
+                    Or, if the machine does boot using the image, the machine might not be fully 
+                    functional.
+                </p>
+<p>
+                    Consider an example where you have a custom kernel with a disk driver
+                    built into the kernel itself, rather than using the driver built as a module.
+                    If you include the package that has the driver module as part of 
+                    the variable's list, the 
+                    build process will not find that package.  
+                    However, because these packages are "recommends" packages, the build will 
+                    not fail due to the missing package.
+                    Not accounting for any other problems, the custom kernel would still boot the machine.
+                </p>
+<p>
+                    Some example packages of these machine essentials are flash, screen, keyboard, mouse, 
+                    or touchscreen drivers (depending on the machine).
+                </p>
+<p>
+                    For example, suppose you are building a runtime package that depends
+                    on a mouse driver.
+                    In this case, you would use the following:
+                    </p>
+<pre class="literallayout">
+     MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "&lt;mouse_driver&gt;"
+                    </pre>
+<p>
+                </p>
+</dd>
+<dt>
+<a name="var-MACHINE_EXTRA_RDEPENDS"></a>MACHINE_EXTRA_RDEPENDS</dt>
+<dd>
+<p>
+                    A list of optional but non-machine essential packages to install as 
+                    part of the package being built.
+                    Even though these packages are not essential for the machine to boot,  
+                    the build process depends on them being present.
+                    The impact of this variable affects all images based on
+                    <code class="filename">packagegroup-base</code>, which does not include the 
+                    <code class="filename">core-image-minimal</code> or <code class="filename">core-image-basic</code> 
+                    images.
+                </p>
+<p>
+                    This variable is similar to the 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_EXTRA_RRECOMMENDS" title="MACHINE_EXTRA_RRECOMMENDS">MACHINE_EXTRA_RRECOMMENDS</a></code>
+                    variable with the exception that the package being built has a build 
+                    dependency on the variable's list of packages.
+                    In other words, the image will not build if a file in this list is not found.
+                </p>
+<p>
+                    An example is a machine that might or might not have a WiFi card.
+                    The package containing the WiFi support is not essential for the 
+                    machine to boot the image.
+                    If it is not there, the machine will boot but not be able to use the 
+                    WiFi functionality.
+                    However, if you include the package with the WiFi support as part of the 
+                    variable's package list, the build 
+                    process depends on finding the package.
+                    In this case, you would use the following:
+                    </p>
+<pre class="literallayout">
+     MACHINE_EXTRA_RDEPENDS += "&lt;wifi_driver&gt;"
+                    </pre>
+<p>
+                </p>
+</dd>
+<dt>
+<a name="var-MACHINE_EXTRA_RRECOMMENDS"></a>MACHINE_EXTRA_RRECOMMENDS</dt>
+<dd>
+<p></p>
+<p>
+                    A list of optional but non-machine essential packages to install as 
+                    part of the package being built.
+                    The package being built has no build dependency on the list of packages 
+                    with this variable.  
+                    The impact of this variable affects only images based on 
+                    <code class="filename">packagegroup-base</code>, which does not include the 
+                    <code class="filename">core-image-minimal</code> or <code class="filename">core-image-basic</code> 
+                    images.
+                </p>
+<p>
+                    This variable is similar to the 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_EXTRA_RDEPENDS" title="MACHINE_EXTRA_RDEPENDS">MACHINE_EXTRA_RDEPENDS</a></code>
+                    variable with the exception that the package being built does not have a build 
+                    dependency on the variable's list of packages.
+                    In other words, the image will build if a file in this list is not found.
+                </p>
+<p>
+                    An example is a machine that might or might not have a WiFi card.
+                    The package containing the WiFi support is not essential for the 
+                    machine to boot the image.
+                    If it is not there, the machine will boot but not be able to use the 
+                    WiFi functionality.
+                    You are free to either include or not include the 
+                    the package with the WiFi support as part of the 
+                    variable's package list, the build 
+                    process does not depend on finding the package.
+                    If you include the package, you would use the following:
+                    </p>
+<pre class="literallayout">
+     MACHINE_EXTRA_RRECOMMENDS += "&lt;wifi_driver&gt;"
+                    </pre>
+<p>
+                </p>
+</dd>
+<dt>
+<a name="var-MACHINE_FEATURES"></a>MACHINE_FEATURES</dt>
+<dd><p>Specifies the list of device features.
+                    See the <a class="link" href="ref-features-machine.html" title="8.2. Machine">Machine</a> section for 
+                    more information.</p></dd>
+<dt>
+<a name="var-MAINTAINER"></a>MAINTAINER</dt>
+<dd><p>The email address of the distribution maintainer.</p></dd>
+</dl>
+</div>
+<div class="glossdiv" title="P">
+<h3 class="title">P</h3>
+<dl>
+<dt>
+<a name="var-PACKAGE_ARCH"></a>PACKAGE_ARCH</dt>
+<dd><p>The architecture of the resulting package or packages.</p></dd>
+<dt>
+<a name="var-PACKAGE_BEFORE_PN"></a>PACKAGE_BEFORE_PN</dt>
+<dd><p>Enables easily adding packages to 
+                <code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGES" title="PACKAGES">PACKAGES</a></code>
+                before <code class="filename">${PN}</code> so that the packages can pick 
+                up files that would normally be included in the default package.</p></dd>
+<dt>
+<a name="var-PACKAGE_CLASSES"></a>PACKAGE_CLASSES</dt>
+<dd>
+<p>This variable, which is set in the <code class="filename">local.conf</code> configuration
+                    file found in the <code class="filename">conf</code> folder of the 
+                    <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>,
+                    specifies the package manager to use when packaging data.
+                    You can provide one or more arguments for the variable with the first 
+                    argument being the package manager used to create images:
+                    </p>
+<pre class="literallayout">
+     PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk"
+                    </pre>
+<p>
+                    For information on build performance effects as a result of the 
+                    package manager use, see
+                    <a class="link" href="ref-classes-package.html" title="6.13. Packaging - package*.bbclass">Packaging - <code class="filename">package*.bbclass</code></a>
+                    in this manual.
+                </p>
+</dd>
+<dt>
+<a name="var-PACKAGE_EXTRA_ARCHS"></a>PACKAGE_EXTRA_ARCHS</dt>
+<dd><p>Specifies the list of architectures compatible with the device CPU.
+                    This variable is useful when you build for several different devices that use
+                    miscellaneous processors such as XScale and ARM926-EJS).</p></dd>
+<dt>
+<a name="var-PACKAGES"></a>PACKAGES</dt>
+<dd>
+<p>The list of packages to be created from the recipe.
+                    The default value is the following:
+                    </p>
+<pre class="literallayout">
+     ${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc ${PN}-locale ${PACKAGE_BEFORE_PN} ${PN}
+                    </pre>
+</dd>
+<dt>
+<a name="var-PARALLEL_MAKE"></a>PARALLEL_MAKE</dt>
+<dd><p>Specifies extra options that are passed to the <code class="filename">make</code> command during the 
+                    compile tasks. 
+                    This variable is usually in the form <code class="filename">-j 4</code>, where the number
+                    represents the maximum number of parallel threads make can run.
+                    If you development host supports multiple cores a good rule of thumb is to set 
+                    this variable to twice the number of cores on the host.</p></dd>
+<dt>
+<a name="var-PN"></a>PN</dt>
+<dd><p>The name of the recipe. The name is normally extracted from the recipe file name.
+                    For example, if the recipe is named 
+                    <code class="filename">expat_2.0.1.bb</code>, then the default value of <code class="filename">PN</code>
+                    will be "expat". 
+                    </p></dd>
+<dt>
+<a name="var-PR"></a>PR</dt>
+<dd><p>The revision of the recipe. 
+                    The default value for this variable is "r0".
+                    </p></dd>
+<dt>
+<a name="var-PV"></a>PV</dt>
+<dd><p>The version of the recipe.
+                    The version is normally extracted from the recipe filename.
+                    For example, if the recipe is named 
+                    <code class="filename">expat_2.0.1.bb</code>, then the default value of <code class="filename">PV</code> 
+                    will be "2.0.1". 
+                    <code class="filename">PV</code> is generally not overridden within 
+                    a recipe unless it is building an unstable (i.e. development) version from a source code repository 
+                    (e.g. Git or Subversion).
+                 </p></dd>
+<dt>
+<a name="var-PE"></a>PE</dt>
+<dd><p>
+                    the epoch of the recipe. 
+                    The default value is "0". 
+                    The field is used to make upgrades possible when the versioning scheme changes in 
+                    some backwards incompatible way.
+                </p></dd>
+<dt>
+<a name="var-PREFERRED_PROVIDER"></a>PREFERRED_PROVIDER</dt>
+<dd>
+<p>
+                    If multiple recipes provide an item, this variable
+                    determines which recipe should be given preference. 
+                    The variable must always be suffixed with the name of the 
+                    provided item, and should be set to the 
+                    <code class="filename">PN</code> of the recipe 
+                    to which you want to give precedence.
+                    Here is an example:
+                    </p>
+<pre class="literallayout">
+     PREFERRED_PROVIDER_virtual/xserver = "xserver-xf86"
+                    </pre>
+<p>
+                </p>
+</dd>
+<dt>
+<a name="var-PREFERRED_VERSION"></a>PREFERRED_VERSION</dt>
+<dd>
+<p>
+                    If there are multiple versions of recipes available, this
+                    variable determines which recipe should be given preference.
+                    The variable must always be suffixed with the <code class="filename">PN</code> 
+                    for which to select, and should be set to the 
+                    <code class="filename">PV</code> to which you want to give precedence.
+                    You can use the "<code class="filename">%</code>" character as a wildcard
+                    to match any number of characters, which can be useful when 
+                    specifying versions that contain long revision number that could 
+                    potentially change.
+                    Here are two examples:
+                    </p>
+<pre class="literallayout">
+     PREFERRED_VERSION_python = "2.6.6"
+     PREFERRED_VERSION_linux-yocto = "3.0+git%" 
+                    </pre>
+<p>
+                </p>
+</dd>
+</dl>
+</div>
+<div class="glossdiv" title="R">
+<h3 class="title">R</h3>
+<dl>
+<dt>
+<a name="var-RCONFLICTS"></a>RCONFLICTS</dt>
+<dd>
+<p>The list of packages that conflict with a package.
+                    Note that the package will not be installed if the conflicting packages are not
+                    first removed.</p>
+<p>
+                   Like all package-controlling variables, you must always use them in 
+                   conjunction with a package name override.
+                   Here is an example:
+                   </p>
+<pre class="literallayout">
+     RCONFLICTS_${PN} = "another-conflicting-package-name"
+                   </pre>
+<p>
+                </p>
+</dd>
+<dt>
+<a name="var-RDEPENDS"></a>RDEPENDS</dt>
+<dd>
+<p>
+                    A list of packages that must be installed as part of a package being built.
+                    The package being built has a runtime dependency on the packages in the 
+                    variable's list.
+                    In other words, in order for the package being built to run correctly, 
+                    it depends on these listed packages.
+                    If a package in this list cannot be found during the build, the build
+                    will not complete.
+                </p>
+<p>
+                    Because the <code class="filename">RDEPENDS</code> variable applies to packages 
+                    being built, you should 
+                    always attach an override to the variable to specify the particular runtime package
+                    that has the dependency.
+                    For example, suppose you are building a development package that depends
+                    on the <code class="filename">perl</code> package.
+                    In this case, you would use the following <code class="filename">RDEPENDS</code>
+                    statement:
+                    </p>
+<pre class="literallayout">
+     RDEPENDS_${PN}-dev += "perl"
+                    </pre>
+<p>
+                    In the example, the package name (<code class="filename">${PN}-dev</code>) must 
+                    appear as it would in the 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGES" title="PACKAGES">PACKAGES</a></code> namespace before any 
+                    renaming of the output package by classes like <code class="filename">debian.bbclass</code>.
+                </p>
+<p>
+                    Some automatic handling occurs around the <code class="filename">RDEPENDS</code>
+                    variable:
+                    </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">shlibdeps</code></em></span>:  If a runtime
+                            package contains a shared library (<code class="filename">.so</code>), the build
+                            processes the library in order to determine other libraries to which it 
+                            is dynamically linked.  
+                            The build process adds these libraries to <code class="filename">RDEPENDS</code>
+                            to create the runtime package.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><code class="filename">pcdeps</code></em></span>:  If the package
+                            ships a <code class="filename">pkg-config</code> information file, the build process
+                            uses this file to add items to the <code class="filename">RDEPENDS</code>
+                            variable to create the runtime packages.
+                            </p></li>
+</ul></div>
+<p>
+                </p>
+</dd>
+<dt>
+<a name="var-RRECOMMENDS"></a>RRECOMMENDS</dt>
+<dd>
+<p>
+                    A list of packages that extend the usability of a package being 
+                    built.
+                    The package being built does not depend on this list of packages in 
+                    order to successfully build, but needs them for the extended usability.
+                    To specify runtime dependencies for packages, see the 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-RDEPENDS" title="RDEPENDS">RDEPENDS</a></code> variable.
+                </p>
+<p>
+                    The OpenEmbedded build process automatically installs the list of packages
+                    as part of the built package.
+                    However, you can remove them later if you want.
+                    If, during the build, a package from the list cannot be found, the build
+                    process continues without an error.
+                </p>
+<p>
+                    Because the <code class="filename">RRECOMMENDS</code> variable applies to packages 
+                    being built, you should 
+                    always attach an override to the variable to specify the particular package
+                    whose usability is being extended.
+                    For example, suppose you are building a development package that is extended
+                    to support wireless functionality.
+                    In this case, you would use the following:
+                    </p>
+<pre class="literallayout">
+     RRECOMMENDS_${PN}-dev += "&lt;wireless_package_name&gt;"
+                    </pre>
+<p>
+                    In the example, the package name (<code class="filename">${PN}-dev</code>) must 
+                    appear as it would in the 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGES" title="PACKAGES">PACKAGES</a></code> namespace before any 
+                    renaming of the output package by classes like <code class="filename">debian.bbclass</code>.
+                </p>
+</dd>
+<dt>
+<a name="var-RREPLACES"></a>RREPLACES</dt>
+<dd><p>The list of packages that are replaced with this package.</p></dd>
+</dl>
+</div>
+<div class="glossdiv" title="S">
+<h3 class="title">S</h3>
+<dl>
+<dt>
+<a name="var-S"></a>S</dt>
+<dd>
+<p>
+                    The location in the <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>
+                    where unpacked package source code resides.
+                    This location is within the working directory 
+                    (<code class="filename"><a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR">WORKDIR</a></code>), which 
+                    is not static.
+                    The unpacked source location depends on the package name 
+                    (<code class="filename"><a class="link" href="ref-variables-glos.html#var-PN" title="PN">PN</a></code>) and 
+                    package version (<code class="filename"><a class="link" href="ref-variables-glos.html#var-PV" title="PV">PV</a></code>) as 
+                    follows:
+                    </p>
+<pre class="literallayout">
+ ${WORKDIR}/${PN}-${PV}
+                    </pre>
+<p>
+                    As an example, assume a 
+                    <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a> top-level 
+                    folder named <code class="filename">poky</code> 
+                    and a default <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>
+                    at <code class="filename">poky/build</code>.
+                    In this case, the working directory the build system uses to build 
+                    the <code class="filename">db</code> package is the following:
+                    </p>
+<pre class="literallayout">
+ ~/poky/build/tmp/work/qemux86-poky-linux/db-5.1.19-r3/db-5.1.19
+                    </pre>
+<p>
+                </p>
+</dd>
+<dt>
+<a name="var-SECTION"></a>SECTION</dt>
+<dd><p>The section where package should be put.
+                    Package managers use this variable.</p></dd>
+<dt>
+<a name="var-SELECTED_OPTIMIZATION"></a>SELECTED_OPTIMIZATION</dt>
+<dd><p>
+                    The variable takes the value of 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-FULL_OPTIMIZATION" title="FULL_OPTIMIZATION">FULL_OPTIMIZATION</a></code>
+                    unless <code class="filename"><a class="link" href="ref-variables-glos.html#var-DEBUG_BUILD" title="DEBUG_BUILD">DEBUG_BUILD</a></code> = "1".
+                    In this case the value of 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-DEBUG_OPTIMIZATION" title="DEBUG_OPTIMIZATION">DEBUG_OPTIMIZATION</a></code> is used.
+                </p></dd>
+<dt>
+<a name="var-SERIAL_CONSOLE"></a>SERIAL_CONSOLE</dt>
+<dd><p>The speed and device for the serial port used to attach the serial console. 
+                    This variable is given to the kernel as the "console"
+                    parameter and after booting occurs <code class="filename">getty</code> is started on that port
+                    so remote login is possible.</p></dd>
+<dt>
+<a name="var-SSTATE_DIR"></a>SSTATE_DIR</dt>
+<dd><p>The directory for the shared state.</p></dd>
+<dt>
+<a name="var-SITEINFO_ENDIANNESS"></a>SITEINFO_ENDIANNESS</dt>
+<dd><p>
+                    Specifies the endian byte order of the target system. 
+                    The variable is either "le" for little-endian or "be" for big-endian.
+                </p></dd>
+<dt>
+<a name="var-SITEINFO_BITS"></a>SITEINFO_BITS</dt>
+<dd><p>
+                    Specifies the number of bits for the target system CPU.
+                    The variable is either "32" or "64".
+                </p></dd>
+<dt>
+<a name="var-SRC_URI"></a>SRC_URI</dt>
+<dd><p>The list of source files - local or remote.</p></dd>
+<dt>
+<a name="var-SRC_URI_OVERRIDES_PACKAGE_ARCH"></a>SRC_URI_OVERRIDES_PACKAGE_ARCH</dt>
+<dd>
+<p></p>
+<p>
+                    By default, the OpenEmbedded build system automatically detects whether 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-SRC_URI" title="SRC_URI">SRC_URI</a></code>  
+                    contains files that are machine-specific.
+                    If so, the build system automatically changes 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGE_ARCH" title="PACKAGE_ARCH">PACKAGE_ARCH</a></code>. 
+                    Setting this variable to "0" disables this behavior.
+                </p>
+</dd>
+<dt>
+<a name="var-SRCDATE"></a>SRCDATE</dt>
+<dd><p>
+                    The date of the source code used to build the package.
+                    This variable applies only if the source was fetched from a Source Code Manager (SCM).
+                </p></dd>
+<dt>
+<a name="var-SRCREV"></a>SRCREV</dt>
+<dd><p>
+                    The revision of the source code used to build the package.
+                    This variable applies to Subversion, Git, Mercurial and Bazaar
+                    only. 
+                    Note that if you wish to build a fixed revision and you wish
+                    to avoid performing a query on the remote repository every time
+                    BitBake parses your recipe, you should specify a <code class="filename">SRCREV</code> that is a
+                    full revision identifier and not just a tag.
+                </p></dd>
+<dt>
+<a name="var-STAGING_KERNEL_DIR"></a>STAGING_KERNEL_DIR</dt>
+<dd><p>
+                    The directory with kernel headers that are required to build out-of-tree
+                    modules.
+                </p></dd>
+<dt>
+<a name="var-STAMP"></a>STAMP</dt>
+<dd><p>
+                    The directory (usually <code class="filename">TMPDIR/stamps</code>) with timestamps of
+                    executed tasks.
+                </p></dd>
+<dt>
+<a name="var-SUMMARY"></a>SUMMARY</dt>
+<dd><p>The short (72 characters or less) summary of the binary package for packaging 
+                    systems such as <code class="filename">ipkg</code>, <code class="filename">rpm</code> or 
+                    <code class="filename">debian</code>.
+                    By default, this variable inherits <code class="filename">DESCRIPTION</code>.</p></dd>
+</dl>
+</div>
+<div class="glossdiv" title="T">
+<h3 class="title">T</h3>
+<dl>
+<dt>
+<a name="var-TARGET_ARCH"></a>TARGET_ARCH</dt>
+<dd><p>The architecture of the device being built. 
+                While a number of values are possible, the OpenEmbedded build system primarily supports
+                <code class="filename">arm</code> and <code class="filename">i586</code>.</p></dd>
+<dt>
+<a name="var-TARGET_CFLAGS"></a>TARGET_CFLAGS</dt>
+<dd><p>
+                    Flags passed to the C compiler for the target system. 
+                    This variable evaluates to the same as 
+                    <code class="filename"><a class="link" href="ref-variables-glos.html#var-CFLAGS" title="CFLAGS">CFLAGS</a></code>.
+                </p></dd>
+<dt>
+<a name="var-TARGET_FPU"></a>TARGET_FPU</dt>
+<dd><p>Specifies the method for handling FPU code. 
+                    For FPU-less targets, which include most ARM CPUs, the variable must be
+                    set to "soft".
+                    If not, the kernel emulation gets used, which results in a performance penalty.</p></dd>
+<dt>
+<a name="var-TARGET_OS"></a>TARGET_OS</dt>
+<dd><p>Specifies the target's operating system. 
+                    The variable can be set to "linux" for <code class="filename">eglibc</code>-based systems and
+                    to "linux-uclibc" for <code class="filename">uclibc</code>. 
+                    For ARM/EABI targets, there are also "linux-gnueabi" and
+                    "linux-uclibc-gnueabi" values possible.</p></dd>
+<dt>
+<a name="var-TCLIBC"></a>TCLIBC</dt>
+<dd>
+<p>
+                    Specifies which variant of the GNU standard C library (<code class="filename">libc</code>)
+                    to use during the build process.
+                    This variable replaces <code class="filename">POKYLIBC</code>, which is no longer
+                    supported.
+                </p>
+<p>
+                    You can select <code class="filename">eglibc</code> or <code class="filename">uclibc</code>.
+                    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                        This release of the Yocto Project does not support the 
+                        <code class="filename">glibc</code> implementation of <code class="filename">libc</code>.
+                    </div>
+<p>
+                </p>
+</dd>
+<dt>
+<a name="var-TCMODE"></a>TCMODE</dt>
+<dd>
+<p>
+                    The toolchain selector. 
+                    This variable replaces <code class="filename">POKYMODE</code>, which is no longer
+                    supported.
+                </p>
+<p>
+                    The <code class="filename">TCMODE</code> variable selects the external toolchain
+                    built using the OpenEmbedded build system or a few supported combinations of
+                    the upstream GCC or CodeSourcery Labs toolchain.
+                    The variable identifies the <code class="filename">tcmode-*</code> files used in 
+                    the <code class="filename">meta/conf/distro/include</code> directory, which is found in the
+                    <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>. 
+                </p>
+<p>
+                    By default, <code class="filename">TCMODE</code> is set to "default", which 
+                    chooses the <code class="filename">tcmode-default.inc</code> file.
+                    The variable is similar to 
+                    <a class="link" href="ref-variables-glos.html#var-TCLIBC" title="TCLIBC"><code class="filename">TCLIBC</code></a>, which controls 
+                    the variant of the GNU standard C library (<code class="filename">libc</code>)
+                    used during the build process: <code class="filename">eglibc</code> or <code class="filename">uclibc</code>.
+                </p>
+</dd>
+<dt>
+<a name="var-TMPDIR"></a>TMPDIR</dt>
+<dd>
+<p>
+                    This variable is the temporary directory the OpenEmbedded build system 
+                    uses when it does its work building images. 
+                    By default, the <code class="filename">TMPDIR</code> variable is named 
+                    <code class="filename">tmp</code> within the 
+                    <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>.
+                </p>
+<p>
+                    If you want to establish this directory in a location other than the
+                    default, you can uncomment the following statement in the 
+                    <code class="filename">conf/local.conf</code> file in the 
+                    <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>:
+                    </p>
+<pre class="literallayout">
+     #TMPDIR = "${TOPDIR}/tmp"
+                    </pre>
+<p> 
+                </p>
+</dd>
+<dt>
+<a name="var-TOPDIR"></a>TOPDIR</dt>
+<dd><p>
+                    This variable is the 
+                    <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>.
+                    BitBake automatically sets this variable.
+                    The OpenEmbedded build system uses the build directory when building images. 
+                </p></dd>
+</dl>
+</div>
+<div class="glossdiv" title="W">
+<h3 class="title">W</h3>
+<dl>
+<dt>
+<a name="var-WORKDIR"></a>WORKDIR</dt>
+<dd>
+<p>
+                    The pathname of the working directory in which the OpenEmbedded build system  
+                    builds packages.
+                    This directory is located within the
+                    <a class="link" href="ref-variables-glos.html#var-TMPDIR" title="TMPDIR"><code class="filename">TMPDIR</code></a> directory structure and changes
+                    as different packages are built.
+                </p>
+<p>
+                    The actual <code class="filename">WORKDIR</code> directory depends on several things:
+                    </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem">The temporary directory - <a class="link" href="ref-variables-glos.html#var-TMPDIR" title="TMPDIR"><code class="filename">TMPDIR</code></a>
+</li>
+<li class="listitem">The package architecture - <a class="link" href="ref-variables-glos.html#var-PACKAGE_ARCH" title="PACKAGE_ARCH"><code class="filename">PACKAGE_ARCH</code></a>
+</li>
+<li class="listitem">The target machine - <a class="link" href="ref-variables-glos.html#var-MACHINE" title="MACHINE"><code class="filename">MACHINE</code></a>
+</li>
+<li class="listitem">The target operating system - <a class="link" href="ref-variables-glos.html#var-TARGET_OS" title="TARGET_OS"><code class="filename">TARGET_OS</code></a>
+</li>
+<li class="listitem">The package name - <a class="link" href="ref-variables-glos.html#var-PN" title="PN"><code class="filename">PN</code></a>
+</li>
+<li class="listitem">The package version - <a class="link" href="ref-variables-glos.html#var-PV" title="PV"><code class="filename">PV</code></a>
+</li>
+<li class="listitem">The package revision - <a class="link" href="ref-variables-glos.html#var-PR" title="PR"><code class="filename">PR</code></a>
+</li>
+</ul></div>
+<p>
+                </p>
+<p>
+                    For packages that are not dependent on a particular machine, 
+                    <code class="filename">WORKDIR</code> is defined as follows:
+                    </p>
+<pre class="literallayout">
+ ${TMPDIR}/work/${PACKAGE_ARCH}-poky-${TARGET_OS}/${PN}-${PV}-${PR}
+                    </pre>
+<p>
+                    As an example, assume a 
+                    <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a> top-level 
+                    folder name <code class="filename">poky</code> and a default 
+                    <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a> 
+                    at <code class="filename">poky/build</code>.
+                    In this case, the working directory the build system uses to build 
+                    the <code class="filename">v86d</code> package is the following:
+                    </p>
+<pre class="literallayout">
+     ~/poky/build/tmp/work/qemux86-poky-linux/v86d-01.9-r0
+                    </pre>
+<p>
+                </p>
+<p>
+                    For packages that are dependent on a particular machine, <code class="filename">WORKDIR</code>
+                    is defined slightly different:
+                    </p>
+<pre class="literallayout">
+ ${TMPDIR}/work/${MACHINE}-poky-${TARGET_OS}/${PN}-${PV}-${PR}
+                    </pre>
+<p>
+                    As an example, again assume a source directory top-level folder 
+                    named <code class="filename">poky</code> and a default build directory 
+                    at <code class="filename">poky/build</code>.
+                    In this case, the working directory the build system uses to build
+                    the <code class="filename">acl</code> package, which is dependent on a 
+                    MIPS-based device, is the following:
+                    </p>
+<pre class="literallayout">
+     ~/poky/build/tmp/work/mips-poky-linux/acl-2.2.51-r2
+                    </pre>
+<p>
+                </p>
+</dd>
+</dl>
+</div>
+</div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-config-distro.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-config-distro.html
new file mode 100644
index 0000000..8c27a25
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-config-distro.html
@@ -0,0 +1,40 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>10.1.1. Distribution (Distro)</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-varlocality-configuration.html" title="10.1. Configuration">
+<link rel="prev" href="ref-varlocality-configuration.html" title="10.1. Configuration">
+<link rel="next" href="ref-varlocality-config-machine.html" title="10.1.2. Machine">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="10.1.1. Distribution (Distro)">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="ref-varlocality-config-distro"></a>10.1.1. Distribution (Distro)</h3></div></div></div>
+<p>
+               This section lists variables whose context is the distribution, or distro.
+               </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO" title="DISTRO">DISTRO</a></code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO_NAME" title="DISTRO_NAME">DISTRO_NAME</a></code>
+                       </p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO_VERSION" title="DISTRO_VERSION">DISTRO_VERSION</a>
+                       </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-MAINTAINER" title="MAINTAINER">MAINTAINER</a></code>
+                       </p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGE_CLASSES" title="PACKAGE_CLASSES">PACKAGE_CLASSES</a>
+                       </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-TARGET_OS" title="TARGET_OS">TARGET_OS</a></code>
+                       </p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-TARGET_FPU" title="TARGET_FPU">TARGET_FPU</a></code>
+                       </p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-TCMODE" title="TCMODE">TCMODE</a></code>
+                       </p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-TCLIBC" title="TCLIBC">TCLIBC</a></code>
+                       </p></li>
+</ul></div>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-config-local.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-config-local.html
new file mode 100644
index 0000000..46ab6dd
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-config-local.html
@@ -0,0 +1,42 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>10.1.3. Local</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-varlocality-configuration.html" title="10.1. Configuration">
+<link rel="prev" href="ref-varlocality-config-machine.html" title="10.1.2. Machine">
+<link rel="next" href="ref-varlocality-recipes.html" title="10.2. Recipes">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="10.1.3. Local">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="ref-varlocality-config-local"></a>10.1.3. Local</h3></div></div></div>
+<p>
+                This section lists variables whose context is the local configuration through the 
+                <code class="filename">local.conf</code> file.
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO" title="DISTRO">DISTRO</a></code>
+                        </p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE" title="MACHINE">MACHINE</a></code>
+                        </p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DL_DIR" title="DL_DIR">DL_DIR</a></code>
+                        </p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-BBFILES" title="BBFILES">BBFILES</a></code>
+                        </p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_IMAGE_FEATURES" title="EXTRA_IMAGE_FEATURES">EXTRA_IMAGE_FEATURES
+                        </a></code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGE_CLASSES" title="PACKAGE_CLASSES">PACKAGE_CLASSES</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-BB_NUMBER_THREADS" title="BB_NUMBER_THREADS">BB_NUMBER_THREADS</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-BBINCLUDELOGS" title="BBINCLUDELOGS">BBINCLUDELOGS</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-ENABLE_BINARY_LOCALE_GENERATION" title="ENABLE_BINARY_LOCALE_GENERATION">
+                        ENABLE_BINARY_LOCALE_GENERATION</a></code></p></li>
+</ul></div>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-config-machine.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-config-machine.html
new file mode 100644
index 0000000..b7ad412
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-config-machine.html
@@ -0,0 +1,41 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>10.1.2. Machine</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-varlocality-configuration.html" title="10.1. Configuration">
+<link rel="prev" href="ref-varlocality-config-distro.html" title="10.1.1. Distribution (Distro)">
+<link rel="next" href="ref-varlocality-config-local.html" title="10.1.3. Local">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="10.1.2. Machine">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="ref-varlocality-config-machine"></a>10.1.2. Machine</h3></div></div></div>
+<p>
+                This section lists variables whose context is the machine.
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-TARGET_ARCH" title="TARGET_ARCH">TARGET_ARCH</a></code>
+                        </p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-SERIAL_CONSOLE" title="SERIAL_CONSOLE">SERIAL_CONSOLE</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGE_EXTRA_ARCHS" title="PACKAGE_EXTRA_ARCHS">PACKAGE_EXTRA_ARCHS</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-IMAGE_FSTYPES" title="IMAGE_FSTYPES">IMAGE_FSTYPES</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_FEATURES" title="MACHINE_FEATURES">MACHINE_FEATURES</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_EXTRA_RDEPENDS" title="MACHINE_EXTRA_RDEPENDS">MACHINE_EXTRA_RDEPENDS
+                        </a></code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_EXTRA_RRECOMMENDS" title="MACHINE_EXTRA_RRECOMMENDS">MACHINE_EXTRA_RRECOMMENDS
+                        </a></code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_ESSENTIAL_EXTRA_RDEPENDS" title="MACHINE_ESSENTIAL_EXTRA_RDEPENDS">MACHINE_ESSENTIAL_EXTRA_RDEPENDS
+                        </a></code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS" title="MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS">
+                        MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS</a></code></p></li>
+</ul></div>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-configuration.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-configuration.html
new file mode 100644
index 0000000..6ff80f6
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-configuration.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>10.1. Configuration</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-varlocality.html" title="Chapter 10. Variable Context">
+<link rel="prev" href="ref-varlocality.html" title="Chapter 10. Variable Context">
+<link rel="next" href="ref-varlocality-config-distro.html" title="10.1.1. Distribution (Distro)">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="10.1. Configuration">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-varlocality-configuration"></a>10.1. Configuration</h2></div></div></div>
+<p>
+            The following subsections provide lists of variables whose context is
+            configuration: distribution, machine, and local.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-build.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-build.html
new file mode 100644
index 0000000..0463527
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-build.html
@@ -0,0 +1,35 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>10.2.4. Extra Build Information</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-varlocality-recipes.html" title="10.2. Recipes">
+<link rel="prev" href="ref-varlocality-recipe-paths.html" title="10.2.3. Paths">
+<link rel="next" href="faq.html" title="Chapter 11. FAQ">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="10.2.4. Extra Build Information">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="ref-varlocality-recipe-build"></a>10.2.4. Extra Build Information</h3></div></div></div>
+<p>
+                This section lists variables that define extra build information for recipes.
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DISTRO_PN_ALIAS" title="DISTRO_PN_ALIAS">DISTRO_PN_ALIAS</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_OECMAKE" title="EXTRA_OECMAKE">EXTRA_OECMAKE</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_OECONF" title="EXTRA_OECONF">EXTRA_OECONF</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-EXTRA_OEMAKE" title="EXTRA_OEMAKE">EXTRA_OEMAKE</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-PACKAGES" title="PACKAGES">PACKAGES</a></code>
+                        </p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DEFAULT_PREFERENCE" title="DEFAULT_PREFERENCE">DEFAULT_PREFERENCE
+                        </a></code></p></li>
+</ul></div>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-dependencies.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-dependencies.html
new file mode 100644
index 0000000..be1d961
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-dependencies.html
@@ -0,0 +1,33 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>10.2.2. Dependencies</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-varlocality-recipes.html" title="10.2. Recipes">
+<link rel="prev" href="ref-varlocality-recipe-required.html" title="10.2.1. Required">
+<link rel="next" href="ref-varlocality-recipe-paths.html" title="10.2.3. Paths">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="10.2.2. Dependencies">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="ref-varlocality-recipe-dependencies"></a>10.2.2. Dependencies</h3></div></div></div>
+<p>
+                This section lists variables that define recipe dependencies.
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DEPENDS" title="DEPENDS">DEPENDS</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-RDEPENDS" title="RDEPENDS">RDEPENDS</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-RRECOMMENDS" title="RRECOMMENDS">RRECOMMENDS</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-RCONFLICTS" title="RCONFLICTS">RCONFLICTS</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-RREPLACES" title="RREPLACES">RREPLACES</a>
+                        </code></p></li>
+</ul></div>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-paths.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-paths.html
new file mode 100644
index 0000000..fb04117
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-paths.html
@@ -0,0 +1,29 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>10.2.3. Paths</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-varlocality-recipes.html" title="10.2. Recipes">
+<link rel="prev" href="ref-varlocality-recipe-dependencies.html" title="10.2.2. Dependencies">
+<link rel="next" href="ref-varlocality-recipe-build.html" title="10.2.4. Extra Build Information">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="10.2.3. Paths">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="ref-varlocality-recipe-paths"></a>10.2.3. Paths</h3></div></div></div>
+<p>
+                This section lists variables that define recipe paths.
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR">WORKDIR</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-S" title="S">S</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-FILES" title="FILES">FILES</a>
+                        </code></p></li>
+</ul></div>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-required.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-required.html
new file mode 100644
index 0000000..9979745
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipe-required.html
@@ -0,0 +1,37 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>10.2.1. Required</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-varlocality-recipes.html" title="10.2. Recipes">
+<link rel="prev" href="ref-varlocality-recipes.html" title="10.2. Recipes">
+<link rel="next" href="ref-varlocality-recipe-dependencies.html" title="10.2.2. Dependencies">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="10.2.1. Required">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="ref-varlocality-recipe-required"></a>10.2.1. Required</h3></div></div></div>
+<p>
+                This section lists variables that are required for recipes.
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-DESCRIPTION" title="DESCRIPTION">DESCRIPTION</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-LICENSE" title="LICENSE">LICENSE</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-LIC_FILES_CHKSUM" title="LIC_FILES_CHKSUM">LIC_FILES_CHKSUM</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-SECTION" title="SECTION">SECTION</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-HOMEPAGE" title="HOMEPAGE">HOMEPAGE</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-AUTHOR" title="AUTHOR">AUTHOR</a>
+                        </code></p></li>
+<li class="listitem"><p><code class="filename"><a class="link" href="ref-variables-glos.html#var-SRC_URI" title="SRC_URI">SRC_URI</a>
+                        </code></p></li>
+</ul></div>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipes.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipes.html
new file mode 100644
index 0000000..6594707
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality-recipes.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>10.2. Recipes</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-varlocality.html" title="Chapter 10. Variable Context">
+<link rel="prev" href="ref-varlocality-config-local.html" title="10.1.3. Local">
+<link rel="next" href="ref-varlocality-recipe-required.html" title="10.2.1. Required">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="10.2. Recipes">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="ref-varlocality-recipes"></a>10.2. Recipes</h2></div></div></div>
+<p>
+            The following subsections provide lists of variables whose context is
+            recipes: required, dependencies, path, and extra build information.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality.html
new file mode 100644
index 0000000..13c1268
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/ref-varlocality.html
@@ -0,0 +1,41 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 10. Variable Context</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="prev" href="ref-variables-glos.html" title="Chapter 9. Variables Glossary">
+<link rel="next" href="ref-varlocality-configuration.html" title="10.1. Configuration">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 10. Variable Context">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="ref-varlocality"></a>Chapter 10. Variable Context</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="ref-varlocality-configuration.html">10.1. Configuration</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="ref-varlocality-config-distro.html">10.1.1. Distribution (Distro)</a></span></dt>
+<dt><span class="section"><a href="ref-varlocality-config-machine.html">10.1.2. Machine</a></span></dt>
+<dt><span class="section"><a href="ref-varlocality-config-local.html">10.1.3. Local</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="ref-varlocality-recipes.html">10.2. Recipes</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="ref-varlocality-recipe-required.html">10.2.1. Required</a></span></dt>
+<dt><span class="section"><a href="ref-varlocality-recipe-dependencies.html">10.2.2. Dependencies</a></span></dt>
+<dt><span class="section"><a href="ref-varlocality-recipe-paths.html">10.2.3. Paths</a></span></dt>
+<dt><span class="section"><a href="ref-varlocality-recipe-build.html">10.2.4. Extra Build Information</a></span></dt>
+</dl></dd>
+</dl>
+</div>
+<p>
+        While most variables can be used in almost any context such as 
+        <code class="filename">.conf</code>, <code class="filename">.bbclass</code>,
+        <code class="filename">.inc</code>, and <code class="filename">.bb</code> files,
+        some variables are often associated with a particular locality or context. 
+        This chapter describes some common associations.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-bugtracker.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-bugtracker.html
new file mode 100644
index 0000000..74175a0
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-bugtracker.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>12.2. Tracking Bugs</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="resources.html" title="Chapter 12. Contributing to the Yocto Project">
+<link rel="prev" href="resources-intro.html" title="12.1. Introduction">
+<link rel="next" href="resources-mailinglist.html" title="12.3. Mailing lists">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="12.2. Tracking Bugs">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="resources-bugtracker"></a>12.2. Tracking Bugs</h2></div></div></div>
+<p>
+        If you find problems with the Yocto Project, you should report them using the 
+        Bugzilla application at <a class="ulink" href="http://bugzilla.yoctoproject.org" target="_self">http://bugzilla.yoctoproject.org</a>.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-contributions.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-contributions.html
new file mode 100644
index 0000000..eb35ff5
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-contributions.html
@@ -0,0 +1,23 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>12.6. Contributions</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="resources.html" title="Chapter 12. Contributing to the Yocto Project">
+<link rel="prev" href="resources-links.html" title="12.5. Links">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="12.6. Contributions">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="resources-contributions"></a>12.6. Contributions</h2></div></div></div>
+<p>
+        The Yocto Project gladly accepts contributions.
+        You can submit changes to the project either by creating and sending pull requests, 
+        or by submitting patches through email.
+        For information on how to do both, see the
+        "<a class="link" href="../dev-manual/how-to-submit-a-change.html" target="_self">How to Submit a Change</a>"
+        section in the Yocto Project Development Manual.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-intro.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-intro.html
new file mode 100644
index 0000000..0635563
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-intro.html
@@ -0,0 +1,23 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>12.1. Introduction</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="resources.html" title="Chapter 12. Contributing to the Yocto Project">
+<link rel="prev" href="resources.html" title="Chapter 12. Contributing to the Yocto Project">
+<link rel="next" href="resources-bugtracker.html" title="12.2. Tracking Bugs">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="12.1. Introduction">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="resources-intro"></a>12.1. Introduction</h2></div></div></div>
+<p>
+        The Yocto Project team is happy for people to experiment with the Yocto Project.
+        A number of places exist to find help if you run into difficulties or find bugs. 
+        To find out how to download source code,
+        see the "<a class="link" href="../dev-manual/local-yp-release.html" target="_self">Yocto Project Release</a>"
+        list item in the Yocto Project Development Manual.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-irc.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-irc.html
new file mode 100644
index 0000000..ed0afe8
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-irc.html
@@ -0,0 +1,25 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>12.4. Internet Relay Chat (IRC)</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="resources.html" title="Chapter 12. Contributing to the Yocto Project">
+<link rel="prev" href="resources-mailinglist.html" title="12.3. Mailing lists">
+<link rel="next" href="resources-links.html" title="12.5. Links">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="12.4. Internet Relay Chat (IRC)">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="resources-irc"></a>12.4. Internet Relay Chat (IRC)</h2></div></div></div>
+<p>
+        Two IRC channels on freenode are available for the Yocto Project and Poky discussions:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><code class="filename">#yocto</code></p></li>
+<li class="listitem"><p><code class="filename">#poky</code></p></li>
+</ul></div>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-links.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-links.html
new file mode 100644
index 0000000..9325b0b
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-links.html
@@ -0,0 +1,42 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>12.5. Links</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="resources.html" title="Chapter 12. Contributing to the Yocto Project">
+<link rel="prev" href="resources-irc.html" title="12.4. Internet Relay Chat (IRC)">
+<link rel="next" href="resources-contributions.html" title="12.6. Contributions">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="12.5. Links">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="resources-links"></a>12.5. Links</h2></div></div></div>
+<p>
+        Following is a list of resources you will find helpful:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em><a class="ulink" href="http://www.yoctoproject.org" target="_self">The Yocto Project website</a>:
+                </em></span> The home site for the Yocto Project.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><a class="ulink" href="http://www.intel.com/" target="_self">Intel Corporation</a>:</em></span>
+                The company who acquired OpenedHand in 2008 and began development on the 
+                Yocto Project.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><a class="ulink" href="http://www.openembedded.org" target="_self">OpenEmbedded</a>:</em></span>
+                The upstream, generic, embedded distribution used as the basis for the build system in the 
+                Yocto Project.
+                Poky derives from and contributes back to the OpenEmbedded project.</p></li>
+<li class="listitem"><p><span class="emphasis"><em><a class="ulink" href="http://developer.berlios.de/projects/bitbake/" target="_self">
+                BitBake</a>:</em></span> The tool used to process metadata.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>BitBake User Manual:</em></span>
+                A comprehensive guide to the BitBake tool.
+                You can find the BitBake User Manual in the <code class="filename">bitbake/doc/manual</code> 
+                directory, which is found in the 
+                <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>.
+                </p></li>
+<li class="listitem"><p><span class="emphasis"><em><a class="ulink" href="http://wiki.qemu.org/Index.html" target="_self">QEMU</a>:
+                </em></span> An open source machine emulator and virtualizer.</p></li>
+</ul></div>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-mailinglist.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-mailinglist.html
new file mode 100644
index 0000000..c2eaed3
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources-mailinglist.html
@@ -0,0 +1,39 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>12.3. Mailing lists</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="resources.html" title="Chapter 12. Contributing to the Yocto Project">
+<link rel="prev" href="resources-bugtracker.html" title="12.2. Tracking Bugs">
+<link rel="next" href="resources-irc.html" title="12.4. Internet Relay Chat (IRC)">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="12.3. Mailing lists">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="resources-mailinglist"></a>12.3. Mailing lists</h2></div></div></div>
+<p>
+        There are a number of mailing lists maintained by the Yocto Project as well as
+        related OpenEmbedded mailing lists for discussion, patch submission and announcements.
+        To subscribe to one of the following mailing lists, click on the appropriate URL
+        in the following list and follow the instructions:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><a class="ulink" href="http://lists.yoctoproject.org/listinfo/yocto" target="_self">http://lists.yoctoproject.org/listinfo/yocto</a> -
+                General Yocto Project discussion mailing list. </p></li>
+<li class="listitem"><p><a class="ulink" href="http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-core" target="_self">http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-core</a> -
+                Discussion mailing list about OpenEmbedded-Core (the core metadata).</p></li>
+<li class="listitem"><p><a class="ulink" href="http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-devel" target="_self">http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-devel</a> -
+                Discussion mailing list about OpenEmbedded.</p></li>
+<li class="listitem"><p><a class="ulink" href="http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/bitbake-devel" target="_self">http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/bitbake-devel</a> -
+                Discussion mailing list about the BitBake build tool.</p></li>
+<li class="listitem"><p><a class="ulink" href="http://lists.yoctoproject.org/listinfo/poky" target="_self">http://lists.yoctoproject.org/listinfo/poky</a> -
+                Discussion mailing list about Poky.</p></li>
+<li class="listitem"><p><a class="ulink" href="http://lists.yoctoproject.org/listinfo/yocto-announce" target="_self">http://lists.yoctoproject.org/listinfo/yocto-announce</a> -
+                Mailing list to receive official Yocto Project release and milestone
+                announcements.</p></li>
+</ul></div>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources.html
new file mode 100644
index 0000000..b0db948
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/resources.html
@@ -0,0 +1,27 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 12. Contributing to the Yocto Project</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="prev" href="faq.html" title="Chapter 11. FAQ">
+<link rel="next" href="resources-intro.html" title="12.1. Introduction">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 12. Contributing to the Yocto Project">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="resources"></a>Chapter 12. Contributing to the Yocto Project</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="resources-intro.html">12.1. Introduction</a></span></dt>
+<dt><span class="section"><a href="resources-bugtracker.html">12.2. Tracking Bugs</a></span></dt>
+<dt><span class="section"><a href="resources-mailinglist.html">12.3. Mailing lists</a></span></dt>
+<dt><span class="section"><a href="resources-irc.html">12.4. Internet Relay Chat (IRC)</a></span></dt>
+<dt><span class="section"><a href="resources-links.html">12.5. Links</a></span></dt>
+<dt><span class="section"><a href="resources-contributions.html">12.6. Contributions</a></span></dt>
+</dl>
+</div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/shared-state-cache.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/shared-state-cache.html
new file mode 100644
index 0000000..8f2f5a5
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/shared-state-cache.html
@@ -0,0 +1,60 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.2. Shared State Cache</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="technical-details.html" title="Chapter 3. Technical Details">
+<link rel="prev" href="usingpoky-components-configuration.html" title="3.1.4. Configuration">
+<link rel="next" href="overall-architecture.html" title="3.2.1. Overall Architecture">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2. Shared State Cache">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="shared-state-cache"></a>3.2. Shared State Cache</h2></div></div></div>
+<p>
+        By design, the OpenEmbedded build system builds everything from scratch unless 
+        BitBake can determine that parts don't need to be rebuilt.
+        Fundamentally, building from scratch is attractive as it means all parts are 
+        built fresh and there is no possibility of stale data causing problems. 
+        When developers hit problems, they typically default back to building from scratch
+        so they know the state of things from the start.
+    </p>
+<p>  
+        Building an image from scratch is both an advantage and a disadvantage to the process. 
+        As mentioned in the previous paragraph, building from scratch ensures that 
+        everything is current and starts from a known state.
+        However, building from scratch also takes much longer as it generally means 
+        rebuilding things that don't necessarily need rebuilt.
+    </p>
+<p>
+        The Yocto Project implements shared state code that supports incremental builds.
+        The implementation of the shared state code answers the following questions that
+        were fundamental roadblocks within the OpenEmbedded incremental build support system:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem">What pieces of the system have changed and what pieces have not changed?</li>
+<li class="listitem">How are changed pieces of software removed and replaced?</li>
+<li class="listitem">How are pre-built components that don't need to be rebuilt from scratch
+                used when they are available?</li>
+</ul></div>
+<p>
+    </p>
+<p>
+        For the first question, the build system detects changes in the "inputs" to a given task by 
+        creating a checksum (or signature) of the task's inputs. 
+        If the checksum changes, the system assumes the inputs have changed and the task needs to be 
+        rerun.
+        For the second question, the shared state (sstate) code tracks which tasks add which output
+        to the build process. 
+        This means the output from a given task can be removed, upgraded or otherwise manipulated.
+        The third question is partly addressed by the solution for the second question
+        assuming the build system can fetch the sstate objects from remote locations and 
+        install them if they are deemed to be valid.
+    </p>
+<p>
+        The rest of this section goes into detail about the overall incremental build
+        architecture, the checksums (signatures), shared state, and some tips and tricks.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/shared-state.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/shared-state.html
new file mode 100644
index 0000000..a665831
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/shared-state.html
@@ -0,0 +1,121 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.2.3. Shared State</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="shared-state-cache.html" title="3.2. Shared State Cache">
+<link rel="prev" href="checksums.html" title="3.2.2. Checksums (Signatures)">
+<link rel="next" href="tips-and-tricks.html" title="3.2.4. Tips and Tricks">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2.3. Shared State">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="shared-state"></a>3.2.3. Shared State</h3></div></div></div>
+<p>
+            Checksums and dependencies, as discussed in the previous section, solve half the 
+            problem.
+            The other part of the problem is being able to use checksum information during the build
+            and being able to reuse or rebuild specific components.
+        </p>
+<p>
+            The shared state class (<code class="filename">sstate.bbclass</code>) 
+            is a relatively generic implementation of how to "capture" a snapshot of a given task. 
+            The idea is that the build process does not care about the source of a task's output.
+            Output could be freshly built or it could be downloaded and unpacked from
+            somewhere - the build process doesn't need to worry about its source.
+        </p>
+<p>
+            There are two types of output, one is just about creating a directory
+            in <code class="filename">WORKDIR</code>.
+            A good example is the output of either <code class="filename">do_install</code> or 
+            <code class="filename">do_package</code>. 
+            The other type of output occurs when a set of data is merged into a shared directory 
+            tree such as the sysroot.
+        </p>
+<p>
+            The Yocto Project team has tried to keep the details of the implementation hidden in 
+            <code class="filename">sstate.bbclass</code>. 
+            From a user's perspective, adding shared state wrapping to a task
+            is as simple as this <code class="filename">do_deploy</code> example taken from 
+            <code class="filename">do_deploy.bbclass</code>:
+            </p>
+<pre class="literallayout">
+     DEPLOYDIR = "${WORKDIR}/deploy-${PN}"
+     SSTATETASKS += "do_deploy"
+     do_deploy[sstate-name] = "deploy"
+     do_deploy[sstate-inputdirs] = "${DEPLOYDIR}"
+     do_deploy[sstate-outputdirs] = "${DEPLOY_DIR_IMAGE}"
+
+     python do_deploy_setscene () {
+         sstate_setscene(d)
+     }
+     addtask do_deploy_setscene
+            </pre>
+<p>
+            In the example, we add some extra flags to the task, a name field ("deploy"), an
+            input directory where the task sends data, and the output
+            directory where the data from the task should eventually be copied. 
+            We also add a <code class="filename">_setscene</code> variant of the task and add the task
+            name to the <code class="filename">SSTATETASKS</code> list.
+        </p>
+<p>
+            If you have a directory whose contents you need to preserve, you can do this with 
+            a line like the following:
+            </p>
+<pre class="literallayout">
+     do_package[sstate-plaindirs] = "${PKGD} ${PKGDEST}"
+            </pre>
+<p>
+            This method, as well as the following example, also works for multiple directories.
+            </p>
+<pre class="literallayout">
+     do_package[sstate-inputdirs] = "${PKGDESTWORK} ${SHLIBSWORKDIR}"
+     do_package[sstate-outputdirs] = "${PKGDATA_DIR} ${SHLIBSDIR}"
+     do_package[sstate-lockfile] = "${PACKAGELOCK}"
+            </pre>
+<p>
+            These methods also include the ability to take a lockfile when manipulating
+            shared state directory structures since some cases are sensitive to file
+            additions or removals.
+        </p>
+<p>
+            Behind the scenes, the shared state code works by looking in 
+            <code class="filename">SSTATE_DIR</code> and  
+            <code class="filename">SSTATE_MIRRORS</code> for shared state files. 
+            Here is an example:
+            </p>
+<pre class="literallayout">
+     SSTATE_MIRRORS ?= "\
+     file://.* http://someserver.tld/share/sstate/ \n \
+     file://.* file:///some/local/dir/sstate/"
+            </pre>
+<p>
+        </p>
+<p>
+            The shared state package validity can be detected just by looking at the
+            filename since the filename contains the task checksum (or signature) as
+            described earlier in this section. 
+            If a valid shared state package is found, the build process downloads it 
+            and uses it to accelerate the task.
+        </p>
+<p>
+            The build processes uses the <code class="filename">*_setscene</code> tasks
+            for the task acceleration phase.
+            BitBake goes through this phase before the main execution code and tries
+            to accelerate any tasks for which it can find shared state packages. 
+            If a shared state package for a task is available, the shared state
+            package is used.
+            This means the task and any tasks on which it is dependent are not 
+            executed.
+        </p>
+<p>
+            As a real world example, the aim is when building an IPK-based image,
+            only the <code class="filename">do_package_write_ipk</code> tasks would have their 
+            shared state packages fetched and extracted. 
+            Since the sysroot is not used, it would never get extracted. 
+            This is another reason why a task-based approach is preferred over a 
+            recipe-based approach, which would have to install the output from every task.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-basic-top-level.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-basic-top-level.html
new file mode 100644
index 0000000..c121353
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-basic-top-level.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.1.10. LICENSE, README, and README.hardware</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-core.html" title="4.1. Top level core components">
+<link rel="prev" href="structure-core-script.html" title="4.1.9. oe-init-build-env">
+<link rel="next" href="structure-build.html" title="4.2. The Build Directory - build/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.10. LICENSE, README, and README.hardware">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-basic-top-level"></a>4.1.10. <code class="filename">LICENSE, README, and README.hardware</code>
+</h3></div></div></div>
+<p>
+            These files are standard top-level files. 
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-conf-bblayers.conf.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-conf-bblayers.conf.html
new file mode 100644
index 0000000..5e9c9fa
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-conf-bblayers.conf.html
@@ -0,0 +1,23 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.3. build/conf/bblayers.conf</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-conf-local.conf.html" title="4.2.2. build/conf/local.conf">
+<link rel="next" href="structure-build-conf-sanity_info.html" title="4.2.4. build/conf/sanity_info">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.3. build/conf/bblayers.conf">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-conf-bblayers.conf"></a>4.2.3. <code class="filename">build/conf/bblayers.conf</code>
+</h3></div></div></div>
+<p>
+            This file defines layers, which is a directory tree, traversed (or walked) by BitBake. 
+            If <code class="filename">bblayers.conf</code> 
+            is not present, it is created from <code class="filename">bblayers.conf.sample</code> when 
+            you <code class="filename">source</code> the environment setup script.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-conf-local.conf.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-conf-local.conf.html
new file mode 100644
index 0000000..1190491
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-conf-local.conf.html
@@ -0,0 +1,33 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.2. build/conf/local.conf</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-pseudodone.html" title="4.2.1. build/pseudodone">
+<link rel="next" href="structure-build-conf-bblayers.conf.html" title="4.2.3. build/conf/bblayers.conf">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.2. build/conf/local.conf">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-conf-local.conf"></a>4.2.2. <code class="filename">build/conf/local.conf</code>
+</h3></div></div></div>
+<p>
+            This file contains all the local user configuration for your build environment. 
+            If there is no <code class="filename">local.conf</code> present, it is created from 
+            <code class="filename">local.conf.sample</code>. 
+            The <code class="filename">local.conf</code> file contains documentation on the various configuration options.  
+            Any variable set here overrides any variable set elsewhere within the environment unless 
+            that variable is hard-coded within a file (e.g. by using '=' instead of '?='). 
+            Some variables are hard-coded for various reasons but these variables are 
+            relatively rare.
+        </p>
+<p>
+            Edit this file to set the <code class="filename"><a class="link" href="ref-variables-glos.html#var-MACHINE" title="MACHINE">MACHINE</a></code> 
+            for which you want to build, which package types you
+            wish to use (<code class="filename">PACKAGE_CLASSES</code>), or where you want to downloaded files
+            (<code class="filename"><a class="link" href="ref-variables-glos.html#var-DL_DIR" title="DL_DIR">DL_DIR</a></code>).
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-conf-sanity_info.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-conf-sanity_info.html
new file mode 100644
index 0000000..5fc9be7
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-conf-sanity_info.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.4. build/conf/sanity_info</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-conf-bblayers.conf.html" title="4.2.3. build/conf/bblayers.conf">
+<link rel="next" href="structure-build-downloads.html" title="4.2.5. build/downloads/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.4. build/conf/sanity_info">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-conf-sanity_info"></a>4.2.4. <code class="filename">build/conf/sanity_info</code>
+</h3></div></div></div>
+<p>
+            This file is created during the build to indicate the state of the sanity checks.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-downloads.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-downloads.html
new file mode 100644
index 0000000..d48625f
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-downloads.html
@@ -0,0 +1,23 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.5. build/downloads/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-conf-sanity_info.html" title="4.2.4. build/conf/sanity_info">
+<link rel="next" href="structure-build-sstate-cache.html" title="4.2.6. build/sstate-cache/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.5. build/downloads/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-downloads"></a>4.2.5. <code class="filename">build/downloads/</code>
+</h3></div></div></div>
+<p>
+            This directory is used for the upstream source tarballs.
+            The directory can be reused by multiple builds or moved to another location. 
+            You can control the location of this directory through the
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-DL_DIR" title="DL_DIR">DL_DIR</a></code> variable.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-pseudodone.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-pseudodone.html
new file mode 100644
index 0000000..342ec64
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-pseudodone.html
@@ -0,0 +1,21 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.1. build/pseudodone</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="next" href="structure-build-conf-local.conf.html" title="4.2.2. build/conf/local.conf">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.1. build/pseudodone">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-pseudodone"></a>4.2.1. <code class="filename">build/pseudodone</code>
+</h3></div></div></div>
+<p>
+            This tag file indicates that the initial pseudo binary was created. 
+            The file is built the first time BitBake is invoked. 
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-sstate-cache.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-sstate-cache.html
new file mode 100644
index 0000000..2cd3dcc
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-sstate-cache.html
@@ -0,0 +1,23 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.6. build/sstate-cache/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-downloads.html" title="4.2.5. build/downloads/">
+<link rel="next" href="structure-build-tmp.html" title="4.2.7. build/tmp/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.6. build/sstate-cache/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-sstate-cache"></a>4.2.6. <code class="filename">build/sstate-cache/</code>
+</h3></div></div></div>
+<p>
+            This directory is used for the shared state cache.
+            The directory can be reused by multiple builds or moved to another location. 
+            You can control the location of this directory through the
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-SSTATE_DIR" title="SSTATE_DIR">SSTATE_DIR</a></code> variable.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-buildstats.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-buildstats.html
new file mode 100644
index 0000000..23cb913
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-buildstats.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.8. build/tmp/buildstats/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-tmp.html" title="4.2.7. build/tmp/">
+<link rel="next" href="structure-build-tmp-cache.html" title="4.2.9. build/tmp/cache/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.8. build/tmp/buildstats/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-tmp-buildstats"></a>4.2.8. <code class="filename">build/tmp/buildstats/</code>
+</h3></div></div></div>
+<p>
+            This directory stores the build statistics.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-cache.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-cache.html
new file mode 100644
index 0000000..22f28e4
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-cache.html
@@ -0,0 +1,22 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.9. build/tmp/cache/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-tmp-buildstats.html" title="4.2.8. build/tmp/buildstats/">
+<link rel="next" href="structure-build-tmp-deploy.html" title="4.2.10. build/tmp/deploy/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.9. build/tmp/cache/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-tmp-cache"></a>4.2.9. <code class="filename">build/tmp/cache/</code>
+</h3></div></div></div>
+<p>
+            When BitBake parses the metadata, it creates a cache file of the result that can
+            be used when subsequently running commands. 
+            These results are stored here on a per-machine basis.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-deb.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-deb.html
new file mode 100644
index 0000000..8ea589d
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-deb.html
@@ -0,0 +1,22 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.11. build/tmp/deploy/deb/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-tmp-deploy.html" title="4.2.10. build/tmp/deploy/">
+<link rel="next" href="structure-build-tmp-deploy-rpm.html" title="4.2.12. build/tmp/deploy/rpm/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.11. build/tmp/deploy/deb/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-tmp-deploy-deb"></a>4.2.11. <code class="filename">build/tmp/deploy/deb/</code>
+</h3></div></div></div>
+<p>
+            This directory receives any <code class="filename">.deb</code> packages produced by 
+            the build process.
+            The packages are sorted into feeds for different architecture types.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-images.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-images.html
new file mode 100644
index 0000000..700e89b
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-images.html
@@ -0,0 +1,44 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.14. build/tmp/deploy/images/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-tmp-deploy-licenses.html" title="4.2.13. build/tmp/deploy/licenses/">
+<link rel="next" href="structure-build-tmp-deploy-ipk.html" title="4.2.15. build/tmp/deploy/ipk/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.14. build/tmp/deploy/images/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-tmp-deploy-images"></a>4.2.14. <code class="filename">build/tmp/deploy/images/</code>
+</h3></div></div></div>
+<p>
+            This directory receives complete filesystem images. 
+            If you want to flash the resulting image from a build onto a device, look here for the image.
+        </p>
+<p>
+            Be careful when deleting files in this directory. 
+            You can safely delete old images from this directory (e.g. 
+            <code class="filename">core-image-*</code>, <code class="filename">hob-image-*</code>,
+            etc.). 
+            However, the kernel (<code class="filename">*zImage*</code>, <code class="filename">*uImage*</code>, etc.), 
+            bootloader and other supplementary files might be deployed here prior to building an
+            image.
+            Because these files, however, are not directly produced from the image, if you
+            delete them they will not be automatically re-created when you build the image again.
+        </p>
+<p>
+            If you do accidentally delete files here, you will need to force them to be 
+            re-created. 
+            In order to do that, you will need to know the target that produced them.
+            For example, these commands rebuild and re-create the kernel files:
+            </p>
+<pre class="literallayout">
+     $ bitbake -c clean virtual/kernel
+     $ bitbake virtual/kernel
+            </pre>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-ipk.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-ipk.html
new file mode 100644
index 0000000..d9eb66d
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-ipk.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.15. build/tmp/deploy/ipk/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-tmp-deploy-images.html" title="4.2.14. build/tmp/deploy/images/">
+<link rel="next" href="structure-build-tmp-sysroots.html" title="4.2.16. build/tmp/sysroots/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.15. build/tmp/deploy/ipk/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-tmp-deploy-ipk"></a>4.2.15. <code class="filename">build/tmp/deploy/ipk/</code>
+</h3></div></div></div>
+<p>
+            This directory receives <code class="filename">.ipk</code> packages produced by 
+            the build process.</p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-licenses.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-licenses.html
new file mode 100644
index 0000000..cadff9a
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-licenses.html
@@ -0,0 +1,23 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.13. build/tmp/deploy/licenses/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-tmp-deploy-rpm.html" title="4.2.12. build/tmp/deploy/rpm/">
+<link rel="next" href="structure-build-tmp-deploy-images.html" title="4.2.14. build/tmp/deploy/images/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.13. build/tmp/deploy/licenses/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-tmp-deploy-licenses"></a>4.2.13. <code class="filename">build/tmp/deploy/licenses/</code>
+</h3></div></div></div>
+<p>
+            This directory receives package licensing information.
+            For example, the directory contains sub-directories for <code class="filename">bash</code>,
+            <code class="filename">busybox</code>, and <code class="filename">eglibc</code> (among others) that in turn
+            contain appropriate <code class="filename">COPYING</code> license files with other licensing information.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-rpm.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-rpm.html
new file mode 100644
index 0000000..c1d6a8a
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy-rpm.html
@@ -0,0 +1,22 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.12. build/tmp/deploy/rpm/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-tmp-deploy-deb.html" title="4.2.11. build/tmp/deploy/deb/">
+<link rel="next" href="structure-build-tmp-deploy-licenses.html" title="4.2.13. build/tmp/deploy/licenses/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.12. build/tmp/deploy/rpm/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-tmp-deploy-rpm"></a>4.2.12. <code class="filename">build/tmp/deploy/rpm/</code>
+</h3></div></div></div>
+<p>
+            This directory receives any <code class="filename">.rpm</code> packages produced by 
+            the build process.  
+            The packages are sorted into feeds for different architecture types.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy.html
new file mode 100644
index 0000000..079d93e
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-deploy.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.10. build/tmp/deploy/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-tmp-cache.html" title="4.2.9. build/tmp/cache/">
+<link rel="next" href="structure-build-tmp-deploy-deb.html" title="4.2.11. build/tmp/deploy/deb/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.10. build/tmp/deploy/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-tmp-deploy"></a>4.2.10. <code class="filename">build/tmp/deploy/</code>
+</h3></div></div></div>
+<p>
+            This directory contains any 'end result' output from the OpenEmbedded build process.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-log.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-log.html
new file mode 100644
index 0000000..000be46
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-log.html
@@ -0,0 +1,24 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.18. build/tmp/log/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-tmp-stamps.html" title="4.2.17. build/tmp/stamps/">
+<link rel="next" href="structure-build-tmp-pkgdata.html" title="4.2.19. build/tmp/pkgdata/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.18. build/tmp/log/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-tmp-log"></a>4.2.18. <code class="filename">build/tmp/log/</code>
+</h3></div></div></div>
+<p>
+            This directory contains general logs that are not otherwise placed using the 
+            package's <code class="filename"><a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR">WORKDIR</a></code>.
+            Examples of logs are the output from the <code class="filename">check_pkg</code> or 
+            <code class="filename">distro_check</code> tasks.
+            Running a build does not necessarily mean this directory is created.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-pkgdata.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-pkgdata.html
new file mode 100644
index 0000000..9f58c16
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-pkgdata.html
@@ -0,0 +1,21 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.19. build/tmp/pkgdata/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-tmp-log.html" title="4.2.18. build/tmp/log/">
+<link rel="next" href="structure-build-tmp-work.html" title="4.2.20. build/tmp/work/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.19. build/tmp/pkgdata/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-tmp-pkgdata"></a>4.2.19. <code class="filename">build/tmp/pkgdata/</code>
+</h3></div></div></div>
+<p>
+            This directory contains intermediate packaging data that is used later in the packaging process. 
+            For more information, see the "<a class="link" href="ref-classes-package.html" title="6.13. Packaging - package*.bbclass">Packaging - package*.bbclass</a>" section.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-stamps.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-stamps.html
new file mode 100644
index 0000000..75e6829
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-stamps.html
@@ -0,0 +1,24 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.17. build/tmp/stamps/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-tmp-sysroots.html" title="4.2.16. build/tmp/sysroots/">
+<link rel="next" href="structure-build-tmp-log.html" title="4.2.18. build/tmp/log/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.17. build/tmp/stamps/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-tmp-stamps"></a>4.2.17. <code class="filename">build/tmp/stamps/</code>
+</h3></div></div></div>
+<p>
+            This directory holds information that that BitBake uses for accounting purposes 
+            to track what tasks have run and when they have run.
+            The directory is sub-divided by architecture. 
+            The files in the directory are empty of data.
+            However, BitBake uses the filenames and timestamps for tracking purposes.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-sysroots.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-sysroots.html
new file mode 100644
index 0000000..bcd8822
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-sysroots.html
@@ -0,0 +1,24 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.16. build/tmp/sysroots/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-tmp-deploy-ipk.html" title="4.2.15. build/tmp/deploy/ipk/">
+<link rel="next" href="structure-build-tmp-stamps.html" title="4.2.17. build/tmp/stamps/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.16. build/tmp/sysroots/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-tmp-sysroots"></a>4.2.16. <code class="filename">build/tmp/sysroots/</code>
+</h3></div></div></div>
+<p>
+            This directory contains shared header files and libraries as well as other shared 
+            data.  
+            Packages that need to share output with other packages do so within this directory. 
+            The directory is subdivided by architecture so multiple builds can run within
+            the one build directory.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-work.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-work.html
new file mode 100644
index 0000000..9807b48
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp-work.html
@@ -0,0 +1,52 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.20. build/tmp/work/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-tmp-pkgdata.html" title="4.2.19. build/tmp/pkgdata/">
+<link rel="next" href="structure-meta.html" title="4.3. The Metadata - meta/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.20. build/tmp/work/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-tmp-work"></a>4.2.20. <code class="filename">build/tmp/work/</code>
+</h3></div></div></div>
+<p>
+            This directory contains architecture-specific work sub-directories for packages built by BitBake. 
+            All tasks execute from a work directory.
+            For example, the source for a particular package is unpacked, patched, configured and compiled all
+            within its own work directory.
+            Within the work directory, organization is based on the package group for which the source
+            is being compiled.
+        </p>
+<p>
+            It is worth considering the structure of a typical work directory. 
+            As an example, consider the <code class="filename">linux-yocto-kernel-3.0</code>
+            on the machine <code class="filename">qemux86</code> 
+            built within the Yocto Project.  
+            For this package, a work directory of 
+            <code class="filename">tmp/work/qemux86-poky-linux/linux-yocto-3.0+git1+&lt;.....&gt;</code>, 
+            referred to as <code class="filename"><a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR">WORKDIR</a></code>, is created.  
+            Within this directory, the source is unpacked to 
+            <code class="filename">linux-qemux86-standard-build</code> and then patched by Quilt 
+            (see the 
+            "<a class="link" href="../dev-manual/using-a-quilt-workflow.html" target="_self">Modifying Package 
+            Source Code with Quilt</a>" section in the Yocto Project Development Manual.   
+            Within the <code class="filename">linux-qemux86-standard-build</code> directory, 
+            standard Quilt directories <code class="filename">linux-3.0/patches</code>
+            and <code class="filename">linux-3.0/.pc</code> are created,
+            and standard Quilt commands can be used.
+        </p>
+<p>
+            There are other directories generated within WORKDIR. 
+            The most important directory is WORKDIR<code class="filename">/temp/</code>, which has log files for each 
+            task (<code class="filename">log.do_*.pid</code>) and contains the scripts BitBake runs for 
+            each task (<code class="filename">run.do_*.pid</code>). 
+            The WORKDIR<code class="filename">/image/</code> directory is where "make 
+            install" places its output that is then split into sub-packages 
+            within WORKDIR<code class="filename">/packages-split/</code>.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp.html
new file mode 100644
index 0000000..5ee04e7
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build-tmp.html
@@ -0,0 +1,26 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2.7. build/tmp/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-build.html" title="4.2. The Build Directory - build/">
+<link rel="prev" href="structure-build-sstate-cache.html" title="4.2.6. build/sstate-cache/">
+<link rel="next" href="structure-build-tmp-buildstats.html" title="4.2.8. build/tmp/buildstats/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2.7. build/tmp/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-build-tmp"></a>4.2.7. <code class="filename">build/tmp/</code>
+</h3></div></div></div>
+<p>
+            This directory receives all the OpenEmbedded build system's output.
+            BitBake creates this directory if it does not exist. 
+            As a last resort, to clean up a build and start it from scratch (other than the downloads), 
+            you can remove everything in the <code class="filename">tmp</code> directory or get rid of the 
+            directory completely.
+            If you do, you should also completely remove the <code class="filename">build/sstate-cache</code>
+            directory as well.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build.html
new file mode 100644
index 0000000..12bda0a
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-build.html
@@ -0,0 +1,15 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.2. The Build Directory - build/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-structure.html" title="Chapter 4. Source Directory Structure">
+<link rel="prev" href="structure-basic-top-level.html" title="4.1.10. LICENSE, README, and README.hardware">
+<link rel="next" href="structure-build-pseudodone.html" title="4.2.1. build/pseudodone">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.2. The Build Directory - build/"><div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="structure-build"></a>4.2. The Build Directory - <code class="filename">build/</code>
+</h2></div></div></div></div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-bitbake.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-bitbake.html
new file mode 100644
index 0000000..ab633ab
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-bitbake.html
@@ -0,0 +1,40 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.1.1. bitbake/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-core.html" title="4.1. Top level core components">
+<link rel="prev" href="structure-core.html" title="4.1. Top level core components">
+<link rel="next" href="structure-core-build.html" title="4.1.2. build/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.1. bitbake/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-core-bitbake"></a>4.1.1. <code class="filename">bitbake/</code>
+</h3></div></div></div>
+<p>
+            The <a class="ulink" href="source-directory" target="_self">source directory</a>
+            includes a copy of BitBake for ease of use.
+            The copy usually matches the current stable BitBake release from the BitBake project. 
+            BitBake, a metadata interpreter, reads the Yocto Project metadata and runs the tasks 
+            defined by that data. 
+            Failures are usually from the metadata and not from BitBake itself.
+            Consequently, most users do not need to worry about BitBake.
+        </p>
+<p>
+            When you run the <code class="filename">bitbake</code> command, the wrapper script in 
+            <code class="filename">scripts/</code> is executed to run the main BitBake executable, 
+            which resides in the <code class="filename">bitbake/bin/</code> directory.
+            Sourcing the <a class="link" href="structure-core-script.html" title="4.1.9. oe-init-build-env">oe-init-build-env</a> 
+            script places the <code class="filename">scripts</code> and <code class="filename">bitbake/bin</code>
+            directories (in that order) into the shell's <code class="filename">PATH</code> environment 
+            variable.
+        </p>
+<p>
+            For more information on BitBake, see the BitBake documentation 
+            inculded in the <code class="filename">bitbake/doc/manual</code> directory of the 
+            <a class="link" href="../dev-manual/source-directory.html" target="_self">Source Directory</a>.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-build.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-build.html
new file mode 100644
index 0000000..1615f83
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-build.html
@@ -0,0 +1,33 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.1.2. build/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-core.html" title="4.1. Top level core components">
+<link rel="prev" href="structure-core-bitbake.html" title="4.1.1. bitbake/">
+<link rel="next" href="handbook.html" title="4.1.3. documentation">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.2. build/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-core-build"></a>4.1.2. <code class="filename">build/</code>
+</h3></div></div></div>
+<p>
+            This directory contains user configuration files and the output 
+            generated by the OpenEmbedded build system in its standard configuration where 
+            the source tree is combined with the output.
+            The <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>
+            is created initially when you <code class="filename">source</code>
+            the OpenEmbedded build environment setup script <code class="filename">oe-init-build-env</code>.
+        </p>
+<p> 
+            It is also possible to place output and configuration 
+            files in a directory separate from the 
+            <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>
+            by providing a directory name when you <code class="filename">source</code>
+            the setup script.
+            For information on separating output from your local source directory files, see <a class="link" href="structure-core-script.html" title="4.1.9. oe-init-build-env">oe-init-build-env</a>.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-meta-demoapps.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-meta-demoapps.html
new file mode 100644
index 0000000..b50d279
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-meta-demoapps.html
@@ -0,0 +1,21 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.1.5. meta-demoapps/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-core.html" title="4.1. Top level core components">
+<link rel="prev" href="structure-core-meta.html" title="4.1.4. meta/">
+<link rel="next" href="structure-core-meta-rt.html" title="4.1.6. meta-rt/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.5. meta-demoapps/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-core-meta-demoapps"></a>4.1.5. <code class="filename">meta-demoapps/</code>
+</h3></div></div></div>
+<p>
+            This directory contains recipes for applications and demos that are not part of the 
+            OpenEmbedded core.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-meta-rt.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-meta-rt.html
new file mode 100644
index 0000000..db7ade0
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-meta-rt.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.1.6. meta-rt/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-core.html" title="4.1. Top level core components">
+<link rel="prev" href="structure-core-meta-demoapps.html" title="4.1.5. meta-demoapps/">
+<link rel="next" href="structure-meta-skeleton.html" title="4.1.7. meta-skeleton/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.6. meta-rt/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-core-meta-rt"></a>4.1.6. <code class="filename">meta-rt/</code>
+</h3></div></div></div>
+<p>
+            This directory contains recipes for real-time kernels. 
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-meta.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-meta.html
new file mode 100644
index 0000000..aa1ac16
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-meta.html
@@ -0,0 +1,22 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.1.4. meta/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-core.html" title="4.1. Top level core components">
+<link rel="prev" href="handbook.html" title="4.1.3. documentation">
+<link rel="next" href="structure-core-meta-demoapps.html" title="4.1.5. meta-demoapps/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.4. meta/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-core-meta"></a>4.1.4. <code class="filename">meta/</code>
+</h3></div></div></div>
+<p>
+            This directory contains the OpenEmbedded Core metadata. 
+            The directory holds machine definitions, the Yocto Project distribution, 
+            and the packages that make up a given system.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-script.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-script.html
new file mode 100644
index 0000000..0827af8
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-script.html
@@ -0,0 +1,41 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.1.9. oe-init-build-env</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-core.html" title="4.1. Top level core components">
+<link rel="prev" href="structure-core-scripts.html" title="4.1.8. scripts/">
+<link rel="next" href="structure-basic-top-level.html" title="4.1.10. LICENSE, README, and README.hardware">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.9. oe-init-build-env">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-core-script"></a>4.1.9. <code class="filename">oe-init-build-env</code>
+</h3></div></div></div>
+<p>
+            This script sets up the OpenEmbedded build environment. 
+            Running this script with the <code class="filename">source</code> command in
+            a shell makes changes to <code class="filename">PATH</code> and sets other core BitBake variables based on the
+            current working directory. 
+            You need to run this script before running BitBake commands.
+            The script uses other scripts within the <code class="filename">scripts</code> directory to do 
+            the bulk of the work.
+        </p>
+<p>
+            By default, running this script without a build directory argument creates the 
+            <code class="filename">build</code> directory. 
+            If you provide a build directory argument when you <code class="filename">source</code>
+            the script, you direct OpenEmbedded build system to create a 
+            <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a> of your choice.
+            For example, the following command creates a build directory named 
+            <code class="filename">mybuilds</code> that is outside of the 
+            <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>:
+            </p>
+<pre class="literallayout">
+     $ source oe-init-build-env ~/mybuilds
+            </pre>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-scripts.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-scripts.html
new file mode 100644
index 0000000..3278ff3
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core-scripts.html
@@ -0,0 +1,28 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.1.8. scripts/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-core.html" title="4.1. Top level core components">
+<link rel="prev" href="structure-meta-skeleton.html" title="4.1.7. meta-skeleton/">
+<link rel="next" href="structure-core-script.html" title="4.1.9. oe-init-build-env">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.8. scripts/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-core-scripts"></a>4.1.8. <code class="filename">scripts/</code>
+</h3></div></div></div>
+<p>
+            This directory contains various integration scripts that implement 
+            extra functionality in the Yocto Project environment (e.g. QEMU scripts).
+            The <a class="link" href="structure-core-script.html" title="4.1.9. oe-init-build-env">oe-init-build-env</a> script appends this
+            directory to the shell's <code class="filename">PATH</code> environment variable.
+        </p>
+<p>
+            The <code class="filename">scripts</code> directory has useful scripts that assist contributing
+            back to the Yocto Project, such as <code class="filename">create_pull_request</code> and 
+            <code class="filename">send_pull_request</code>.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core.html
new file mode 100644
index 0000000..f0f60db
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-core.html
@@ -0,0 +1,14 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.1. Top level core components</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-structure.html" title="Chapter 4. Source Directory Structure">
+<link rel="prev" href="ref-structure.html" title="Chapter 4. Source Directory Structure">
+<link rel="next" href="structure-core-bitbake.html" title="4.1.1. bitbake/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1. Top level core components"><div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="structure-core"></a>4.1. Top level core components</h2></div></div></div></div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-classes.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-classes.html
new file mode 100644
index 0000000..e183751
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-classes.html
@@ -0,0 +1,30 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.1. meta/classes/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="next" href="structure-meta-conf.html" title="4.3.2. meta/conf/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.1. meta/classes/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-classes"></a>4.3.1. <code class="filename">meta/classes/</code>
+</h3></div></div></div>
+<p>
+            This directory contains the <code class="filename">*.bbclass</code> files. 
+            Class files are used to abstract common code so it can be reused by multiple 
+            packages. 
+            Every package inherits the <code class="filename">base.bbclass</code> file.
+            Examples of other important classes are <code class="filename">autotools.bbclass</code>, which 
+            in theory allows any Autotool-enabled package to work with the Yocto Project with minimal effort.
+            Another example is <code class="filename">kernel.bbclass</code> that contains common code and functions 
+            for working with the Linux kernel. 
+            Functions like image generation or packaging also have their specific class files 
+            such as <code class="filename">image.bbclass</code>, <code class="filename">rootfs_*.bbclass</code> and 
+            <code class="filename">package*.bbclass</code>.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-conf-distro.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-conf-distro.html
new file mode 100644
index 0000000..3cef7cb
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-conf-distro.html
@@ -0,0 +1,25 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.4. meta/conf/distro/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-conf-machine.html" title="4.3.3. meta/conf/machine/">
+<link rel="next" href="structure-meta-recipes-bsp.html" title="4.3.5. meta/recipes-bsp/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.4. meta/conf/distro/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-conf-distro"></a>4.3.4. <code class="filename">meta/conf/distro/</code>
+</h3></div></div></div>
+<p>
+            Any distribution-specific configuration is controlled from this directory. 
+            For the Yocto Project, the <code class="filename">defaultsetup.conf</code> is the main file here.  
+            This directory includes the versions and the 
+            <code class="filename">SRCDATE</code> definitions for applications that are configured here. 
+            An example of an alternative configuration might be <code class="filename">poky-bleeding.conf</code>.
+            Although this file mainly inherits its configuration from Poky.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-conf-machine.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-conf-machine.html
new file mode 100644
index 0000000..dc8b64f
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-conf-machine.html
@@ -0,0 +1,25 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.3. meta/conf/machine/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-conf.html" title="4.3.2. meta/conf/">
+<link rel="next" href="structure-meta-conf-distro.html" title="4.3.4. meta/conf/distro/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.3. meta/conf/machine/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-conf-machine"></a>4.3.3. <code class="filename">meta/conf/machine/</code>
+</h3></div></div></div>
+<p>
+            This directory contains all the machine configuration files. 
+            If you set <code class="filename">MACHINE="qemux86"</code>, 
+            the OpenEmbedded build system looks for a <code class="filename">qemux86.conf</code> file in this 
+            directory. 
+            The <code class="filename">include</code> directory contains various data common to multiple machines. 
+            If you want to add support for a new machine to the Yocto Project, look in this directory.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-conf.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-conf.html
new file mode 100644
index 0000000..d1755fd
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-conf.html
@@ -0,0 +1,27 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.2. meta/conf/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-classes.html" title="4.3.1. meta/classes/">
+<link rel="next" href="structure-meta-conf-machine.html" title="4.3.3. meta/conf/machine/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.2. meta/conf/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-conf"></a>4.3.2. <code class="filename">meta/conf/</code>
+</h3></div></div></div>
+<p>
+            This directory contains the core set of configuration files that start from 
+            <code class="filename">bitbake.conf</code> and from which all other configuration 
+            files are included.
+            See the include statements at the end of the file and you will note that even 
+            <code class="filename">local.conf</code> is loaded from there. 
+            While <code class="filename">bitbake.conf</code> sets up the defaults, you can often override 
+            these by using the (<code class="filename">local.conf</code>) file, machine file or 
+            the distribution configuration file.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-bsp.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-bsp.html
new file mode 100644
index 0000000..e59dc22
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-bsp.html
@@ -0,0 +1,21 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.5. meta/recipes-bsp/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-conf-distro.html" title="4.3.4. meta/conf/distro/">
+<link rel="next" href="structure-meta-recipes-connectivity.html" title="4.3.6. meta/recipes-connectivity/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.5. meta/recipes-bsp/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-recipes-bsp"></a>4.3.5. <code class="filename">meta/recipes-bsp/</code>
+</h3></div></div></div>
+<p>
+            This directory contains anything linking to specific hardware or hardware 
+            configuration information such as "u-boot" and "grub".
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-connectivity.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-connectivity.html
new file mode 100644
index 0000000..68a981c
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-connectivity.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.6. meta/recipes-connectivity/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-recipes-bsp.html" title="4.3.5. meta/recipes-bsp/">
+<link rel="next" href="structure-meta-recipes-core.html" title="4.3.7. meta/recipes-core/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.6. meta/recipes-connectivity/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-recipes-connectivity"></a>4.3.6. <code class="filename">meta/recipes-connectivity/</code>
+</h3></div></div></div>
+<p>
+            This directory contains libraries and applications related to communication with other devices.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-core.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-core.html
new file mode 100644
index 0000000..54b7b65
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-core.html
@@ -0,0 +1,21 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.7. meta/recipes-core/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-recipes-connectivity.html" title="4.3.6. meta/recipes-connectivity/">
+<link rel="next" href="structure-meta-recipes-devtools.html" title="4.3.8. meta/recipes-devtools/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.7. meta/recipes-core/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-recipes-core"></a>4.3.7. <code class="filename">meta/recipes-core/</code>
+</h3></div></div></div>
+<p>
+            This directory contains what is needed to build a basic working Linux image 
+            including commonly used dependencies.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-devtools.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-devtools.html
new file mode 100644
index 0000000..30e72b8
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-devtools.html
@@ -0,0 +1,21 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.8. meta/recipes-devtools/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-recipes-core.html" title="4.3.7. meta/recipes-core/">
+<link rel="next" href="structure-meta-recipes-extended.html" title="4.3.9. meta/recipes-extended/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.8. meta/recipes-devtools/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-recipes-devtools"></a>4.3.8. <code class="filename">meta/recipes-devtools/</code>
+</h3></div></div></div>
+<p>
+            This directory contains tools that are primarily used by the build system.
+            The tools, however, can also be used on targets.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-extended.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-extended.html
new file mode 100644
index 0000000..729b77a
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-extended.html
@@ -0,0 +1,23 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.9. meta/recipes-extended/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-recipes-devtools.html" title="4.3.8. meta/recipes-devtools/">
+<link rel="next" href="structure-meta-recipes-gnome.html" title="4.3.10. meta/recipes-gnome/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.9. meta/recipes-extended/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-recipes-extended"></a>4.3.9. <code class="filename">meta/recipes-extended/</code>
+</h3></div></div></div>
+<p>
+            This directory contains non-essential applications that add features compared to the 
+            alternatives in core. 
+            You might need this directory for full tool functionality or for Linux Standard Base (LSB)
+            compliance.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-gnome.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-gnome.html
new file mode 100644
index 0000000..00327ee
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-gnome.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.10. meta/recipes-gnome/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-recipes-extended.html" title="4.3.9. meta/recipes-extended/">
+<link rel="next" href="structure-meta-recipes-graphics.html" title="4.3.11. meta/recipes-graphics/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.10. meta/recipes-gnome/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-recipes-gnome"></a>4.3.10. <code class="filename">meta/recipes-gnome/</code>
+</h3></div></div></div>
+<p>
+            This directory contains all things related to the GTK+ application framework.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-graphics.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-graphics.html
new file mode 100644
index 0000000..1905d40
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-graphics.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.11. meta/recipes-graphics/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-recipes-gnome.html" title="4.3.10. meta/recipes-gnome/">
+<link rel="next" href="structure-meta-recipes-kernel.html" title="4.3.12. meta/recipes-kernel/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.11. meta/recipes-graphics/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-recipes-graphics"></a>4.3.11. <code class="filename">meta/recipes-graphics/</code>
+</h3></div></div></div>
+<p>
+            This directory contains X and other graphically related system libraries
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-kernel.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-kernel.html
new file mode 100644
index 0000000..af55c0f
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-kernel.html
@@ -0,0 +1,21 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.12. meta/recipes-kernel/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-recipes-graphics.html" title="4.3.11. meta/recipes-graphics/">
+<link rel="next" href="structure-meta-recipes-multimedia.html" title="4.3.13. meta/recipes-multimedia/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.12. meta/recipes-kernel/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-recipes-kernel"></a>4.3.12. <code class="filename">meta/recipes-kernel/</code>
+</h3></div></div></div>
+<p>
+            This directory contains the kernel and generic applications and libraries that 
+            have strong kernel dependencies.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-multimedia.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-multimedia.html
new file mode 100644
index 0000000..a814169
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-multimedia.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.13. meta/recipes-multimedia/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-recipes-kernel.html" title="4.3.12. meta/recipes-kernel/">
+<link rel="next" href="structure-meta-recipes-qt.html" title="4.3.14. meta/recipes-qt/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.13. meta/recipes-multimedia/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-recipes-multimedia"></a>4.3.13. <code class="filename">meta/recipes-multimedia/</code>
+</h3></div></div></div>
+<p>
+            This directory contains codecs and support utilities for audio, images and video.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-qt.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-qt.html
new file mode 100644
index 0000000..eed4f3b
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-qt.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.14. meta/recipes-qt/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-recipes-multimedia.html" title="4.3.13. meta/recipes-multimedia/">
+<link rel="next" href="structure-meta-recipes-rt.html" title="4.3.15. meta/recipes-rt/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.14. meta/recipes-qt/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-recipes-qt"></a>4.3.14. <code class="filename">meta/recipes-qt/</code>
+</h3></div></div></div>
+<p>
+            This directory contains all things related to the Qt application framework.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-rt.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-rt.html
new file mode 100644
index 0000000..b8dce09
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-rt.html
@@ -0,0 +1,21 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.15. meta/recipes-rt/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-recipes-qt.html" title="4.3.14. meta/recipes-qt/">
+<link rel="next" href="structure-meta-recipes-sato.html" title="4.3.16. meta/recipes-sato/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.15. meta/recipes-rt/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-recipes-rt"></a>4.3.15. <code class="filename">meta/recipes-rt/</code>
+</h3></div></div></div>
+<p>
+            This directory contains package and image recipes for using and testing
+            the <code class="filename">PREEMPT_RT</code> kernel. 
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-sato.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-sato.html
new file mode 100644
index 0000000..46b9034
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-sato.html
@@ -0,0 +1,21 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.16. meta/recipes-sato/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-recipes-rt.html" title="4.3.15. meta/recipes-rt/">
+<link rel="next" href="structure-meta-recipes-support.html" title="4.3.17. meta/recipes-support/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.16. meta/recipes-sato/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-recipes-sato"></a>4.3.16. <code class="filename">meta/recipes-sato/</code>
+</h3></div></div></div>
+<p>
+            This directory contains the Sato demo/reference UI/UX and its associated applications
+            and configuration data.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-support.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-support.html
new file mode 100644
index 0000000..0fdc7f7
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-support.html
@@ -0,0 +1,21 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.17. meta/recipes-support/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-recipes-sato.html" title="4.3.16. meta/recipes-sato/">
+<link rel="next" href="structure-meta-site.html" title="4.3.18. meta/site/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.17. meta/recipes-support/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-recipes-support"></a>4.3.17. <code class="filename">meta/recipes-support/</code>
+</h3></div></div></div>
+<p>
+            This directory contains recipes that used by other recipes, but that are not directly 
+            included in images (i.e. dependencies of other recipes).
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-txt.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-txt.html
new file mode 100644
index 0000000..64edcac
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-recipes-txt.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.19. meta/recipes.txt</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-site.html" title="4.3.18. meta/site/">
+<link rel="next" href="ref-bitbake.html" title="Chapter 5. BitBake">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.19. meta/recipes.txt">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-recipes-txt"></a>4.3.19. <code class="filename">meta/recipes.txt</code>
+</h3></div></div></div>
+<p>
+            This file is a description of the contents of <code class="filename">recipes-*</code>.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-site.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-site.html
new file mode 100644
index 0000000..d9940fc
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-site.html
@@ -0,0 +1,23 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3.18. meta/site/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-meta.html" title="4.3. The Metadata - meta/">
+<link rel="prev" href="structure-meta-recipes-support.html" title="4.3.17. meta/recipes-support/">
+<link rel="next" href="structure-meta-recipes-txt.html" title="4.3.19. meta/recipes.txt">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3.18. meta/site/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-site"></a>4.3.18. <code class="filename">meta/site/</code>
+</h3></div></div></div>
+<p>
+            This directory contains a list of cached results for various architectures.
+            Because certain "autoconf" test results cannot be determined when cross-compiling due to 
+            the tests not able to run on a live system, the information in this directory is 
+            passed to "autoconf" for the various architectures. 
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-skeleton.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-skeleton.html
new file mode 100644
index 0000000..2ae8530
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta-skeleton.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.1.7. meta-skeleton/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="structure-core.html" title="4.1. Top level core components">
+<link rel="prev" href="structure-core-meta-rt.html" title="4.1.6. meta-rt/">
+<link rel="next" href="structure-core-scripts.html" title="4.1.8. scripts/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.1.7. meta-skeleton/">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="structure-meta-skeleton"></a>4.1.7. <code class="filename">meta-skeleton/</code>
+</h3></div></div></div>
+<p>
+            This directory contains template recipes for BSP and kernel development. 
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta.html
new file mode 100644
index 0000000..65a1e0f
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/structure-meta.html
@@ -0,0 +1,21 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>4.3. The Metadata - meta/</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="ref-structure.html" title="Chapter 4. Source Directory Structure">
+<link rel="prev" href="structure-build-tmp-work.html" title="4.2.20. build/tmp/work/">
+<link rel="next" href="structure-meta-classes.html" title="4.3.1. meta/classes/">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="4.3. The Metadata - meta/">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="structure-meta"></a>4.3. The Metadata - <code class="filename">meta/</code>
+</h2></div></div></div>
+<p>
+        As mentioned previously, metadata is the core of the Yocto Project. 
+        Metadata has several important subdivisions:
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/support.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/support.html
new file mode 100644
index 0000000..4e0a1ef
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/support.html
@@ -0,0 +1,34 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.3.1. Support</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="x32.html" title="3.3. x32">
+<link rel="prev" href="x32.html" title="3.3. x32">
+<link rel="next" href="future-development-and-limitations.html" title="3.3.2. Future Development and Limitations">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.3.1. Support">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="support"></a>3.3.1. Support</h3></div></div></div>
+<p>
+            While the x32 psABI specifications are not fully finalized, this Yocto Project
+            release supports current development specifications of x32 psABI.
+            As of this release of the Yocto Project, x32 psABI support exists as follows:
+            </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>You can create packages and images in x32 psABI format on x86_64 architecture targets. 
+                    </p></li>
+<li class="listitem"><p>You can use the x32 psABI support through the <code class="filename">meta-x32</code>
+                    layer on top of the OE-core/Yocto layer.</p></li>
+<li class="listitem"><p>The toolchain from the <code class="filename">experimental/meta-x32</code> layer 
+                    is used for building x32 psABI program binaries.</p></li>
+<li class="listitem"><p>You can successfully build many recipes with the x32 toolchain.</p></li>
+<li class="listitem"><p>You can create and boot <code class="filename">core-image-minimal</code> and 
+                    <code class="filename">core-image-sato</code> images.</p></li>
+</ul></div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/technical-details.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/technical-details.html
new file mode 100644
index 0000000..2317911
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/technical-details.html
@@ -0,0 +1,50 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 3. Technical Details</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="prev" href="usingpoky-debugging-others.html" title="2.3.8. Other Tips">
+<link rel="next" href="usingpoky-components.html" title="3.1. Yocto Project Components">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 3. Technical Details">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="technical-details"></a>Chapter 3. Technical Details</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="usingpoky-components.html">3.1. Yocto Project Components</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="usingpoky-components-bitbake.html">3.1.1. BitBake</a></span></dt>
+<dt><span class="section"><a href="usingpoky-components-metadata.html">3.1.2. Metadata (Recipes)</a></span></dt>
+<dt><span class="section"><a href="usingpoky-components-classes.html">3.1.3. Classes</a></span></dt>
+<dt><span class="section"><a href="usingpoky-components-configuration.html">3.1.4. Configuration</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="shared-state-cache.html">3.2. Shared State Cache</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="overall-architecture.html">3.2.1. Overall Architecture</a></span></dt>
+<dt><span class="section"><a href="checksums.html">3.2.2. Checksums (Signatures)</a></span></dt>
+<dt><span class="section"><a href="shared-state.html">3.2.3. Shared State</a></span></dt>
+<dt><span class="section"><a href="tips-and-tricks.html">3.2.4. Tips and Tricks</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="x32.html">3.3. x32</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="support.html">3.3.1. Support</a></span></dt>
+<dt><span class="section"><a href="future-development-and-limitations.html">3.3.2. Future Development and Limitations</a></span></dt>
+<dt><span class="section"><a href="using-x32-right-now.html">3.3.3. Using x32 Right Now</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="licenses.html">3.4. Licenses</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="usingpoky-configuring-LIC_FILES_CHKSUM.html">3.4.1. Tracking License Changes</a></span></dt>
+<dt><span class="section"><a href="enabling-commercially-licensed-recipes.html">3.4.2. Enabling Commercially Licensed Recipes</a></span></dt>
+</dl></dd>
+</dl>
+</div>
+<p>
+        This chapter provides technical details for various parts of the Yocto Project. 
+        Currently, topics include Yocto Project components and shared state (sstate) cache.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/tips-and-tricks.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/tips-and-tricks.html
new file mode 100644
index 0000000..78773b9
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/tips-and-tricks.html
@@ -0,0 +1,22 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.2.4. Tips and Tricks</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="shared-state-cache.html" title="3.2. Shared State Cache">
+<link rel="prev" href="shared-state.html" title="3.2.3. Shared State">
+<link rel="next" href="debugging.html" title="3.2.4.1. Debugging">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2.4. Tips and Tricks">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="tips-and-tricks"></a>3.2.4. Tips and Tricks</h3></div></div></div>
+<p>
+            The code in the build system that supports incremental builds is not 
+            simple code.
+            This section presents some tips and tricks that help you work around 
+            issues related to shared state code.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/using-x32-right-now.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/using-x32-right-now.html
new file mode 100644
index 0000000..19cfb73
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/using-x32-right-now.html
@@ -0,0 +1,69 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.3.3. Using x32 Right Now</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="x32.html" title="3.3. x32">
+<link rel="prev" href="future-development-and-limitations.html" title="3.3.2. Future Development and Limitations">
+<link rel="next" href="licenses.html" title="3.4. Licenses">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.3.3. Using x32 Right Now">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="using-x32-right-now"></a>3.3.3. Using x32 Right Now</h3></div></div></div>
+<p>
+            Despite the fact the x32 psABI support is in development state for this release of the
+            Yocto Project, you can follow these steps to use the x32 spABI:
+            </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>Add the <code class="filename">experimental/meta-x32</code> layer to your local
+                    <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>.  
+                    You can find the <code class="filename">experimental/meta-x32</code> source repository at
+                    <a class="ulink" href="http://git.yoctoproject.org" target="_self">http://git.yoctoproject.org</a>.</p></li>
+<li class="listitem">
+<p>Edit your <code class="filename">conf/bblayers.conf</code> file so that it includes
+                    the <code class="filename">meta-x32</code>.
+                    Here is an example:
+                    </p>
+<pre class="literallayout">
+     BBLAYERS ?= " \
+        /home/nitin/prj/poky.git/meta \
+        /home/nitin/prj/poky.git/meta-yocto \
+        /home/nitin/prj/meta-x32.git \
+     "
+                    </pre>
+</li>
+<li class="listitem">
+<p>Enable the x32 psABI tuning file for <code class="filename">x86_64</code>
+                    machines by editing the <code class="filename">conf/local.conf</code> like this:
+                    </p>
+<pre class="literallayout">
+      MACHINE = "qemux86-64"
+      DEFAULTTUNE = "x86-64-x32"
+      baselib = "${@d.getVar('BASE_LIB_tune-' + (d.getVar('DEFAULTTUNE', True) \
+         or 'INVALID'), True) or 'lib'}"
+      #MACHINE = "atom-pc"
+      #DEFAULTTUNE = "core2-64-x32"
+                    </pre>
+</li>
+<li class="listitem">
+<p>As usual, use BitBake to build an image that supports the x32 psABI.  
+                    Here is an example:
+                    </p>
+<pre class="literallayout">
+     $ bitake core-image-sato
+                    </pre>
+</li>
+<li class="listitem">
+<p>As usual, run your image using QEMU:
+                    </p>
+<pre class="literallayout">
+     $ runqemu qemux86-64 core-image-sato
+                    </pre>
+</li>
+</ul></div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax.html
new file mode 100644
index 0000000..e702578
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax.html
@@ -0,0 +1,58 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.1.2. Explanation of Syntax</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-configuring-LIC_FILES_CHKSUM.html" title="3.4.1. Tracking License Changes">
+<link rel="prev" href="usingpoky-specifying-LIC_FILES_CHKSUM.html" title="3.4.1.1. Specifying the LIC_FILES_CHKSUM Variable">
+<link rel="next" href="enabling-commercially-licensed-recipes.html" title="3.4.2. Enabling Commercially Licensed Recipes">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.1.2. Explanation of Syntax">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax"></a>3.4.1.2. Explanation of Syntax</h4></div></div></div>
+<p>
+                As mentioned in the previous section, the 
+                <code class="filename">LIC_FILES_CHKSUM</code> variable lists all the 
+                important files that contain the license text for the source code. 
+                It is possible to specify a checksum for an entire file, or a specific section of a
+                file (specified by beginning and ending line numbers with the "beginline" and "endline"
+                parameters, respectively). 
+                The latter is useful for source files with a license notice header,
+                README documents, and so forth.
+                If you do not use the "beginline" parameter, then it is assumed that the text begins on the 
+                first line of the file. 
+                Similarly, if you do not use the "endline" parameter, it is assumed that the license text 
+                ends with the last line of the file. 
+            </p>
+<p>
+                The "md5" parameter stores the md5 checksum of the license text. 
+                If the license text changes in any way as compared to this parameter
+                then a mismatch occurs.
+                This mismatch triggers a build failure and notifies the developer.
+                Notification allows the developer to review and address the license text changes.
+                Also note that if a mismatch occurs during the build, the correct md5 
+                checksum is placed in the build log and can be easily copied to the recipe.
+            </p>
+<p>
+                There is no limit to how many files you can specify using the 
+                <code class="filename">LIC_FILES_CHKSUM</code> variable.
+                Generally, however, every project requires a few specifications for license tracking. 
+                Many projects have a "COPYING" file that stores the license information for all the source 
+                code files.
+                This practice allows you to just track the "COPYING" file as long as it is kept up to date. 
+            </p>
+<div class="tip" title="Tip" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Tip</h3>
+                If you specify an empty or invalid "md5" parameter, BitBake returns an md5 mis-match 
+                error and displays the correct "md5" parameter value during the build. 
+                The correct parameter is also captured in the build log. 
+            </div>
+<div class="tip" title="Tip" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Tip</h3>
+                If the whole file contains only license text, you do not need to use the "beginline" and 
+                "endline" parameters. 
+            </div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-build.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-build.html
new file mode 100644
index 0000000..dc08d17
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-build.html
@@ -0,0 +1,24 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.1. Running a Build</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky.html" title="Chapter 2. Using the Yocto Project">
+<link rel="prev" href="usingpoky.html" title="Chapter 2. Using the Yocto Project">
+<link rel="next" href="build-overview.html" title="2.1.1. Build Overview">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.1. Running a Build">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="usingpoky-build"></a>2.1. Running a Build</h2></div></div></div>
+<p>
+        You can find general information on how to build an image using the OpenEmbedded build 
+        system in the 
+        "<a class="link" href="../yocto-project-qs/building-image.html" target="_self">Building an Image</a>"
+        section of the Yocto Project Quick Start.
+        This section provides a summary of the build process and provides information
+        for less obvious aspects of the build process.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-bitbake.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-bitbake.html
new file mode 100644
index 0000000..879b926
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-bitbake.html
@@ -0,0 +1,66 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.1.1. BitBake</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-components.html" title="3.1. Yocto Project Components">
+<link rel="prev" href="usingpoky-components.html" title="3.1. Yocto Project Components">
+<link rel="next" href="usingpoky-components-metadata.html" title="3.1.2. Metadata (Recipes)">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.1.1. BitBake">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="usingpoky-components-bitbake"></a>3.1.1. BitBake</h3></div></div></div>
+<p>
+            BitBake is the tool at the heart of the OpenEmbedded build system and is responsible
+            for parsing the metadata, generating a list of tasks from it,
+            and then executing those tasks. 
+            To see a list of the options BitBake supports, use the following help command:
+            </p>
+<pre class="literallayout">
+     $ bitbake --help
+            </pre>
+<p>
+        </p>
+<p>
+            The most common usage for BitBake is <code class="filename">bitbake &lt;packagename&gt;</code>, where
+            <code class="filename">packagename</code> is the name of the package you want to build 
+            (referred to as the "target" in this manual). 
+            The target often equates to the first part of a <code class="filename">.bb</code> filename.
+            So, to run the <code class="filename">matchbox-desktop_1.2.3.bb</code> file, you
+            might type the following:
+            </p>
+<pre class="literallayout">
+     $ bitbake matchbox-desktop
+            </pre>
+<p>
+            Several different versions of <code class="filename">matchbox-desktop</code> might exist.
+            BitBake chooses the one selected by the distribution configuration.
+            You can get more details about how BitBake chooses between different 
+            target versions and providers in the 
+            "<a class="link" href="ref-bitbake-providers.html" title="5.2. Preferences and Providers">Preferences and Providers</a>" section.
+        </p>
+<p>
+            BitBake also tries to execute any dependent tasks first.
+            So for example, before building <code class="filename">matchbox-desktop</code>, BitBake
+            would build a cross compiler and <code class="filename">eglibc</code> if they had not already 
+            been built.
+            </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>This release of the Yocto Project does not support the <code class="filename">glibc</code>
+                GNU version of the Unix standard C library.  By default, the OpenEmbedded build system
+                builds with <code class="filename">eglibc</code>.</div>
+<p>
+        </p>
+<p>
+            A useful BitBake option to consider is the <code class="filename">-k</code> or 
+            <code class="filename">--continue</code> option.  
+            This option instructs BitBake to try and continue processing the job as much 
+            as possible even after encountering an error.  
+            When an error occurs, the target that
+            failed and those that depend on it cannot be remade.  
+            However, when you use this option other dependencies can still be processed.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-classes.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-classes.html
new file mode 100644
index 0000000..c1ee3d8
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-classes.html
@@ -0,0 +1,24 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.1.3. Classes</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-components.html" title="3.1. Yocto Project Components">
+<link rel="prev" href="usingpoky-components-metadata.html" title="3.1.2. Metadata (Recipes)">
+<link rel="next" href="usingpoky-components-configuration.html" title="3.1.4. Configuration">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.1.3. Classes">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="usingpoky-components-classes"></a>3.1.3. Classes</h3></div></div></div>
+<p>
+            Class files (<code class="filename">.bbclass</code>) contain information that is useful to share
+            between metadata files. 
+            An example is the Autotools class, which contains
+            common settings for any application that Autotools uses.
+            The "<a class="link" href="ref-classes.html" title="Chapter 6. Classes">Reference: Classes</a>" chapter provides details
+            about common classes and how to use them.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-configuration.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-configuration.html
new file mode 100644
index 0000000..ebc6c62
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-configuration.html
@@ -0,0 +1,24 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.1.4. Configuration</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-components.html" title="3.1. Yocto Project Components">
+<link rel="prev" href="usingpoky-components-classes.html" title="3.1.3. Classes">
+<link rel="next" href="shared-state-cache.html" title="3.2. Shared State Cache">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.1.4. Configuration">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="usingpoky-components-configuration"></a>3.1.4. Configuration</h3></div></div></div>
+<p>
+            The configuration files (<code class="filename">.conf</code>) define various configuration variables
+            that govern the OpenEmbedded build process. 
+            These files fall into several areas that define machine configuration options, 
+            distribution configuration options, compiler tuning options, general common configuration
+            options and user configuration options (<code class="filename">local.conf</code>, which is found
+            in the <a class="ulink" href="build-directory" target="_self">build directory</a>).
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-metadata.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-metadata.html
new file mode 100644
index 0000000..4f73445
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components-metadata.html
@@ -0,0 +1,29 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.1.2. Metadata (Recipes)</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-components.html" title="3.1. Yocto Project Components">
+<link rel="prev" href="usingpoky-components-bitbake.html" title="3.1.1. BitBake">
+<link rel="next" href="usingpoky-components-classes.html" title="3.1.3. Classes">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.1.2. Metadata (Recipes)">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="usingpoky-components-metadata"></a>3.1.2. Metadata (Recipes)</h3></div></div></div>
+<p>
+            The <code class="filename">.bb</code> files are usually referred to as "recipes." 
+            In general, a recipe contains information about a single piece of software.
+            The information includes the location from which to download the source patches 
+            (if any are needed), which special configuration options to apply, 
+            how to compile the source files, and how to package the compiled output. 
+        </p>
+<p>
+            The term "package" can also be used to describe recipes.
+            However, since the same word is used for the packaged output from the OpenEmbedded 
+            build system (i.e. <code class="filename">.ipk</code> or <code class="filename">.deb</code> files), 
+            this document avoids using the term "package" when referring to recipes.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components.html
new file mode 100644
index 0000000..9384e47
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-components.html
@@ -0,0 +1,52 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.1. Yocto Project Components</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="technical-details.html" title="Chapter 3. Technical Details">
+<link rel="prev" href="technical-details.html" title="Chapter 3. Technical Details">
+<link rel="next" href="usingpoky-components-bitbake.html" title="3.1.1. BitBake">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.1. Yocto Project Components">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="usingpoky-components"></a>3.1. Yocto Project Components</h2></div></div></div>
+<p>
+        The BitBake task executor together with various types of configuration files form the 
+        OpenEmbedded Core.
+        This section overviews the BitBake task executor and the
+        configuration files by describing what they are used for and how they interact.
+    </p>
+<p>  
+        BitBake handles the parsing and execution of the data files. 
+        The data itself is of various types:
+    </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em>Recipes:</em></span>  Provides details about particular 
+            pieces of software</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Class Data:</em></span>  An abstraction of common build 
+            information (e.g. how to build a Linux kernel).</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Configuration Data:</em></span>  Defines machine-specific settings, 
+            policy decisions, etc.
+            Configuration data acts as the glue to bind everything together.</p></li>
+</ul></div>
+<p>
+        For more information on data, see the
+        "<a class="link" href="../dev-manual/yocto-project-terms.html" target="_self">Yocto Project Terms</a>"
+        section in the Yocto Project Development Manual.
+    </p>
+<p> 
+        BitBake knows how to combine multiple data sources together and refers to each data source
+        as a layer.
+        For information on layers, see the 
+        "<a class="link" href="../dev-manual/understanding-and-creating-layers.html" target="_self">Understanding and 
+        Creating Layers</a>" section of the Yocto Project Development Manual.
+    </p>
+<p>
+        Following are some brief details on these core components.
+        For more detailed information on these components see the 
+        "<a class="link" href="ref-structure.html" title="Chapter 4. Source Directory Structure">Directory Structure</a>" chapter.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-configuring-LIC_FILES_CHKSUM.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-configuring-LIC_FILES_CHKSUM.html
new file mode 100644
index 0000000..ffcfd24
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-configuring-LIC_FILES_CHKSUM.html
@@ -0,0 +1,23 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.1. Tracking License Changes</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="licenses.html" title="3.4. Licenses">
+<link rel="prev" href="licenses.html" title="3.4. Licenses">
+<link rel="next" href="usingpoky-specifying-LIC_FILES_CHKSUM.html" title="3.4.1.1. Specifying the LIC_FILES_CHKSUM Variable">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.1. Tracking License Changes">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="usingpoky-configuring-LIC_FILES_CHKSUM"></a>3.4.1. Tracking License Changes</h3></div></div></div>
+<p>
+            The license of an upstream project might change in the future. 
+            In order to prevent these changes going unnoticed, the  
+            <code class="filename"><a class="link" href="ref-variables-glos.html#var-LIC_FILES_CHKSUM" title="LIC_FILES_CHKSUM">LIC_FILES_CHKSUM</a></code>
+            variable tracks changes to the license text. The checksums are validated at the end of the
+            configure step, and if the checksums do not match, the build will fail.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-bitbake.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-bitbake.html
new file mode 100644
index 0000000..06a3b7f
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-bitbake.html
@@ -0,0 +1,30 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.3.4. General BitBake Problems</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
+<link rel="prev" href="usingpoky-debugging-dependencies.html" title="2.3.3. Dependency Graphs">
+<link rel="next" href="usingpoky-debugging-buildfile.html" title="2.3.5. Building with No Dependencies">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.4. General BitBake Problems">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="usingpoky-debugging-bitbake"></a>2.3.4. General BitBake Problems</h3></div></div></div>
+<p>
+            You can see debug output from BitBake by using the <code class="filename">-D</code> option.
+            The debug output gives more information about what BitBake
+            is doing and the reason behind it. 
+            Each <code class="filename">-D</code> option you use increases the logging level.
+            The most common usage is <code class="filename">-DDD</code>.
+        </p>
+<p>
+            The output from <code class="filename">bitbake -DDD -v targetname</code> can reveal why
+            BitBake chose a certain version of a package or why BitBake
+            picked a certain provider.
+            This command could also help you in a situation where you think BitBake did something 
+            unexpected.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-buildfile.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-buildfile.html
new file mode 100644
index 0000000..9450f1a
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-buildfile.html
@@ -0,0 +1,24 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.3.5. Building with No Dependencies</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
+<link rel="prev" href="usingpoky-debugging-bitbake.html" title="2.3.4. General BitBake Problems">
+<link rel="next" href="usingpoky-debugging-variables.html" title="2.3.6. Variables">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.5. Building with No Dependencies">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="usingpoky-debugging-buildfile"></a>2.3.5. Building with No Dependencies</h3></div></div></div>
+<p>
+            If you really want to build a specific <code class="filename">.bb</code> file, you can use
+            the command form <code class="filename">bitbake -b &lt;somepath/somefile.bb&gt;</code>. 
+            This command form does not check for dependencies so you should use it
+            only when you know its dependencies already exist. 
+            You can also specify fragments of the filename.
+            In this case, BitBake checks for a unique match.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-dependencies.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-dependencies.html
new file mode 100644
index 0000000..c48b00e
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-dependencies.html
@@ -0,0 +1,26 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.3.3. Dependency Graphs</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
+<link rel="prev" href="usingpoky-debugging-taskrunning.html" title="2.3.2. Running Specific Tasks">
+<link rel="next" href="usingpoky-debugging-bitbake.html" title="2.3.4. General BitBake Problems">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.3. Dependency Graphs">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="usingpoky-debugging-dependencies"></a>2.3.3. Dependency Graphs</h3></div></div></div>
+<p>
+            Sometimes it can be hard to see why BitBake wants to build some other packages before a given 
+            package you have specified.
+            The <code class="filename">bitbake -g targetname</code> command creates the 
+            <code class="filename">depends.dot</code>, <code class="filename">package-depends.dot</code>,
+            and <code class="filename">task-depends.dot</code> files in the current directory. 
+            These files show the package and task dependencies and are useful for debugging problems.
+            You can use the <code class="filename">bitbake -g -u depexp targetname</code> command to 
+            display the results in a more human-readable form.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-others.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-others.html
new file mode 100644
index 0000000..d4eb1a8
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-others.html
@@ -0,0 +1,34 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.3.8. Other Tips</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
+<link rel="prev" href="logging-with-bash.html" title="2.3.7.2. Logging With Bash">
+<link rel="next" href="technical-details.html" title="Chapter 3. Technical Details">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.8. Other Tips">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="usingpoky-debugging-others"></a>2.3.8. Other Tips</h3></div></div></div>
+<p>
+            Here are some other tips that you might find useful:
+            </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>When adding new packages, it is worth watching for 
+                    undesirable items making their way into compiler command lines.
+                    For example, you do not want references to local system files like 
+                    <code class="filename">/usr/lib/</code> or <code class="filename">/usr/include/</code>.
+                    </p></li>
+<li class="listitem"><p>If you want to remove the psplash boot splashscreen, 
+                    add <code class="filename">psplash=false</code> to  the kernel command line.
+                    Doing so prevents psplash from loading and thus allows you to see the console.
+                    It is also possible to switch out of the splashscreen by 
+                    switching the virtual console (e.g. Fn+Left or Fn+Right on a Zaurus).
+                    </p></li>
+</ul></div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-taskfailures.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-taskfailures.html
new file mode 100644
index 0000000..709af32
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-taskfailures.html
@@ -0,0 +1,27 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.3.1. Task Failures</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
+<link rel="prev" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
+<link rel="next" href="usingpoky-debugging-taskrunning.html" title="2.3.2. Running Specific Tasks">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.1. Task Failures">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="usingpoky-debugging-taskfailures"></a>2.3.1. Task Failures</h3></div></div></div>
+<p>The log file for shell tasks is available in 
+            <code class="filename">${WORKDIR}/temp/log.do_taskname.pid</code>. 
+            For example, the <code class="filename">compile</code> task for the QEMU minimal image for the x86
+            machine (<code class="filename">qemux86</code>) might be 
+            <code class="filename">tmp/work/qemux86-poky-linux/core-image-minimal-1.0-r0/temp/log.do_compile.20830</code>.
+            To see what BitBake runs to generate that log, look at the corresponding 
+            <code class="filename">run.do_taskname.pid</code> file located in the same directory.
+        </p>
+<p>
+            Presently, the output from Python tasks is sent directly to the console.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-taskrunning.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-taskrunning.html
new file mode 100644
index 0000000..998d9d0
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-taskrunning.html
@@ -0,0 +1,68 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.3.2. Running Specific Tasks</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
+<link rel="prev" href="usingpoky-debugging-taskfailures.html" title="2.3.1. Task Failures">
+<link rel="next" href="usingpoky-debugging-dependencies.html" title="2.3.3. Dependency Graphs">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.2. Running Specific Tasks">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="usingpoky-debugging-taskrunning"></a>2.3.2. Running Specific Tasks</h3></div></div></div>
+<p>
+            Any given package consists of a set of tasks.  
+            The standard BitBake behavior in most cases is: <code class="filename">fetch</code>, 
+            <code class="filename">unpack</code>, 
+            <code class="filename">patch</code>, <code class="filename">configure</code>,
+            <code class="filename">compile</code>, <code class="filename">install</code>, <code class="filename">package</code>,
+            <code class="filename">package_write</code>, and <code class="filename">build</code>. 
+            The default task is <code class="filename">build</code> and any tasks on which it depends 
+            build first.
+            Some tasks exist, such as <code class="filename">devshell</code>, that are not part of the
+            default build chain.  
+            If you wish to run a task that is not part of the default build chain, you can use the 
+            <code class="filename">-c</code> option in BitBake as follows:
+            </p>
+<pre class="literallayout">
+     $ bitbake matchbox-desktop -c devshell
+            </pre>
+<p>
+        </p>
+<p>
+            If you wish to rerun a task, use the <code class="filename">-f</code> force option. 
+            For example, the following sequence forces recompilation after changing files in the 
+            working directory.
+            </p>
+<pre class="literallayout">
+     $ bitbake matchbox-desktop
+               .
+               .
+        [make some changes to the source code in the working directory]
+               .
+               .
+     $ bitbake matchbox-desktop -c compile -f
+     $ bitbake matchbox-desktop
+            </pre>
+<p>
+        </p>
+<p>
+            This sequence first builds <code class="filename">matchbox-desktop</code> and then recompiles it.
+            The last command reruns all tasks (basically the packaging tasks) after the compile.
+            BitBake recognizes that the <code class="filename">compile</code> task was rerun and therefore 
+            understands that the other tasks also need to be run again.
+        </p>
+<p>
+            You can view a list of tasks in a given package by running the
+            <code class="filename">listtasks</code> task as follows:
+            </p>
+<pre class="literallayout">
+     $ bitbake matchbox-desktop -c listtasks
+            </pre>
+<p>
+            The results are in the file <code class="filename">${WORKDIR}/temp/log.do_listtasks</code>.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-variables.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-variables.html
new file mode 100644
index 0000000..ae185be
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging-variables.html
@@ -0,0 +1,22 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.3.6. Variables</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
+<link rel="prev" href="usingpoky-debugging-buildfile.html" title="2.3.5. Building with No Dependencies">
+<link rel="next" href="recipe-logging-mechanisms.html" title="2.3.7. Recipe Logging Mechanisms">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3.6. Variables">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="usingpoky-debugging-variables"></a>2.3.6. Variables</h3></div></div></div>
+<p>
+            The <code class="filename">-e</code> option dumps the resulting environment for
+            either the configuration (no package specified) or for a
+            specific package when specified; or <code class="filename">-b recipename</code>
+            to show the environment from parsing a single recipe file only.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging.html
new file mode 100644
index 0000000..9a8b72d
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-debugging.html
@@ -0,0 +1,26 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.3. Debugging Build Failures</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky.html" title="Chapter 2. Using the Yocto Project">
+<link rel="prev" href="usingpoky-install.html" title="2.2. Installing and Using the Result">
+<link rel="next" href="usingpoky-debugging-taskfailures.html" title="2.3.1. Task Failures">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3. Debugging Build Failures">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="usingpoky-debugging"></a>2.3. Debugging Build Failures</h2></div></div></div>
+<p>
+        The exact method for debugging build failures depends on the nature of the 
+        problem and on the system's area from which the bug originates. 
+        Standard debugging practices such as comparison against the last 
+        known working version with examination of the changes and the re-application of steps 
+        to identify the one causing the problem are
+        valid for the Yocto Project just as they are for any other system. 
+        Even though it is impossible to detail every possible potential failure, 
+        this section provides some general tips to aid in debugging.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-install.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-install.html
new file mode 100644
index 0000000..07d0c64
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-install.html
@@ -0,0 +1,28 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.2. Installing and Using the Result</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky.html" title="Chapter 2. Using the Yocto Project">
+<link rel="prev" href="building-an-image-using-gpl-components.html" title="2.1.2. Building an Image Using GPL Components">
+<link rel="next" href="usingpoky-debugging.html" title="2.3. Debugging Build Failures">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.2. Installing and Using the Result">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="usingpoky-install"></a>2.2. Installing and Using the Result</h2></div></div></div>
+<p>
+        Once an image has been built, it often needs to be installed. 
+        The images and kernels built by the OpenEmbedded build system are placed in the 
+        <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a> in 
+        <code class="filename">tmp/deploy/images</code>. 
+        For information on how to run pre-built images such as <code class="filename">qemux86</code> 
+        and <code class="filename">qemuarm</code>, see the
+        "<a class="link" href="../yocto-project-qs/using-pre-built.html" target="_self">Using Pre-Built Binaries and QEMU</a>"
+        section in the Yocto Project Quick Start.
+        For information about how to install these images, see the documentation for your
+        particular board/machine.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-specifying-LIC_FILES_CHKSUM.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-specifying-LIC_FILES_CHKSUM.html
new file mode 100644
index 0000000..b518fce
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky-specifying-LIC_FILES_CHKSUM.html
@@ -0,0 +1,57 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.1.1. Specifying the LIC_FILES_CHKSUM Variable</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="usingpoky-configuring-LIC_FILES_CHKSUM.html" title="3.4.1. Tracking License Changes">
+<link rel="prev" href="usingpoky-configuring-LIC_FILES_CHKSUM.html" title="3.4.1. Tracking License Changes">
+<link rel="next" href="usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax.html" title="3.4.1.2. Explanation of Syntax">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.1.1. Specifying the LIC_FILES_CHKSUM Variable">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="usingpoky-specifying-LIC_FILES_CHKSUM"></a>3.4.1.1. Specifying the <code class="filename">LIC_FILES_CHKSUM</code> Variable</h4></div></div></div>
+<p>
+                The <code class="filename">LIC_FILES_CHKSUM</code>
+                variable contains checksums of the license text in the source code for the recipe.
+                Following is an example of how to specify <code class="filename">LIC_FILES_CHKSUM</code>:
+                </p>
+<pre class="literallayout">
+     LIC_FILES_CHKSUM = "file://COPYING;md5=xxxx \
+                         file://licfile1.txt;beginline=5;endline=29;md5=yyyy \
+                         file://licfile2.txt;endline=50;md5=zzzz \
+                         ..."
+                </pre>
+<p>
+            </p>
+<p>
+                The build system uses the 
+                <code class="filename"><a class="link" href="ref-variables-glos.html#var-S" title="S">S</a></code> variable as the 
+                default directory used when searching files listed in 
+                <code class="filename">LIC_FILES_CHKSUM</code>.
+                The previous example employs the default directory.
+            </p>
+<p>
+                You can also use relative paths as shown in the following example: 
+                </p>
+<pre class="literallayout">
+     LIC_FILES_CHKSUM = "file://src/ls.c;startline=5;endline=16;\
+                                         md5=bb14ed3c4cda583abc85401304b5cd4e"
+     LIC_FILES_CHKSUM = "file://../license.html;md5=5c94767cedb5d6987c902ac850ded2c6"
+                </pre>
+<p>
+            </p>
+<p>
+                In this example, the first line locates a file in 
+                <code class="filename">${S}/src/ls.c</code>. 
+                The second line refers to a file in 
+                <code class="filename"><a class="link" href="ref-variables-glos.html#var-WORKDIR" title="WORKDIR">WORKDIR</a></code>, which is the parent
+                of <code class="filename"><a class="link" href="ref-variables-glos.html#var-S" title="S">S</a></code>.
+            </p>
+<p>
+                Note that this variable is mandatory for all recipes, unless the 
+                <code class="filename">LICENSE</code> variable is set to "CLOSED".
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky.html
new file mode 100644
index 0000000..fbbe2c7
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/usingpoky.html
@@ -0,0 +1,43 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 2. Using the Yocto Project</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="prev" href="intro-getit-dev.html" title="1.5. Development Checkouts">
+<link rel="next" href="usingpoky-build.html" title="2.1. Running a Build">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 2. Using the Yocto Project">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="usingpoky"></a>Chapter 2. Using the Yocto Project</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="usingpoky-build.html">2.1. Running a Build</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="build-overview.html">2.1.1. Build Overview</a></span></dt>
+<dt><span class="section"><a href="building-an-image-using-gpl-components.html">2.1.2. Building an Image Using GPL Components</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="usingpoky-install.html">2.2. Installing and Using the Result</a></span></dt>
+<dt><span class="section"><a href="usingpoky-debugging.html">2.3. Debugging Build Failures</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="usingpoky-debugging-taskfailures.html">2.3.1. Task Failures</a></span></dt>
+<dt><span class="section"><a href="usingpoky-debugging-taskrunning.html">2.3.2. Running Specific Tasks</a></span></dt>
+<dt><span class="section"><a href="usingpoky-debugging-dependencies.html">2.3.3. Dependency Graphs</a></span></dt>
+<dt><span class="section"><a href="usingpoky-debugging-bitbake.html">2.3.4. General BitBake Problems</a></span></dt>
+<dt><span class="section"><a href="usingpoky-debugging-buildfile.html">2.3.5. Building with No Dependencies</a></span></dt>
+<dt><span class="section"><a href="usingpoky-debugging-variables.html">2.3.6. Variables</a></span></dt>
+<dt><span class="section"><a href="recipe-logging-mechanisms.html">2.3.7. Recipe Logging Mechanisms</a></span></dt>
+<dt><span class="section"><a href="usingpoky-debugging-others.html">2.3.8. Other Tips</a></span></dt>
+</dl></dd>
+</dl>
+</div>
+<p>
+        This chapter describes common usage for the Yocto Project.
+        The information is introductory in nature as other manuals in the Yocto Project
+        documentation set provide more details on how to use the Yocto Project.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/x32.html b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/x32.html
new file mode 100644
index 0000000..5be3508
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/poky-ref-manual/x32.html
@@ -0,0 +1,35 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.3. x32</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Reference Manual">
+<link rel="up" href="technical-details.html" title="Chapter 3. Technical Details">
+<link rel="prev" href="invalidating-shared-state.html" title="3.2.4.2. Invalidating Shared State">
+<link rel="next" href="support.html" title="3.3.1. Support">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.3. x32">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="x32"></a>3.3. x32</h2></div></div></div>
+<p>
+        x32 is a new processor-specific Application Binary Interface (psABI) for x86_64. 
+        An ABI defines the calling conventions between functions in a processing environment.  
+        The interface determines what registers are used and what the sizes are for various C data types.
+    </p>
+<p>
+        Some processing environments prefer using 32-bit applications even when running 
+        on Intel 64-bit platforms. 
+        Consider the i386 psABI, which is a very old 32-bit ABI for Intel 64-bit platforms.
+        The i386 psABI does not provide efficient use and access of the Intel 64-bit processor resources,
+        leaving the system underutilized. 
+        Now consider the x86_64 psABI.
+        This ABI is newer and uses 64-bits for data sizes and program pointers.
+        The extra bits increase the footprint size of the programs, libraries, 
+        and also increases the memory and file system size requirements.
+        Executing under the x32 psABI enables user programs to utilize CPU and system resources 
+        more efficiently while keeping the memory footprint of the applications low.
+        Extra bits are used for registers but not for addressing mechanisms. 
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/plugin.xml b/plugins/org.yocto.sdk.doc.user/plugin.xml
index 5d678c1..7ce4771 100644
--- a/plugins/org.yocto.sdk.doc.user/plugin.xml
+++ b/plugins/org.yocto.sdk.doc.user/plugin.xml
@@ -19,5 +19,9 @@
           file="dev-manual-toc.xml"
           primary="false">
     </toc>
+    <toc
+          file="poky-ref-manual-toc.xml"
+          primary="false">
+    </toc>
  </extension>
 </plugin>
diff --git a/plugins/org.yocto.sdk.doc.user/poky-ref-manual-toc.xml b/plugins/org.yocto.sdk.doc.user/poky-ref-manual-toc.xml
new file mode 100644
index 0000000..1efd661
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/poky-ref-manual-toc.xml
@@ -0,0 +1,182 @@
+<?xml version="1.0" encoding="utf-8" standalone="no"?>
+<toc label="The Yocto Project Reference Manual" topic="html/poky-ref-manual/index.html">
+  <topic label="Introduction" href="html/poky-ref-manual/intro.html">
+    <topic label="Introduction" href="html/poky-ref-manual/intro-welcome.html"/>
+    <topic label="Documentation Overview" href="html/poky-ref-manual/intro-manualoverview.html"/>
+    <topic label="System Requirements" href="html/poky-ref-manual/intro-requirements.html"/>
+    <topic label="Obtaining the Yocto Project" href="html/poky-ref-manual/intro-getit.html"/>
+    <topic label="Development Checkouts" href="html/poky-ref-manual/intro-getit-dev.html"/>
+  </topic>
+  <topic label="Using the Yocto Project" href="html/poky-ref-manual/usingpoky.html">
+    <topic label="Running a Build" href="html/poky-ref-manual/usingpoky-build.html">
+      <topic label="Build Overview" href="html/poky-ref-manual/build-overview.html"/>
+      <topic label="Building an Image Using GPL Components" href="html/poky-ref-manual/building-an-image-using-gpl-components.html"/>
+    </topic>
+    <topic label="Installing and Using the Result" href="html/poky-ref-manual/usingpoky-install.html"/>
+    <topic label="Debugging Build Failures" href="html/poky-ref-manual/usingpoky-debugging.html">
+      <topic label="Task Failures" href="html/poky-ref-manual/usingpoky-debugging-taskfailures.html"/>
+      <topic label="Running Specific Tasks" href="html/poky-ref-manual/usingpoky-debugging-taskrunning.html"/>
+      <topic label="Dependency Graphs" href="html/poky-ref-manual/usingpoky-debugging-dependencies.html"/>
+      <topic label="General BitBake Problems" href="html/poky-ref-manual/usingpoky-debugging-bitbake.html"/>
+      <topic label="Building with No Dependencies" href="html/poky-ref-manual/usingpoky-debugging-buildfile.html"/>
+      <topic label="Variables" href="html/poky-ref-manual/usingpoky-debugging-variables.html"/>
+      <topic label="Recipe Logging Mechanisms" href="html/poky-ref-manual/recipe-logging-mechanisms.html">
+        <topic label="Logging With Python" href="html/poky-ref-manual/logging-with-python.html"/>
+        <topic label="Logging With Bash" href="html/poky-ref-manual/logging-with-bash.html"/>
+      </topic>
+      <topic label="Other Tips" href="html/poky-ref-manual/usingpoky-debugging-others.html"/>
+    </topic>
+  </topic>
+  <topic label="Technical Details" href="html/poky-ref-manual/technical-details.html">
+    <topic label="Yocto Project Components" href="html/poky-ref-manual/usingpoky-components.html">
+      <topic label="BitBake" href="html/poky-ref-manual/usingpoky-components-bitbake.html"/>
+      <topic label="Metadata (Recipes)" href="html/poky-ref-manual/usingpoky-components-metadata.html"/>
+      <topic label="Classes" href="html/poky-ref-manual/usingpoky-components-classes.html"/>
+      <topic label="Configuration" href="html/poky-ref-manual/usingpoky-components-configuration.html"/>
+    </topic>
+    <topic label="Shared State Cache" href="html/poky-ref-manual/shared-state-cache.html">
+      <topic label="Overall Architecture" href="html/poky-ref-manual/overall-architecture.html"/>
+      <topic label="Checksums (Signatures)" href="html/poky-ref-manual/checksums.html"/>
+      <topic label="Shared State" href="html/poky-ref-manual/shared-state.html"/>
+      <topic label="Tips and Tricks" href="html/poky-ref-manual/tips-and-tricks.html">
+        <topic label="Debugging" href="html/poky-ref-manual/debugging.html"/>
+        <topic label="Invalidating Shared State" href="html/poky-ref-manual/invalidating-shared-state.html"/>
+      </topic>
+    </topic>
+    <topic label="x32" href="html/poky-ref-manual/x32.html">
+      <topic label="Support" href="html/poky-ref-manual/support.html"/>
+      <topic label="Future Development and Limitations" href="html/poky-ref-manual/future-development-and-limitations.html"/>
+      <topic label="Using x32 Right Now" href="html/poky-ref-manual/using-x32-right-now.html"/>
+    </topic>
+    <topic label="Licenses" href="html/poky-ref-manual/licenses.html">
+      <topic label="Tracking License Changes" href="html/poky-ref-manual/usingpoky-configuring-LIC_FILES_CHKSUM.html">
+        <topic label="Specifying the LIC_FILES_CHKSUM Variable" href="html/poky-ref-manual/usingpoky-specifying-LIC_FILES_CHKSUM.html"/>
+        <topic label="Explanation of Syntax" href="html/poky-ref-manual/usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax.html"/>
+      </topic>
+      <topic label="Enabling Commercially Licensed Recipes" href="html/poky-ref-manual/enabling-commercially-licensed-recipes.html">
+        <topic label="License Flag Matching" href="html/poky-ref-manual/license-flag-matching.html"/>
+        <topic label="Other Variables Related to Commercial Licenses" href="html/poky-ref-manual/other-variables-related-to-commercial-licenses.html"/>
+      </topic>
+    </topic>
+  </topic>
+  <topic label="Source Directory Structure" href="html/poky-ref-manual/ref-structure.html">
+    <topic label="Top level core components" href="html/poky-ref-manual/structure-core.html">
+      <topic label="bitbake/" href="html/poky-ref-manual/structure-core-bitbake.html"/>
+      <topic label="build/" href="html/poky-ref-manual/structure-core-build.html"/>
+      <topic label="documentation" href="html/poky-ref-manual/handbook.html"/>
+      <topic label="meta/" href="html/poky-ref-manual/structure-core-meta.html"/>
+      <topic label="meta-demoapps/" href="html/poky-ref-manual/structure-core-meta-demoapps.html"/>
+      <topic label="meta-rt/" href="html/poky-ref-manual/structure-core-meta-rt.html"/>
+      <topic label="meta-skeleton/" href="html/poky-ref-manual/structure-meta-skeleton.html"/>
+      <topic label="scripts/" href="html/poky-ref-manual/structure-core-scripts.html"/>
+      <topic label="oe-init-build-env" href="html/poky-ref-manual/structure-core-script.html"/>
+      <topic label="LICENSE, README, and README.hardware" href="html/poky-ref-manual/structure-basic-top-level.html"/>
+    </topic>
+    <topic label="The Build Directory - build/" href="html/poky-ref-manual/structure-build.html">
+      <topic label="build/pseudodone" href="html/poky-ref-manual/structure-build-pseudodone.html"/>
+      <topic label="build/conf/local.conf" href="html/poky-ref-manual/structure-build-conf-local.conf.html"/>
+      <topic label="build/conf/bblayers.conf" href="html/poky-ref-manual/structure-build-conf-bblayers.conf.html"/>
+      <topic label="build/conf/sanity_info" href="html/poky-ref-manual/structure-build-conf-sanity_info.html"/>
+      <topic label="build/downloads/" href="html/poky-ref-manual/structure-build-downloads.html"/>
+      <topic label="build/sstate-cache/" href="html/poky-ref-manual/structure-build-sstate-cache.html"/>
+      <topic label="build/tmp/" href="html/poky-ref-manual/structure-build-tmp.html"/>
+      <topic label="build/tmp/buildstats/" href="html/poky-ref-manual/structure-build-tmp-buildstats.html"/>
+      <topic label="build/tmp/cache/" href="html/poky-ref-manual/structure-build-tmp-cache.html"/>
+      <topic label="build/tmp/deploy/" href="html/poky-ref-manual/structure-build-tmp-deploy.html"/>
+      <topic label="build/tmp/deploy/deb/" href="html/poky-ref-manual/structure-build-tmp-deploy-deb.html"/>
+      <topic label="build/tmp/deploy/rpm/" href="html/poky-ref-manual/structure-build-tmp-deploy-rpm.html"/>
+      <topic label="build/tmp/deploy/licenses/" href="html/poky-ref-manual/structure-build-tmp-deploy-licenses.html"/>
+      <topic label="build/tmp/deploy/images/" href="html/poky-ref-manual/structure-build-tmp-deploy-images.html"/>
+      <topic label="build/tmp/deploy/ipk/" href="html/poky-ref-manual/structure-build-tmp-deploy-ipk.html"/>
+      <topic label="build/tmp/sysroots/" href="html/poky-ref-manual/structure-build-tmp-sysroots.html"/>
+      <topic label="build/tmp/stamps/" href="html/poky-ref-manual/structure-build-tmp-stamps.html"/>
+      <topic label="build/tmp/log/" href="html/poky-ref-manual/structure-build-tmp-log.html"/>
+      <topic label="build/tmp/pkgdata/" href="html/poky-ref-manual/structure-build-tmp-pkgdata.html"/>
+      <topic label="build/tmp/work/" href="html/poky-ref-manual/structure-build-tmp-work.html"/>
+    </topic>
+    <topic label="The Metadata - meta/" href="html/poky-ref-manual/structure-meta.html">
+      <topic label="meta/classes/" href="html/poky-ref-manual/structure-meta-classes.html"/>
+      <topic label="meta/conf/" href="html/poky-ref-manual/structure-meta-conf.html"/>
+      <topic label="meta/conf/machine/" href="html/poky-ref-manual/structure-meta-conf-machine.html"/>
+      <topic label="meta/conf/distro/" href="html/poky-ref-manual/structure-meta-conf-distro.html"/>
+      <topic label="meta/recipes-bsp/" href="html/poky-ref-manual/structure-meta-recipes-bsp.html"/>
+      <topic label="meta/recipes-connectivity/" href="html/poky-ref-manual/structure-meta-recipes-connectivity.html"/>
+      <topic label="meta/recipes-core/" href="html/poky-ref-manual/structure-meta-recipes-core.html"/>
+      <topic label="meta/recipes-devtools/" href="html/poky-ref-manual/structure-meta-recipes-devtools.html"/>
+      <topic label="meta/recipes-extended/" href="html/poky-ref-manual/structure-meta-recipes-extended.html"/>
+      <topic label="meta/recipes-gnome/" href="html/poky-ref-manual/structure-meta-recipes-gnome.html"/>
+      <topic label="meta/recipes-graphics/" href="html/poky-ref-manual/structure-meta-recipes-graphics.html"/>
+      <topic label="meta/recipes-kernel/" href="html/poky-ref-manual/structure-meta-recipes-kernel.html"/>
+      <topic label="meta/recipes-multimedia/" href="html/poky-ref-manual/structure-meta-recipes-multimedia.html"/>
+      <topic label="meta/recipes-qt/" href="html/poky-ref-manual/structure-meta-recipes-qt.html"/>
+      <topic label="meta/recipes-rt/" href="html/poky-ref-manual/structure-meta-recipes-rt.html"/>
+      <topic label="meta/recipes-sato/" href="html/poky-ref-manual/structure-meta-recipes-sato.html"/>
+      <topic label="meta/recipes-support/" href="html/poky-ref-manual/structure-meta-recipes-support.html"/>
+      <topic label="meta/site/" href="html/poky-ref-manual/structure-meta-site.html"/>
+      <topic label="meta/recipes.txt" href="html/poky-ref-manual/structure-meta-recipes-txt.html"/>
+    </topic>
+  </topic>
+  <topic label="BitBake" href="html/poky-ref-manual/ref-bitbake.html">
+    <topic label="Parsing" href="html/poky-ref-manual/ref-bitbake-parsing.html"/>
+    <topic label="Preferences and Providers" href="html/poky-ref-manual/ref-bitbake-providers.html"/>
+    <topic label="Dependencies" href="html/poky-ref-manual/ref-bitbake-dependencies.html"/>
+    <topic label="The Task List" href="html/poky-ref-manual/ref-bitbake-tasklist.html"/>
+    <topic label="Running a Task" href="html/poky-ref-manual/ref-bitbake-runtask.html"/>
+    <topic label="BitBake Command Line" href="html/poky-ref-manual/ref-bitbake-commandline.html"/>
+    <topic label="Fetchers" href="html/poky-ref-manual/ref-bitbake-fetchers.html"/>
+  </topic>
+  <topic label="Classes" href="html/poky-ref-manual/ref-classes.html">
+    <topic label="The base class - base.bbclass" href="html/poky-ref-manual/ref-classes-base.html"/>
+    <topic label="Autotooled Packages - autotools.bbclass" href="html/poky-ref-manual/ref-classes-autotools.html"/>
+    <topic label="Alternatives - update-alternatives.bbclass" href="html/poky-ref-manual/ref-classes-update-alternatives.html"/>
+    <topic label="Initscripts - update-rc.d.bbclass" href="html/poky-ref-manual/ref-classes-update-rc.d.html"/>
+    <topic label="Binary config scripts - binconfig.bbclass" href="html/poky-ref-manual/ref-classes-binconfig.html"/>
+    <topic label="Debian renaming - debian.bbclass" href="html/poky-ref-manual/ref-classes-debian.html"/>
+    <topic label="Pkg-config - pkgconfig.bbclass" href="html/poky-ref-manual/ref-classes-pkgconfig.html"/>
+    <topic label="Distribution of sources - src_distribute_local.bbclass" href="html/poky-ref-manual/ref-classes-src-distribute.html"/>
+    <topic label="Perl modules - cpan.bbclass" href="html/poky-ref-manual/ref-classes-perl.html"/>
+    <topic label="Python extensions - distutils.bbclass" href="html/poky-ref-manual/ref-classes-distutils.html"/>
+    <topic label="Developer Shell - devshell.bbclass" href="html/poky-ref-manual/ref-classes-devshell.html"/>
+    <topic label="Package Groups - packagegroup.bbclass" href="html/poky-ref-manual/ref-classes-packagegroup.html"/>
+    <topic label="Packaging - package*.bbclass" href="html/poky-ref-manual/ref-classes-package.html"/>
+    <topic label="Building kernels - kernel.bbclass" href="html/poky-ref-manual/ref-classes-kernel.html"/>
+    <topic label="Creating images - image.bbclass and rootfs*.bbclass" href="html/poky-ref-manual/ref-classes-image.html"/>
+    <topic label="Host System sanity checks - sanity.bbclass" href="html/poky-ref-manual/ref-classes-sanity.html"/>
+    <topic label="Generated output quality assurance checks - insane.bbclass" href="html/poky-ref-manual/ref-classes-insane.html"/>
+    <topic label="Autotools configuration data cache - siteinfo.bbclass" href="html/poky-ref-manual/ref-classes-siteinfo.html"/>
+    <topic label="Adding Users - useradd.bbclass" href="html/poky-ref-manual/ref-classes-useradd.html"/>
+    <topic label="Using External Source - externalsrc.bbclass" href="html/poky-ref-manual/ref-classes-externalsrc.html"/>
+    <topic label="Other Classes" href="html/poky-ref-manual/ref-classes-others.html"/>
+  </topic>
+  <topic label="Images" href="html/poky-ref-manual/ref-images.html"/>
+  <topic label="Reference: Features" href="html/poky-ref-manual/ref-features.html">
+    <topic label="Distro" href="html/poky-ref-manual/ref-features-distro.html"/>
+    <topic label="Machine" href="html/poky-ref-manual/ref-features-machine.html"/>
+    <topic label="Images" href="html/poky-ref-manual/ref-features-image.html"/>
+  </topic>
+  <topic label="Variables Glossary" href="html/poky-ref-manual/ref-variables-glos.html">
+    <topic label="Glossary" href="html/poky-ref-manual/ref-variables-glos.html#ref-variables-glossary"/>
+  </topic>
+  <topic label="Variable Context" href="html/poky-ref-manual/ref-varlocality.html">
+    <topic label="Configuration" href="html/poky-ref-manual/ref-varlocality-configuration.html">
+      <topic label="Distribution (Distro)" href="html/poky-ref-manual/ref-varlocality-config-distro.html"/>
+      <topic label="Machine" href="html/poky-ref-manual/ref-varlocality-config-machine.html"/>
+      <topic label="Local" href="html/poky-ref-manual/ref-varlocality-config-local.html"/>
+    </topic>
+    <topic label="Recipes" href="html/poky-ref-manual/ref-varlocality-recipes.html">
+      <topic label="Required" href="html/poky-ref-manual/ref-varlocality-recipe-required.html"/>
+      <topic label="Dependencies" href="html/poky-ref-manual/ref-varlocality-recipe-dependencies.html"/>
+      <topic label="Paths" href="html/poky-ref-manual/ref-varlocality-recipe-paths.html"/>
+      <topic label="Extra Build Information" href="html/poky-ref-manual/ref-varlocality-recipe-build.html"/>
+    </topic>
+  </topic>
+  <topic label="FAQ" href="html/poky-ref-manual/faq.html"/>
+  <topic label="Contributing to the Yocto Project" href="html/poky-ref-manual/resources.html">
+    <topic label="Introduction" href="html/poky-ref-manual/resources-intro.html"/>
+    <topic label="Tracking Bugs" href="html/poky-ref-manual/resources-bugtracker.html"/>
+    <topic label="Mailing lists" href="html/poky-ref-manual/resources-mailinglist.html"/>
+    <topic label="Internet Relay Chat (IRC)" href="html/poky-ref-manual/resources-irc.html"/>
+    <topic label="Links" href="html/poky-ref-manual/resources-links.html"/>
+    <topic label="Contributions" href="html/poky-ref-manual/resources-contributions.html"/>
+  </topic>
+</toc>
diff --git a/plugins/org.yocto.sdk.doc.user/toc.xml b/plugins/org.yocto.sdk.doc.user/toc.xml
index 4e642ec..3d7d0f2 100644
--- a/plugins/org.yocto.sdk.doc.user/toc.xml
+++ b/plugins/org.yocto.sdk.doc.user/toc.xml
@@ -9,4 +9,7 @@
    <topic label="The Yocto Project Development Manual">
       <link toc="dev-manual-toc.xml"/>
    </topic>
+   <topic label="The Yocto Project Reference Manual">
+      <link toc="poky-ref-manual-toc.xml"/>
+   </topic>
 </toc>
-- 
1.7.7.6


