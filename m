Return-Path: <0xf777@gmail.com>
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B76A0E00783
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 07:54:22 -0800 (PST)
Received: by mail-lb0-f175.google.com with SMTP id x18so9320324lbi.20
	for <yocto@yoctoproject.org>; Wed, 04 Dec 2013 07:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=PUjqhybZT6NX8UbwS6OU4x2/8CAQqC7umkFAHRk5avQ=;
	b=AK4x5u+EBJX8Mrxr8gtfElCStY5IFvnHH7BDwpwTzmponCRGJmgPKomktEx4ToOX3W
	djYMmDZES9yku9pJso8Wa839TjoB1IVQg4P24fFRUD7kjazsJ9BmdDXqnWi88krRrtjy
	iwU773tlYG3SX030l/L3Jcu2CgLyf5a3LYuprOcRpV2+lpKvtNElcnanNexeTpEYJSZq
	rCGiosR3RC3TKAG5D34JpuzZKYSWKDfoKvvw/mp9yBl/lusJfrU0Fjkn37Vg9Qqc9HCa
	WgDVZF78xxghOp2QE+65Rm7zta01BQkCOKjdFI9v8sNt9LkSwBflYHLAPwtaYZ09I7AR
	vmeg==
MIME-Version: 1.0
X-Received: by 10.112.170.200 with SMTP id ao8mr2736402lbc.41.1386172460875;
	Wed, 04 Dec 2013 07:54:20 -0800 (PST)
Received: by 10.152.121.72 with HTTP; Wed, 4 Dec 2013 07:54:20 -0800 (PST)
Date: Wed, 4 Dec 2013 19:54:20 +0400
Message-ID: <CAHyyKNmEUenS3_a2jkbBjU_ugbHB+JwZ=za3H282Z2U=S2jk8g@mail.gmail.com>
From: Alex M <0xf777@gmail.com>
To: yocto@yoctoproject.org
Subject: How to build GLX extension?
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
X-List-Received-Date: Wed, 04 Dec 2013 15:54:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello!
I've got my custom image for Intel Core2Duo platform, which is based
on default X11-image (from oe-core):

DESCRIPTION = "My image"
IMAGE_INSTALL = "packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP}
${CORE_IMAGE_EXTRA_INSTALL}"
IMAGE_FEATURES += "splash package-management x11-base"
IMAGE_LINGUAS = " "
LICENSE = "MIT"
inherit core-image distro_features_check
REQUIRED_DISTRO_FEATURES = "x11"
IMAGE_ROOTFS_SIZE = "65536"
ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
IMAGE_FSTYPES += " cpio.gz "
IMAGE_INSTALL += " ldd mesa-demos quicky mc dropbear htop pciutils
usbutils bash "

When I boot resulting image, I see splash, X11 graphical terminal -
nice start, able to run es2_info which ensure that I have GL_RENDERER:
Mesa DRI Intel(R) 965GME/GLE and GL_VERSION: OpenGL ES 2.0 Mesa 9.2.2.
Also I can run es2gears_x11 which is linked against libGLESv2 and
LibGL.

Nice, I have full hardware accelerate OpenGL/ES 2.0 platform, but... I
need regular OpenGL 2.0/2.1/3.0. I need GLX.

What I should do to switch my builds from GLES/EGL to plain "desktop"
GLX/OpenGL?
My /usr/lib/xorg/modules/extensions is empty in OE image! And of
course I don't have libglx.so and X11 log says that it can't find GLX
extension.

P.S.
My machine conf:

PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
PREFERRED_PROVIDER_virtual/libgl ?= "mesa"
PREFERRED_PROVIDER_virtual/libgles1 ?= "mesa"
PREFERRED_PROVIDER_virtual/libgles2 ?= "mesa"

PREFERRED_PROVIDER_jpeg = "libjpeg-turbo"
DISTRO_FEATURES_append = " opengl glx "

require conf/machine/include/tune-i586.inc

KERNEL_IMAGETYPE = "bzImage"

SERIAL_CONSOLE = "115200 ttyS0"

MACHINE_FEATURES += "x86"

XSERVER = "xserver-xorg \
           mesa-driver-swrast \
           mesa-driver-radeon \
           mesa-driver-r200 \
           mesa-driver-i965 \
           mesa-driver-i915 \
           xf86-video-intel \
           xf86-input-vmmouse \
           xf86-input-keyboard \
           xf86-input-evdev \
           xf86-video-vmware"

