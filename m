Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62B16E0143A
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:44:17 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id A60DC40037;
	Fri, 21 Sep 2012 16:14:19 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:44:03 +0200
Message-Id: <cover.1348237278.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv2 00/12][eclipse-poky] Integrate yocto documentation into eclipse
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
X-List-Received-Date: Fri, 21 Sep 2012 14:44:18 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

the major change in this second version is that the generated eclipse
help is generated using the changes I have proposed on the yocto-docs
build system. This will ease the process of keeping the documentation
inside eclipse in sync with the real documentation. Additionally I
have also added the dev-manual, poky-ref-manual, kernal-manual and the
bsp-guide.

From originial patch:

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

Timo Mueller (12):
  plugins/sdk.doc.user: Added plugin for the yocto project
    documentation
  plugins/sdk.doc.user: Added empty table of contents
  feature/sdk.doc: Added feature containing yocto documentation plugins
  feature/sdk.doc: Added org.yocto.sdk.doc.user plugin
  feature/sdk: Added org.yocto.sdk.doc feature.
  features/sdk.site: Added eclipse help feature to update site
  plugins/sdk.doc.user: Added yocto quick start guide
  plugins/sdk.doc.user: Added yocto adt manual
  plugins/sdk.doc.user: Added yocto dev manual
  plugins/sdk.doc.user: Added poky reference manual
  plugins/sdk.doc.user: Added bsp guide
  plugins/sdk.doc.user: Added kernel manual

 features/org.yocto.sdk.doc/.project                |   17 +
 features/org.yocto.sdk.doc/build.properties        |    5 +
 features/org.yocto.sdk.doc/feature.properties      |  208 +++
 features/org.yocto.sdk.doc/feature.xml             |   40 +
 features/org.yocto.sdk.doc/license.html            |  237 +++
 .../sourceTemplateFeature/feature.properties       |  208 +++
 .../sourceTemplateFeature/license.html             |  237 +++
 features/org.yocto.sdk.site/category.xml           |    6 +
 features/org.yocto.sdk.site/site.xml               |    3 +
 features/org.yocto.sdk/feature.xml                 |    5 +
 plugins/org.yocto.sdk.doc.user/.classpath          |    6 +
 plugins/org.yocto.sdk.doc.user/.project            |   28 +
 .../.settings/org.eclipse.jdt.core.prefs           |    8 +
 .../org.yocto.sdk.doc.user/META-INF/MANIFEST.MF    |    8 +
 .../OSGI-INF/l10n/bundle.properties                |    3 +
 plugins/org.yocto.sdk.doc.user/about.html          |  170 ++
 plugins/org.yocto.sdk.doc.user/adt-manual-toc.xml  |   35 +
 plugins/org.yocto.sdk.doc.user/bsp-guide-toc.xml   |   28 +
 plugins/org.yocto.sdk.doc.user/build.properties    |   22 +
 plugins/org.yocto.sdk.doc.user/dev-manual-toc.xml  |  176 ++
 .../html/adt-manual/adt-intro-section.html         |   39 +
 .../html/adt-manual/adt-intro.html                 |   44 +
 .../html/adt-manual/adt-package.html               |   30 +
 .../html/adt-manual/adt-prepare.html               |   39 +
 .../html/adt-manual/autotools-based-projects.html  |   53 +
 ...uring-and-running-the-adt-installer-script.html |  130 ++
 .../html/adt-manual/configuring-the-pms.html       |   68 +
 .../html/adt-manual/eclipse-overview.html          |   37 +
 .../adt-manual/extracting-the-root-filesystem.html |   45 +
 .../html/adt-manual/figures/adt-title.png          |  Bin 0 -> 13498 bytes
 .../getting-the-adt-installer-tarball.html         |   50 +
 .../html/adt-manual/getting-the-images.html        |  100 +
 .../html/adt-manual/index.html                     |  130 ++
 .../html/adt-manual/installing-the-adt.html        |   59 +
 .../html/adt-manual/makefile-based-projects.html   |   28 +
 .../adt-manual/package-management-systems.html     |   40 +
 .../securing-kernel-and-filesystem-images.html     |   22 +
 ...tting-up-the-cross-development-environment.html |   40 +
 .../html/adt-manual/sysroot.html                   |   23 +
 .../html/adt-manual/the-cross-toolchain.html       |   24 +
 .../html/adt-manual/the-qemu-emulator.html         |   34 +
 .../html/adt-manual/user-space-tools.html          |   55 +
 .../using-an-existing-toolchain-tarball.html       |   90 +
 .../html/adt-manual/using-the-adt-installer.html   |   20 +
 .../html/adt-manual/using-the-command-line.html    |   42 +
 ...g-the-toolchain-from-within-the-build-tree.html |   75 +
 plugins/org.yocto.sdk.doc.user/html/book.css       |    1 +
 .../html/bsp-guide/bsp-filelayout-binary.html      |   40 +
 .../html/bsp-guide/bsp-filelayout-kernel.html      |  188 ++
 .../html/bsp-guide/bsp-filelayout-layer.html       |   65 +
 .../html/bsp-guide/bsp-filelayout-license.html     |   34 +
 .../html/bsp-guide/bsp-filelayout-machine.html     |   79 +
 .../bsp-guide/bsp-filelayout-misc-recipes.html     |   56 +
 .../bsp-guide/bsp-filelayout-readme-sources.html   |   31 +
 .../html/bsp-guide/bsp-filelayout-readme.html      |   36 +
 .../bsp-guide/bsp-filelayout-recipes-graphics.html |   42 +
 .../html/bsp-guide/bsp-filelayout.html             |  113 ++
 .../html/bsp-guide/bsp-layers.html                 |   71 +
 .../bsp-guide/bsp-licensing-considerations.html    |  125 ++
 .../org.yocto.sdk.doc.user/html/bsp-guide/bsp.html |   67 +
 .../html/bsp-guide/common-features.html            |  138 ++
 ...a-new-bsp-layer-using-the-yocto-bsp-script.html |  191 ++
 .../bsp-guide/customizing-a-recipe-for-a-bsp.html  |   56 +
 .../html/bsp-guide/figures/bsp-title.png           |  Bin 0 -> 17388 bytes
 .../html/bsp-guide/index.html                      |  130 ++
 ...patches-and-config-items-with-yocto-kernel.html |  153 ++
 .../bsp-guide/released-bsp-recommendations.html    |   58 +
 .../html/bsp-guide/released-bsp-requirements.html  |  184 ++
 ...ents-and-recommendations-for-released-bsps.html |   23 +
 .../using-the-yocto-projects-bsp-tools.html        |   29 +
 .../html/dev-manual/adding-kernel-recipes.html     |   24 +
 .../additional-implementation-details.html         |   67 +
 .../html/dev-manual/adt-eclipse.html               |   43 +
 .../application-development-workflow.html          |   34 +
 .../html/dev-manual/basic-commands.html            |   98 +
 .../html/dev-manual/bsp-recipe-change-summary.html |   30 +
 .../buiding-and-customizing-the-image.html         |   31 +
 ...-and-booting-the-default-qemu-kernel-image.html |  102 ++
 ...and-booting-the-modified-qemu-kernel-image.html |   77 +
 .../html/dev-manual/building-images.html           |   51 +
 ...iple-architecture-libraries-into-one-image.html |   44 +
 .../building-software-from-an-external-source.html |   65 +
 .../html/dev-manual/building-the-image-app.html    |  101 +
 .../html/dev-manual/building-the-project.html      |   22 +
 .../changing-build-parameters-for-your-build.html  |  104 ++
 .../html/dev-manual/changing-recipes-bsp.html      |   31 +
 .../html/dev-manual/changing-recipes-graphics.html |   34 +
 .../html/dev-manual/changing-recipes-kernel.html   |  175 ++
 .../dev-manual/changing-the-bsp-configuration.html |   87 +
 ...-config-smp-configuration-using-menuconfig.html |  108 ++
 .../changing-the-kernel-configuration.html         |   21 +
 .../changing-the-recipes-in-your-bsp.html          |   29 +
 ...urce-code-and-pushing-it-to-the-bare-clone.html |   88 +
 .../html/dev-manual/choosing-a-base-bsp-app.html   |   31 +
 .../configuring-the-cross-compiler-options.html    |  100 +
 .../configuring-the-cross-toolchains.html          |   54 +
 .../configuring-the-eclipse-ide-indigo.html        |   71 +
 .../configuring-the-eclipse-ide-juno.html          |   55 +
 .../configuring-the-eclipse-yocto-plug-in.html     |   33 +
 .../html/dev-manual/configuring-the-kernel.html    |   30 +
 .../dev-manual/configuring-the-target-options.html |   59 +
 .../html/dev-manual/creating-config-fragments.html |   74 +
 .../html/dev-manual/creating-the-project.html      |   50 +
 ...eating-the-yocto-bitbake-commander-project.html |   39 +
 .../html/dev-manual/creating-your-own-layer.html   |  159 ++
 ...-using-a-bitbake-commander-project-and-hob.html |   22 +
 .../deploying-and-debugging-the-application.html   |   50 +
 .../html/dev-manual/dev-manual-bsp-appendix.html   |   50 +
 .../html/dev-manual/dev-manual-intro.html          |   25 +
 .../dev-manual/dev-manual-kernel-appendix.html     |   47 +
 .../html/dev-manual/dev-manual-model.html          |   78 +
 .../html/dev-manual/dev-manual-newbie.html         |   47 +
 .../html/dev-manual/dev-manual-start.html          |   35 +
 .../developing-a-board-support-package-bsp.html    |  173 ++
 .../dev-manual/editing-the-metadata-files.html     |   48 +
 .../html/dev-manual/enabling-your-layer.html       |   44 +
 .../examining-the-default-config-smp-behavior.html |   59 +
 .../excluding-recipes-from-the-build.html          |   39 +
 .../html/dev-manual/extendpoky.html                |   89 +
 .../html/dev-manual/figures/app-dev-flow.png       |  Bin 0 -> 52670 bytes
 .../html/dev-manual/figures/bsp-dev-flow.png       |  Bin 0 -> 57479 bytes
 .../html/dev-manual/figures/dev-title.png          |  Bin 0 -> 11813 bytes
 .../html/dev-manual/figures/git-workflow.png       |  Bin 0 -> 26610 bytes
 .../html/dev-manual/figures/index-downloads.png    |  Bin 0 -> 58263 bytes
 .../html/dev-manual/figures/kernel-dev-flow.png    |  Bin 0 -> 61916 bytes
 .../figures/kernel-example-repos-denzil.png        |  Bin 0 -> 34344 bytes
 .../html/dev-manual/figures/kernel-overview-1.png  |  Bin 0 -> 35839 bytes
 .../html/dev-manual/figures/kernel-overview-2.png  |  Bin 0 -> 34013 bytes
 .../figures/kernel-overview-3-denzil.png           |  Bin 0 -> 42285 bytes
 .../html/dev-manual/figures/source-repos.png       |  Bin 0 -> 188986 bytes
 .../html/dev-manual/figures/wip.png                |  Bin 0 -> 35309 bytes
 .../html/dev-manual/figures/yp-download.png        |  Bin 0 -> 118882 bytes
 .../finding-the-temporary-source-code.html         |  100 +
 .../fine-tuning-the-kernel-configuration-file.html |   94 +
 ...ng-local-yocto-project-files-and-bsp-files.html |  106 ++
 .../getting-set-up-to-run-this-example.html        |  119 ++
 .../html/dev-manual/getting-setup.html             |  251 +++
 .../html/dev-manual/getting-your-base-bsp-app.html |   78 +
 .../html/dev-manual/git.html                       |   29 +
 .../html/dev-manual/how-to-submit-a-change.html    |  146 ++
 .../dev-manual/image-development-using-hob.html    |   52 +
 .../dev-manual/including-static-library-files.html |   68 +
 .../html/dev-manual/index.html                     |  246 +++
 .../html/dev-manual/installing-eclipse-ide.html    |   75 +
 .../installing-the-eclipse-yocto-plug-in.html      |   24 +
 .../html/dev-manual/intro.html                     |   34 +
 .../dev-manual/introducing-the-yocto-project.html  |   36 +
 .../dev-manual/kernel-modification-workflow.html   |  150 ++
 .../html/dev-manual/kernel-overview.html           |  186 ++
 .../html/dev-manual/licensing.html                 |   73 +
 ...-base bsp-to-create-your-new-bsp-layer-app.html |   36 +
 .../dev-manual/making-changes-to-your-bsp-app.html |   23 +
 .../html/dev-manual/managing-layers.html           |  103 ++
 .../modifying-temporary-source-code.html           |   32 +
 .../modifying-the-kernel-source-code.html          |   23 +
 .../html/dev-manual/modifying-the-kernel.html      |   32 +
 .../html/dev-manual/new-software.html              |   39 +
 .../html/dev-manual/open-source-philosophy.html    |   46 +
 .../html/dev-manual/other-information.html         |  124 ++
 .../html/dev-manual/platdev-appdev-devshell.html   |   82 +
 .../html/dev-manual/platdev-appdev-srcrev.html     |   36 +
 ...tdev-gdb-remotedebug-launch-gdb-buildcross.html |   44 +
 ...ev-gdb-remotedebug-launch-gdb-inferiorbins.html |   76 +
 ...tdev-gdb-remotedebug-launch-gdb-launchhost.html |   51 +
 .../platdev-gdb-remotedebug-launch-gdb-using.html  |   33 +
 .../platdev-gdb-remotedebug-launch-gdb.html        |   20 +
 .../platdev-gdb-remotedebug-launch-gdbserver.html  |   36 +
 .../html/dev-manual/platdev-gdb-remotedebug.html   |   73 +
 .../dev-manual/platdev-newmachine-conffile.html    |   53 +
 .../dev-manual/platdev-newmachine-formfactor.html  |   51 +
 .../html/dev-manual/platdev-newmachine-kernel.html |   53 +
 .../html/dev-manual/platdev-newmachine.html        |   31 +
 .../platdev-oprofile-oprofileui-offline.html       |   40 +
 .../platdev-oprofile-oprofileui-online.html        |  101 +
 .../dev-manual/platdev-oprofile-oprofileui.html    |   29 +
 .../html/dev-manual/platdev-oprofile-target.html   |   76 +
 .../html/dev-manual/platdev-oprofile.html          |   49 +
 .../dev-manual/preparing-for-the-build-app.html    |   81 +
 .../html/dev-manual/preparing-to-use-multilib.html |   44 +
 .../html/dev-manual/prioritizing-your-layer.html   |   46 +
 .../html/dev-manual/pushing-a-change-upstream.html |   56 +
 ...e-kernel-and-testing-the-new-configuration.html |   61 +
 .../dev-manual/repositories-tags-and-branches.html |  148 ++
 .../html/dev-manual/running-user-space-tools.html  |  113 ++
 .../setting-up-the-bare-clone-and-its-copy.html    |   43 +
 .../dev-manual/setting-up-the-eclipse-ide.html     |   35 +
 ...e-local-yocto-project-files-git-repository.html |   49 +
 .../setting-up-the-poky-extras-git-repository.html |   40 +
 ...ting-an-application-into-multiple-packages.html |   63 +
 .../starting-qemu-in-user-space-nfs-mode.html      |   37 +
 .../html/dev-manual/submitting-a-patch.html        |  113 ++
 .../html/dev-manual/system-development-model.html  |   29 +
 .../html/dev-manual/tracking-bugs.html             |   62 +
 .../understanding-and-creating-layers.html         |   38 +
 .../understanding-the-files-you-need.html          |  120 ++
 .../html/dev-manual/using-a-git-workflow.html      |  172 ++
 .../html/dev-manual/using-a-quilt-workflow.html    |  121 ++
 .../html/dev-manual/using-bbappend-files.html      |  118 ++
 .../html/dev-manual/using-menuconfig.html          |   47 +
 .../html/dev-manual/using-multilib.html            |   57 +
 .../using-pre-built-binaries-and-qemu.html         |  100 +
 .../dev-manual/usingpoky-changes-collaborate.html  |   71 +
 .../html/dev-manual/usingpoky-changes-prbump.html  |   72 +
 .../usingpoky-changes-updatingimages.html          |   31 +
 .../usingpoky-configuring-DISTRO_PN_ALIAS.html     |   56 +
 .../usingpoky-extend-addpkg-autotools.html         |   48 +
 .../usingpoky-extend-addpkg-makefile.html          |  101 +
 .../usingpoky-extend-addpkg-postinstalls.html      |   67 +
 .../usingpoky-extend-addpkg-singlec.html           |   59 +
 .../html/dev-manual/usingpoky-extend-addpkg.html   |   38 +
 .../usingpoky-extend-customimage-custombb.html     |   48 +
 .../usingpoky-extend-customimage-customtasks.html  |   72 +
 ...usingpoky-extend-customimage-imagefeatures.html |   50 +
 .../usingpoky-extend-customimage-localconf.html    |   68 +
 .../dev-manual/usingpoky-extend-customimage.html   |   20 +
 .../what-this-manual-does-not-provide.html         |   35 +
 .../html/dev-manual/what-this-manual-provides.html |   35 +
 ...g-stand-alone-cross-development-toolchains.html |   64 +
 .../workflow-using-the-adt-and-eclipse.html        |  111 ++
 .../html/dev-manual/workflows.html                 |  138 ++
 .../html/dev-manual/yocto-project-layers.html      |   33 +
 .../dev-manual/yocto-project-repositories.html     |   91 +
 .../html/dev-manual/yocto-project-source.html      |   52 +
 .../html/dev-manual/yocto-project-terms.html       |  222 +++
 .../html/dev-manual/zip-file-method.html           |   99 +
 .../html/kernel-manual/actions-org.html            |   29 +
 .../html/kernel-manual/architecture-overview.html  |   79 +
 .../html/kernel-manual/branching-and-workflow.html |   81 +
 .../html/kernel-manual/bsp-creating.html           |   71 +
 .../html/kernel-manual/build-strategy.html         |   82 +
 .../html/kernel-manual/bulk-export.html            |   53 +
 .../change-inspection-kernel-changes-commits.html  |   36 +
 .../html/kernel-manual/concepts-org.html           |   27 +
 .../development-saving-kernel-modifications.html   |   68 +
 .../export-for-external-upstream-submission.html   |   72 +
 .../export-for-import-into-other-scm.html          |   30 +
 .../kernel-manual/export-internally-via-git.html   |   55 +
 .../export-internally-via-patches.html             |   64 +
 .../exporting-delivered-kernel-to-scm.html         |   54 +
 .../figures/kernel-architecture-overview.png       |  Bin 0 -> 40748 bytes
 .../html/kernel-manual/figures/kernel-title.png    |  Bin 0 -> 13970 bytes
 .../kernel-manual/importing-changes-for-build.html |   22 +
 .../kernel-manual/incremental-planned-sharing.html |  111 ++
 .../html/kernel-manual/index.html                  |  126 ++
 .../html/kernel-manual/kernel-architecture.html    |   21 +
 .../html/kernel-manual/kernel-big-picture.html     |   91 +
 .../html/kernel-manual/kernel-concepts.html        |   32 +
 .../html/kernel-manual/kernel-configuration.html   |   85 +
 .../html/kernel-manual/kernel-doc-intro.html       |   20 +
 .../html/kernel-manual/kernel-goals.html           |   55 +
 .../html/kernel-manual/kernel-how-to.html          |   32 +
 .../html/kernel-manual/kernel-intro-section.html   |   73 +
 .../html/kernel-manual/kernel-tools.html           |   35 +
 ...th-the-yocto-project-kernel-in-another-scm.html |   31 +
 ...show-a-particular-feature-or-branch-change.html |   53 +
 .../kernel-manual/source-code-manager-git.html     |   39 +
 .../html/kernel-manual/tip-dirty-string.html       |   43 +
 .../html/kernel-manual/tree-construction.html      |  158 ++
 .../kernel-manual/what-changed-in-a-kernel.html    |   98 +
 .../html/kernel-manual/workflow-examples.html      |   34 +
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
 .../yocto-project-qs/figures/building-an-image.png |  Bin 0 -> 14891 bytes
 .../figures/using-a-pre-built-image.png            |  Bin 0 -> 12733 bytes
 .../yocto-project-qs/figures/yocto-environment.png |  Bin 0 -> 73095 bytes
 .../figures/yocto-project-transp.png               |  Bin 0 -> 8626 bytes
 .../html/yocto-project-qs/index.html               |  863 +++++++++
 .../org.yocto.sdk.doc.user/kernel-manual-toc.xml   |   44 +
 plugins/org.yocto.sdk.doc.user/plugin.xml          |   35 +
 .../org.yocto.sdk.doc.user/poky-ref-manual-toc.xml |  182 ++
 plugins/org.yocto.sdk.doc.user/toc.xml             |   21 +
 .../yocto-project-qs-toc.xml                       |   32 +
 425 files changed, 26311 insertions(+), 0 deletions(-)
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
 create mode 100644 plugins/org.yocto.sdk.doc.user/bsp-guide-toc.xml
 create mode 100644 plugins/org.yocto.sdk.doc.user/build.properties
 create mode 100644 plugins/org.yocto.sdk.doc.user/dev-manual-toc.xml
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-intro-section.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-intro.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-package.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/adt-prepare.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/autotools-based-projects.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/configuring-and-running-the-adt-installer-script.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/configuring-the-pms.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/eclipse-overview.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/extracting-the-root-filesystem.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/figures/adt-title.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/getting-the-adt-installer-tarball.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/getting-the-images.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/index.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/installing-the-adt.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/makefile-based-projects.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/package-management-systems.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/securing-kernel-and-filesystem-images.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/setting-up-the-cross-development-environment.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/sysroot.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/the-cross-toolchain.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/the-qemu-emulator.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/user-space-tools.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/using-an-existing-toolchain-tarball.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/using-the-adt-installer.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/using-the-command-line.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/adt-manual/using-the-toolchain-from-within-the-build-tree.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/book.css
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-binary.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-kernel.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-layer.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-license.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-machine.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-misc-recipes.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-readme-sources.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-readme.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-recipes-graphics.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-layers.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-licensing-considerations.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/common-features.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/creating-a-new-bsp-layer-using-the-yocto-bsp-script.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/customizing-a-recipe-for-a-bsp.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/figures/bsp-title.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/index.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/managing-kernel-patches-and-config-items-with-yocto-kernel.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/released-bsp-recommendations.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/released-bsp-requirements.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/requirements-and-recommendations-for-released-bsps.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/using-the-yocto-projects-bsp-tools.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/adding-kernel-recipes.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/additional-implementation-details.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/adt-eclipse.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/application-development-workflow.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/basic-commands.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/bsp-recipe-change-summary.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/buiding-and-customizing-the-image.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/building-and-booting-the-default-qemu-kernel-image.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/building-and-booting-the-modified-qemu-kernel-image.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/building-images.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/building-multiple-architecture-libraries-into-one-image.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/building-software-from-an-external-source.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/building-the-image-app.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/building-the-project.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/changing-build-parameters-for-your-build.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/changing-recipes-bsp.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/changing-recipes-graphics.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/changing-recipes-kernel.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/changing-the-bsp-configuration.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/changing-the-config-smp-configuration-using-menuconfig.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/changing-the-kernel-configuration.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/changing-the-recipes-in-your-bsp.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/changing-the-source-code-and-pushing-it-to-the-bare-clone.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/choosing-a-base-bsp-app.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/configuring-the-cross-compiler-options.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/configuring-the-cross-toolchains.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/configuring-the-eclipse-ide-indigo.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/configuring-the-eclipse-ide-juno.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/configuring-the-eclipse-yocto-plug-in.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/configuring-the-kernel.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/configuring-the-target-options.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/creating-config-fragments.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/creating-the-project.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/creating-the-yocto-bitbake-commander-project.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/creating-your-own-layer.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/customizing-an-image-using-a-bitbake-commander-project-and-hob.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/deploying-and-debugging-the-application.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/dev-manual-bsp-appendix.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/dev-manual-intro.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/dev-manual-kernel-appendix.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/dev-manual-model.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/dev-manual-newbie.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/dev-manual-start.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/developing-a-board-support-package-bsp.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/editing-the-metadata-files.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/enabling-your-layer.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/examining-the-default-config-smp-behavior.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/excluding-recipes-from-the-build.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/extendpoky.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/figures/app-dev-flow.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/figures/bsp-dev-flow.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/figures/dev-title.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/figures/git-workflow.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/figures/index-downloads.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/figures/kernel-dev-flow.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/figures/kernel-example-repos-denzil.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/figures/kernel-overview-1.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/figures/kernel-overview-2.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/figures/kernel-overview-3-denzil.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/figures/source-repos.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/figures/wip.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/figures/yp-download.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/finding-the-temporary-source-code.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/fine-tuning-the-kernel-configuration-file.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/getting-local-yocto-project-files-and-bsp-files.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/getting-set-up-to-run-this-example.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/getting-setup.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/getting-your-base-bsp-app.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/git.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/how-to-submit-a-change.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/image-development-using-hob.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/including-static-library-files.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/index.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/installing-eclipse-ide.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/installing-the-eclipse-yocto-plug-in.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/intro.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/introducing-the-yocto-project.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/kernel-modification-workflow.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/kernel-overview.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/licensing.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/making-a-copy-of-the-base bsp-to-create-your-new-bsp-layer-app.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/making-changes-to-your-bsp-app.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/managing-layers.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/modifying-temporary-source-code.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/modifying-the-kernel-source-code.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/modifying-the-kernel.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/new-software.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/open-source-philosophy.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/other-information.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-appdev-devshell.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-appdev-srcrev.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-gdb-remotedebug-launch-gdb-buildcross.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-gdb-remotedebug-launch-gdb-inferiorbins.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-gdb-remotedebug-launch-gdb-launchhost.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-gdb-remotedebug-launch-gdb-using.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-gdb-remotedebug-launch-gdb.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-gdb-remotedebug-launch-gdbserver.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-gdb-remotedebug.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-newmachine-conffile.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-newmachine-formfactor.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-newmachine-kernel.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-newmachine.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-oprofile-oprofileui-offline.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-oprofile-oprofileui-online.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-oprofile-oprofileui.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-oprofile-target.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/platdev-oprofile.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/preparing-for-the-build-app.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/preparing-to-use-multilib.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/prioritizing-your-layer.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/pushing-a-change-upstream.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/recompiling-the-kernel-and-testing-the-new-configuration.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/repositories-tags-and-branches.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/running-user-space-tools.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/setting-up-the-bare-clone-and-its-copy.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/setting-up-the-eclipse-ide.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/setting-up-the-local-yocto-project-files-git-repository.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/setting-up-the-poky-extras-git-repository.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/splitting-an-application-into-multiple-packages.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/starting-qemu-in-user-space-nfs-mode.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/submitting-a-patch.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/system-development-model.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/tracking-bugs.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/understanding-and-creating-layers.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/understanding-the-files-you-need.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/using-a-git-workflow.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/using-a-quilt-workflow.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/using-bbappend-files.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/using-menuconfig.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/using-multilib.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/using-pre-built-binaries-and-qemu.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/usingpoky-changes-collaborate.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/usingpoky-changes-prbump.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/usingpoky-changes-updatingimages.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/usingpoky-configuring-DISTRO_PN_ALIAS.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/usingpoky-extend-addpkg-autotools.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/usingpoky-extend-addpkg-makefile.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/usingpoky-extend-addpkg-postinstalls.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/usingpoky-extend-addpkg-singlec.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/usingpoky-extend-addpkg.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/usingpoky-extend-customimage-custombb.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/usingpoky-extend-customimage-customtasks.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/usingpoky-extend-customimage-imagefeatures.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/usingpoky-extend-customimage-localconf.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/usingpoky-extend-customimage.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/what-this-manual-does-not-provide.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/what-this-manual-provides.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/workflow-using-stand-alone-cross-development-toolchains.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/workflow-using-the-adt-and-eclipse.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/workflows.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/yocto-project-layers.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/yocto-project-repositories.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/yocto-project-source.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/yocto-project-terms.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/dev-manual/zip-file-method.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/actions-org.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/architecture-overview.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/branching-and-workflow.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/bsp-creating.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/build-strategy.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/bulk-export.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/change-inspection-kernel-changes-commits.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/concepts-org.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/development-saving-kernel-modifications.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-for-external-upstream-submission.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-for-import-into-other-scm.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-internally-via-git.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-internally-via-patches.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/exporting-delivered-kernel-to-scm.html
 create mode 100755 plugins/org.yocto.sdk.doc.user/html/kernel-manual/figures/kernel-architecture-overview.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/figures/kernel-title.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/importing-changes-for-build.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/incremental-planned-sharing.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/index.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-architecture.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-big-picture.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-concepts.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-configuration.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-doc-intro.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-goals.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-how-to.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-intro-section.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-tools.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/scm-working-with-the-yocto-project-kernel-in-another-scm.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/show-a-particular-feature-or-branch-change.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/source-code-manager-git.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/tip-dirty-string.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/tree-construction.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/what-changed-in-a-kernel.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/workflow-examples.html
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
 create mode 100755 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/building-an-image.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/using-a-pre-built-image.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/yocto-environment.png
 create mode 100755 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/figures/yocto-project-transp.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/yocto-project-qs/index.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/kernel-manual-toc.xml
 create mode 100644 plugins/org.yocto.sdk.doc.user/plugin.xml
 create mode 100644 plugins/org.yocto.sdk.doc.user/poky-ref-manual-toc.xml
 create mode 100644 plugins/org.yocto.sdk.doc.user/toc.xml
 create mode 100644 plugins/org.yocto.sdk.doc.user/yocto-project-qs-toc.xml

-- 
1.7.7.6


