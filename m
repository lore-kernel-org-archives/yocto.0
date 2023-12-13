Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45E29C4332F
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 15:02:33 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web10.38298.1702479743003063069
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Dec 2023 07:02:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=nxpyJizL;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.54, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-55114c073b8so4982546a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 07:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1702479741; x=1703084541; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gBQrWNZw/2zf8GCeC6R/H4MdwzWXzux8OOKRzRr9764=;
        b=nxpyJizL/GPb0M4EvbBSmIyMB1A71FJw6W5swBdHNUE6kByT5/P5ONTfkV+N2H4d+A
         mu44iHCa2CBIR/jLf3BLZgEoqZda5yp2+cGhw8ann9R36LD7mPOKB24FvdscDR7hMSDs
         a3c9PtQ1Jxo09oxlABqD0npY8Gd8zDZSfkx25UOXR6e0WMO3u7UdeQJ3iYSXwEgJY9aT
         dmcZqcg+K8q61O5+HqWD1j8eeAwHPgoprkcUKcLb2xRTJF9LSvREi/DxgnoulbTckVEo
         nJa/xxi3vvgu55vIDmjG1Xuq+I4JKJbCz/Ju4GdKsMUE6uPPtA+KBPnAH+ClIWQmrCeU
         sF7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702479741; x=1703084541;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gBQrWNZw/2zf8GCeC6R/H4MdwzWXzux8OOKRzRr9764=;
        b=EN9NotZdFrWhC8YD3hSsIRjOzYl6f7/4FJBtkWS9Ujw9ybajE/bI3o31cTwOH6EPfp
         dnhbnjz72vOUdT1fhYnwbDgXUBzxk4W7xO/T6WuV5tmjmaxCj+5fLWyv0Uv/FLvYu8ju
         gZAsu7PdOazuXpEMsjulXmwhK3yD63qEAJLpIu2gOZX3QysDR/BK03pwoKb2rQ2Jq0tO
         2Ylv787Yy9aV6PoL9zsYIJwo4VBBpKWh1Oiq+vfNDL3a+YRxEWA21/lB73DKf7bzAUKf
         1iZumM/cb4c16Omf4XD7rPN6Km4LBfFRDowf7nRrTeWiZVwt77kH2YwClZfhXZcmrC5F
         jBpw==
X-Gm-Message-State: AOJu0YydeA56i0h1yxyjQZrANR76JZz3uSQsYtZp59Q89pPcdvD6RrY9
	jH1OqKNN8YaGb5mmb865gTXz2LEOkP5nRKghdnmoqQ==
X-Google-Smtp-Source: AGHT+IEsexZJv2x9uXCc7+R4wJMSTRp2jyYRoU1SC9qX3vgKCR9YEri4v+AuHM+3w0ACz+h2niwf15HciJ00EIldN0M=
X-Received: by 2002:a17:906:108:b0:a22:f592:9e46 with SMTP id
 8-20020a170906010800b00a22f5929e46mr424762eje.228.1702479741044; Wed, 13 Dec
 2023 07:02:21 -0800 (PST)
MIME-Version: 1.0
References: <CAEt6NwpmUrk_27o582FxobTkYgPQzucYuw9Ojm1omhXQEvpyfg@mail.gmail.com>
 <16371.1702479253141760473@lists.yoctoproject.org>
In-Reply-To: <16371.1702479253141760473@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Wed, 13 Dec 2023 16:01:54 +0100
Message-ID: <CAEt6Nwq+7A6mUj7RucBmk_x0X7M0b3-RGtZ1r36auwk=CJE33Q@mail.gmail.com>
Subject: Re: [yocto] Wireless interface (wlan) not shown on Raspberry Pi Zero W
To: Renato Mendes <renato.mendes.pes@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000033dfc1060c65747e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 15:02:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61880

--00000000000033dfc1060c65747e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I guessed that you followed the tutorial from the meta-stargazer name :-)

However it does not answer if you really made sure that the firmware
package as pointed out is installed, through either local.conf or a custom
image. You can check the manifest file in the image deploy directory to
verify that. Without, the wifi interface will not be active.

Greetz,
Josef

On Wed, Dec 13, 2023 at 3:54=E2=80=AFPM Renato Mendes <renato.mendes.pes@gm=
ail.com>
wrote:

> This is the exact tutorial I've followed up to make it work.
>
> My exact local.conf:
>
> /build/conf$ cat local.conf
> #
> # This file is your local configuration file and is where all local user
> settings
> # are placed. The comments in this file give some guide to the options a
> new user
> # to the system might want to change but pretty much any configuration
> option can
> # be set in this file. More adventurous users can look at
> # local.conf.sample.extended which contains other examples of
> configuration which
> # can be placed in this file but new users likely won't need any of them
> # initially.
> #
> # Lines starting with the '#' character are commented out and in some
> cases the
> # default values are provided as comments to show people example syntax.
> Enabling
> # the option is a question of removing the # character and making any
> change to the
> # variable as required.
>
> #
> # Machine Selection
> #
> # You need to select a specific machine to target the build with. There
> are a selection
> # of emulated machines available which can boot and run in the QEMU
> emulator:
> #
> #MACHINE ?=3D "qemuarm"
> #MACHINE ?=3D "qemuarm64"
> #MACHINE ?=3D "qemumips"
> #MACHINE ?=3D "qemumips64"
> #MACHINE ?=3D "qemuppc"
> #MACHINE ?=3D "qemux86"
> #MACHINE ?=3D "qemux86-64"
> #
> # There are also the following hardware board target machines included fo=
r
> # demonstration purposes:
> #
> #MACHINE ?=3D "beaglebone-yocto"
> #MACHINE ?=3D "genericx86"
> #MACHINE ?=3D "genericx86-64"
> #MACHINE ?=3D "edgerouter"
> #
> # This sets the default machine to be qemux86-64 if no other machine is
> selected:
> MACHINE ??=3D "qemux86-64"
>
> #
> # Where to place downloads
> #
> # During a first build the system will download many different source cod=
e
> tarballs
> # from various upstream projects. This can take a while, particularly if
> your network
> # connection is slow. These are all stored in DL_DIR. When wiping and
> rebuilding you
> # can preserve this directory to speed up this part of subsequent builds.
> This directory
> # is safe to share between multiple builds on the same machine too.
> #
> # The default is a downloads directory under TOPDIR which is the build
> directory.
> #
> #DL_DIR ?=3D "${TOPDIR}/downloads"
>
> #
> # Where to place shared-state files
> #
> # BitBake has the capability to accelerate builds based on previously
> built output.
> # This is done using "shared state" files which can be thought of as cach=
e
> objects
> # and this option determines where those files are placed.
> #
> # You can wipe out TMPDIR leaving this directory intact and the build
> would regenerate
> # from these files if no changes were made to the configuration. If
> changes were made
> # to the configuration, only shared state files where the state was still
> valid would
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
e
> and
> # where BitBake should place its temporary files and output. Keep in mind
> that
> # this includes the extraction and compilation of many applications and
> the toolchain
> # which can use Gigabytes of hard disk space.
> #
> # The default is a tmp directory under TOPDIR.
> #
> #TMPDIR =3D "${TOPDIR}/tmp"
>
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
> DISTRO ?=3D "poky"
> # As an example of a subclass there is a "bleeding" edge policy
> configuration
> # where many versions are set to the absolute latest code from the upstre=
am
> # source control systems. This is just mentioned here as an example, its
> not
> # useful to most new users.
> # DISTRO ?=3D "poky-bleeding"
>
> #
> # Package Management configuration
> #
> # This variable lists which packaging formats to enable. Multiple package
> backends
> # can be enabled at once and the first item listed in the variable will b=
e
> used
> # to generate the root filesystems.
> # Options are:
> #  - 'package_deb' for debian style deb files
> #  - 'package_ipk' for ipk files are used by opkg (a debian style embedde=
d
> package manager)
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
> # you can build the SDK packages for architectures other than the machine
> you are
> # running the build on (i.e. building i686 packages on an x86_64 host).
> # Supported values are i686, x86_64, aarch64
> #SDKMACHINE ?=3D "i686"
>
> #
> # Extra image configuration defaults
> #
> # The EXTRA_IMAGE_FEATURES variable allows extra packages to be added to
> the generated
> # images. Some of these options are added to certain image types
> automatically. The
> # variable can contain the following options:
> #  "dbg-pkgs"       - add -dbg packages for all installed packages
> #                     (adds symbol information for debugging/profiling)
> #  "src-pkgs"       - add -src packages for all installed packages
> #                     (adds source code for debugging)
> #  "dev-pkgs"       - add -dev packages for all installed packages
> #                     (useful if you want to develop against libs in the
> image)
> #  "ptest-pkgs"     - add -ptest packages for all ptest-enabled packages
> #                     (useful if you want to run the package test suites)
> #  "tools-sdk"      - add development tools (gcc, make, pkgconfig etc.)
> #  "tools-debug"    - add debugging tools (gdb, strace)
> #  "eclipse-debug"  - add Eclipse remote debugging support
> #  "tools-profile"  - add profiling tools (oprofile, lttng, valgrind)
> #  "tools-testapps" - add useful testing tools (ts_print, aplay, arecord
> etc.)
> #  "debug-tweaks"   - make an image suitable for development
> #                     e.g. ssh root access has a blank password
> # There are other application targets that can be used here too, see
> # meta/classes/image.bbclass and meta/classes/core-image.bbclass for more
> details.
> # We default to enabling the debugging tweaks.
> EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
>
> #
> # Additional image features
> #
> # The following is a list of additional classes to use when building
> images which
> # enable extra features. Some available options which can be included in
> this variable
> # are:
> #   - 'buildstats' collect build statistics
> USER_CLASSES ?=3D "buildstats"
>
> #
> # Runtime testing of images
> #
> # The build system can test booting virtual machine images under qemu (an
> emulator)
> # after any root filesystems are created and run tests against those
> images. It can also
> # run tests against any SDK that are built. To enable this uncomment thes=
e
> lines.
> # See classes/test{image,sdk}.bbclass for further details.
> #IMAGE_CLASSES +=3D "testimage testsdk"
> #TESTIMAGE_AUTO:qemuall =3D "1"
>
> #
> # Interactive shell configuration
> #
> # Under certain circumstances the system may need input from you and to d=
o
> this it
> # can launch an interactive shell. It needs to do this since the build is
> # multithreaded and needs to be able to handle the case where more than
> one parallel
> # process may require the user's attention. The default is iterate over
> the available
> # terminal types to find one that works.
> #
> # Examples of the occasions this may happen are when resolving patches
> which cannot
> # be applied, to use the devshell or the kernel menuconfig
> #
> # Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE 3.x
> only), none
> # Note: currently, Konsole support only works for KDE 3.x due to the way
> # newer Konsole versions behave
> #OE_TERMINAL =3D "auto"
> # By default disable interactive patch resolution (tasks will just fail
> instead):
> PATCHRESOLVE =3D "noop"
>
> #
> # Disk Space Monitoring during the build
> #
> # Monitor the disk space during the build. If there is less that 1GB of
> space or less
> # than 100K inodes in any key build location (TMPDIR, DL_DIR, SSTATE_DIR)=
,
> gracefully
> # shutdown the build. If there is less than 100MB or 1K inodes, perform a
> hard halt
> # of the build. The reason for this is that running completely out of
> space can corrupt
> # files and damages the build in ways which may not be easily recoverable=
.
> # It's necessary to monitor /tmp, if there is no space left the build wil=
l
> fail
> # with very exotic errors.
> BB_DISKMON_DIRS ??=3D "\
>     STOPTASKS,${TMPDIR},1G,100K \
>     STOPTASKS,${DL_DIR},1G,100K \
>     STOPTASKS,${SSTATE_DIR},1G,100K \
>     STOPTASKS,/tmp,100M,100K \
>     HALT,${TMPDIR},100M,1K \
>     HALT,${DL_DIR},100M,1K \
>     HALT,${SSTATE_DIR},100M,1K \
>     HALT,/tmp,10M,1K"
>
> #
> # Shared-state files from other locations
> #
> # As mentioned above, shared state files are prebuilt cache data objects
> which can be
> # used to accelerate build time. This variable can be used to configure
> the system
> # to search other mirror locations for these objects before it builds the
> data itself.
> #
> # This can be a filesystem directory, or a remote url such as https or
> ftp. These
> # would contain the sstate-cache results from previous builds (possibly
> from other
> # machines). This variable works like fetcher MIRRORS/PREMIRRORS and
> points to the
> # cache locations to check for the shared objects.
> # NOTE: if the mirror uses the same structure as SSTATE_DIR, you need to
> add PATH
> # at the end as shown in the examples below. This will be substituted wit=
h
> the
> # correct path within the directory structure.
> #SSTATE_MIRRORS ?=3D "\
> #file://.* https://someserver.tld/share/sstate/PATH;downloadfilename=3DPA=
TH
> \
> #file://.* file:///some/local/dir/sstate/PATH"
>
> #
> # Yocto Project SState Mirror
> #
> # The Yocto Project has prebuilt artefacts available for its releases, yo=
u
> can enable
> # use of these by uncommenting the following lines. This will mean the
> build uses
> # the network to check for artefacts at the start of builds, which does
> slow it down
> # equally, it will also speed up the builds by not having to build things
> if they are
> # present in the cache. It assumes you can download something faster than
> you can build it
> # which will depend on your network.
> # Note: For this to work you also need hash-equivalence passthrough to th=
e
> matching server
> #
> #BB_HASHSERVE_UPSTREAM =3D "hashserv.yocto.io:8687"
> #SSTATE_MIRRORS ?=3D "file://.*
> http://sstate.yoctoproject.org/all/PATH;downloadfilename=3DPATH"
>
> #
> # Qemu configuration
> #
> # By default native qemu will build with a builtin VNC server where
> graphical output can be
> # seen. The line below enables the SDL UI frontend too.
> PACKAGECONFIG:append:pn-qemu-system-native =3D " sdl"
> # By default libsdl2-native will be built, if you want to use your host's
> libSDL instead of
> # the minimal libsdl built by libsdl2-native then uncomment the
> ASSUME_PROVIDED line below.
> #ASSUME_PROVIDED +=3D "libsdl2-native"
>
> # You can also enable the Gtk UI frontend, which takes somewhat longer to
> build, but adds
> # a handy set of menus for controlling the emulator.
> #PACKAGECONFIG:append:pn-qemu-system-native =3D " gtk+"
>
> #
> # Hash Equivalence
> #
> # Enable support for automatically running a local hash equivalence serve=
r
> and
> # instruct bitbake to use a hash equivalence aware signature generator.
> Hash
> # equivalence improves reuse of sstate by detecting when a given sstate
> # artifact can be reused as equivalent, even if the current task hash
> doesn't
> # match the one that generated the artifact.
> #
> # A shared hash equivalent server can be set with "<HOSTNAME>:<PORT>"
> format
> #
> #BB_HASHSERVE =3D "auto"
> #BB_SIGNATURE_HANDLER =3D "OEEquivHash"
>
> #
> # Memory Resident Bitbake
> #
> # Bitbake's server component can stay in memory after the UI for the
> current command
> # has completed. This means subsequent commands can run faster since ther=
e
> is no need
> # for bitbake to reload cache files and so on. Number is in seconds, afte=
r
> which the
> # server will shut down.
> #
> #BB_SERVER_TIMEOUT =3D "60"
>
> # CONF_VERSION is increased each time build/conf/ changes incompatibly an=
d
> is used to
> # track the version of this file when it was generated. This can safely b=
e
> ignored if
> # this doesn't mean anything to you.
> CONF_VERSION =3D "2"
> #
> # Raspeberry PI Zero W Mender configuration
> #
> MACHINE =3D "raspberrypi0-wifi"
> MENDER_ARTIFACT_NAME =3D "release-1"
> INHERIT +=3D "mender-full"
> RPI_USE_U_BOOT =3D "1"
> #MENDER_PARTITION_ALIGNMENT =3D "4096000"
> MENDER_BOOT_PART_SIZE_MB =3D "40"
> IMAGE_INSTALL:append =3D " kernel-image kernel-devicetree"
> IMAGE_FSTYPES:remove =3D "rpi-sdimg"
> # Build for Hosted Mender
> # To get your tenant token, log in to https://hosted.mender.io,
> # click your email at the top right and then "My organization".
> # Remember to remove the meta-mender-demo layer (if you have added it).
> # We recommend Mender 1.4.0 and Yocto Project's for Hosted Mender.
> #
> MENDER_SERVER_URL =3D "https://hosted.mender.io"
> MENDER_TENANT_TOKEN =3D "...."
> DISTRO_FEATURES:append =3D " systemd"
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> INIT_MANAGER =3D "systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
> VIRTUAL-RUNTIME_initscripts =3D ""
> IMAGE_FSTYPES =3D "ext4"
> #
> # UART LOG - You need a special cable to get UART logs
> #
> #ENABLE_UART =3D "1"
> #
> # WiFi
> #
> DISTRO_FEATURES:append =3D " wifi "
> IMAGE_INSTALL:append =3D " linux-firmware-rpidistro-bcm43430 "
>
>

--00000000000033dfc1060c65747e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I guessed that you followed the tutorial from the meta-sta=
rgazer name :-)<div><br></div><div>However it does not answer if you really=
 made sure that the firmware package as pointed out is installed, through e=
ither local.conf or a custom image. You can check the manifest file in the =
image deploy directory to verify that. Without, the wifi interface will not=
 be active.<div><br></div><div>Greetz,</div><div>Josef</div></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, D=
ec 13, 2023 at 3:54=E2=80=AFPM Renato Mendes &lt;<a href=3D"mailto:renato.m=
endes.pes@gmail.com">renato.mendes.pes@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">This is the exact tutorial =
I&#39;ve followed up to make it work.<br><br>My exact local.conf:<br><br>
<div>/build/conf$ cat local.conf</div>
<div>#</div>
<div># This file is your local configuration file and is where all local us=
er settings</div>
<div># are placed. The comments in this file give some guide to the options=
 a new user</div>
<div># to the system might want to change but pretty much any configuration=
 option can</div>
<div># be set in this file. More adventurous users can look at</div>
<div># local.conf.sample.extended which contains other examples of configur=
ation which</div>
<div># can be placed in this file but new users likely won&#39;t need any o=
f them</div>
<div># initially.</div>
<div>#</div>
<div># Lines starting with the &#39;#&#39; character are commented out and =
in some cases the</div>
<div># default values are provided as comments to show people example synta=
x. Enabling</div>
<div># the option is a question of removing the # character and making any =
change to the</div>
<div># variable as required.</div>
<div>=C2=A0</div>
<div>#</div>
<div># Machine Selection</div>
<div>#</div>
<div># You need to select a specific machine to target the build with. Ther=
e are a selection</div>
<div># of emulated machines available which can boot and run in the QEMU em=
ulator:</div>
<div>#</div>
<div>#MACHINE ?=3D &quot;qemuarm&quot;</div>
<div>#MACHINE ?=3D &quot;qemuarm64&quot;</div>
<div>#MACHINE ?=3D &quot;qemumips&quot;</div>
<div>#MACHINE ?=3D &quot;qemumips64&quot;</div>
<div>#MACHINE ?=3D &quot;qemuppc&quot;</div>
<div>#MACHINE ?=3D &quot;qemux86&quot;</div>
<div>#MACHINE ?=3D &quot;qemux86-64&quot;</div>
<div>#</div>
<div># There are also the following hardware board target machines included=
 for</div>
<div># demonstration purposes:</div>
<div>#</div>
<div>#MACHINE ?=3D &quot;beaglebone-yocto&quot;</div>
<div>#MACHINE ?=3D &quot;genericx86&quot;</div>
<div>#MACHINE ?=3D &quot;genericx86-64&quot;</div>
<div>#MACHINE ?=3D &quot;edgerouter&quot;</div>
<div>#</div>
<div># This sets the default machine to be qemux86-64 if no other machine i=
s selected:</div>
<div>MACHINE ??=3D &quot;qemux86-64&quot;</div>
<div>=C2=A0</div>
<div>#</div>
<div># Where to place downloads</div>
<div>#</div>
<div># During a first build the system will download many different source =
code tarballs</div>
<div># from various upstream projects. This can take a while, particularly =
if your network</div>
<div># connection is slow. These are all stored in DL_DIR. When wiping and =
rebuilding you</div>
<div># can preserve this directory to speed up this part of subsequent buil=
ds. This directory</div>
<div># is safe to share between multiple builds on the same machine too.</d=
iv>
<div>#</div>
<div># The default is a downloads directory under TOPDIR which is the build=
 directory.</div>
<div>#</div>
<div>#DL_DIR ?=3D &quot;${TOPDIR}/downloads&quot;</div>
<div>=C2=A0</div>
<div>#</div>
<div># Where to place shared-state files</div>
<div>#</div>
<div># BitBake has the capability to accelerate builds based on previously =
built output.</div>
<div># This is done using &quot;shared state&quot; files which can be thoug=
ht of as cache objects</div>
<div># and this option determines where those files are placed.</div>
<div>#</div>
<div># You can wipe out TMPDIR leaving this directory intact and the build =
would regenerate</div>
<div># from these files if no changes were made to the configuration. If ch=
anges were made</div>
<div># to the configuration, only shared state files where the state was st=
ill valid would</div>
<div># be used (done using checksums).</div>
<div>#</div>
<div># The default is a sstate-cache directory under TOPDIR.</div>
<div>#</div>
<div>#SSTATE_DIR ?=3D &quot;${TOPDIR}/sstate-cache&quot;</div>
<div>=C2=A0</div>
<div>#</div>
<div># Where to place the build output</div>
<div>#</div>
<div># This option specifies where the bulk of the building work should be =
done and</div>
<div># where BitBake should place its temporary files and output. Keep in m=
ind that</div>
<div># this includes the extraction and compilation of many applications an=
d the toolchain</div>
<div># which can use Gigabytes of hard disk space.</div>
<div>#</div>
<div># The default is a tmp directory under TOPDIR.</div>
<div>#</div>
<div>#TMPDIR =3D &quot;${TOPDIR}/tmp&quot;</div>
<div>=C2=A0</div>
<div>#</div>
<div># Default policy config</div>
<div>#</div>
<div># The distribution setting controls which policy settings are used as =
defaults.</div>
<div># The default value is fine for general Yocto project use, at least in=
itially.</div>
<div># Ultimately when creating custom policy, people will likely end up su=
bclassing</div>
<div># these defaults.</div>
<div>#</div>
<div>DISTRO ?=3D &quot;poky&quot;</div>
<div># As an example of a subclass there is a &quot;bleeding&quot; edge pol=
icy configuration</div>
<div># where many versions are set to the absolute latest code from the ups=
tream</div>
<div># source control systems. This is just mentioned here as an example, i=
ts not</div>
<div># useful to most new users.</div>
<div># DISTRO ?=3D &quot;poky-bleeding&quot;</div>
<div>=C2=A0</div>
<div>#</div>
<div># Package Management configuration</div>
<div>#</div>
<div># This variable lists which packaging formats to enable. Multiple pack=
age backends</div>
<div># can be enabled at once and the first item listed in the variable wil=
l be used</div>
<div># to generate the root filesystems.</div>
<div># Options are:</div>
<div>#=C2=A0 - &#39;package_deb&#39; for debian style deb files</div>
<div>#=C2=A0 - &#39;package_ipk&#39; for ipk files are used by opkg (a debi=
an style embedded package manager)</div>
<div>#=C2=A0 - &#39;package_rpm&#39; for rpm style packages</div>
<div># E.g.: PACKAGE_CLASSES ?=3D &quot;package_rpm package_deb package_ipk=
&quot;</div>
<div># We default to rpm:</div>
<div>PACKAGE_CLASSES ?=3D &quot;package_rpm&quot;</div>
<div>=C2=A0</div>
<div>#</div>
<div># SDK target architecture</div>
<div>#</div>
<div># This variable specifies the architecture to build SDK items for and =
means</div>
<div># you can build the SDK packages for architectures other than the mach=
ine you are</div>
<div># running the build on (i.e. building i686 packages on an x86_64 host)=
.</div>
<div># Supported values are i686, x86_64, aarch64</div>
<div>#SDKMACHINE ?=3D &quot;i686&quot;</div>
<div>=C2=A0</div>
<div>#</div>
<div># Extra image configuration defaults</div>
<div>#</div>
<div># The EXTRA_IMAGE_FEATURES variable allows extra packages to be added =
to the generated</div>
<div># images. Some of these options are added to certain image types autom=
atically. The</div>
<div># variable can contain the following options:</div>
<div>#=C2=A0 &quot;dbg-pkgs&quot;=C2=A0 =C2=A0 =C2=A0 =C2=A0- add -dbg pack=
ages for all installed packages</div>
<div>#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0(adds symbol information for debugging/profiling)</div>
<div>#=C2=A0 &quot;src-pkgs&quot;=C2=A0 =C2=A0 =C2=A0 =C2=A0- add -src pack=
ages for all installed packages</div>
<div>#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0(adds source code for debugging)</div>
<div>#=C2=A0 &quot;dev-pkgs&quot;=C2=A0 =C2=A0 =C2=A0 =C2=A0- add -dev pack=
ages for all installed packages</div>
<div>#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0(useful if you want to develop against libs in the image)</div>
<div>#=C2=A0 &quot;ptest-pkgs&quot;=C2=A0 =C2=A0 =C2=A0- add -ptest package=
s for all ptest-enabled packages</div>
<div>#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0(useful if you want to run the package test suites)</div>
<div>#=C2=A0 &quot;tools-sdk&quot;=C2=A0 =C2=A0 =C2=A0 - add development to=
ols (gcc, make, pkgconfig etc.)</div>
<div>#=C2=A0 &quot;tools-debug&quot;=C2=A0 =C2=A0 - add debugging tools (gd=
b, strace)</div>
<div>#=C2=A0 &quot;eclipse-debug&quot;=C2=A0 - add Eclipse remote debugging=
 support</div>
<div>#=C2=A0 &quot;tools-profile&quot;=C2=A0 - add profiling tools (oprofil=
e, lttng, valgrind)</div>
<div>#=C2=A0 &quot;tools-testapps&quot; - add useful testing tools (ts_prin=
t, aplay, arecord etc.)</div>
<div>#=C2=A0 &quot;debug-tweaks&quot;=C2=A0 =C2=A0- make an image suitable =
for development</div>
<div>#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0e.g. ssh root access has a blank password</div>
<div># There are other application targets that can be used here too, see</=
div>
<div># meta/classes/image.bbclass and meta/classes/core-image.bbclass for m=
ore details.</div>
<div># We default to enabling the debugging tweaks.</div>
<div>EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks&quot;</div>
<div>=C2=A0</div>
<div>#</div>
<div># Additional image features</div>
<div>#</div>
<div># The following is a list of additional classes to use when building i=
mages which</div>
<div># enable extra features. Some available options which can be included =
in this variable</div>
<div># are:</div>
<div>#=C2=A0 =C2=A0- &#39;buildstats&#39; collect build statistics</div>
<div>USER_CLASSES ?=3D &quot;buildstats&quot;</div>
<div>=C2=A0</div>
<div>#</div>
<div># Runtime testing of images</div>
<div>#</div>
<div># The build system can test booting virtual machine images under qemu =
(an emulator)</div>
<div># after any root filesystems are created and run tests against those i=
mages. It can also</div>
<div># run tests against any SDK that are built. To enable this uncomment t=
hese lines.</div>
<div># See classes/test{image,sdk}.bbclass for further details.</div>
<div>#IMAGE_CLASSES +=3D &quot;testimage testsdk&quot;</div>
<div>#TESTIMAGE_AUTO:qemuall =3D &quot;1&quot;</div>
<div>=C2=A0</div>
<div>#</div>
<div># Interactive shell configuration</div>
<div>#</div>
<div># Under certain circumstances the system may need input from you and t=
o do this it</div>
<div># can launch an interactive shell. It needs to do this since the build=
 is</div>
<div># multithreaded and needs to be able to handle the case where more tha=
n one parallel</div>
<div># process may require the user&#39;s attention. The default is iterate=
 over the available</div>
<div># terminal types to find one that works.</div>
<div>#</div>
<div># Examples of the occasions this may happen are when resolving patches=
 which cannot</div>
<div># be applied, to use the devshell or the kernel menuconfig</div>
<div>#</div>
<div># Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE 3=
.x only), none</div>
<div># Note: currently, Konsole support only works for KDE 3.x due to the w=
ay</div>
<div># newer Konsole versions behave</div>
<div>#OE_TERMINAL =3D &quot;auto&quot;</div>
<div># By default disable interactive patch resolution (tasks will just fai=
l instead):</div>
<div>PATCHRESOLVE =3D &quot;noop&quot;</div>
<div>=C2=A0</div>
<div>#</div>
<div># Disk Space Monitoring during the build</div>
<div>#</div>
<div># Monitor the disk space during the build. If there is less that 1GB o=
f space or less</div>
<div># than 100K inodes in any key build location (TMPDIR, DL_DIR, SSTATE_D=
IR), gracefully</div>
<div># shutdown the build. If there is less than 100MB or 1K inodes, perfor=
m a hard halt</div>
<div># of the build. The reason for this is that running completely out of =
space can corrupt</div>
<div># files and damages the build in ways which may not be easily recovera=
ble.</div>
<div># It&#39;s necessary to monitor /tmp, if there is no space left the bu=
ild will fail</div>
<div># with very exotic errors.</div>
<div>BB_DISKMON_DIRS ??=3D &quot;\</div>
<div>=C2=A0 =C2=A0 STOPTASKS,${TMPDIR},1G,100K \</div>
<div>=C2=A0 =C2=A0 STOPTASKS,${DL_DIR},1G,100K \</div>
<div>=C2=A0 =C2=A0 STOPTASKS,${SSTATE_DIR},1G,100K \</div>
<div>=C2=A0 =C2=A0 STOPTASKS,/tmp,100M,100K \</div>
<div>=C2=A0 =C2=A0 HALT,${TMPDIR},100M,1K \</div>
<div>=C2=A0 =C2=A0 HALT,${DL_DIR},100M,1K \</div>
<div>=C2=A0 =C2=A0 HALT,${SSTATE_DIR},100M,1K \</div>
<div>=C2=A0 =C2=A0 HALT,/tmp,10M,1K&quot;</div>
<div>=C2=A0</div>
<div>#</div>
<div># Shared-state files from other locations</div>
<div>#</div>
<div># As mentioned above, shared state files are prebuilt cache data objec=
ts which can be</div>
<div># used to accelerate build time. This variable can be used to configur=
e the system</div>
<div># to search other mirror locations for these objects before it builds =
the data itself.</div>
<div>#</div>
<div># This can be a filesystem directory, or a remote url such as https or=
 ftp. These</div>
<div># would contain the sstate-cache results from previous builds (possibl=
y from other</div>
<div># machines). This variable works like fetcher MIRRORS/PREMIRRORS and p=
oints to the</div>
<div># cache locations to check for the shared objects.</div>
<div># NOTE: if the mirror uses the same structure as SSTATE_DIR, you need =
to add PATH</div>
<div># at the end as shown in the examples below. This will be substituted =
with the</div>
<div># correct path within the directory structure.</div>
<div>#SSTATE_MIRRORS ?=3D &quot;\</div>
<div>#file://.* <a href=3D"https://someserver.tld/share/sstate/PATH;downloa=
dfilename=3DPATH" target=3D"_blank">https://someserver.tld/share/sstate/PAT=
H;downloadfilename=3DPATH</a> \</div>
<div>#file://.* file:///some/local/dir/sstate/PATH&quot;</div>
<div>=C2=A0</div>
<div>#</div>
<div># Yocto Project SState Mirror</div>
<div>#</div>
<div># The Yocto Project has prebuilt artefacts available for its releases,=
 you can enable</div>
<div># use of these by uncommenting the following lines. This will mean the=
 build uses</div>
<div># the network to check for artefacts at the start of builds, which doe=
s slow it down</div>
<div># equally, it will also speed up the builds by not having to build thi=
ngs if they are</div>
<div># present in the cache. It assumes you can download something faster t=
han you can build it</div>
<div># which will depend on your network.</div>
<div># Note: For this to work you also need hash-equivalence passthrough to=
 the matching server</div>
<div>#</div>
<div>#BB_HASHSERVE_UPSTREAM =3D &quot;<a href=3D"http://hashserv.yocto.io:8=
687" target=3D"_blank">hashserv.yocto.io:8687</a>&quot;</div>
<div>#SSTATE_MIRRORS ?=3D &quot;file://.* <a href=3D"http://sstate.yoctopro=
ject.org/all/PATH;downloadfilename=3DPATH" target=3D"_blank">http://sstate.=
yoctoproject.org/all/PATH;downloadfilename=3DPATH</a>&quot;</div>
<div>=C2=A0</div>
<div>#</div>
<div># Qemu configuration</div>
<div>#</div>
<div># By default native qemu will build with a builtin VNC server where gr=
aphical output can be</div>
<div># seen. The line below enables the SDL UI frontend too.</div>
<div>PACKAGECONFIG:append:pn-qemu-system-native =3D &quot; sdl&quot;</div>
<div># By default libsdl2-native will be built, if you want to use your hos=
t&#39;s libSDL instead of</div>
<div># the minimal libsdl built by libsdl2-native then uncomment the ASSUME=
_PROVIDED line below.</div>
<div>#ASSUME_PROVIDED +=3D &quot;libsdl2-native&quot;</div>
<div>=C2=A0</div>
<div># You can also enable the Gtk UI frontend, which takes somewhat longer=
 to build, but adds</div>
<div># a handy set of menus for controlling the emulator.</div>
<div>#PACKAGECONFIG:append:pn-qemu-system-native =3D &quot; gtk+&quot;</div=
>
<div>=C2=A0</div>
<div>#</div>
<div># Hash Equivalence</div>
<div>#</div>
<div># Enable support for automatically running a local hash equivalence se=
rver and</div>
<div># instruct bitbake to use a hash equivalence aware signature generator=
. Hash</div>
<div># equivalence improves reuse of sstate by detecting when a given sstat=
e</div>
<div># artifact can be reused as equivalent, even if the current task hash =
doesn&#39;t</div>
<div># match the one that generated the artifact.</div>
<div>#</div>
<div># A shared hash equivalent server can be set with &quot;&lt;HOSTNAME&g=
t;:&lt;PORT&gt;&quot; format</div>
<div>#</div>
<div>#BB_HASHSERVE =3D &quot;auto&quot;</div>
<div>#BB_SIGNATURE_HANDLER =3D &quot;OEEquivHash&quot;</div>
<div>=C2=A0</div>
<div>#</div>
<div># Memory Resident Bitbake</div>
<div>#</div>
<div># Bitbake&#39;s server component can stay in memory after the UI for t=
he current command</div>
<div># has completed. This means subsequent commands can run faster since t=
here is no need</div>
<div># for bitbake to reload cache files and so on. Number is in seconds, a=
fter which the</div>
<div># server will shut down.</div>
<div>#</div>
<div>#BB_SERVER_TIMEOUT =3D &quot;60&quot;</div>
<div>=C2=A0</div>
<div># CONF_VERSION is increased each time build/conf/ changes incompatibly=
 and is used to</div>
<div># track the version of this file when it was generated. This can safel=
y be ignored if</div>
<div># this doesn&#39;t mean anything to you.</div>
<div>CONF_VERSION =3D &quot;2&quot;</div>
<div>#</div>
<div># Raspeberry PI Zero W Mender configuration</div>
<div>#</div>
<div>MACHINE =3D &quot;raspberrypi0-wifi&quot;</div>
<div>MENDER_ARTIFACT_NAME =3D &quot;release-1&quot;</div>
<div>INHERIT +=3D &quot;mender-full&quot;</div>
<div>RPI_USE_U_BOOT =3D &quot;1&quot;</div>
<div>#MENDER_PARTITION_ALIGNMENT =3D &quot;4096000&quot;</div>
<div>MENDER_BOOT_PART_SIZE_MB =3D &quot;40&quot;</div>
<div>IMAGE_INSTALL:append =3D &quot; kernel-image kernel-devicetree&quot;</=
div>
<div>IMAGE_FSTYPES:remove =3D &quot;rpi-sdimg&quot;</div>
<div># Build for Hosted Mender</div>
<div># To get your tenant token, log in to <a href=3D"https://hosted.mender=
.io" target=3D"_blank">https://hosted.mender.io</a>,</div>
<div># click your email at the top right and then &quot;My organization&quo=
t;.</div>
<div># Remember to remove the meta-mender-demo layer (if you have added it)=
.</div>
<div># We recommend Mender 1.4.0 and Yocto Project&#39;s for Hosted Mender.=
</div>
<div>#</div>
<div>MENDER_SERVER_URL =3D &quot;<a href=3D"https://hosted.mender.io" targe=
t=3D"_blank">https://hosted.mender.io</a>&quot;</div>
<div>MENDER_TENANT_TOKEN =3D &quot;....&quot;</div>
<div>DISTRO_FEATURES:append =3D &quot; systemd&quot;</div>
<div>VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;</div>
<div>INIT_MANAGER =3D &quot;systemd&quot;</div>
<div>DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;sysvinit&quot;</div>
<div>VIRTUAL-RUNTIME_initscripts =3D &quot;&quot;</div>
<div>IMAGE_FSTYPES =3D &quot;ext4&quot;</div>
<div>#</div>
<div># UART LOG - You need a special cable to get UART logs</div>
<div>#</div>
<div>#ENABLE_UART =3D &quot;1&quot;</div>
<div>#</div>
<div># WiFi</div>
<div>#</div>
<div>DISTRO_FEATURES:append =3D &quot; wifi &quot;</div>
<div>IMAGE_INSTALL:append =3D &quot; linux-firmware-rpidistro-bcm43430 &quo=
t;<br><br></div>
</blockquote></div>

--00000000000033dfc1060c65747e--

