Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF55CE0178C
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 10:59:08 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 13 Nov 2013 10:59:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,693,1378882800"; d="scan'208";a="427087122"
Received: from mcmahond-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.174])
	by fmsmga001.fm.intel.com with ESMTP; 13 Nov 2013 10:59:03 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <srifenbark@gmail.com>, yocto@yoctoproject.org
Date: Wed, 13 Nov 2013 18:59:02 +0000
Message-ID: <276876615.vlDKMLj04R@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
MIME-Version: 1.0
Subject: Undocumented classes
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
X-List-Received-Date: Wed, 13 Nov 2013 18:59:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Scott / all,

Here's my first pass for the documentation for all of the classes in our
undocumented classes list for the Reference Manual. Some of this will
need further input (from other folks and no doubt myself) but it's a start.
I thought I would post it here in case anyone felt like adding / altering
anything. Comments are in square brackets.

For reference, this relates to the following enhancement bug:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=4931

(Apologies for the lack of wrapping below but I wanted to make it a bit
easier for Scott to edit.)

------------------------

=== allarch.bbclass ===

Class to be inherited by recipes that do not produce any architecture-specific output. It disables functionality that is normally needed for recipes that produce executable binaries (such as building the cross-compiler and C library as pre-requisites, and splitting out of debug symbols during packaging).

This class is often used by recipes that only produce packages containing configuration files, media files or scripts (such as Python or Perl scripts).

=== archive*.bbclass ===

[Already covered in current manual, remove from list]

=== binconfig.bbclass ===

[Already covered in current manual, remove from list]

=== bin_package.bbclass ===

Helper class for recipes which extract the contents of a binary package (e.g. an RPM) and install it instead of building from source. The binary package is extracted and new packages in the configured output package format are created.

Note: for RPMs and other packages that do not contain a subdirectory, you should specify a subdir parameter, for example:

  SRC_URI = "http://example.com/downloads/somepackage.rpm;subdir=${BP}"

  Using ${BP} will match up with the subdirectory expected by the default value of S.

=== blacklist.bbclass ===

Used for blacklisting certain recipes which you wish to prevent being built. To use, inherit the class globally and set PNBLACKLIST for each recipe you wish to blacklist, specifying the PN value as a varflag and a reason to be reported if the package is requested to be built as the value. For example, if you wished to blacklist a recipe called "exoticware" you would add the following to your local.conf or distro configuration:

INHERIT += "blacklist"
PNBLACKLIST[exoticware] = "not supported by our organisation"

=== bootimg.bbclass ===

Creates a bootable image using syslinux, your kernel and an optional initrd. The end result is two things:

1. A .hddimg file which is an msdos filesystem containing syslinux, a kernel,
an initrd and a rootfs image. These can be written to harddisks directly and
also booted on USB flash disks (write them there with dd).

2. A CD .iso image
Boot process is that the initrd will boot and process which label was selected
in syslinux. Actions based on the label are then performed (e.g. installing to
an hdd)

Variables supported by this class:
INITRD - indicates a filesystem image to use as an initrd (optional)
NOISO  - skip building the ISO image if set to 1
NOHDD  - skip building the HDD image if set to 1
ROOTFS - indicates a filesystem image to include as the root filesystem (optional)

=== boot-directdisk.bbclass ===

Creates an image which can be placed directly onto a harddisk using dd and then booted. Uses syslinux.

The end result is a 512 boot sector populated with an MBR and partition table followed by an msdos fat16 partition containing syslinux and a Linux kernel completed by the ext2/3 rootfs.

=== bugzilla.bbclass ===

If enabled, automatically files bug reports at a Bugzilla instance of your choice in response to build failures.
It uses Bugzilla's XML-RPC interface, so you must have that enabled in the Bugzilla instance for this to work.

=== buildhistory.bbclass ===

Records a history of build output metadata, which can be used to detect possible regressions as well as for analysis of the build output.

[link to buildhistory section]

=== buildstats.bbclass ===

Records performance statistics about each task executed during the build (such as elapsed time, CPU usage, I/O usage etc.).

The output is put into BUILDSTATS_BASE directory (defaults to ${TMPDIR}/buildstats/). The elapsed time can be analysed using scripts/pybootchartgui/pybootchartgui.py, which produces a cascading chart of the entire build process and can be useful for highlighting bottlenecks.

This class is enabled in the template local.conf by default via the USER_CLASSES variable.

=== ccache.bbclass ===

Enables ccache (http://ccache.samba.org/) for the build. This is used by some in order to give a minor performance boost, but can lead to unexpected side-effects. It is recommended that you do not use this class.

=== chrpath.bbclass ===

A wrapper around the "chrpath" utility which is used during the build process for nativesdk recipes to change RPATH records within binaries in order to make them relocatable.

=== clutter.bbclass ===

A class consolidating the major/minor version naming and other common items used by clutter and related recipes.

=== cmake.bbclass ===

A class for recipes that need to build software that uses the CMake build system. The EXTRA_OECMAKE variable can be used to specify additional configuration options to be passed on the cmake command line.

=== cml1.bbclass ===

Provides basic support for the Linux kernel style build configuration system.

=== copyleft_compliance.bbclass ===

An alternative to the archive* classes for preserving source code for the purposes of license compliance. This class is still in use by some users but is deprecated in favour of archive*.bbclass.

=== core-image.bbclass ===

Provides common definitions for the core-image-* image recipes, such as support for additional IMAGE_FEATURES.

=== cross.bbclass ===

Common class for cross-compilation tools.

=== cross-canadian.bbclass ===

Common class for "Canadian" cross-compilation tools for SDKs.

[link to section where we discuss Canadian cross SDK generation]

=== crosssdk.bbclass ===

Common class for cross-compilation tools used in the construction of SDKs.

[link to section where we discuss cross SDK generation]

=== deploy.bbclass ===

Common class for handling deploying files to the DEPLOY_DIR_IMAGE directory. The main function of this class is to allow the deploy step to be accelerated by shared state. Recipes that inherit this class should define their own do_deploy function which copies the files to be deployed to DEPLOYDIR, and use addtask to add the task at the approprate place (usually after do_compile or do_install).

=== distrodata.bbclass ===

Handles checking for upstream updates of recipes in an automated manner.

[need more material here]

=== distro_features_check.bbclass ===

Allows individual recipes to check for required and conflicting DISTRO_FEATURES. Provides support for two additional variables:

REQUIRED_DISTRO_FEATURES: ensure every item on this list is included in DISTRO_FEATURES.
CONFLICT_DISTRO_FEATURES: ensure no item in this list is included in DISTRO_FEATURES.

If any conditions specified in the recipe using the above variables are not met, the recipe will be skipped.

=== dummy.bbclass ===

[no longer exists, remove from list]

=== extrausers.bbclass ===

Allows additional user/group configuration to be applied at the image level.
Inheriting this class either globally or from an image recipe allows additional user/group operations to be performed using the EXTRA_USERS_PARAMS variable.

An example of using this class in an image recipe:

inherit extrausers
EXTRA_USERS_PARAMS = "\
    useradd -p '' tester; \
    groupadd developers; \
    userdel nobody; \
    groupdel -g video; \
    groupmod -g 1020 developers; \
    usermod -s /bin/sh tester; \
    "

=== fontcache.bbclass ===

Generates the proper postinst/postrm scriptlets for font packages. These scriptlets will call fc-cache (part of Fontconfig) to add the fonts to the font information cache. Since the cache files are architecture-specific, fc-cache will be run via QEMU if the postinst scriptlets need to be run on the build host during image creation.

If the fonts being installed are in packages other than the main package, set FONT_PACKAGES to include the packages containing the fonts.

=== gconf.bbclass ===

Provides common functionality for recipes that need to install GConf schemas. The schemas will be put into a separate package (${PN}-gconf) which will be created automatically when this class is inherited; this package will use the appropriate postinst/postrm scriptlets to register/unregister the schemas in the target image.

=== gettext.bbclass ===

Provides support for building software that uses the GNU gettext internationalization and localization system. All recipes building software that uses gettext should inherit this class.

=== gnomebase.bbclass ===

Base class for recipes that build software from the GNOME stack.

=== gnome.bbclass ===

Class for recipes that build software from the GNOME stack. This inherits the gnomebase, gtk-icon-cache, gconf and mime classes, and disables GObject introspection where applicable.

=== grub-efi.bbclass ===

Provides grub-efi specific functions for building bootable images.

Variables supported by this class:
INITRD - indicates a filesystem image to use as an initrd (optional)
ROOTFS - indicates a filesystem image to include as the root filesystem (optional)
GRUB_GFXSERIAL - set this to 1 to have graphics and serial in the boot menu
LABELS - a list of targets for the automatic config
APPEND - an override list of append strings for each label
GRUB_OPTS - additional options to add to the config, ';' delimited # (optional)
GRUB_TIMEOUT - timeout before executing the deault label (optional)

=== gsettings.bbclass ===

Provides common functionality for recipes that need to install GSettings (glib) schemas. The schemas are assumed to be part of the main package; appropriate postinst/postrm scriptlets will be added to register/unregister the schemas in the target image.

=== gtk-doc.bbclass ===

Helper class to pull in the appropriate gtk-doc dependencies and disable gtk-doc.

=== gtk-icon-cache.bbclass ===

Generates the proper postinst/postrm scriptlets for packages that use GTK+ and install icons. These scriptlets will call gtk-update-icon-cache to add the fonts to GTK+'s icon cache. Since the cache files are architecture-specific, gtk-update-icon-cache will be run via QEMU if the postinst scriptlets need to be run on the build host during image creation.

=== gtk-immodules-cache.bbclass ===

Generates the proper postinst/postrm scriptlets for packages that install GTK+ input method modules for virtual keyboards. These scriptlets will call gtk-update-icon-cache to add the input method modules to the cache. Since the cache files are architecture-specific, gtk-update-icon-cache will be run via QEMU if the postinst scriptlets need to be run on the build host during image creation.

If the input method modules being installed are in packages other than the main package, set GTKIMMODULES_PACKAGES to include the packages containing the modules.

=== gzipnative.bbclass ===

Class enabling the use of our own native versions of gzip/pigz rather than the system versions.

[more detail needed?]

=== icecc.bbclass ===

IceCream distributed compiling support

Stages directories with symlinks from gcc/g++ to icecc, for both native and cross compilers. Depending on each configure or compile, the directories are added at the head of the PATH list and ICECC_CXX
and ICEC_CC are set.

For the cross compiler, creates a tar.gz of our toolchain and sets ICECC_VERSION accordingly.

The class now handles all 3 different compile 'stages' (i.e native ,cross-kernel and target) creating the necessary environment tar.gz file to be used by the remote machines. It also supports SDK generation.

If ICECC_PATH is not set in local.conf then the class will try to locate it using 'which'.

If ICECC_ENV_EXEC is set in local.conf should point to the icecc-create-env script provided by the user or the default one provided by icecc-create-env.bb  will be used (NOTE that this is a modified version of the script need and *not the one that comes with icecc*)

User can specify if specific packages or packages belonging to class should not use icecc to distribute compile jobs to remote machines, but handled localy, by defining ICECC_PACKAGE_BL and ICECC_USER_CLASS_BL respectively with the appropriate values in local.conf. In addition the user can force to enable icecc for packages which set an empty PARALLEL_MAKE variable by defining ICECC_USER_PACKAGE_WL.

=== image-empty.bbclass ===

[let's leave this one undocumented for now since I think we can drop it]

=== image-live.bbclass ===

Class supporting the building of "live" images. This class is normally not used directly; instead add "live" to IMAGE_FSTYPES. Note: if adding "live" to IMAGE_FSTYPES within an image recipe, ensure that you do that before the "inherit image" line or it will not work).

[possibly move note above to the IMAGE_FSTYPES glossary entry]

=== image-vmdk.bbclass ===

Class supporting the building of VMware VMDK images. This class is normally not used directly; instead add vmdk to IMAGE_FSTYPES.

=== image-mklibs.bbclass ===

Enables the use of the mklibs utility during do_rootfs which optimizes the size of libraries contained in the image.

This class is enabled in the template local.conf by default via the USER_CLASSES variable.

=== image-prelink.bbclass ===

Enables the use of the prelink utility during do_rootfs which optimizes the dynamic linking of shared libraries to reduce start up time of executables.

This class is enabled in the template local.conf by default via the USER_CLASSES variable.

=== image-swab.bbclass ===

Enables the swabber tool in order to detect and log accesses to the host system during the build process.

Note: this class is currently unmaintained.

=== image_types.bbclass ===

Defines all of the standard image output types that can be enabled through the IMAGE_FSTYPES variable. This class can be used as a reference on how to add support for custom image output types.

This class is enabled by default via the IMAGE_CLASSES variable in image.bbclass. If you define your own image types using a custom bbclass and then use IMAGE_CLASSES to enable it, the custom class must either inherit image_types -or- image_types must also appear in IMAGE_CLASSES.

=== image_types_uboot.bbclass ===

Defines additional image types specifically for the u-boot bootloader.

[need more explanation here as to when/if this is needed]

=== insserv.bbclass ===

Uses the insserv utility to update the order of symlinks in /etc/rc?.d/ within an image based on dependencies specified by LSB headers in the init.d scripts themselves.

=== kernel-arch.bbclass ===

Sets the ARCH environment variable for Linux kernel compilation (including modules).

=== kernel-module-split.bbclass ===

Provides common functionality for splitting Linux kernel modules into separate packages.

=== kernel-yocto.bbclass ===

Provides common functionality for building from linux-yocto style kernel source repositories.

=== lib_package.bbclass ===

Class for recipes building libraries but that also produce executable binaries, where those binaries should not be installed by default along with the library. Instead, the binaries are added to a separate ${PN}-bin package to make their installation optional.

=== linux-kernel-base.bbclass ===

Class providing common functionality for recipes building out of the Linux kernel source tree. This goes beyond the kernel itself; for example the perf recipe also inherits this class.

=== license.bbclass ===

Class providing license manifest creation and license exclusion.

[more info needed here]

This class is enabled by default via the default value of INHERIT_DISTRO.

=== logging.bbclass ===

Provides the standard bbplain/bbnote/bbwarn/bberror/bbfatal/bbdebug shell functions that can be used to log messages at various different levels of severity.

This class is enabled by default since it is inherited by base.bbclass.

=== meta.bbclass ===

Class to be inherited by recipes that don't build any output packages themselves, but act as a "meta" target for building other recipes (and may create output files deploy

=== metadata_scm.bbclass ===

Provides functionality for querying the branch and revision of a source code manager (SCM) repository. This is used by base.bbclass to print the revisions of each layer before starting every build.

This class is enabled by default since it is inherited by base.bbclass.

=== migrate_localcount.bbclass ===

[need description]

=== mime.bbclass ===

Generates the proper postinst/postrm scriptlets for packages that install MIME type files. These scriptlets will call update-mime-database to add the MIME types to the shared database.

=== mirrors.bbclass ===

Sets up some standard MIRRORS entries for source code mirrors, providing a fall-back path in case the upstream source specified in SRC_URI within recipes is unavailable.

This class is enabled by default since it is inherited by base.bbclass.

=== multilib*.bbclass ===

Classes providing support for building libraries with different target optimizations or target architectures and installing them side-by-side in the same image.

[link to multilib section]

=== native.bbclass ===

Provides common functionality for recipes that wish to build tools to run on the build host, i.e. using the compiler/tools from the build host.

This class can be inherited directly by recipes that build for the build host only (in which case the recipe name should end with "-native"), or alternatively a native variant of any recipe can be created by adding "native" to BBCLASSEXTEND within the recipe (using _class-native and _class-target overrides to specify any functionality specific to the native or target case respectively).

=== nativesdk.bbclass ===

Provides common functionality for recipes that wish to build tools to run as part of an SDK (that runs on SDKMACHINE).

This class can be inherited directly by recipes that build for the SDK only (in which case the recipe name should end with "-native"), or alternatively a nativesdk variant of any recipe can be created by adding "nativesdk" to BBCLASSEXTEND within the recipe (using _class-nativesdk and _class-target overrides to specify any functionality specific to the nativesdk or target case respectively).

=== oelint.bbclass ===

[obsolete]

=== own-mirrors.bbclass ===

Helper class that makes it easier to set up your own PREMIRRORS to fetch source from first before using the upstream specified in SRC_URI within each recipe. To use this class, inherit it globally and specify SOURCE_MIRROR_URL, for example:

INHERIT += "own-mirrors"
SOURCE_MIRROR_URL = "http://example.com/my-source-mirror"

Only one URL can be specified in SOURCE_MIRROR_URL.

=== packagedata.bbclass ===

Class providing common functionality for reading pkgdata files (found in PKGDATA_DIR) which contain information about each output package produced by the system.

This class is enabled by default since it is inherited by package.bbclass.

=== packageinfo.bbclass ===

Gives BitBake UIs the ability to retrieve information about output packages from the pkgdata files.

This class is enabled automatically when using the Hob UI.

=== patch.bbclass ===

Provides all functionality for applying patches during do_patch.

This class is enabled by default since it is inherited by base.bbclass.

=== perlnative.bbclass ===

When inherited by a recipe, switches over to using the native version of perl built by the build system instead of the one provided by the build host.

[need explanation of when to use this]

=== pixbufcache.bbclass ===

Generates the proper postinst/postrm scriptlets for packages that install pixbuf loaders (for gdk-pixbuf). These scriptlets will call update_pixbuf_cache to add the input method modules to the cache. Since the cache files are architecture-specific, update_pixbuf_cache will be run via QEMU if the postinst scriptlets need to be run on the build host during image creation.

If the pixbuf loaders modules being installed are in packages other than the main package, set PIXBUF_PACKAGES to include the packages containing the modules.

=== pkg_distribute.bbclass ===

[obsolete, remove from list]

=== pkg_metainfo.bbclass ===

[obsolete, remove from list]

=== populate_sdk*.bbclass ===

Classes providing functionality for building SDKs.

[more info / links needed]

=== prexport.bbclass ===

Provides functionality for exporting PR values.

This class is not intended to be used directly - it is enabled when using "bitbake-prserv-tool export".

=== primport.bbclass ===

Provides functionality for importing PR values.

This class is not intended to be used directly - it is enabled when using "bitbake-prserv-tool import".

=== prserv.bbclass ===

Provides functionality for using a PR service in order to automatically manage the incrementing of the PR variable for each recipe.

This class is enabled by default since it is inherited by package.bbclass, however it will not be used unless PRSERV_HOST has been set.

=== ptest.bbclass ===

Provides functionality for packaging and installing runtime tests for recipes building software that provides them.

This class is intended to be inherited by individual recipes, however its functionality will be largely disabled unless "ptest" appears in DISTRO_FEATURES.

[link to section on ptest]

=== python-dir.bbclass ===

[need description here]

=== pythonnative.bbclass ===

When inherited by a recipe, switches over to using the native version of Python built by the build system instead of the one provided by the build host.

[need explanation of when to use this]

=== qemu.bbclass ===

Class providing functionality for recipes that need QEMU or test for its existence. Typically it is used to run programs for a target system on the build host using QEMU's application emulation mode.

=== qmake*.bbclass ===

Classes for recipes that need to build software that uses Qt's qmake build system.

If you need to set any configuration variables or pass any options to qmake, you can add these to the EXTRA_QMAKEVARS_PRE or EXTRA_QMAKEVARS_POST variables, depending on whether the arguments need to be before or after the .pro file list on the command line respectively.

By default, all .pro files will be built. If you want to specify your own subset of .pro files to be built, specify them in the QMAKE_PROFILES variable.

qmake_base.bbclass provides base functionality for all versions of qmake; qmake2.bbclass extends this for qmake 2.x as used by Qt 4.x.

[need more detail]

=== qt4*.bbclass ===

Classes for recipes that need to build software that uses the Qt development framework version 4.x.

qt4x11.bbclass is for building against Qt/X11, whereas qt4e.bbclass is for building against Qt/Embedded (using the framebuffer for graphical output).

These classes inherit qmake2.bbclass.

[need more details]
[add note for what to do if not using qmake?]

=== recipe_sanity.bbclass ===

[obsolete]

=== relocatable.bbclass ===

Class enabling relocation of binaries when they are installed into the sysroot.

This class is used by cross.bbclass and native.bbclass, and makes use of chrpath.bbclass.

=== scons.bbclass ===

A class for recipes that need to build software that uses the scons build system. The EXTRA_OESCONS variable can be used to specify additional configuration options to be passed on the scons command line.

=== sdl.bbclass ===

Classes for recipes that need to build software that uses the SDL library.

=== setuptools.bbclass ===

Extensions that use setuptools-based build systems require setuptools.bbclass in their recipes.

[add this to the "Python Extensions" subsection that already exists]

=== sip.bbclass ===

Classes for recipes that build/package SIP-based Python bindings.

=== siteconfig.bbclass ===

Class providing functionality for handling site configuration. This is used by autotools.bbclass to accelerate do_configure.

[need better description here]

=== sourcepkg.bbclass ===

[no longer exists, remove from list]

=== spdx.bbclass ===

This class integrates real-time license scanning, generation of SPDX standard output and verifying license info during the building process.

[need more info]

Note: this class is currently at the prototype stage in the 1.5 release.

=== sstate.bbclass ===

Class providing support for Shared State (sstate).

[link to sstate section]

This class is enabled by default via the default value of INHERIT_DISTRO.

=== staging.bbclass ===

Class providing support for staging files into the sysroot during do_populate_sysroot.

This class is enabled by default since it is inherited by base.bbclass.

=== syslinux.bbclass ===

Provides syslinux-specific functions for building bootable images.

Variables supported by this class:
INITRD - indicates a filesystem image to use as an initrd (optional)
ROOTFS - indicates a filesystem image to include as the root filesystem (optional)
AUTO_SYSLINUXMENU - set this to 1 to enable creating an automatic menu
LABELS - a list of targets for the automatic config
APPEND - an override list of append strings for each label
SYSLINUX_OPTS - additional options to add to the syslinux file, semicolon delimited
SYSLINUX_SPLASH - A background for the vga boot menu if using the boot menu
SYSLINUX_DEFAULT_CONSOLE - set to "console=ttyX" to change kernel boot default console
SYSLINUX_SERIAL - Set an alternate serial port or turn off serial with empty string
SYSLINUX_SERIAL_TTY - Set alternate console=tty... kernel boot argument

[need doc on how this would be used]

=== systemd.bbclass ===

Class providing support for recipes that install systemd unit files.

Functionality for this class will be disabled unless "systemd" appears in DISTRO_FEATURES.

Unit files should be installed into ${D}${systemd_unitdir}/system during do_install. If the unit files being installed go into packages other than the main package, set SYSTEMD_PACKAGES to include the packages containing the files.

SYSTEMD_SERVICE should be set to the name of the service file. You should use a package name override to indicate which package the value applies to (${PN} if it is the main package for the recipe). For example, from the connman recipe:

 SYSTEMD_SERVICE_${PN} = "connman.service"

Services will be set up to start on boot automatically unless SYSTEMD_AUTO_ENABLE is set to "disable".

[link to systemd section]

=== terminal.bbclass ===

Class providing support for starting a terminal session. The OE_TERMINAL variable is used to control which terminal emulator will be used for the session.

This class is used anywhere a separate terminal session needs to be started, including patch.bbclass (if PATCHRESOLVE is set to "user"), cml1.bbclass and devshell.bbclass.

=== tinderclient.bbclass ===

If enabled, submits build results to an external Tinderbox instance.

Note: this class is currently unmaintained.

=== toaster.bbclass ===

Collects information about packages and images and sends them as events that the BitBake UI can receive.

This class is not intended to be used directly - it is enabled when the Toaster UI is running.

=== toolchain-scripts.bbclass ===

Class providing the scripts used for setting up the environment for installed SDKs.

[more info / links needed]

=== typecheck.bbclass ===

Class providing support for validating the values of variables set at the configuration level against their defined types. The OpenEmbedded build system allows the definition of the type of a variable using the "type" varflag, for example:

IMAGE_FEATURES[type] = "list"

=== uboot-config.bbclass ===

[need description here - check with Otavio]

=== utility-tasks.bbclass ===

Class providing support for various "utility" type tasks that are applicable to all recipes, such as do_clean, do_listtasks, etc.

This class is enabled by default since it is inherited by base.bbclass.

=== utils.bbclass ===

Provides some useful Python functions that are typically used in inline Python expressions (${@...}), for example base_contains().

[point to class file for further reference]

This class is enabled by default since it is inherited by base.bbclass.

=== vala.bbclass ===

A class for recipes that need to build software written using the Vala programming language.

=== waf.bbclass ===

A class for recipes that need to build software that uses the waf build system. The EXTRA_OECONF variable can be used to specify additional configuration options to be passed on the waf command line.

------------------------

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

