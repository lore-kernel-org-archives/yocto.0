Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFABDE00D5F; Sat, 30 Dec 2017 00:48:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BD8CE00D1C
	for <yocto@yoctoproject.org>; Sat, 30 Dec 2017 00:48:11 -0800 (PST)
Received: by mail-qk0-f172.google.com with SMTP id p13so38981074qke.4
	for <yocto@yoctoproject.org>; Sat, 30 Dec 2017 00:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=WBMn9WSHFykhKAo5E6zDNHLyA2eRSa6kr6Mb5zJd+1g=;
	b=Ei6VC8bVDk7ezvJZ4qP8GbTDJi8Ps8JEOBuTKgAc+pIeJSA/F82EsoMvifLTFNhxuo
	cXjjnF5s9HHidpq6C/8TOPVMbTbwGKQt+/iPkNSrA/ur7RaVbHEXXfmU1ib6aKiCzBim
	vF0BTJmqwsUaxLx7Vc3ILYwrMUEhvWaPuhTMNQ/CZIN3WyuPNECCZHAHCaiVIuOLhN8v
	CEP0fwOPEfL4/gI5SGstGlzOkqV6JNWvvlh7gz+fEXA5eMTljmdia+Cj+pReUcusjzo8
	vyfLbU9mrqBriKxUWrRepRWrhKsDk8L/lMnINlPia8EPmVDsJEg6f4J++K0JKNyrkE+D
	jI+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=WBMn9WSHFykhKAo5E6zDNHLyA2eRSa6kr6Mb5zJd+1g=;
	b=RrlCukoFa/jvNP+RnvgR8bzyRWweRt44JlO4SUaxfoflR/R88R24GeOJ4HEfE7zxGi
	xue7ZQuV9kHIgAtd14eFecJxIyrOShx0fn+Gx1Hgpw7ZnnKRlqbWqm+JHdB4qgfpKYTi
	PV8XqruWM5dToH6ZFBrpAXRQqq+szjV8qed7ERM3jz10dhPtgGfJmP6tG5J43tl9sYMN
	5eYiOxE8ZB0383Y57fb9b9hcrkDexk8MxC6yPUbG331fu+Q+EKHgcjhzwaeRhLWwT+Eu
	eCiYEWc1WeU3g6ayp9AZayDXSvo2rpWlkatkZe0yaXyHwAooKFCoO3DPaubc+FV+MKSo
	kI9w==
X-Gm-Message-State: AKGB3mK4nHkazmyIHbqX5oOZ5zR0eR2mg6/lS4FwNqR4o1WR6yJrbtU/
	m1lCVrWj5OFyjmEJSr1ZgiNq1aUgeG0nx3lnvUe2KA==
X-Google-Smtp-Source: ACJfBouLdsMqq6fBJgKjXjUr7ZksUm3lQaCiqMxHCThQiLfNESTd+0YfK5eBKE9oyJyXqzwHEGh+Bsn/AzGzA16XrWM=
X-Received: by 10.55.93.198 with SMTP id r189mr48893586qkb.210.1514623690934; 
	Sat, 30 Dec 2017 00:48:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.202.146 with HTTP; Sat, 30 Dec 2017 00:48:10 -0800 (PST)
In-Reply-To: <13F990CF-EDDD-4DE1-B0B6-A4A310C996B4@supercoders.com.au>
References: <13F990CF-EDDD-4DE1-B0B6-A4A310C996B4@supercoders.com.au>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Sat, 30 Dec 2017 09:48:10 +0100
Message-ID: <CAGAf8LwzcmgW-y518ojeT+zcy5LGa=wheYfwp2dnC9-BHwcKTg@mail.gmail.com>
To: Andrew Stuart <andrew.stuart@supercoders.com.au>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How to build pure initramfs run from ram Yocto with some packages in initramfs?
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
X-List-Received-Date: Sat, 30 Dec 2017 08:48:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> 1: kernel plus initramfs only - runs entirely from RAM after initial boot=
ing from disk.

Did not understand this requirement?! Wouldn't be better to have the
following: runs entirely from RAM after initial booting from flash?

Zoran
_______

On Sat, Dec 30, 2017 at 8:18 AM, Andrew Stuart
<andrew.stuart@supercoders.com.au> wrote:
> Hi folks,
>
> With Tiny Core Linux I am able to have a kernel file plus an initramfs th=
at boots
>
> My goal is to configure Yocto to these requirements:
>
> 1: kernel plus initramfs only - runs entirely from RAM after initial boot=
ing from disk.
> 2: openssh server installed
> 3: nginx installed
> 4: isc dhcp client installed
> 5: virtualization drivers installed for *both* Xen and KVM - so the same =
code can boot on either virtualization type
>
>
> I=E2=80=99ve spent all day fiddling with every possible variation of core=
-image-minimal-initramfs local.conf and bblayers.conf but nothing I do will=
 install any of the packages above into the initramfs that is created after=
 running 'bitbake core-image-minimal-initramfs=E2=80=99
>
> I=E2=80=99m out of ideas. Can anyone point me in the right direction plea=
se?
>
> thanks!!
>
> Here=E2=80=99s my conf/bblayers.conf and conf.local.conf
>
> ubuntu@ip-10-0-0-63:/opt/mountpoint/poky-rocko-18.0.0/build$ cat conf/bbl=
ayers.conf
> # POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.c=
onf
> # changes incompatibly
> POKY_BBLAYERS_CONF_VERSION =3D "2"
>
> BBPATH =3D "${TOPDIR}"
> BBFILES ?=3D ""
>
> BBLAYERS ?=3D " \
>   /mnt/home/ubuntu/poky-rocko-18.0.0/meta \
>   /mnt/home/ubuntu/poky-rocko-18.0.0/meta-openembedded/meta-filesystems \
>   /mnt/home/ubuntu/poky-rocko-18.0.0/meta-openembedded/meta-networking \
>   /mnt/home/ubuntu/poky-rocko-18.0.0/meta-openembedded/meta-webserver \
>   /mnt/home/ubuntu/poky-rocko-18.0.0/meta-openembedded/meta-oe \
>   /mnt/home/ubuntu/poky-rocko-18.0.0/meta-openembedded/meta-python \
>   /mnt/home/ubuntu/poky-rocko-18.0.0/openembedded-core/meta \
>   /mnt/home/ubuntu/poky-rocko-18.0.0/meta-poky \
>   /mnt/home/ubuntu/poky-rocko-18.0.0/meta-virtualization \
>   /mnt/home/ubuntu/poky-rocko-18.0.0/meta-yocto-bsp \
>   /mnt/home/ubuntu/poky-rocko-18.0.0/oe-meta-go \
>   "
>
> ubuntu@ip-10-0-0-63:/opt/mountpoint/poky-rocko-18.0.0/build$
>
>
> ubuntu@ip-10-0-0-63:/opt/mountpoint/poky-rocko-18.0.0/build$ cat conf/loc=
al.conf
> #
> # This file is your local configuration file and is where all local user =
settings
> # are placed. The comments in this file give some guide to the options a =
new user
> # to the system might want to change but pretty much any configuration op=
tion can
> # be set in this file. More adventurous users can look at local.conf.exte=
nded
> # which contains other examples of configuration which can be placed in t=
his file
> # but new users likely won't need any of them initially.
> #
> # Lines starting with the '#' character are commented out and in some cas=
es the
> # default values are provided as comments to show people example syntax. =
Enabling
> # the option is a question of removing the # character and making any cha=
nge to the
> # variable as required.
>
> #
> # Machine Selection
> #
> # You need to select a specific machine to target the build with. There a=
re a selection
> # of emulated machines available which can boot and run in the QEMU emula=
tor:
> #
> #MACHINE ?=3D "qemuarm"
> #MACHINE ?=3D "qemuarm64"
> #MACHINE ?=3D "qemumips"
> #MACHINE ?=3D "qemumips64"
> #MACHINE ?=3D "qemuppc"
> #MACHINE ?=3D "qemux86"
> MACHINE ?=3D "qemux86-64"
> #
> # There are also the following hardware board target machines included fo=
r
> # demonstration purposes:
> #
> #MACHINE ?=3D "beaglebone"
> #MACHINE ?=3D "genericx86"
> #MACHINE ?=3D "genericx86-64"
> #MACHINE ?=3D "mpc8315e-rdb"
> #MACHINE ?=3D "edgerouter"
> #
> # This sets the default machine to be qemux86 if no other machine is sele=
cted:
> #MACHINE ??=3D "qemux86"
> DISTRO_FEATURES_append =3D " xen"
> EXTRA_IMAGE_FEATURES =3D "debug-tweaks"
> DISTRO_FEATURES_append =3D " virtualization"
> #CORE_IMAGE_EXTRA_INSTALL +=3D "openssh-sshd"
> #CORE_IMAGE_EXTRA_INSTALL +=3D "dhcp-client"
> #CORE_IMAGE_EXTRA_INSTALL +=3D "dropbear"
> #CORE_IMAGE_EXTRA_INSTALL +=3D "dropbear"
> #IMAGE_INSTALL_append =3D " dropbear"
> #IMAGE_INSTALL_append =3D " packagegroup-core-ssh-openssh"
> IMAGE_INSTALL_append =3D " ssh-server-openssh"
> IMAGE_INSTALL_append =3D " dhcp-client"
> IMAGE_INSTALL_append =3D " nginx"
>
> #
> # Where to place downloads
> #
> # During a first build the system will download many different source cod=
e tarballs
> # from various upstream projects. This can take a while, particularly if =
your network
> # connection is slow. These are all stored in DL_DIR. When wiping and reb=
uilding you
> # can preserve this directory to speed up this part of subsequent builds.=
 This directory
> # is safe to share between multiple builds on the same machine too.
> #
> # The default is a downloads directory under TOPDIR which is the build di=
rectory.
> #
> #DL_DIR ?=3D "${TOPDIR}/downloads"
>
> #
> # Where to place shared-state files
> #
> # BitBake has the capability to accelerate builds based on previously bui=
lt output.
> # This is done using "shared state" files which can be thought of as cach=
e objects
> # and this option determines where those files are placed.
> #
> # You can wipe out TMPDIR leaving this directory intact and the build wou=
ld regenerate
> # from these files if no changes were made to the configuration. If chang=
es were made
> # to the configuration, only shared state files where the state was still=
 valid would
> # be used (done using checksums).
> #
> # The default is a sstate-cache directory under TOPDIR.
> #
> #SSTATE_DIR ?=3D "${TOPDIR}/sstate-cache"
>
> #
> # Where to place the build output
> #
> # This option specifies where the bulk of the building work should be don=
e and
> # where BitBake should place its temporary files and output. Keep in mind=
 that
> # this includes the extraction and compilation of many applications and t=
he toolchain
> # which can use Gigabytes of hard disk space.
> #
> # The default is a tmp directory under TOPDIR.
> #
> #TMPDIR =3D "${TOPDIR}/tmp"
>
> #
> # Default policy config
> #
> # The distribution setting controls which policy settings are used as def=
aults.
> # The default value is fine for general Yocto project use, at least initi=
ally.
> # Ultimately when creating custom policy, people will likely end up subcl=
assing
> # these defaults.
> #
> DISTRO ?=3D "poky"
> # As an example of a subclass there is a "bleeding" edge policy configura=
tion
> # where many versions are set to the absolute latest code from the upstre=
am
> # source control systems. This is just mentioned here as an example, its =
not
> # useful to most new users.
> # DISTRO ?=3D "poky-bleeding"
>
> #
> # Package Management configuration
> #
> # This variable lists which packaging formats to enable. Multiple package=
 backends
> # can be enabled at once and the first item listed in the variable will b=
e used
> # to generate the root filesystems.
> # Options are:
> #  - 'package_deb' for debian style deb files
> #  - 'package_ipk' for ipk files are used by opkg (a debian style embedde=
d package manager)
> #  - 'package_rpm' for rpm style packages
> # E.g.: PACKAGE_CLASSES ?=3D "package_rpm package_deb package_ipk"
> # We default to rpm:
> PACKAGE_CLASSES ?=3D "package_rpm"
>
> #
> # SDK target architecture
> #
> # This variable specifies the architecture to build SDK items for and mea=
ns
> # you can build the SDK packages for architectures other than the machine=
 you are
> # running the build on (i.e. building i686 packages on an x86_64 host).
> # Supported values are i686 and x86_64
> #SDKMACHINE ?=3D "i686"
>
> #
> # Extra image configuration defaults
> #
> # The EXTRA_IMAGE_FEATURES variable allows extra packages to be added to =
the generated
> # images. Some of these options are added to certain image types automati=
cally. The
> # variable can contain the following options:
> #  "dbg-pkgs"       - add -dbg packages for all installed packages
> #                     (adds symbol information for debugging/profiling)
> #  "dev-pkgs"       - add -dev packages for all installed packages
> #                     (useful if you want to develop against libs in the =
image)
> #  "ptest-pkgs"     - add -ptest packages for all ptest-enabled packages
> #                     (useful if you want to run the package test suites)
> #  "tools-sdk"      - add development tools (gcc, make, pkgconfig etc.)
> #  "tools-debug"    - add debugging tools (gdb, strace)
> #  "eclipse-debug"  - add Eclipse remote debugging support
> #  "tools-profile"  - add profiling tools (oprofile, lttng, valgrind)
> #  "tools-testapps" - add useful testing tools (ts_print, aplay, arecord =
etc.)
> #  "debug-tweaks"   - make an image suitable for development
> #                     e.g. ssh root access has a blank password
> # There are other application targets that can be used here too, see
> # meta/classes/image.bbclass and meta/classes/core-image.bbclass for more=
 details.
> # We default to enabling the debugging tweaks.
> EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
>
> #
> # Additional image features
> #
> # The following is a list of additional classes to use when building imag=
es which
> # enable extra features. Some available options which can be included in =
this variable
> # are:
> #   - 'buildstats' collect build statistics
> #   - 'image-mklibs' to reduce shared library files size for an image
> #   - 'image-prelink' in order to prelink the filesystem image
> # NOTE: if listing mklibs & prelink both, then make sure mklibs is before=
 prelink
> # NOTE: mklibs also needs to be explicitly enabled for a given image, see=
 local.conf.extended
> USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
>
> #
> # Runtime testing of images
> #
> # The build system can test booting virtual machine images under qemu (an=
 emulator)
> # after any root filesystems are created and run tests against those imag=
es. To
> # enable this uncomment this line. See classes/testimage(-auto).bbclass f=
or
> # further details.
> #TEST_IMAGE =3D "1"
> #
> # Interactive shell configuration
> #
> # Under certain circumstances the system may need input from you and to d=
o this it
> # can launch an interactive shell. It needs to do this since the build is
> # multithreaded and needs to be able to handle the case where more than o=
ne parallel
> # process may require the user's attention. The default is iterate over t=
he available
> # terminal types to find one that works.
> #
> # Examples of the occasions this may happen are when resolving patches wh=
ich cannot
> # be applied, to use the devshell or the kernel menuconfig
> #
> # Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE 3.x =
only), none
> # Note: currently, Konsole support only works for KDE 3.x due to the way
> # newer Konsole versions behave
> #OE_TERMINAL =3D "auto"
> # By default disable interactive patch resolution (tasks will just fail i=
nstead):
> PATCHRESOLVE =3D "noop"
>
> #
> # Disk Space Monitoring during the build
> #
> # Monitor the disk space during the build. If there is less that 1GB of s=
pace or less
> # than 100K inodes in any key build location (TMPDIR, DL_DIR, SSTATE_DIR)=
, gracefully
> # shutdown the build. If there is less that 100MB or 1K inodes, perform a=
 hard abort
> # of the build. The reason for this is that running completely out of spa=
ce can corrupt
> # files and damages the build in ways which may not be easily recoverable=
.
> # It's necesary to monitor /tmp, if there is no space left the build will=
 fail
> # with very exotic errors.
> BB_DISKMON_DIRS =3D "\
>     STOPTASKS,${TMPDIR},1G,100K \
>     STOPTASKS,${DL_DIR},1G,100K \
>     STOPTASKS,${SSTATE_DIR},1G,100K \
>     STOPTASKS,/tmp,100M,100K \
>     ABORT,${TMPDIR},100M,1K \
>     ABORT,${DL_DIR},100M,1K \
>     ABORT,${SSTATE_DIR},100M,1K \
>     ABORT,/tmp,10M,1K"
>
> #
> # Shared-state files from other locations
> #
> # As mentioned above, shared state files are prebuilt cache data objects =
which can
> # used to accelerate build time. This variable can be used to configure t=
he system
> # to search other mirror locations for these objects before it builds the=
 data itself.
> #
> # This can be a filesystem directory, or a remote url such as http or ftp=
. These
> # would contain the sstate-cache results from previous builds (possibly f=
rom other
> # machines). This variable works like fetcher MIRRORS/PREMIRRORS and poin=
ts to the
> # cache locations to check for the shared objects.
> # NOTE: if the mirror uses the same structure as SSTATE_DIR, you need to =
add PATH
> # at the end as shown in the examples below. This will be substituted wit=
h the
> # correct path within the directory structure.
> #SSTATE_MIRRORS ?=3D "\
> #file://.* http://someserver.tld/share/sstate/PATH;downloadfilename=3DPAT=
H \n \
> #file://.* file:///some/local/dir/sstate/PATH"
>
>
> #
> # Qemu configuration
> #
> # By default qemu will build with a builtin VNC server where graphical ou=
tput can be
> # seen. The two lines below enable the SDL backend too. By default libsdl=
-native will
> # be built, if you want to use your host's libSDL instead of the minimal =
libsdl built
> # by libsdl-native then uncomment the ASSUME_PROVIDED line below.
> PACKAGECONFIG_append_pn-qemu-native =3D " sdl"
> PACKAGECONFIG_append_pn-nativesdk-qemu =3D " sdl"
> #ASSUME_PROVIDED +=3D "libsdl-native"
>
> # CONF_VERSION is increased each time build/conf/ changes incompatibly an=
d is used to
> # track the version of this file when it was generated. This can safely b=
e ignored if
> # this doesn't mean anything to you.
> CONF_VERSION =3D "1"
> ubuntu@ip-10-0-0-63:/opt/mountpoint/poky-rocko-18.0.0/build$
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

