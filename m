Return-Path: <grant.b.edwards@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9348E00C46; Fri, 11 Jan 2019 08:20:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (grant.b.edwards[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C6ACE006F1
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 08:20:56 -0800 (PST)
Received: by mail-it1-f177.google.com with SMTP id w18so3339907ite.1
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 08:20:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=u/BxjQ/aiBBXQwwbM4/MIU6PbfyCQmrwtl75SUFSbfI=;
	b=Cfg/hIZzHo9vKFVsF016jvw5ymhta3RnT3r9HouI9ypAe4trlTQbdPR1nKnGr8mCkF
	CDD15nxBznAbNYQmRFQXUW4yM3Q8u9u/t0OYBOGZ6q3oe5dIf5sdx0k4dg1UYUSudG9P
	oK1XU02nEBUJKDagfNdz+PVXn2G3NBpKVXnpi4g0sezsmDRAgjiSITs8DN6EkAs8IdfY
	f8YT1HluST2KymOC6E5TjxUJTzFb8Edf7LXO9FGRQhEKJgg36hkKLLrbJLU2U7Aj3SbX
	HMD4azyVZlearoKOBuy4yNixMSIBeY2eI27BTm2CTiCrC9OxcHCeFBnBEotIsIoGKVSC
	MJww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=u/BxjQ/aiBBXQwwbM4/MIU6PbfyCQmrwtl75SUFSbfI=;
	b=D6tVK/L5tFUkxLY+fkRuyHi6gE0F4+4gMtrwLB9/v0hI0R5i3GM9uHAbpqYAphOPIl
	jYqgbCmyVPYQ+0gI1XwX8H528ohs+QWyPCroedUe+OaKNDpeipqpVl6nYSDxfH8dW/YW
	6hI4IKszCui4TZ8F6spY9hwEq8Mfl7lTMET50UHRjEKTPlsEB+tSdP6BNF0I/AwwWStH
	stawvzyPOOS5HvzMNZJMN6Sgcr44EX4anDFCN16YbXPYtJE16XRganT/wkteiz0gMgQJ
	vcm6QsB1irWu0REWYkn8q/o07SlD/WhBZgDHE6aFZvJ+C1zKL4EMqDp9r6zr/FqMjV7T
	TZ+Q==
X-Gm-Message-State: AJcUukcU2a59HUoW5Ob/l4bgNI6mHyvIDpabFld7dnZL8/2rbKG5/0pX
	P4Nj2NV4qmvKV5+Nhtw1hAnUKWjV
X-Google-Smtp-Source: ALg8bN7qJyMkmggx+wiaScKB6Fm9KhvpJyxsHaCu6s4t9dv6q5Sr4tWNMkEHFKDnEKQ/P5HVYw/h6Q==
X-Received: by 2002:a24:78c7:: with SMTP id p190mr1549345itc.21.1547223655303; 
	Fri, 11 Jan 2019 08:20:55 -0800 (PST)
Received: from grante (67-130-15-94.dia.static.qwest.net. [67.130.15.94])
	by smtp.gmail.com with ESMTPSA id t64sm1282205itb.5.2019.01.11.08.20.54
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Jan 2019 08:20:54 -0800 (PST)
Date: Fri, 11 Jan 2019 10:20:52 -0600
From: Grant Edwards <grant.b.edwards@gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Message-ID: <20190111162052.GA3008@grante>
References: <20190111155046.GA1920@grante>
	<CAJTo0LZOjtEVBj73LKCmgHLZxiRtZ+Ak8Dta2OP=+ENx4=He9w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZOjtEVBj73LKCmgHLZxiRtZ+Ak8Dta2OP=+ENx4=He9w@mail.gmail.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
Subject: Re: SDK missing /usr/include/asm header files
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
X-List-Received-Date: Fri, 11 Jan 2019 16:20:57 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 11, 2019 at 03:52:45PM +0000, Burton, Ross wrote:
> On Fri, 11 Jan 2019 at 15:51, Grant Edwards <grant.b.edwards@gmail.com> wrote:
>
> > I've built a "poky" SDK for use with a Renesas RZN1 eval board (dual
> > ARM Cortex-A7 cores), and the toolchain's sysroot seems to be missing
> > the "asm" header directory.

> How did you build the SDK?

Here is the script I used to do the build:

    git clone http://git.yoctoproject.org/git/poky

    cd poky
    git checkout -b rocko-rzn1 yocto-2.4.3
    git am ${RELEASE_DIR}/yocto/rocko/0001-ARM-Add-Cortex-A7-vfpv4-d16*.patch
    cd ..
    
    git clone -b rocko git://git.openembedded.org/meta-openembedded
    git clone https://github.com/cmhe/meta-readonly-rootfs-overlay.git
    git clone -b rocko https://github.com/renesas-rz/meta-rzn1.git
    
    cd poky
    source oe-init-build-env
    cp ${RELDIR}/yocto/bblayers.conf  build/conf/bblayers.conf
    cp ${RELDIR}/yocto/local.conf     build/conf/local.conf
    bitbake core-image-minimal
    bitbake meta-toolchain

The core images (kernel, device tree, and rootfs) seem to be OK.

bblayers.conf:

    # POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.conf
    # changes incompatibly
    POKY_BBLAYERS_CONF_VERSION = "2"
    
    BBPATH = "${TOPDIR}"
    BSPPATH := "${@os.path.abspath(os.path.dirname(d.getVar('FILE',True)) + '/../..')}"
    BBFILES ?= ""
    
    BBLAYERS ?= " \
      ${BSPPATH}/meta \
      ${BSPPATH}/meta-poky \
      ${BSPPATH}/meta-yocto-bsp \
      ${BSPPATH}/../meta-openembedded/meta-oe \
      ${BSPPATH}/../meta-openembedded/meta-python \
      ${BSPPATH}/../meta-openembedded/meta-networking \
      ${BSPPATH}/../meta-readonly-rootfs-overlay \
      ${BSPPATH}/../meta-rzn1 \
       "

local.conf:

    #
    # This file is your local configuration file and is where all local user settings
    # are placed. The comments in this file give some guide to the options a new user
    # to the system might want to change but pretty much any configuration option can
    # be set in this file. More adventurous users can look at local.conf.extended
    # which contains other examples of configuration which can be placed in this file
    # but new users likely won't need any of them initially.
    #
    # Lines starting with the '#' character are commented out and in some cases the
    # default values are provided as comments to show people example syntax. Enabling
    # the option is a question of removing the # character and making any change to the
    # variable as required.
    
    #
    # Machine Selection
    #
    # You need to select a specific machine to target the build with. There are a selection
    # of emulated machines available which can boot and run in the QEMU emulator:
    #
    #MACHINE ?= "qemuarm"
    #MACHINE ?= "qemuarm64"
    #MACHINE ?= "qemumips"
    #MACHINE ?= "qemumips64"
    #MACHINE ?= "qemuppc"
    #MACHINE ?= "qemux86"
    #MACHINE ?= "qemux86-64"
    #
    # There are also the following hardware board target machines included for 
    # demonstration purposes:
    #
    #MACHINE ?= "beaglebone"
    #MACHINE ?= "genericx86"
    #MACHINE ?= "genericx86-64"
    #MACHINE ?= "mpc8315e-rdb"
    #MACHINE ?= "edgerouter"
    #
    # This sets the default machine to be qemux86 if no other machine is selected:
    MACHINE ??= "qemux86"
    
    #
    # Where to place downloads
    #
    # During a first build the system will download many different source code tarballs
    # from various upstream projects. This can take a while, particularly if your network
    # connection is slow. These are all stored in DL_DIR. When wiping and rebuilding you
    # can preserve this directory to speed up this part of subsequent builds. This directory
    # is safe to share between multiple builds on the same machine too.
    #
    # The default is a downloads directory under TOPDIR which is the build directory.
    #
    DL_DIR ?= "${TOPDIR}/downloads"
    
    #
    # Where to place shared-state files
    #
    # BitBake has the capability to accelerate builds based on previously built output.
    # This is done using "shared state" files which can be thought of as cache objects
    # and this option determines where those files are placed.
    #
    # You can wipe out TMPDIR leaving this directory intact and the build would regenerate
    # from these files if no changes were made to the configuration. If changes were made
    # to the configuration, only shared state files where the state was still valid would
    # be used (done using checksums).
    #
    # The default is a sstate-cache directory under TOPDIR.
    #
    #SSTATE_DIR ?= "${TOPDIR}/sstate-cache"
    
    #
    # Where to place the build output
    #
    # This option specifies where the bulk of the building work should be done and
    # where BitBake should place its temporary files and output. Keep in mind that
    # this includes the extraction and compilation of many applications and the toolchain
    # which can use Gigabytes of hard disk space.
    #
    # The default is a tmp directory under TOPDIR.
    #
    #TMPDIR = "${TOPDIR}/tmp"
    
    #
    # Default policy config
    #
    # The distribution setting controls which policy settings are used as defaults.
    # The default value is fine for general Yocto project use, at least initially.
    # Ultimately when creating custom policy, people will likely end up subclassing 
    # these defaults.
    #
    DISTRO ?= "poky"
    # As an example of a subclass there is a "bleeding" edge policy configuration
    # where many versions are set to the absolute latest code from the upstream 
    # source control systems. This is just mentioned here as an example, its not
    # useful to most new users.
    # DISTRO ?= "poky-bleeding"
    
    #
    # Package Management configuration
    #
    # This variable lists which packaging formats to enable. Multiple package backends
    # can be enabled at once and the first item listed in the variable will be used
    # to generate the root filesystems.
    # Options are:
    #  - 'package_deb' for debian style deb files
    #  - 'package_ipk' for ipk files are used by opkg (a debian style embedded package manager)
    #  - 'package_rpm' for rpm style packages
    # E.g.: PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk"
    # We default to rpm:
    PACKAGE_CLASSES ?= "package_rpm"
    
    #
    # SDK target architecture
    #
    # This variable specifies the architecture to build SDK items for and means
    # you can build the SDK packages for architectures other than the machine you are
    # running the build on (i.e. building i686 packages on an x86_64 host).
    # Supported values are i686 and x86_64
    #SDKMACHINE ?= "i686"
    
    #
    # Extra image configuration defaults
    #
    # The EXTRA_IMAGE_FEATURES variable allows extra packages to be added to the generated
    # images. Some of these options are added to certain image types automatically. The
    # variable can contain the following options:
    #  "dbg-pkgs"       - add -dbg packages for all installed packages
    #                     (adds symbol information for debugging/profiling)
    #  "dev-pkgs"       - add -dev packages for all installed packages
    #                     (useful if you want to develop against libs in the image)
    #  "ptest-pkgs"     - add -ptest packages for all ptest-enabled packages
    #                     (useful if you want to run the package test suites)
    #  "tools-sdk"      - add development tools (gcc, make, pkgconfig etc.)
    #  "tools-debug"    - add debugging tools (gdb, strace)
    #  "eclipse-debug"  - add Eclipse remote debugging support
    #  "tools-profile"  - add profiling tools (oprofile, lttng, valgrind)
    #  "tools-testapps" - add useful testing tools (ts_print, aplay, arecord etc.)
    #  "debug-tweaks"   - make an image suitable for development
    #                     e.g. ssh root access has a blank password
    # There are other application targets that can be used here too, see
    # meta/classes/image.bbclass and meta/classes/core-image.bbclass for more details.
    # We default to enabling the debugging tweaks.
    EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
    
    #
    # Additional image features
    #
    # The following is a list of additional classes to use when building images which
    # enable extra features. Some available options which can be included in this variable
    # are:
    #   - 'buildstats' collect build statistics
    #   - 'image-mklibs' to reduce shared library files size for an image
    #   - 'image-prelink' in order to prelink the filesystem image
    #   - 'image-swab' to perform host system intrusion detection
    # NOTE: if listing mklibs & prelink both, then make sure mklibs is before prelink
    # NOTE: mklibs also needs to be explicitly enabled for a given image, see local.conf.extended
    USER_CLASSES ?= "buildstats image-mklibs image-prelink"
    
    #
    # Runtime testing of images
    #
    # The build system can test booting virtual machine images under qemu (an emulator)
    # after any root filesystems are created and run tests against those images. To
    # enable this uncomment this line. See classes/testimage(-auto).bbclass for
    # further details.
    #TEST_IMAGE = "1"
    #
    # Interactive shell configuration
    #
    # Under certain circumstances the system may need input from you and to do this it
    # can launch an interactive shell. It needs to do this since the build is
    # multithreaded and needs to be able to handle the case where more than one parallel
    # process may require the user's attention. The default is iterate over the available
    # terminal types to find one that works.
    #
    # Examples of the occasions this may happen are when resolving patches which cannot
    # be applied, to use the devshell or the kernel menuconfig
    #
    # Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE 3.x only), none
    # Note: currently, Konsole support only works for KDE 3.x due to the way
    # newer Konsole versions behave
    #OE_TERMINAL = "auto"
    # By default disable interactive patch resolution (tasks will just fail instead):
    PATCHRESOLVE = "noop"
    
    #
    # Disk Space Monitoring during the build
    #
    # Monitor the disk space during the build. If there is less that 1GB of space or less
    # than 100K inodes in any key build location (TMPDIR, DL_DIR, SSTATE_DIR), gracefully
    # shutdown the build. If there is less that 100MB or 1K inodes, perform a hard abort
    # of the build. The reason for this is that running completely out of space can corrupt
    # files and damages the build in ways which may not be easily recoverable.
    # It's necesary to monitor /tmp, if there is no space left the build will fail
    # with very exotic errors.
    BB_DISKMON_DIRS = "\
        STOPTASKS,${TMPDIR},1G,100K \
        STOPTASKS,${DL_DIR},1G,100K \
        STOPTASKS,${SSTATE_DIR},1G,100K \
        STOPTASKS,/tmp,100M,100K \
        ABORT,${TMPDIR},100M,1K \
        ABORT,${DL_DIR},100M,1K \
        ABORT,${SSTATE_DIR},100M,1K \
        ABORT,/tmp,10M,1K"
    
    #
    # Shared-state files from other locations
    #
    # As mentioned above, shared state files are prebuilt cache data objects which can
    # used to accelerate build time. This variable can be used to configure the system
    # to search other mirror locations for these objects before it builds the data itself.
    #
    # This can be a filesystem directory, or a remote url such as http or ftp. These
    # would contain the sstate-cache results from previous builds (possibly from other
    # machines). This variable works like fetcher MIRRORS/PREMIRRORS and points to the
    # cache locations to check for the shared objects.
    # NOTE: if the mirror uses the same structure as SSTATE_DIR, you need to add PATH
    # at the end as shown in the examples below. This will be substituted with the
    # correct path within the directory structure.
    #SSTATE_MIRRORS ?= "\
    #file://.* http://someserver.tld/share/sstate/PATH;downloadfilename=PATH \n \
    #file://.* file:///some/local/dir/sstate/PATH"
    
    
    #
    # Qemu configuration
    #
    # By default qemu will build with a builtin VNC server where graphical output can be
    # seen. The two lines below enable the SDL backend too. By default libsdl-native will
    # be built, if you want to use your host's libSDL instead of the minimal libsdl built
    # by libsdl-native then uncomment the ASSUME_PROVIDED line below.
    PACKAGECONFIG_append_pn-qemu-native = " sdl"
    PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
    #ASSUME_PROVIDED += "libsdl-native"
    
    # CONF_VERSION is increased each time build/conf/ changes incompatibly and is used to
    # track the version of this file when it was generated. This can safely be ignored if
    # this doesn't mean anything to you.
    CONF_VERSION = "1"
    
    MACHINE = "rzn1d400-db"
    MACHINE_FEATURES = "wifi"
    
    KERNEL_DEVICETREE = "rzn1d400-db.dtb rzn1d400-db-no-cm3.dtb rzn1d400-db-both-gmacs.dtb"
    IMAGE_INSTALL_append = " dropbear libsocketcan can-utils iproute2 i2c-tools stress bonnie++ mtd-utils mtd-utils-jffs2 mtd-utils-misc iw nfs-utils nfs-utils-client vsftpd gdbserver strace devmem2"
    IMAGE_INSTALL_append += " initscripts-readonly-rootfs-overlay"
    IMAGE_INSTALL_append += " openssl"
    
    # Disable unused features, otherwise Qt will build plugins for everything, and those plugins rely on a lot of other packages (alsa, bluez, mesa)...
    DISTRO_FEATURES_remove = " alsa pulseaudio bluetooth 3g nfc directfb x11 wayland opengl pci pcmcia irda"
    # Qt 5.9.2 thinks it needs x11, but it doesn't really
    PACKAGECONFIG_remove_pn-qtbase = " tests x11"
    # usbutils recommends udev-hwdb, which is 7MB we really don't need
    NO_RECOMMENDATIONS = "1"
    
    # We don't want dev packages or debug symbols
    INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
    
    # Depends on you host CPU
    BB_NUMBER_THREADS = "2"
    PARALLEL_MAKE = "-j 2"
    # INHERIT += "rm_work" deletes the source and intermediate files for each package once built. If you want to make modifications, you probably don't want this!
    INHERIT += "rm_work"
    RM_OLD_IMAGE = "1"
    
    KERNEL_IMAGETYPE = "uImage"
    
    # IMAGE_FSTYPES defines the format of the rootfs created.
    # When building an initramfs (if you set INITRAMFS_IMAGE_BUNDLE), when you build the kernel the file with this
    # extension is decompressed first. Therefore, IMAGE_FSTYPES used does not affect the compression of the initramfs.
    # See kernel.bbclass for details.
    # See meta/classes/image_types.bbclass IMAGE_FSTYPES for your choices here.
    #IMAGE_FSTYPES = "tar.bz2 squashfs"
    
    # Set GLIBC_GENERATE_LOCALES to the locales you wish to generate should you not
    # wish to perform the time-consuming step of generating all LIBC locales.
    # NOTE: If removing en_US.UTF-8 you will also need to uncomment, and set
    # appropriate value for IMAGE_LINGUAS.
    # WARNING: this may break localisation!
    GLIBC_GENERATE_LOCALES = "en_US.UTF-8 fr_CH.UTF-8 de_DE.UTF-8 en_GB.UTF-8"
    IMAGE_LINGUAS ?= "en-us fr-ch de-de en-gb"
    
    # License compliance: Generate tarball of source code
    INHERIT += "archiver"
    ARCHIVER_MODE[src] = "original"
    
    # License compliance: Include license with the binaries (i.e. in the rootfs)
    COPY_LIC_MANIFEST = "1"
    COPY_LIC_DIRS = "1"
    LICENSE_CREATE_PACKAGE = "1"

