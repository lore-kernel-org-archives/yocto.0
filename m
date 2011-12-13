Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C891CE00742
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 12:24:00 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Dec 2011 12:24:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="86886598"
Received: from unknown (HELO envy.home) ([10.255.12.211])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2011 12:24:00 -0800
Message-ID: <4EE7B44D.7000301@linux.intel.com>
Date: Tue, 13 Dec 2011 12:23:41 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.3.3
Subject: The role of "distro" and "image"
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
X-List-Received-Date: Tue, 13 Dec 2011 20:24:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I'm trying to wrap up my work on meta-tiny and integrate it into poky
proper. I'm having some difficulty drawing a line between the
responsibility of the distro definition versus that of the image definition.

For example, if I define a distro which uses tmpdevfs (no udev or mdev)
and specifies KMACHINE=yocto/standard/tiny to build the tiny variant of
the linux-yocto kernel, and customizes the busybox build to leave out
various things - would it make sense for someone to then try to build
core-image-sato with it? It doesn't to me, but nothing prevents the user
from doing that (other than a likely build failure).

So what does the distro define and what does the image define?

Digging around in conf/distro for meta and meta-yocto, I see things like
naming convention, additional dependencies, choice of toolchain and
libc, source mirrors, default virtual providers, etc.

The image seems to basically define the package list for the image as
well as the format of the rootfs and boot media.

If I understand this correctly, a new "tiny" distro definition would
change the preferred linux-yocto provider to a linux-yocto-tiny recipe
(which would in turn specify the default KMACHINE/KTYPE as well, the
TCLIBC, DISTRO_FEATURES_LIBC, and some naming rules.

I currently define a new task-core-tiny.bb to reset some
MACHINE_ESSENTIAL bits (qemu pulls in more than is necessary for tiny)
and redefine the REDEPENDS for the image. I believe I could do this
instead with assignments in the new distro definition and reuse
task-core-boot.bb.

As for images, I might be able to reuse core-image-minimal - but it
oddly contains "${POKY_EXTRA_INSTALL}" in the IMAGE_INSTALL. Since
core-image-minimal.bb is defined in oe-core and POKY is a distro notion
of meta-yocto, this contributes to my confusion over distro vs. image.

I'd appreciate some discussion to help me clarify where these lines
should be.

Thanks,


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

