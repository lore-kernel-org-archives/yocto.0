Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E409AE00D07; Fri, 11 Jan 2019 08:30:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
	[209.85.166.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 994A6E00BE8
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 08:30:54 -0800 (PST)
Received: by mail-io1-f41.google.com with SMTP id x6so12608822ioa.9
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 08:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=wk88nbgPQpk3luzXlraUMR1WWI3b9MLH3L3aTxe+qHo=;
	b=L2BjdGKcBvaMuRUfDLHRzm8ADQnjuT02FYGODu6thz8KZXE7mdGFzRn8Hbcr0+sLtl
	C2aEaq4/RiHlXLcRoWVe6AvLJBFZipQsbLyP7yXIowAs1C4sxa4p2cBiywsWoe8CQs8y
	eDZ7qgdXDlvvT1gBm8SHPL8wdzGV4FQ+0783go+/SV91Vj9wMziAL4koAKYpLkWn6fP+
	LprdY1XJ7Cjsk+vNfeK85wX0thv0N7GjFOiW9ey5kJLNpAuKpNvGBQXfENqR/lQhlgvG
	5aUUNKWbVBSzmP0X9waCWdCLHN8DJpqyGD1XdyoyeGHHxP9gdCgh8ZuAettz0SlK6veh
	5kAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=wk88nbgPQpk3luzXlraUMR1WWI3b9MLH3L3aTxe+qHo=;
	b=FsC8RAQczOqO2t7hF+wigGd76wZwu+6/ru/eBU3qxmyzqrdZFMvLaruwLOL6ie6L2S
	kTZjLGBlrDNf0/O3fQRFYrS4XEtLrESF3ieaxYRx6otchH5CbJYbEL/PdHIeLho42oWq
	BCaJaTY8pGbgvZbiVLoNjI1YpkmYjVjdkqSKesU669bzQl7uESgz/NbjX1ayG5VMxpzu
	8XZd04CjHQNQNdEPK81MnJA0odwQdp8AV7r+mKj0cj+cUCX6ptG/5NHdOqkMq+2sSGyq
	BU4hc66hy+XtVK/WQy7q8NHECnRDdTaoOSddbYmp+TdS8hcQQ1zE9v26HzAKw/mX5y7d
	wOdA==
X-Gm-Message-State: AJcUukczTAuMZ4gudXNTb0euH8g1MPwwPNVTgN/X5hmN8R/ipgHqn9g/
	AJKCAKK+Qt1UdzP4vteO3uHSNsiubFIs1q94uNr3cA==
X-Google-Smtp-Source: ALg8bN6xTCTK31aStFKVt1nGMkGHDD9bQl8seMEVXLUYp6SkDqL+A2aWfsmzRETNNt4WbiSfWMxjOj1nIkCTkX3KrFw=
X-Received: by 2002:a6b:f70a:: with SMTP id k10mr8903525iog.270.1547224253919; 
	Fri, 11 Jan 2019 08:30:53 -0800 (PST)
MIME-Version: 1.0
References: <20190111155046.GA1920@grante>
	<CAJTo0LZOjtEVBj73LKCmgHLZxiRtZ+Ak8Dta2OP=+ENx4=He9w@mail.gmail.com>
	<20190111162052.GA3008@grante>
In-Reply-To: <20190111162052.GA3008@grante>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 11 Jan 2019 16:30:42 +0000
Message-ID: <CAJTo0Lbs4WzeJ9WgkDSRKhhnAzv+-Qt5Vnmiy0DQ07xeUnU_hw@mail.gmail.com>
To: Grant Edwards <grant.b.edwards@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 11 Jan 2019 16:30:57 -0000
Content-Type: multipart/alternative; boundary="0000000000000b1349057f313832"

--0000000000000b1349057f313832
Content-Type: text/plain; charset="UTF-8"

meta-toolchain is pretty deprecated now, the preferred method is to run the
populate_sdk task on the image you want a SDK for.

Ross

On Fri, 11 Jan 2019 at 16:21, Grant Edwards <grant.b.edwards@gmail.com>
wrote:

> On Fri, Jan 11, 2019 at 03:52:45PM +0000, Burton, Ross wrote:
> > On Fri, 11 Jan 2019 at 15:51, Grant Edwards <grant.b.edwards@gmail.com>
> wrote:
> >
> > > I've built a "poky" SDK for use with a Renesas RZN1 eval board (dual
> > > ARM Cortex-A7 cores), and the toolchain's sysroot seems to be missing
> > > the "asm" header directory.
>
> > How did you build the SDK?
>
> Here is the script I used to do the build:
>
>     git clone http://git.yoctoproject.org/git/poky
>
>     cd poky
>     git checkout -b rocko-rzn1 yocto-2.4.3
>     git am
> ${RELEASE_DIR}/yocto/rocko/0001-ARM-Add-Cortex-A7-vfpv4-d16*.patch
>     cd ..
>
>     git clone -b rocko git://git.openembedded.org/meta-openembedded
>     git clone https://github.com/cmhe/meta-readonly-rootfs-overlay.git
>     git clone -b rocko https://github.com/renesas-rz/meta-rzn1.git
>
>     cd poky
>     source oe-init-build-env
>     cp ${RELDIR}/yocto/bblayers.conf  build/conf/bblayers.conf
>     cp ${RELDIR}/yocto/local.conf     build/conf/local.conf
>     bitbake core-image-minimal
>     bitbake meta-toolchain
>
> The core images (kernel, device tree, and rootfs) seem to be OK.
>
> bblayers.conf:
>
>     # POKY_BBLAYERS_CONF_VERSION is increased each time
> build/conf/bblayers.conf
>     # changes incompatibly
>     POKY_BBLAYERS_CONF_VERSION = "2"
>
>     BBPATH = "${TOPDIR}"
>     BSPPATH := "${@os.path.abspath(os.path.dirname(d.getVar('FILE',True))
> + '/../..')}"
>     BBFILES ?= ""
>
>     BBLAYERS ?= " \
>       ${BSPPATH}/meta \
>       ${BSPPATH}/meta-poky \
>       ${BSPPATH}/meta-yocto-bsp \
>       ${BSPPATH}/../meta-openembedded/meta-oe \
>       ${BSPPATH}/../meta-openembedded/meta-python \
>       ${BSPPATH}/../meta-openembedded/meta-networking \
>       ${BSPPATH}/../meta-readonly-rootfs-overlay \
>       ${BSPPATH}/../meta-rzn1 \
>        "
>
> local.conf:
>
>     #
>     # This file is your local configuration file and is where all local
> user settings
>     # are placed. The comments in this file give some guide to the options
> a new user
>     # to the system might want to change but pretty much any configuration
> option can
>     # be set in this file. More adventurous users can look at
> local.conf.extended
>     # which contains other examples of configuration which can be placed
> in this file
>     # but new users likely won't need any of them initially.
>     #
>     # Lines starting with the '#' character are commented out and in some
> cases the
>     # default values are provided as comments to show people example
> syntax. Enabling
>     # the option is a question of removing the # character and making any
> change to the
>     # variable as required.
>
>     #
>     # Machine Selection
>     #
>     # You need to select a specific machine to target the build with.
> There are a selection
>     # of emulated machines available which can boot and run in the QEMU
> emulator:
>     #
>     #MACHINE ?= "qemuarm"
>     #MACHINE ?= "qemuarm64"
>     #MACHINE ?= "qemumips"
>     #MACHINE ?= "qemumips64"
>     #MACHINE ?= "qemuppc"
>     #MACHINE ?= "qemux86"
>     #MACHINE ?= "qemux86-64"
>     #
>     # There are also the following hardware board target machines included
> for
>     # demonstration purposes:
>     #
>     #MACHINE ?= "beaglebone"
>     #MACHINE ?= "genericx86"
>     #MACHINE ?= "genericx86-64"
>     #MACHINE ?= "mpc8315e-rdb"
>     #MACHINE ?= "edgerouter"
>     #
>     # This sets the default machine to be qemux86 if no other machine is
> selected:
>     MACHINE ??= "qemux86"
>
>     #
>     # Where to place downloads
>     #
>     # During a first build the system will download many different source
> code tarballs
>     # from various upstream projects. This can take a while, particularly
> if your network
>     # connection is slow. These are all stored in DL_DIR. When wiping and
> rebuilding you
>     # can preserve this directory to speed up this part of subsequent
> builds. This directory
>     # is safe to share between multiple builds on the same machine too.
>     #
>     # The default is a downloads directory under TOPDIR which is the build
> directory.
>     #
>     DL_DIR ?= "${TOPDIR}/downloads"
>
>     #
>     # Where to place shared-state files
>     #
>     # BitBake has the capability to accelerate builds based on previously
> built output.
>     # This is done using "shared state" files which can be thought of as
> cache objects
>     # and this option determines where those files are placed.
>     #
>     # You can wipe out TMPDIR leaving this directory intact and the build
> would regenerate
>     # from these files if no changes were made to the configuration. If
> changes were made
>     # to the configuration, only shared state files where the state was
> still valid would
>     # be used (done using checksums).
>     #
>     # The default is a sstate-cache directory under TOPDIR.
>     #
>     #SSTATE_DIR ?= "${TOPDIR}/sstate-cache"
>
>     #
>     # Where to place the build output
>     #
>     # This option specifies where the bulk of the building work should be
> done and
>     # where BitBake should place its temporary files and output. Keep in
> mind that
>     # this includes the extraction and compilation of many applications
> and the toolchain
>     # which can use Gigabytes of hard disk space.
>     #
>     # The default is a tmp directory under TOPDIR.
>     #
>     #TMPDIR = "${TOPDIR}/tmp"
>
>     #
>     # Default policy config
>     #
>     # The distribution setting controls which policy settings are used as
> defaults.
>     # The default value is fine for general Yocto project use, at least
> initially.
>     # Ultimately when creating custom policy, people will likely end up
> subclassing
>     # these defaults.
>     #
>     DISTRO ?= "poky"
>     # As an example of a subclass there is a "bleeding" edge policy
> configuration
>     # where many versions are set to the absolute latest code from the
> upstream
>     # source control systems. This is just mentioned here as an example,
> its not
>     # useful to most new users.
>     # DISTRO ?= "poky-bleeding"
>
>     #
>     # Package Management configuration
>     #
>     # This variable lists which packaging formats to enable. Multiple
> package backends
>     # can be enabled at once and the first item listed in the variable
> will be used
>     # to generate the root filesystems.
>     # Options are:
>     #  - 'package_deb' for debian style deb files
>     #  - 'package_ipk' for ipk files are used by opkg (a debian style
> embedded package manager)
>     #  - 'package_rpm' for rpm style packages
>     # E.g.: PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk"
>     # We default to rpm:
>     PACKAGE_CLASSES ?= "package_rpm"
>
>     #
>     # SDK target architecture
>     #
>     # This variable specifies the architecture to build SDK items for and
> means
>     # you can build the SDK packages for architectures other than the
> machine you are
>     # running the build on (i.e. building i686 packages on an x86_64 host).
>     # Supported values are i686 and x86_64
>     #SDKMACHINE ?= "i686"
>
>     #
>     # Extra image configuration defaults
>     #
>     # The EXTRA_IMAGE_FEATURES variable allows extra packages to be added
> to the generated
>     # images. Some of these options are added to certain image types
> automatically. The
>     # variable can contain the following options:
>     #  "dbg-pkgs"       - add -dbg packages for all installed packages
>     #                     (adds symbol information for debugging/profiling)
>     #  "dev-pkgs"       - add -dev packages for all installed packages
>     #                     (useful if you want to develop against libs in
> the image)
>     #  "ptest-pkgs"     - add -ptest packages for all ptest-enabled
> packages
>     #                     (useful if you want to run the package test
> suites)
>     #  "tools-sdk"      - add development tools (gcc, make, pkgconfig etc.)
>     #  "tools-debug"    - add debugging tools (gdb, strace)
>     #  "eclipse-debug"  - add Eclipse remote debugging support
>     #  "tools-profile"  - add profiling tools (oprofile, lttng, valgrind)
>     #  "tools-testapps" - add useful testing tools (ts_print, aplay,
> arecord etc.)
>     #  "debug-tweaks"   - make an image suitable for development
>     #                     e.g. ssh root access has a blank password
>     # There are other application targets that can be used here too, see
>     # meta/classes/image.bbclass and meta/classes/core-image.bbclass for
> more details.
>     # We default to enabling the debugging tweaks.
>     EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
>
>     #
>     # Additional image features
>     #
>     # The following is a list of additional classes to use when building
> images which
>     # enable extra features. Some available options which can be included
> in this variable
>     # are:
>     #   - 'buildstats' collect build statistics
>     #   - 'image-mklibs' to reduce shared library files size for an image
>     #   - 'image-prelink' in order to prelink the filesystem image
>     #   - 'image-swab' to perform host system intrusion detection
>     # NOTE: if listing mklibs & prelink both, then make sure mklibs is
> before prelink
>     # NOTE: mklibs also needs to be explicitly enabled for a given image,
> see local.conf.extended
>     USER_CLASSES ?= "buildstats image-mklibs image-prelink"
>
>     #
>     # Runtime testing of images
>     #
>     # The build system can test booting virtual machine images under qemu
> (an emulator)
>     # after any root filesystems are created and run tests against those
> images. To
>     # enable this uncomment this line. See
> classes/testimage(-auto).bbclass for
>     # further details.
>     #TEST_IMAGE = "1"
>     #
>     # Interactive shell configuration
>     #
>     # Under certain circumstances the system may need input from you and
> to do this it
>     # can launch an interactive shell. It needs to do this since the build
> is
>     # multithreaded and needs to be able to handle the case where more
> than one parallel
>     # process may require the user's attention. The default is iterate
> over the available
>     # terminal types to find one that works.
>     #
>     # Examples of the occasions this may happen are when resolving patches
> which cannot
>     # be applied, to use the devshell or the kernel menuconfig
>     #
>     # Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE
> 3.x only), none
>     # Note: currently, Konsole support only works for KDE 3.x due to the
> way
>     # newer Konsole versions behave
>     #OE_TERMINAL = "auto"
>     # By default disable interactive patch resolution (tasks will just
> fail instead):
>     PATCHRESOLVE = "noop"
>
>     #
>     # Disk Space Monitoring during the build
>     #
>     # Monitor the disk space during the build. If there is less that 1GB
> of space or less
>     # than 100K inodes in any key build location (TMPDIR, DL_DIR,
> SSTATE_DIR), gracefully
>     # shutdown the build. If there is less that 100MB or 1K inodes,
> perform a hard abort
>     # of the build. The reason for this is that running completely out of
> space can corrupt
>     # files and damages the build in ways which may not be easily
> recoverable.
>     # It's necesary to monitor /tmp, if there is no space left the build
> will fail
>     # with very exotic errors.
>     BB_DISKMON_DIRS = "\
>         STOPTASKS,${TMPDIR},1G,100K \
>         STOPTASKS,${DL_DIR},1G,100K \
>         STOPTASKS,${SSTATE_DIR},1G,100K \
>         STOPTASKS,/tmp,100M,100K \
>         ABORT,${TMPDIR},100M,1K \
>         ABORT,${DL_DIR},100M,1K \
>         ABORT,${SSTATE_DIR},100M,1K \
>         ABORT,/tmp,10M,1K"
>
>     #
>     # Shared-state files from other locations
>     #
>     # As mentioned above, shared state files are prebuilt cache data
> objects which can
>     # used to accelerate build time. This variable can be used to
> configure the system
>     # to search other mirror locations for these objects before it builds
> the data itself.
>     #
>     # This can be a filesystem directory, or a remote url such as http or
> ftp. These
>     # would contain the sstate-cache results from previous builds
> (possibly from other
>     # machines). This variable works like fetcher MIRRORS/PREMIRRORS and
> points to the
>     # cache locations to check for the shared objects.
>     # NOTE: if the mirror uses the same structure as SSTATE_DIR, you need
> to add PATH
>     # at the end as shown in the examples below. This will be substituted
> with the
>     # correct path within the directory structure.
>     #SSTATE_MIRRORS ?= "\
>     #file://.*
> http://someserver.tld/share/sstate/PATH;downloadfilename=PATH \n \
>     #file://.* file:///some/local/dir/sstate/PATH"
>
>
>     #
>     # Qemu configuration
>     #
>     # By default qemu will build with a builtin VNC server where graphical
> output can be
>     # seen. The two lines below enable the SDL backend too. By default
> libsdl-native will
>     # be built, if you want to use your host's libSDL instead of the
> minimal libsdl built
>     # by libsdl-native then uncomment the ASSUME_PROVIDED line below.
>     PACKAGECONFIG_append_pn-qemu-native = " sdl"
>     PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
>     #ASSUME_PROVIDED += "libsdl-native"
>
>     # CONF_VERSION is increased each time build/conf/ changes incompatibly
> and is used to
>     # track the version of this file when it was generated. This can
> safely be ignored if
>     # this doesn't mean anything to you.
>     CONF_VERSION = "1"
>
>     MACHINE = "rzn1d400-db"
>     MACHINE_FEATURES = "wifi"
>
>     KERNEL_DEVICETREE = "rzn1d400-db.dtb rzn1d400-db-no-cm3.dtb
> rzn1d400-db-both-gmacs.dtb"
>     IMAGE_INSTALL_append = " dropbear libsocketcan can-utils iproute2
> i2c-tools stress bonnie++ mtd-utils mtd-utils-jffs2 mtd-utils-misc iw
> nfs-utils nfs-utils-client vsftpd gdbserver strace devmem2"
>     IMAGE_INSTALL_append += " initscripts-readonly-rootfs-overlay"
>     IMAGE_INSTALL_append += " openssl"
>
>     # Disable unused features, otherwise Qt will build plugins for
> everything, and those plugins rely on a lot of other packages (alsa, bluez,
> mesa)...
>     DISTRO_FEATURES_remove = " alsa pulseaudio bluetooth 3g nfc directfb
> x11 wayland opengl pci pcmcia irda"
>     # Qt 5.9.2 thinks it needs x11, but it doesn't really
>     PACKAGECONFIG_remove_pn-qtbase = " tests x11"
>     # usbutils recommends udev-hwdb, which is 7MB we really don't need
>     NO_RECOMMENDATIONS = "1"
>
>     # We don't want dev packages or debug symbols
>     INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
>
>     # Depends on you host CPU
>     BB_NUMBER_THREADS = "2"
>     PARALLEL_MAKE = "-j 2"
>     # INHERIT += "rm_work" deletes the source and intermediate files for
> each package once built. If you want to make modifications, you probably
> don't want this!
>     INHERIT += "rm_work"
>     RM_OLD_IMAGE = "1"
>
>     KERNEL_IMAGETYPE = "uImage"
>
>     # IMAGE_FSTYPES defines the format of the rootfs created.
>     # When building an initramfs (if you set INITRAMFS_IMAGE_BUNDLE), when
> you build the kernel the file with this
>     # extension is decompressed first. Therefore, IMAGE_FSTYPES used does
> not affect the compression of the initramfs.
>     # See kernel.bbclass for details.
>     # See meta/classes/image_types.bbclass IMAGE_FSTYPES for your choices
> here.
>     #IMAGE_FSTYPES = "tar.bz2 squashfs"
>
>     # Set GLIBC_GENERATE_LOCALES to the locales you wish to generate
> should you not
>     # wish to perform the time-consuming step of generating all LIBC
> locales.
>     # NOTE: If removing en_US.UTF-8 you will also need to uncomment, and
> set
>     # appropriate value for IMAGE_LINGUAS.
>     # WARNING: this may break localisation!
>     GLIBC_GENERATE_LOCALES = "en_US.UTF-8 fr_CH.UTF-8 de_DE.UTF-8
> en_GB.UTF-8"
>     IMAGE_LINGUAS ?= "en-us fr-ch de-de en-gb"
>
>     # License compliance: Generate tarball of source code
>     INHERIT += "archiver"
>     ARCHIVER_MODE[src] = "original"
>
>     # License compliance: Include license with the binaries (i.e. in the
> rootfs)
>     COPY_LIC_MANIFEST = "1"
>     COPY_LIC_DIRS = "1"
>     LICENSE_CREATE_PACKAGE = "1"
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000000b1349057f313832
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">meta-toolchain is pretty deprecated now, the preferred met=
hod is to run the populate_sdk task on the image you want a SDK for.<div><b=
r></div><div>Ross</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
">On Fri, 11 Jan 2019 at 16:21, Grant Edwards &lt;<a href=3D"mailto:grant.b=
.edwards@gmail.com">grant.b.edwards@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-=
width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);paddin=
g-left:1ex">On Fri, Jan 11, 2019 at 03:52:45PM +0000, Burton, Ross wrote:<b=
r>
&gt; On Fri, 11 Jan 2019 at 15:51, Grant Edwards &lt;<a href=3D"mailto:gran=
t.b.edwards@gmail.com" target=3D"_blank">grant.b.edwards@gmail.com</a>&gt; =
wrote:<br>
&gt;<br>
&gt; &gt; I&#39;ve built a &quot;poky&quot; SDK for use with a Renesas RZN1=
 eval board (dual<br>
&gt; &gt; ARM Cortex-A7 cores), and the toolchain&#39;s sysroot seems to be=
 missing<br>
&gt; &gt; the &quot;asm&quot; header directory.<br>
<br>
&gt; How did you build the SDK?<br>
<br>
Here is the script I used to do the build:<br>
<br>
=C2=A0 =C2=A0 git clone <a href=3D"http://git.yoctoproject.org/git/poky" re=
l=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.org/git/poky</a>=
<br>
<br>
=C2=A0 =C2=A0 cd poky<br>
=C2=A0 =C2=A0 git checkout -b rocko-rzn1 yocto-2.4.3<br>
=C2=A0 =C2=A0 git am ${RELEASE_DIR}/yocto/rocko/0001-ARM-Add-Cortex-A7-vfpv=
4-d16*.patch<br>
=C2=A0 =C2=A0 cd ..<br>
<br>
=C2=A0 =C2=A0 git clone -b rocko git://<a href=3D"http://git.openembedded.o=
rg/meta-openembedded" rel=3D"noreferrer" target=3D"_blank">git.openembedded=
.org/meta-openembedded</a><br>
=C2=A0 =C2=A0 git clone <a href=3D"https://github.com/cmhe/meta-readonly-ro=
otfs-overlay.git" rel=3D"noreferrer" target=3D"_blank">https://github.com/c=
mhe/meta-readonly-rootfs-overlay.git</a><br>
=C2=A0 =C2=A0 git clone -b rocko <a href=3D"https://github.com/renesas-rz/m=
eta-rzn1.git" rel=3D"noreferrer" target=3D"_blank">https://github.com/renes=
as-rz/meta-rzn1.git</a><br>
<br>
=C2=A0 =C2=A0 cd poky<br>
=C2=A0 =C2=A0 source oe-init-build-env<br>
=C2=A0 =C2=A0 cp ${RELDIR}/yocto/bblayers.conf=C2=A0 build/conf/bblayers.co=
nf<br>
=C2=A0 =C2=A0 cp ${RELDIR}/yocto/local.conf=C2=A0 =C2=A0 =C2=A0build/conf/l=
ocal.conf<br>
=C2=A0 =C2=A0 bitbake core-image-minimal<br>
=C2=A0 =C2=A0 bitbake meta-toolchain<br>
<br>
The core images (kernel, device tree, and rootfs) seem to be OK.<br>
<br>
bblayers.conf:<br>
<br>
=C2=A0 =C2=A0 # POKY_BBLAYERS_CONF_VERSION is increased each time build/con=
f/bblayers.conf<br>
=C2=A0 =C2=A0 # changes incompatibly<br>
=C2=A0 =C2=A0 POKY_BBLAYERS_CONF_VERSION =3D &quot;2&quot;<br>
<br>
=C2=A0 =C2=A0 BBPATH =3D &quot;${TOPDIR}&quot;<br>
=C2=A0 =C2=A0 BSPPATH :=3D &quot;${@os.path.abspath(os.path.dirname(d.getVa=
r(&#39;FILE&#39;,True)) + &#39;/../..&#39;)}&quot;<br>
=C2=A0 =C2=A0 BBFILES ?=3D &quot;&quot;<br>
<br>
=C2=A0 =C2=A0 BBLAYERS ?=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 ${BSPPATH}/meta \<br>
=C2=A0 =C2=A0 =C2=A0 ${BSPPATH}/meta-poky \<br>
=C2=A0 =C2=A0 =C2=A0 ${BSPPATH}/meta-yocto-bsp \<br>
=C2=A0 =C2=A0 =C2=A0 ${BSPPATH}/../meta-openembedded/meta-oe \<br>
=C2=A0 =C2=A0 =C2=A0 ${BSPPATH}/../meta-openembedded/meta-python \<br>
=C2=A0 =C2=A0 =C2=A0 ${BSPPATH}/../meta-openembedded/meta-networking \<br>
=C2=A0 =C2=A0 =C2=A0 ${BSPPATH}/../meta-readonly-rootfs-overlay \<br>
=C2=A0 =C2=A0 =C2=A0 ${BSPPATH}/../meta-rzn1 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
<br>
local.conf:<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # This file is your local configuration file and is where all=
 local user settings<br>
=C2=A0 =C2=A0 # are placed. The comments in this file give some guide to th=
e options a new user<br>
=C2=A0 =C2=A0 # to the system might want to change but pretty much any conf=
iguration option can<br>
=C2=A0 =C2=A0 # be set in this file. More adventurous users can look at loc=
al.conf.extended<br>
=C2=A0 =C2=A0 # which contains other examples of configuration which can be=
 placed in this file<br>
=C2=A0 =C2=A0 # but new users likely won&#39;t need any of them initially.<=
br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Lines starting with the &#39;#&#39; character are commented=
 out and in some cases the<br>
=C2=A0 =C2=A0 # default values are provided as comments to show people exam=
ple syntax. Enabling<br>
=C2=A0 =C2=A0 # the option is a question of removing the # character and ma=
king any change to the<br>
=C2=A0 =C2=A0 # variable as required.<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Machine Selection<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # You need to select a specific machine to target the build w=
ith. There are a selection<br>
=C2=A0 =C2=A0 # of emulated machines available which can boot and run in th=
e QEMU emulator:<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 #MACHINE ?=3D &quot;qemuarm&quot;<br>
=C2=A0 =C2=A0 #MACHINE ?=3D &quot;qemuarm64&quot;<br>
=C2=A0 =C2=A0 #MACHINE ?=3D &quot;qemumips&quot;<br>
=C2=A0 =C2=A0 #MACHINE ?=3D &quot;qemumips64&quot;<br>
=C2=A0 =C2=A0 #MACHINE ?=3D &quot;qemuppc&quot;<br>
=C2=A0 =C2=A0 #MACHINE ?=3D &quot;qemux86&quot;<br>
=C2=A0 =C2=A0 #MACHINE ?=3D &quot;qemux86-64&quot;<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # There are also the following hardware board target machines=
 included for <br>
=C2=A0 =C2=A0 # demonstration purposes:<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 #MACHINE ?=3D &quot;beaglebone&quot;<br>
=C2=A0 =C2=A0 #MACHINE ?=3D &quot;genericx86&quot;<br>
=C2=A0 =C2=A0 #MACHINE ?=3D &quot;genericx86-64&quot;<br>
=C2=A0 =C2=A0 #MACHINE ?=3D &quot;mpc8315e-rdb&quot;<br>
=C2=A0 =C2=A0 #MACHINE ?=3D &quot;edgerouter&quot;<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # This sets the default machine to be qemux86 if no other mac=
hine is selected:<br>
=C2=A0 =C2=A0 MACHINE ??=3D &quot;qemux86&quot;<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Where to place downloads<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # During a first build the system will download many differen=
t source code tarballs<br>
=C2=A0 =C2=A0 # from various upstream projects. This can take a while, part=
icularly if your network<br>
=C2=A0 =C2=A0 # connection is slow. These are all stored in DL_DIR. When wi=
ping and rebuilding you<br>
=C2=A0 =C2=A0 # can preserve this directory to speed up this part of subseq=
uent builds. This directory<br>
=C2=A0 =C2=A0 # is safe to share between multiple builds on the same machin=
e too.<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # The default is a downloads directory under TOPDIR which is =
the build directory.<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 DL_DIR ?=3D &quot;${TOPDIR}/downloads&quot;<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Where to place shared-state files<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # BitBake has the capability to accelerate builds based on pr=
eviously built output.<br>
=C2=A0 =C2=A0 # This is done using &quot;shared state&quot; files which can=
 be thought of as cache objects<br>
=C2=A0 =C2=A0 # and this option determines where those files are placed.<br=
>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # You can wipe out TMPDIR leaving this directory intact and t=
he build would regenerate<br>
=C2=A0 =C2=A0 # from these files if no changes were made to the configurati=
on. If changes were made<br>
=C2=A0 =C2=A0 # to the configuration, only shared state files where the sta=
te was still valid would<br>
=C2=A0 =C2=A0 # be used (done using checksums).<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # The default is a sstate-cache directory under TOPDIR.<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 #SSTATE_DIR ?=3D &quot;${TOPDIR}/sstate-cache&quot;<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Where to place the build output<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # This option specifies where the bulk of the building work s=
hould be done and<br>
=C2=A0 =C2=A0 # where BitBake should place its temporary files and output. =
Keep in mind that<br>
=C2=A0 =C2=A0 # this includes the extraction and compilation of many applic=
ations and the toolchain<br>
=C2=A0 =C2=A0 # which can use Gigabytes of hard disk space.<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # The default is a tmp directory under TOPDIR.<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 #TMPDIR =3D &quot;${TOPDIR}/tmp&quot;<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Default policy config<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # The distribution setting controls which policy settings are=
 used as defaults.<br>
=C2=A0 =C2=A0 # The default value is fine for general Yocto project use, at=
 least initially.<br>
=C2=A0 =C2=A0 # Ultimately when creating custom policy, people will likely =
end up subclassing <br>
=C2=A0 =C2=A0 # these defaults.<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 DISTRO ?=3D &quot;poky&quot;<br>
=C2=A0 =C2=A0 # As an example of a subclass there is a &quot;bleeding&quot;=
 edge policy configuration<br>
=C2=A0 =C2=A0 # where many versions are set to the absolute latest code fro=
m the upstream <br>
=C2=A0 =C2=A0 # source control systems. This is just mentioned here as an e=
xample, its not<br>
=C2=A0 =C2=A0 # useful to most new users.<br>
=C2=A0 =C2=A0 # DISTRO ?=3D &quot;poky-bleeding&quot;<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Package Management configuration<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # This variable lists which packaging formats to enable. Mult=
iple package backends<br>
=C2=A0 =C2=A0 # can be enabled at once and the first item listed in the var=
iable will be used<br>
=C2=A0 =C2=A0 # to generate the root filesystems.<br>
=C2=A0 =C2=A0 # Options are:<br>
=C2=A0 =C2=A0 #=C2=A0 - &#39;package_deb&#39; for debian style deb files<br=
>
=C2=A0 =C2=A0 #=C2=A0 - &#39;package_ipk&#39; for ipk files are used by opk=
g (a debian style embedded package manager)<br>
=C2=A0 =C2=A0 #=C2=A0 - &#39;package_rpm&#39; for rpm style packages<br>
=C2=A0 =C2=A0 # E.g.: PACKAGE_CLASSES ?=3D &quot;package_rpm package_deb pa=
ckage_ipk&quot;<br>
=C2=A0 =C2=A0 # We default to rpm:<br>
=C2=A0 =C2=A0 PACKAGE_CLASSES ?=3D &quot;package_rpm&quot;<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # SDK target architecture<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # This variable specifies the architecture to build SDK items=
 for and means<br>
=C2=A0 =C2=A0 # you can build the SDK packages for architectures other than=
 the machine you are<br>
=C2=A0 =C2=A0 # running the build on (i.e. building i686 packages on an x86=
_64 host).<br>
=C2=A0 =C2=A0 # Supported values are i686 and x86_64<br>
=C2=A0 =C2=A0 #SDKMACHINE ?=3D &quot;i686&quot;<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Extra image configuration defaults<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # The EXTRA_IMAGE_FEATURES variable allows extra packages to =
be added to the generated<br>
=C2=A0 =C2=A0 # images. Some of these options are added to certain image ty=
pes automatically. The<br>
=C2=A0 =C2=A0 # variable can contain the following options:<br>
=C2=A0 =C2=A0 #=C2=A0 &quot;dbg-pkgs&quot;=C2=A0 =C2=A0 =C2=A0 =C2=A0- add =
-dbg packages for all installed packages<br>
=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0(adds symbol information for debugging/profiling)<br>
=C2=A0 =C2=A0 #=C2=A0 &quot;dev-pkgs&quot;=C2=A0 =C2=A0 =C2=A0 =C2=A0- add =
-dev packages for all installed packages<br>
=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0(useful if you want to develop against libs in the image)<=
br>
=C2=A0 =C2=A0 #=C2=A0 &quot;ptest-pkgs&quot;=C2=A0 =C2=A0 =C2=A0- add -ptes=
t packages for all ptest-enabled packages<br>
=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0(useful if you want to run the package test suites)<br>
=C2=A0 =C2=A0 #=C2=A0 &quot;tools-sdk&quot;=C2=A0 =C2=A0 =C2=A0 - add devel=
opment tools (gcc, make, pkgconfig etc.)<br>
=C2=A0 =C2=A0 #=C2=A0 &quot;tools-debug&quot;=C2=A0 =C2=A0 - add debugging =
tools (gdb, strace)<br>
=C2=A0 =C2=A0 #=C2=A0 &quot;eclipse-debug&quot;=C2=A0 - add Eclipse remote =
debugging support<br>
=C2=A0 =C2=A0 #=C2=A0 &quot;tools-profile&quot;=C2=A0 - add profiling tools=
 (oprofile, lttng, valgrind)<br>
=C2=A0 =C2=A0 #=C2=A0 &quot;tools-testapps&quot; - add useful testing tools=
 (ts_print, aplay, arecord etc.)<br>
=C2=A0 =C2=A0 #=C2=A0 &quot;debug-tweaks&quot;=C2=A0 =C2=A0- make an image =
suitable for development<br>
=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0e.g. ssh root access has a blank password<br>
=C2=A0 =C2=A0 # There are other application targets that can be used here t=
oo, see<br>
=C2=A0 =C2=A0 # meta/classes/image.bbclass and meta/classes/core-image.bbcl=
ass for more details.<br>
=C2=A0 =C2=A0 # We default to enabling the debugging tweaks.<br>
=C2=A0 =C2=A0 EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks&quot;<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Additional image features<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # The following is a list of additional classes to use when b=
uilding images which<br>
=C2=A0 =C2=A0 # enable extra features. Some available options which can be =
included in this variable<br>
=C2=A0 =C2=A0 # are:<br>
=C2=A0 =C2=A0 #=C2=A0 =C2=A0- &#39;buildstats&#39; collect build statistics=
<br>
=C2=A0 =C2=A0 #=C2=A0 =C2=A0- &#39;image-mklibs&#39; to reduce shared libra=
ry files size for an image<br>
=C2=A0 =C2=A0 #=C2=A0 =C2=A0- &#39;image-prelink&#39; in order to prelink t=
he filesystem image<br>
=C2=A0 =C2=A0 #=C2=A0 =C2=A0- &#39;image-swab&#39; to perform host system i=
ntrusion detection<br>
=C2=A0 =C2=A0 # NOTE: if listing mklibs &amp; prelink both, then make sure =
mklibs is before prelink<br>
=C2=A0 =C2=A0 # NOTE: mklibs also needs to be explicitly enabled for a give=
n image, see local.conf.extended<br>
=C2=A0 =C2=A0 USER_CLASSES ?=3D &quot;buildstats image-mklibs image-prelink=
&quot;<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Runtime testing of images<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # The build system can test booting virtual machine images un=
der qemu (an emulator)<br>
=C2=A0 =C2=A0 # after any root filesystems are created and run tests agains=
t those images. To<br>
=C2=A0 =C2=A0 # enable this uncomment this line. See classes/testimage(-aut=
o).bbclass for<br>
=C2=A0 =C2=A0 # further details.<br>
=C2=A0 =C2=A0 #TEST_IMAGE =3D &quot;1&quot;<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Interactive shell configuration<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Under certain circumstances the system may need input from =
you and to do this it<br>
=C2=A0 =C2=A0 # can launch an interactive shell. It needs to do this since =
the build is<br>
=C2=A0 =C2=A0 # multithreaded and needs to be able to handle the case where=
 more than one parallel<br>
=C2=A0 =C2=A0 # process may require the user&#39;s attention. The default i=
s iterate over the available<br>
=C2=A0 =C2=A0 # terminal types to find one that works.<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Examples of the occasions this may happen are when resolvin=
g patches which cannot<br>
=C2=A0 =C2=A0 # be applied, to use the devshell or the kernel menuconfig<br=
>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Supported values are auto, gnome, xfce, rxvt, screen, konso=
le (KDE 3.x only), none<br>
=C2=A0 =C2=A0 # Note: currently, Konsole support only works for KDE 3.x due=
 to the way<br>
=C2=A0 =C2=A0 # newer Konsole versions behave<br>
=C2=A0 =C2=A0 #OE_TERMINAL =3D &quot;auto&quot;<br>
=C2=A0 =C2=A0 # By default disable interactive patch resolution (tasks will=
 just fail instead):<br>
=C2=A0 =C2=A0 PATCHRESOLVE =3D &quot;noop&quot;<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Disk Space Monitoring during the build<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Monitor the disk space during the build. If there is less t=
hat 1GB of space or less<br>
=C2=A0 =C2=A0 # than 100K inodes in any key build location (TMPDIR, DL_DIR,=
 SSTATE_DIR), gracefully<br>
=C2=A0 =C2=A0 # shutdown the build. If there is less that 100MB or 1K inode=
s, perform a hard abort<br>
=C2=A0 =C2=A0 # of the build. The reason for this is that running completel=
y out of space can corrupt<br>
=C2=A0 =C2=A0 # files and damages the build in ways which may not be easily=
 recoverable.<br>
=C2=A0 =C2=A0 # It&#39;s necesary to monitor /tmp, if there is no space lef=
t the build will fail<br>
=C2=A0 =C2=A0 # with very exotic errors.<br>
=C2=A0 =C2=A0 BB_DISKMON_DIRS =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 STOPTASKS,${TMPDIR},1G,100K \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 STOPTASKS,${DL_DIR},1G,100K \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 STOPTASKS,${SSTATE_DIR},1G,100K \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 STOPTASKS,/tmp,100M,100K \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ABORT,${TMPDIR},100M,1K \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ABORT,${DL_DIR},100M,1K \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ABORT,${SSTATE_DIR},100M,1K \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ABORT,/tmp,10M,1K&quot;<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Shared-state files from other locations<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # As mentioned above, shared state files are prebuilt cache d=
ata objects which can<br>
=C2=A0 =C2=A0 # used to accelerate build time. This variable can be used to=
 configure the system<br>
=C2=A0 =C2=A0 # to search other mirror locations for these objects before i=
t builds the data itself.<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # This can be a filesystem directory, or a remote url such as=
 http or ftp. These<br>
=C2=A0 =C2=A0 # would contain the sstate-cache results from previous builds=
 (possibly from other<br>
=C2=A0 =C2=A0 # machines). This variable works like fetcher MIRRORS/PREMIRR=
ORS and points to the<br>
=C2=A0 =C2=A0 # cache locations to check for the shared objects.<br>
=C2=A0 =C2=A0 # NOTE: if the mirror uses the same structure as SSTATE_DIR, =
you need to add PATH<br>
=C2=A0 =C2=A0 # at the end as shown in the examples below. This will be sub=
stituted with the<br>
=C2=A0 =C2=A0 # correct path within the directory structure.<br>
=C2=A0 =C2=A0 #SSTATE_MIRRORS ?=3D &quot;\<br>
=C2=A0 =C2=A0 #file://.* <a href=3D"http://someserver.tld/share/sstate/PATH=
;downloadfilename=3DPATH" rel=3D"noreferrer" target=3D"_blank">http://somes=
erver.tld/share/sstate/PATH;downloadfilename=3DPATH</a> \n \<br>
=C2=A0 =C2=A0 #file://.* file:///some/local/dir/sstate/PATH&quot;<br>
<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Qemu configuration<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # By default qemu will build with a builtin VNC server where =
graphical output can be<br>
=C2=A0 =C2=A0 # seen. The two lines below enable the SDL backend too. By de=
fault libsdl-native will<br>
=C2=A0 =C2=A0 # be built, if you want to use your host&#39;s libSDL instead=
 of the minimal libsdl built<br>
=C2=A0 =C2=A0 # by libsdl-native then uncomment the ASSUME_PROVIDED line be=
low.<br>
=C2=A0 =C2=A0 PACKAGECONFIG_append_pn-qemu-native =3D &quot; sdl&quot;<br>
=C2=A0 =C2=A0 PACKAGECONFIG_append_pn-nativesdk-qemu =3D &quot; sdl&quot;<b=
r>
=C2=A0 =C2=A0 #ASSUME_PROVIDED +=3D &quot;libsdl-native&quot;<br>
<br>
=C2=A0 =C2=A0 # CONF_VERSION is increased each time build/conf/ changes inc=
ompatibly and is used to<br>
=C2=A0 =C2=A0 # track the version of this file when it was generated. This =
can safely be ignored if<br>
=C2=A0 =C2=A0 # this doesn&#39;t mean anything to you.<br>
=C2=A0 =C2=A0 CONF_VERSION =3D &quot;1&quot;<br>
<br>
=C2=A0 =C2=A0 MACHINE =3D &quot;rzn1d400-db&quot;<br>
=C2=A0 =C2=A0 MACHINE_FEATURES =3D &quot;wifi&quot;<br>
<br>
=C2=A0 =C2=A0 KERNEL_DEVICETREE =3D &quot;rzn1d400-db.dtb rzn1d400-db-no-cm=
3.dtb rzn1d400-db-both-gmacs.dtb&quot;<br>
=C2=A0 =C2=A0 IMAGE_INSTALL_append =3D &quot; dropbear libsocketcan can-uti=
ls iproute2 i2c-tools stress bonnie++ mtd-utils mtd-utils-jffs2 mtd-utils-m=
isc iw nfs-utils nfs-utils-client vsftpd gdbserver strace devmem2&quot;<br>
=C2=A0 =C2=A0 IMAGE_INSTALL_append +=3D &quot; initscripts-readonly-rootfs-=
overlay&quot;<br>
=C2=A0 =C2=A0 IMAGE_INSTALL_append +=3D &quot; openssl&quot;<br>
<br>
=C2=A0 =C2=A0 # Disable unused features, otherwise Qt will build plugins fo=
r everything, and those plugins rely on a lot of other packages (alsa, blue=
z, mesa)...<br>
=C2=A0 =C2=A0 DISTRO_FEATURES_remove =3D &quot; alsa pulseaudio bluetooth 3=
g nfc directfb x11 wayland opengl pci pcmcia irda&quot;<br>
=C2=A0 =C2=A0 # Qt 5.9.2 thinks it needs x11, but it doesn&#39;t really<br>
=C2=A0 =C2=A0 PACKAGECONFIG_remove_pn-qtbase =3D &quot; tests x11&quot;<br>
=C2=A0 =C2=A0 # usbutils recommends udev-hwdb, which is 7MB we really don&#=
39;t need<br>
=C2=A0 =C2=A0 NO_RECOMMENDATIONS =3D &quot;1&quot;<br>
<br>
=C2=A0 =C2=A0 # We don&#39;t want dev packages or debug symbols<br>
=C2=A0 =C2=A0 INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;<br>
<br>
=C2=A0 =C2=A0 # Depends on you host CPU<br>
=C2=A0 =C2=A0 BB_NUMBER_THREADS =3D &quot;2&quot;<br>
=C2=A0 =C2=A0 PARALLEL_MAKE =3D &quot;-j 2&quot;<br>
=C2=A0 =C2=A0 # INHERIT +=3D &quot;rm_work&quot; deletes the source and int=
ermediate files for each package once built. If you want to make modificati=
ons, you probably don&#39;t want this!<br>
=C2=A0 =C2=A0 INHERIT +=3D &quot;rm_work&quot;<br>
=C2=A0 =C2=A0 RM_OLD_IMAGE =3D &quot;1&quot;<br>
<br>
=C2=A0 =C2=A0 KERNEL_IMAGETYPE =3D &quot;uImage&quot;<br>
<br>
=C2=A0 =C2=A0 # IMAGE_FSTYPES defines the format of the rootfs created.<br>
=C2=A0 =C2=A0 # When building an initramfs (if you set INITRAMFS_IMAGE_BUND=
LE), when you build the kernel the file with this<br>
=C2=A0 =C2=A0 # extension is decompressed first. Therefore, IMAGE_FSTYPES u=
sed does not affect the compression of the initramfs.<br>
=C2=A0 =C2=A0 # See kernel.bbclass for details.<br>
=C2=A0 =C2=A0 # See meta/classes/image_types.bbclass IMAGE_FSTYPES for your=
 choices here.<br>
=C2=A0 =C2=A0 #IMAGE_FSTYPES =3D &quot;tar.bz2 squashfs&quot;<br>
<br>
=C2=A0 =C2=A0 # Set GLIBC_GENERATE_LOCALES to the locales you wish to gener=
ate should you not<br>
=C2=A0 =C2=A0 # wish to perform the time-consuming step of generating all L=
IBC locales.<br>
=C2=A0 =C2=A0 # NOTE: If removing en_US.UTF-8 you will also need to uncomme=
nt, and set<br>
=C2=A0 =C2=A0 # appropriate value for IMAGE_LINGUAS.<br>
=C2=A0 =C2=A0 # WARNING: this may break localisation!<br>
=C2=A0 =C2=A0 GLIBC_GENERATE_LOCALES =3D &quot;en_US.UTF-8 fr_CH.UTF-8 de_D=
E.UTF-8 en_GB.UTF-8&quot;<br>
=C2=A0 =C2=A0 IMAGE_LINGUAS ?=3D &quot;en-us fr-ch de-de en-gb&quot;<br>
<br>
=C2=A0 =C2=A0 # License compliance: Generate tarball of source code<br>
=C2=A0 =C2=A0 INHERIT +=3D &quot;archiver&quot;<br>
=C2=A0 =C2=A0 ARCHIVER_MODE[src] =3D &quot;original&quot;<br>
<br>
=C2=A0 =C2=A0 # License compliance: Include license with the binaries (i.e.=
 in the rootfs)<br>
=C2=A0 =C2=A0 COPY_LIC_MANIFEST =3D &quot;1&quot;<br>
=C2=A0 =C2=A0 COPY_LIC_DIRS =3D &quot;1&quot;<br>
=C2=A0 =C2=A0 LICENSE_CREATE_PACKAGE =3D &quot;1&quot;<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000000b1349057f313832--
