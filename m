Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CFB4E002AC
	for <yocto@yoctoproject.org>; Sun, 30 Sep 2012 11:09:10 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Sep 2012 11:09:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,514,1344236400"; d="scan'208";a="228337896"
Received: from unknown (HELO [10.255.14.37]) ([10.255.14.37])
	by fmsmga001.fm.intel.com with ESMTP; 30 Sep 2012 11:09:09 -0700
Message-ID: <1349028546.27656.5.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Daniel Toussaint <daniel@dmhome.net>
Date: Sun, 30 Sep 2012 13:09:06 -0500
In-Reply-To: <CADVYk4R5Otcqasgxo5uNMmx=KCgeu2G+JbUH82wP-BQvsAdASA@mail.gmail.com>
References: <CADVYk4R5Otcqasgxo5uNMmx=KCgeu2G+JbUH82wP-BQvsAdASA@mail.gmail.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Replacing xorg.conf in my custom layer.
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
X-List-Received-Date: Sun, 30 Sep 2012 18:09:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2012-09-30 at 23:45 +0800, Daniel Toussaint wrote:
> I have my own custom layer on top of Yocto. My layer provides a custom
> machine , custom image and a couple of applications that go into it.
> My problem : Nomatter what I do, I can't get my own custom xorg.conf
> into the image - everytime I rebuild, I end up with the one from the
> Yocto recipe.
> 
> 
> I have created a new recipe in my layer :
> 
> recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend :
> 

Hi,

I just sent a patch yesterday to fix similar problems in some other
BSPs.

The fix was to replace this:

> THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
> FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
> 

with this:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

Can you try making that change in your layer and see if that helps?

Tom

> Then in that recipe's  directory a new directory called
> "xserver-xf86", and in turn a subdirectory named after my machine
> name. That directory contains my xorg.conf
> 
> I have copied the above information from other Yocto recipies that
> seem to work.....hopefully someone can point out my mistake or
> something that I am missing.
> 
> Thanks a lot.
> 
> (Below some extra info that might be helpful in finding the problem)
> 
> 
> 
> Image definition:
> -----------------------
> IMAGE_FEATURES += "apps-console-core x11-base xf86-video-fbdev
> apps-x11-core package-management"
> IMAGE_INSTALL += "gox task-core-boot task-base-extended  python
> qt4-plugin-sqldriver-sqlite qt4-plugin-phonon-backend-gstreamer
> python-threading python-io python-datetime"
> 
> LICENSE = "MIT"
> 
> inherit core-image
> 
> 
> 
> Machine definition :
> -----------------------
> MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> 
> IMAGE_FSTYPES += "tar.gz"
> 
> KERNEL_IMAGETYPE ?= "bzImage"
> 
> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> PREFERRED_VERSION_linux-yocto ?= "3.2%"
> 
> PREFERRED_PROVIDER_virtual/libgl  = "mesa-dri"
> PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
> PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
> PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
> 
> XSERVER_IA32_BASE = "xserver-xorg \
>            xf86-input-mouse \
>            xf86-input-keyboard \
>            xf86-input-evdev \
>            xf86-input-synaptics \
>            mesa-dri \
>            "
> 
> XSERVER_IA32_EXT = "xserver-xorg-extension-dri \
>            xserver-xorg-extension-dri2 \
>            xserver-xorg-extension-glx \
>            xserver-xorg-extension-extmod \
>            xserver-xorg-extension-dbe \
>            xserver-xorg-module-libint10 \
>            "
> 
> XSERVER_IA32_I915 = "xf86-video-intel \
>            mesa-dri-driver-i915 \
>            "
> 
> XSERVER_IA32_I965 = "xf86-video-intel \
>            mesa-dri-driver-i965 \
>            "
> XSERVER_IA32_FBDEV = "xf86-video-fbdev"
> 
> 
> XSERVER ?= "${XSERVER_IA32_BASE} \
>            ${XSERVER_IA32_EXT} \
>            ${XSERVER_IA32_I915} ${XSERVER_IA32_FBDEV} \
>            "
> 



