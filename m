Return-Path: <rahuljangra017@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED37BE00BFB; Thu, 17 May 2018 23:20:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,WEIRD_PORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rahuljangra017[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05E20E009E2;
	Thu, 17 May 2018 23:20:26 -0700 (PDT)
Received: by mail-qt0-f196.google.com with SMTP id f5-v6so8965408qth.2;
	Thu, 17 May 2018 23:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=c8Qtqpydw3UTs02aOfZI3MoChnsNJTbCKHAPv11NMqk=;
	b=dIqNd52d9ygzG70w5SWuMjOwUNjJ+hJtjflxBtoCOSv2pxjHAqFP8kmn1kUiGlMPLu
	NRP6k4k5RDS+OY+eD692t014iFjgNRJ2zck3TsnfVacXZHRd3jcHN5e7RKVLlRcU9pvU
	mR3f0FgfJJBltirVnGeq7A9G9ZVaeQMMkkAOs91TJMLZT/PugUUr0f8/rm9lZUBIGu0x
	BEDSFWCL/sWketzXiqSg81ydz+z8UXK5xR+gP34mSiGPDjXfAJ8B8fW1mrRlN4tvt/vN
	zRh6u4DNhK1pECxk3JzDmTPeYWZU30F55eaxV3Mrd66lw2zqibBf25G3GhOtY/PKUHdQ
	w1vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=c8Qtqpydw3UTs02aOfZI3MoChnsNJTbCKHAPv11NMqk=;
	b=ObAmQc5zQE5GSQ0cKDgqP0wptzOjdmmVuj4UYKK8wmD3Azg794lOTthXVlpebFkodW
	gtbZZL38dDQTg2U0J/Q1GXxDsdkb0+syU13uWYnBorcoCxxbeHKgiL1dMxBMfTzGvUTo
	71h+VUDFZ0s4/Q0bVN8o8wfqdRN+hsYq4T7Rq6Sm79F9HUfiAp3GDx9k4NxaG+X5X1nb
	s0i0eWK+N1nv3Bgl3iIbzdTqSctuFfBcQL9BhgwzqYyeM6CFbVGnFLATy/abhicaZmZi
	eNzEDhCzfn5NzJSiPDsDALNAbH/r3GVCQCzJqhnnwGQOT51aUddGD2Idou2cY4CQ3sKR
	1UsA==
X-Gm-Message-State: ALKqPwdC/4F2mC9yNyBAMsrFSn2+BmQseDqJ4zyxu2Bemsbg2z3Mt8kV
	KAnZO0EF+Yic6SgklN4ZUU4xgKTJKXNjmro0MIo=
X-Google-Smtp-Source: AB8JxZo+D+jSgCZI4v9PO7Ve2GzOnAWcgnWj6VkujpigGfvGbi0t+KZRvXa6rpl3/PaUxeFwqzltqlaAqkefBEip4us=
X-Received: by 2002:ac8:27c9:: with SMTP id
	x9-v6mr8020154qtx.374.1526624426052; 
	Thu, 17 May 2018 23:20:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.229.132 with HTTP; Thu, 17 May 2018 23:20:25 -0700 (PDT)
In-Reply-To: <CAGUdgLbY8dXkpmkS0mLz-xseThX0g5pHRnvzYUbje9Xp9yDxXg@mail.gmail.com>
References: <CAGUdgLYvHa1DMx4qZ5D1M+x7YSymjYJ9_htyjf=bXKuV50V4hA@mail.gmail.com>
	<12db0c4e-d881-60ca-8af9-01461ebc00a5@intel.com>
	<CAGUdgLa-HpxrFeK7w5X6b9oxrH2+ohnn0uek65_z=T2UzLmuKQ@mail.gmail.com>
	<CAGUdgLbY8dXkpmkS0mLz-xseThX0g5pHRnvzYUbje9Xp9yDxXg@mail.gmail.com>
From: Rahul jangra <rahuljangra017@gmail.com>
Date: Fri, 18 May 2018 11:50:25 +0530
Message-ID: <CAGUdgLZbmXQdz=QZjq3aFUzT5HqMR6JwC18EyCdicFCS-S5sNw@mail.gmail.com>
To: yocto-request <yocto-request@yoctoproject.org>,
	yocto <yocto@yoctoproject.org>
Cc: yocto-builds-owner <yocto-builds-owner@yoctoproject.org>
Subject: apt-get error
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
X-List-Received-Date: Fri, 18 May 2018 06:20:29 -0000
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ----------
From: Rahul jangra <rahuljangra017@gmail.com>
Date: Thu, 17 May 2018 10:29:16 +0530
Subject: Re: [yocto] apt-get error
To: Anuj Mittal <anuj.mittal@intel.com>

when I am creating core-image-minimal it easy to build up
but when I am trying to create core-image-full-cmdline he is getting an error

ore-image-full-cmdline-1.0-r0 do_rootfs: Unable to install packages.
Command '/home/debianstretch/rpi/build/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/apt-get
 install --force-yes --allow-unauthenticated dpkg base-passwd
hello-mender packagegroup-core-ssh-openssh psplash-raspberrypi
run-postinsts shadow packagegroup-core-boot kernel-devicetree
kernel-image-4.14.39 mender packagegroup-core-full-cmdline apt'
returned 100:
Reading package lists...
Building dependency tree...
Reading state information...
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
 packagegroup-core-full-cmdline : Depends:
packagegroup-core-full-cmdline-initscripts but it is not going to be
installed
E: Unable to correct problems, you have held broken packages.

ERROR: core-image-full-cmdline-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/debianstretch/rpi/build/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/temp/log.do_rootfs.105216
ERROR: Task (/home/debianstretch/poky-rocko/meta/recipes-extended/images/core-image-full-cmdline.bb:do_rootfs)
failed with exit code '1'





On 5/17/18, Rahul jangra <rahuljangra017@gmail.com> wrote:
> I am working on mender yocto project of raspberry pi
> and I am sharing my details
> my local.conf file setting
> # Local configuration for meta-RPI images
> # Yocto Project 2.4 Poky distribution [rocko] branch
> # This is a sysvinit system
>
> LICENSE_FLAGS_WHITELIST = "commercial"
>
> DISTRO_FEATURES = "ext2 pam opengl usbhost ${DISTRO_FEATURES_LIBC}"
>
> DISTRO_FEATURES_BACKFILL_CONSIDERED += "pulseaudio"
>
> PREFERRED_PROVIDER_jpeg = "libjpeg-turbo"
> PREFERRED_PROVIDER_jpeg-native = "libjpeg-turbo-native"
>
> PREFERRED_PROVIDER_udev = "eudev"
> #VIRTUAL-RUNTIME_init_manager = "sysvinit"
>
> MACHINE_FEATURES_remove = "apm"
>
> IMAGE_FSTYPES = "tar.xz"
>
> # override the meta-raspberrypi default 4.9 kernel
> PREFERRED_VERSION_linux-raspberrypi = "4.14.%"
>
> # Choose the board you are building for
> #MACHINE="raspberrypi"
> #MACHINE="raspberrypi0"
> #MACHINE="raspberrypi0-wifi"
> #MACHINE="raspberrypi2"
> #MACHINE = "raspberrypi3"
> #MACHINE="raspberrypi-cm"
> #MACHINE="raspberrypi-cm3"
>
> # Choices are Image or zImage if NOT using u-boot (no u-boot is the
> default)
> # Choices are uImage or zImage if using u-boot, though if you choose zImage
> # with u-boot you will also have to change the boot script boot command
> #KERNEL_IMAGETYPE = "zImage"
>
> ENABLE_UART="1"
>
> DL_DIR = "${HOME}/oe-sources"
>
> #SSTATE_DIR = "/oe4/rpi/sstate-cache"
>
> #TMPDIR = "/oe4/rpi/tmp-rocko"
>
> DISTRO = "poky"
>
> #PACKAGE_CLASSES = "package_ipk"
> PACKAGE_CLASSES = "package_deb"
>
> # i686 or x86_64
> SDKMACHINE = "x86_64"
>
> EXTRA_IMAGE_FEATURES = "debug-tweaks"
> INHERIT += "extrausers"
> EXTRA_USERS_PARAMS = "usermod -P nsspl@123 root; "
>
> USER_CLASSES = "image-mklibs image-prelink"
>
> PATCHRESOLVE = "noop"
>
> RM_OLD_IMAGE = "1"
>
> INHERIT += "rm_work"
>
> ONF_VERSION = "1"
>
> # The name of the disk image and Artifact that will be built.
> # This is what the device will report that it is running, and
> different updates must have different names
> # because Mender will skip installation of an Artifact if it is
> already installed.
> MENDER_ARTIFACT_NAME = "release-1"
>
> INHERIT += "mender-full"
>
> # A MACHINE integrated with Mender.
> # raspberrypi3, beaglebone, and vexpress-qemu are reference devices
> MACHINE = "raspberrypi3"
>
> # For Raspberry Pi, uncomment the following block:
> RPI_USE_U_BOOT = "1"
> #MENDER_PARTITION_ALIGNMENT_KB = "4096"
> #MENDER_BOOT_PART_SIZE_MB = "40"
> MENDER_PARTITION_ALIGNMENT_KB = "8192"
> MENDER_BOOT_PART_SIZE_MB = "80"
> MENDER_DATA_PART_SIZE_MB = "128"
> MENDER_STORAGE_TOTAL_SIZE_MB = "5000"
> do_image_sdimg[depends] += " bcm2835-bootfiles:do_populate_sysroot"
> IMAGE_INSTALL_append = " kernel-image kernel-devicetree"
> IMAGE_FSTYPES_remove += " rpi-sdimg"
>
> # Lines below not needed for Yocto Rocko (2.4) or newer.
> # IMAGE_BOOT_FILES_append = " boot.scr u-boot.bin;${SDIMG_KERNELIMAGE}"
> KERNEL_IMAGETYPE = "uImage"
>
> # The version of Mender to build. This needs to match an existing
> recipe in the meta-mender repository.
> #
> # Given your Yocto Project version, see which versions of Mender you
> can currently build here:
> #
> https://docs.mender.io/architecture/compatibility#mender-client-and-yocto-project-version
> #
> # Given a Mender client version, see the corresponding version of the
> mender-artifact utility:
> #
> https://docs.mender.io/architecture/compatibility#mender-client-and-artifact-format
> #
> # Note that by default this will select the latest released version of
> the tools.
> # If you need an earlier version, please uncomment the following and set to
> the
> # required version.
> #
> # PREFERRED_VERSION_pn-mender = "1.1.%"
> # PREFERRED_VERSION_pn-mender-artifact = "2.0.%"
> # PREFERRED_VERSION_pn-mender-artifact-native = "2.0.%"
>
> # Build for Hosted Mender
> # To get your tenant token, log in to https://hosted.mender.io,
> # click your email at the top right and then "My organization".
>
> DISTRO_FEATURES_append = " systemd"
> VIRTUAL-RUNTIME_init_manager = "systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
> VIRTUAL-RUNTIME_initscripts = ""
>
> IMAGE_FSTYPES = "ext4"
> IMAGE_INSTALL_append += " apt dpkg "
> #IMAGE_ROOTFS_EXTRA_SPACE = "5242880"
> PACKAGE_FEED_URIS = "http://192.168.1.12:8000"
> EXTRA_IMAGE_FEATURES += " package-management "
>
> bblayers.conf file setting
>
> POKY_BBLAYERS_CONF_VERSION = "2"
>
> BBPATH = "${TOPDIR}"
> BBFILES ?= ""
>
> BBLAYERS ?= " \
>   ${HOME}/poky-rocko/meta \
>   ${HOME}/poky-rocko/meta-poky \
>   ${HOME}/poky-rocko/meta-openembedded/meta-oe \
>   ${HOME}/poky-rocko/meta-openembedded/meta-multimedia \
>   ${HOME}/poky-rocko/meta-openembedded/meta-networking \
>   ${HOME}/poky-rocko/meta-openembedded/meta-perl \
>   ${HOME}/poky-rocko/meta-openembedded/meta-python \
>   ${HOME}/poky-rocko/meta-qt5 \
>   ${HOME}/poky-rocko/meta-raspberrypi \
>   ${HOME}/poky-rocko/meta-security \
>   ${HOME}/rpi/meta-rpi \
>   /home/nsspl/rpi/meta-mender/meta-mender-core \
>   /home/nsspl/rpi/meta-mender/meta-mender-demo \
>   /home/nsspl/rpi/meta-mender/meta-mender-raspberrypi \
>   "
>
>
> On 5/17/18, Anuj Mittal <anuj.mittal@intel.com> wrote:
>> On 05/16/2018 06:31 PM, Rahul jangra wrote:
>>> Hi
>>> i am facing the so many issues to creating .deb base yocto raspberry pi
>>> image now i am getting this error.
>>> someone can help me how to resolve this error.
>>>
>>> ERROR: core-image-full-cmdline-1.0-r0 do_rootfs: Unable to install
>>> packages. Command
>>> '/home/nsspl/rpi/build/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-f
>>> ull-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/apt-get install
>>> --force-yes --allow-unauthenticated mender psplash-raspberrypi shadow
>>> run-postinsts hello-mender packagegroup-core-boot kernel-devicetree
>>> packagegroup-core-ssh-openssh apt dpkg base-passwd kernel-image-4.14.37
>>
>> It'd help if you can share more details - layers that you are using,
>> which version, local configuration and the complete error.
>>
>>
>

