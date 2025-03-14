Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 794E1C282EC
	for <webhook@archiver.kernel.org>; Fri, 14 Mar 2025 07:50:03 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.8644.1741938596756490705
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Mar 2025 00:49:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KbAwPtjR;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cec5cd73bso11722725e9.3
        for <yocto@lists.yoctoproject.org>; Fri, 14 Mar 2025 00:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741938595; x=1742543395; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=P03A2obG5QS3XLBaVpdBuj8spWXdMah0qJgRteFBt9Y=;
        b=KbAwPtjR1qqTsRZrypjkq85GMQheCsacgC+nmijbM7PVYiVxTuweAL24Q1l4LIq8Q+
         ErDgo/1mD7DeE7xikoVwRPkTTdtOzFDEc9SPWvvcsFoUZgmswTy94OoECY35/jfLQU1V
         IHiLv2lqzWHEzGyTw1iC/F9rwz3y3pq1luCd/2QKw7a2D+ObtD0ZgDkDIJ9TkrjKABxg
         yaqmbIoX25LUdh7F3HDjS154ayusgADuDavm9YpOKZZsGjL5n9XvLCvM5Bf4i/v0UTx8
         nxBY8sSWUZ93lYseZ3SgF/We1AYulGyFdRXnO+v7VOzHCNIeN9FWucZHDgunq4MzEbKI
         lNzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741938595; x=1742543395;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P03A2obG5QS3XLBaVpdBuj8spWXdMah0qJgRteFBt9Y=;
        b=avVoxYCosZYk6HUkFJmUjxJ+5yMTIwb1X4/q4BuoFOEfwlfnSsH8vu11nGa51CYd1F
         CG/5tlnqGeuh0PrBqYWpP+d+NATLsdYur1NtRHw/J5EkH3TZvDo+4FqUC4NeWZO15/k+
         wbIsTv+JrVo52eT/9gFy86Y2Kp1TvfhSFghbpKQ+COKcq8xJgI/oIEKVj0z96rjzbmYv
         nRp0DnlfNH9yk1VL83G9G/hQ80WIrJDNt9nyUl/DrhhazmIy77W0mo1vE4yjGyC9brk5
         Q5lzLFH9g/ityxpoPURsYpKMHK8cOZoEdwx4Ni8wT8rf+CDJXMgcBoNhdJVcFx7k608n
         pPJQ==
X-Gm-Message-State: AOJu0YxjrqtiOsYJDU4GaDTiyizgOOFWdkonVjsEbtEItGFCMBX14AJH
	HbJlN/lep7OTGUAhkt6EN/oTHRsSp2xgQP9N7XioNjnN1U7GZk9UOYZ3V3Pe
X-Gm-Gg: ASbGncu0dXPpHFH99hhO6wddvFVgcMpcSTey1G5XJC70GpnVgFfykPzueBBqg18DpYb
	QshklBi5gXHdpyhFdOJBrf5mwHTJmh4v31TBwfboNd5bAQGZ9pMPHTvpGzGeLlp0q3J5zD1ErLj
	3eEshTC2Xbv+II9FWkmk4nuW6xzIP+N7IL/lvKLl2Jq+j+UueJWUoA3o/ANzvultZwster3cp4A
	a5OJo1gSkrwDx51EGQR2kaXWX41o58zq0Jq837iMZ/CiccychH9vIr69pUOSmwPhaAf9Up3pYDq
	PXXKucek5CH76QniCwhK/FxQQc0njqTn2WKDA0/z2df/tqfcq/75
X-Google-Smtp-Source: AGHT+IGnzvE2HHiT+e8Gl0qSIJvJ28sFxerV0PnxeyzOknsoeytFVmBJvhj5CpEeTrGp9u6k7/+IxQ==
X-Received: by 2002:a05:600c:511c:b0:43c:fceb:91a with SMTP id 5b1f17b1804b1-43d1ec729a9mr21912955e9.11.1741938594649;
        Fri, 14 Mar 2025 00:49:54 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395cb318a75sm4721883f8f.76.2025.03.14.00.49.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Mar 2025 00:49:54 -0700 (PDT)
Message-ID: <ef2f9413-0351-4581-a086-d25cd7956566@gmail.com>
Date: Fri, 14 Mar 2025 08:49:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Yocto RPi sato Image Works on Raspberry Pi 4 but Fails on
 CM4 (with eMMC) IO Board #dunfell #raspberrypi #uboot #yocto
To: yocto@lists.yoctoproject.org, jonty193@gmail.com
References: <EW0m.1741934485397166034.LhxI@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <EW0m.1741934485397166034.LhxI@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Mar 2025 07:50:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64956

Please note that Dunfell is EOL, and has been since a long time - it is
unmaintained, and shouldn't be used it for new projects.
Can you update to a supported version?

Looking further at the history, CM4 devicetrees were added in[1], and it
looks it didn't make it to Dunfell - it is however present in Kirkstone
and later.

In case you still face failures, please don't forget to include the
details of the problem (and expected behavior), e.g. uart output.


[1]:
https://github.com/agherzan/meta-raspberrypi/commit/0c85f0150629e1f5eaf86289f2542744e38b5413


On 14.03.25 07:41, jonty193 via lists.yoctoproject.org wrote:
> I have built the Yocto Sato image and initially tested it on the
> Raspberry Pi 4 board using an SD card, where it worked successfully.
> However, when I tried running the same image on the CM4 board with
> eMMC, it did not work.
> Am I missing any configuration for the CM4?
> Could someone please help me with this?
>  
> My local.conf file look like this 
>  
> #
> # This file is your local configuration file and is where all local
> user settings
> # are placed. The comments in this file give some guide to the options
> a new user
> # to the system might want to change but pretty much any configuration
> option can
> # be set in this file. More adventurous users can look at
> local.conf.extended
> # which contains other examples of configuration which can be placed
> in this file
> # but new users likely won't need any of them initially.
> #
> # Lines starting with the '#' character are commented out and in some
> cases the
> # default values are provided as comments to show people example
> syntax. Enabling
> # the option is a question of removing the # character and making any
> change to the
> # variable as required.
> #
> # Machine Selection
> #
> # You need to select a specific machine to target the build with.
> There are a selection
> # of emulated machines available which can boot and run in the QEMU
> emulator:
> #
> #MACHINE ?= "qemuarm"
> #MACHINE ?= "qemuarm64"
> #MACHINE ?= "qemumips"
> #MACHINE ?= "qemumips64"
> #MACHINE ?= "qemuppc"
> #MACHINE ?= "qemux86"
> #MACHINE ?= "qemux86-64"
> #
> # There are also the following hardware board target machines included
> for 
> # demonstration purposes:
> #
> #MACHINE ?= "beaglebone-yocto"
> #MACHINE ?= "genericx86"
> #MACHINE ?= "genericx86-64"
> #MACHINE ?= "edgerouter"
> #
> # This sets the default machine to be qemux86-64 if no other machine
> is selected:
> MACHINE ??= "raspberrypi4-64"
> SDKMACHINE ?= "x86_64"
> #
> # Where to place downloads
> #
> # During a first build the system will download many different source
> code tarballs
> # from various upstream projects. This can take a while, particularly
> if your network
> # connection is slow. These are all stored in DL_DIR. When wiping and
> rebuilding you
> # can preserve this directory to speed up this part of subsequent
> builds. This directory
> # is safe to share between multiple builds on the same machine too.
> #
> # The default is a downloads directory under TOPDIR which is the build
> directory.
> #
> #DL_DIR ?= "${TOPDIR}/downloads"
> #
> # Where to place shared-state files
> #
> # BitBake has the capability to accelerate builds based on previously
> built output.
> # This is done using "shared state" files which can be thought of as
> cache objects
> # and this option determines where those files are placed.
> #
> # You can wipe out TMPDIR leaving this directory intact and the build
> would regenerate
> # from these files if no changes were made to the configuration. If
> changes were made
> # to the configuration, only shared state files where the state was
> still valid would
> # be used (done using checksums).
> #
> # The default is a sstate-cache directory under TOPDIR.
> #
> #SSTATE_DIR ?= "${TOPDIR}/sstate-cache"
> #
> # Where to place the build output
> #
> # This option specifies where the bulk of the building work should be
> done and
> # where BitBake should place its temporary files and output. Keep in
> mind that
> # this includes the extraction and compilation of many applications
> and the toolchain
> # which can use Gigabytes of hard disk space.
> #
> # The default is a tmp directory under TOPDIR.
> #
> #TMPDIR = "${TOPDIR}/tmp"
> #
> # Default policy config
> #
> # The distribution setting controls which policy settings are used as
> defaults.
> # The default value is fine for general Yocto project use, at least
> initially.
> # Ultimately when creating custom policy, people will likely end up
> subclassing 
> # these defaults.
> #
> DISTRO ?= "poky"
> # As an example of a subclass there is a "bleeding" edge policy
> configuration
> # where many versions are set to the absolute latest code from the
> upstream 
> # source control systems. This is just mentioned here as an example,
> its not
> # useful to most new users.
> # DISTRO ?= "poky-bleeding"
> #
> # Package Management configuration
> #
> # This variable lists which packaging formats to enable. Multiple
> package backends
> # can be enabled at once and the first item listed in the variable
> will be used
> # to generate the root filesystems.
> # Options are:
> #  - 'package_deb' for debian style deb files
> #  - 'package_ipk' for ipk files are used by opkg (a debian style
> embedded package manager)
> #  - 'package_rpm' for rpm style packages
> # E.g.: PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk"
> # We default to rpm:
> PACKAGE_CLASSES ?= "package_rpm"
> #
> # SDK target architecture
> #
> # This variable specifies the architecture to build SDK items for and
> means
> # you can build the SDK packages for architectures other than the
> machine you are
> # running the build on (i.e. building i686 packages on an x86_64 host).
> # Supported values are i686 and x86_64
> #SDKMACHINE ?= "i686"
> #
> # Extra image configuration defaults
> #
> # The EXTRA_IMAGE_FEATURES variable allows extra packages to be added
> to the generated
> # images. Some of these options are added to certain image types
> automatically. The
> # variable can contain the following options:
> #  "dbg-pkgs"       - add -dbg packages for all installed packages
> #                     (adds symbol information for debugging/profiling)
> #  "src-pkgs"       - add -src packages for all installed packages
> #                     (adds source code for debugging)
> #  "dev-pkgs"       - add -dev packages for all installed packages
> #                     (useful if you want to develop against libs in
> the image)
> #  "ptest-pkgs"     - add -ptest packages for all ptest-enabled packages
> #                     (useful if you want to run the package test suites)
> #  "tools-sdk"      - add development tools (gcc, make, pkgconfig etc.)
> #  "tools-debug"    - add debugging tools (gdb, strace)
> #  "eclipse-debug"  - add Eclipse remote debugging support
> #  "tools-profile"  - add profiling tools (oprofile, lttng, valgrind)
> #  "tools-testapps" - add useful testing tools (ts_print, aplay,
> arecord etc.)
> #  "debug-tweaks"   - make an image suitable for development
> #                     e.g. ssh root access has a blank password
> # There are other application targets that can be used here too, see
> # meta/classes/image.bbclass and meta/classes/core-image.bbclass for
> more details.
> # We default to enabling the debugging tweaks.
> EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
> DISTRO_FEATURES_append = " systemd"
> VIRTUAL-RUNTIME_init_manager = "systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
> VIRTUAL-RUNTIME_initscripts = ""
> IMAGE_INSTALL_append = " rauc"
> IMAGE_FSTYPES="tar.bz2 ext4 wic.bz2 wic.bmap"
> SDIMG_ROOTFS_TYPE="ext4"
> ENABLE_UART = "1"
> RPI_USE_U_BOOT = "1"
> PREFERRED_PROVIDER_virtual/bootloader = "u-boot"
> #KERNEL_DEVICETREE = "bcm2711-rpi-cm4.dtb"
> WKS_FILE = "sdimage-dual-raspberrypi.wks.in"
> # useful software
> CORE_IMAGE_EXTRA_INSTALL += "htop iotop iperf3"
> # add libopencv-XXX to insert new module 
> CORE_IMAGE_EXTRA_INSTALL += "opencv \
>                             libopencv-core-dev \
>                             libopencv-highgui-dev \
>                             libopencv-imgproc-dev \ 
>                             libopencv-objdetect-dev \
>                             libopencv-ml-dev \
>                             opencv-apps \
>                             opencv-dev \
>                             libopencv-xphoto \
>                             opencv-dev "
> #
> # Additional image features
> #
> # The following is a list of additional classes to use when building
> images which
> # enable extra features. Some available options which can be included
> in this variable
> # are:
> #   - 'buildstats' collect build statistics
> #   - 'image-mklibs' to reduce shared library files size for an image
> #   - 'image-prelink' in order to prelink the filesystem image
> # NOTE: if listing mklibs & prelink both, then make sure mklibs is
> before prelink
> # NOTE: mklibs also needs to be explicitly enabled for a given image,
> see local.conf.extended
> USER_CLASSES ?= "buildstats image-mklibs image-prelink"
> #
> # Runtime testing of images
> #
> # The build system can test booting virtual machine images under qemu
> (an emulator)
> # after any root filesystems are created and run tests against those
> images. It can also
> # run tests against any SDK that are built. To enable this uncomment
> these lines.
> # See classes/test{image,sdk}.bbclass for further details.
> #IMAGE_CLASSES += "testimage testsdk"
> #TESTIMAGE_AUTO_qemuall = "1"
> #
> # Interactive shell configuration
> #
> # Under certain circumstances the system may need input from you and
> to do this it
> # can launch an interactive shell. It needs to do this since the build is
> # multithreaded and needs to be able to handle the case where more
> than one parallel
> # process may require the user's attention. The default is iterate
> over the available
> # terminal types to find one that works.
> #
> # Examples of the occasions this may happen are when resolving patches
> which cannot
> # be applied, to use the devshell or the kernel menuconfig
> #
> # Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE
> 3.x only), none
> # Note: currently, Konsole support only works for KDE 3.x due to the way
> # newer Konsole versions behave
> #OE_TERMINAL = "auto"
> # By default disable interactive patch resolution (tasks will just
> fail instead):
> PATCHRESOLVE = "noop"
> #
> # Disk Space Monitoring during the build
> #
> # Monitor the disk space during the build. If there is less that 1GB
> of space or less
> # than 100K inodes in any key build location (TMPDIR, DL_DIR,
> SSTATE_DIR), gracefully
> # shutdown the build. If there is less that 100MB or 1K inodes,
> perform a hard abort
> # of the build. The reason for this is that running completely out of
> space can corrupt
> # files and damages the build in ways which may not be easily recoverable.
> # It's necesary to monitor /tmp, if there is no space left the build
> will fail
> # with very exotic errors.
> BB_DISKMON_DIRS ??= "\
>     STOPTASKS,${TMPDIR},1G,100K \
>     STOPTASKS,${DL_DIR},1G,100K \
>     STOPTASKS,${SSTATE_DIR},1G,100K \
>     STOPTASKS,/tmp,100M,100K \
>     ABORT,${TMPDIR},100M,1K \
>     ABORT,${DL_DIR},100M,1K \
>     ABORT,${SSTATE_DIR},100M,1K \
>     ABORT,/tmp,10M,1K"
> #
> # Shared-state files from other locations
> #
> # As mentioned above, shared state files are prebuilt cache data
> objects which can
> # used to accelerate build time. This variable can be used to
> configure the system
> # to search other mirror locations for these objects before it builds
> the data itself.
> #
> # This can be a filesystem directory, or a remote url such as http or
> ftp. These
> # would contain the sstate-cache results from previous builds
> (possibly from other
> # machines). This variable works like fetcher MIRRORS/PREMIRRORS and
> points to the
> # cache locations to check for the shared objects.
> # NOTE: if the mirror uses the same structure as SSTATE_DIR, you need
> to add PATH
> # at the end as shown in the examples below. This will be substituted
> with the
> # correct path within the directory structure.
> #SSTATE_MIRRORS ?= "\
> #file://.*
> http://someserver.tld/share/sstate/PATH;downloadfilename=PATH \n \
> #file://.* file:///some/local/dir/sstate/PATH"
> #
> # Yocto Project SState Mirror
> #
> # The Yocto Project has prebuilt artefacts available for its releases,
> you can enable
> # use of these by uncommenting the following line. This will mean the
> build uses
> # the network to check for artefacts at the start of builds, which
> does slow it down
> # equally, it will also speed up the builds by not having to build
> things if they are
> # present in the cache. It assumes you can download something faster
> than you can build it
> # which will depend on your network.
> #
> #SSTATE_MIRRORS ?= "file://.*
> http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
> #
> # Qemu configuration
> #
> # By default native qemu will build with a builtin VNC server where
> graphical output can be
> # seen. The line below enables the SDL UI frontend too.
> PACKAGECONFIG_append_pn-qemu-system-native = " sdl"
> # By default libsdl2-native will be built, if you want to use your
> host's libSDL instead of 
> # the minimal libsdl built by libsdl2-native then uncomment the
> ASSUME_PROVIDED line below.
> #ASSUME_PROVIDED += "libsdl2-native"
> # You can also enable the Gtk UI frontend, which takes somewhat longer
> to build, but adds
> # a handy set of menus for controlling the emulator.
> #PACKAGECONFIG_append_pn-qemu-system-native = " gtk+"
> #
> # Hash Equivalence
> #
> # Enable support for automatically running a local hash equivalence
> server and
> # instruct bitbake to use a hash equivalence aware signature
> generator. Hash
> # equivalence improves reuse of sstate by detecting when a given sstate
> # artifact can be reused as equivalent, even if the current task hash
> doesn't
> # match the one that generated the artifact.
> #
> # A shared hash equivalent server can be set with "<HOSTNAME>:<PORT>"
> format
> #
> #BB_HASHSERVE = "auto"
> #BB_SIGNATURE_HANDLER = "OEEquivHash"
> # CONF_VERSION is increased each time build/conf/ changes incompatibly
> and is used to
> # track the version of this file when it was generated. This can
> safely be ignored if
> # this doesn't mean anything to you.
> CONF_VERSION = "1"
> ENABLE_UART = "1"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64954): https://lists.yoctoproject.org/g/yocto/message/64954
> Mute This Topic: https://lists.yoctoproject.org/mt/111694645/6084445
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Mute #raspberrypi:https://lists.yoctoproject.org/g/yocto/mutehashtag/raspberrypi
> Mute #uboot:https://lists.yoctoproject.org/g/yocto/mutehashtag/uboot
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

