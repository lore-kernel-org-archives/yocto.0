Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E822FE00347
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 05:34:01 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q92CXvig015581;
	Tue, 2 Oct 2012 13:33:57 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 14190-08; Tue,  2 Oct 2012 13:33:53 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q92CXmfd015575
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Tue, 2 Oct 2012 13:33:49 +0100
Message-ID: <1349181231.15753.141.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
Date: Tue, 02 Oct 2012 13:33:51 +0100
In-Reply-To: <cover.1348532753.git.scott.a.garman@intel.com>
References: <cover.1348532753.git.scott.a.garman@intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 00/62] denzil pull request 2
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
X-List-Received-Date: Tue, 02 Oct 2012 12:34:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-09-24 at 17:29 -0700, Scott Garman wrote:
> The following changes since commit 65ffa7395055f7e012cb973f63f92380828eed0d:
> 
>   yocto-bsp: use base branches for qemu 'newbranch' case (2012-08-21 11:35:22 +0100)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib sgarman/denzil-next-pull2
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next-pull2
> 
> Bogdan Marinescu (1):
>   Save proxy settings
> 
> Bruce Ashfield (4):
>   linux-yocto: allow do_validate_branches to handle all branches
>   kernel-yocto: set master branch to a defined SRCREV
>   kernel: save $kerndir/tools and $kerndir/lib from pruning
>   kernel.bbclass: add non-santized kernel provides
> 
> Constantin Musca (1):
>   pulseaudio: upgrade to 2.1
> 
> Cristian Iorga (4):
>   gst-plugin-bluetooth: update to ver. 4.101
>   bluez4: update to ver. 4.101
>   pulseaudio: upgrade to 2.0
>   libcanberra: upgrade to 0.29
> 
> Darren Hart (1):
>   kernel: Add kernel headers to kernel-dev package
> 
> Denys Dmytriyenko (1):
>   pulseaudio: fix typo in the patch name, pulseaudo -> pulseaudio
> 
> Dongxiao Xu (1):
>   bluez-hcidump: upgrade to version 2.4
> 
> Franklin S Cooper Jr (1):
>   psplash: LIC_CHKSUM Tweak
> 
> Franklin S. Cooper Jr (1):
>   u-boot: Use fw_env.config if avaliable
> 
> Jeff Polk (1):
>   recipes-core/eglibc-2.13: Patch for locale-base-tt-ru packaging
> 
> Jonas Danielsson (1):
>   bluez4: make alsa support conditional upon DISTRO_FEATURES
> 
> Kang Kai (1):
>   ltp_20120104: add rdepends
> 
> Khem Raj (3):
>   kernel.bbclass: Dont package kxgettext.o
>   libatomics-ops: Make it build for SH4
>   pulseaudio: Always enable NLS
> 
> Koen Kooi (2):
>   man: fix RDEPENDS and reformat recipe
>   man: make man actually work by installing custom man.config
> 
> Marcin Juszkiewicz (1):
>   libpam: disable NIS to not link with libtirpc when it is available
> 
> Martin Jansa (5):
>   package.bbclass: fix TypeError in runstrip
>   opkg-utils: bump SRCREV for Packages cache fix and other fixes
>   opkg-utils: bump SRCREV
>   kernel.bbclass: pass KERNEL_VERSION to depmod calls in postinst
>   pulseaudio: fix pulseaudio-server RDEPENDS
> 
> Matthew McClintock (9):
>   dbus.inc: disable selinux for native builds
>   glib.inc: disable selinux for native builds
>   eglibc/gcc: add patches to fix eglibc 2.15 build
>   poky.conf: add distros that work correctly
>   distutils.bbclass: fix libdir for 64-bit python modules built with
>     distutils
>   distutils.bblass: change order of args to install step
>   eglibc_2.15: make patch only for Freescale machines
>   valgrind_3.7.0.bb: fix missing leading space on _append
>   sysvinit-inittab_2.88dsf.bb: only run serial checks at boot if we
>     have items to check
> 
> Paul Eggleton (4):
>   classes/mirrors: remove bogus gnutls mirror
>   dhcp: remove dependency of dev/staticdev packages on main package
>   bitbake: hob: ensure error message text is properly escaped
>   bitbake: hob: format error messages properly
> 
> Radu Moisan (1):
>   dbus: include dbus-launch in the main dbus package
> 
> Richard Purdie (5):
>   distutils/steuptools: Fix files layout and unbreak builds
>   opkg-utils: UPdate to version with python 2.6 fix
>   autotools.bbclass: Add functionality to force a clean of ${B} when
>     reconfiguring (and ${S} != ${B})
>   dbus: Ensure dbus-nativesdk doesn't RPROVIDE dbus-x11
>   texi2html: Fix perl location on recent distros
> 
> Ross Burton (1):
>   pulseaudio: remove ConsoleKit dependency
> 
> Saul Wold (7):
>   build-appliance-image: Update SRCREV to Denzil 1.2.1
>   build-appliance-image: Add vmx* files and build zip file
>   build-appliance: add zip-native, which is needed to build the final
>     zip bundle
>   python-pygtk: Upgrade to 2.24
>   kernel: Fix packaging issue
>   bluez4: fix packaging issue after update
>   pulseaudio: disable tcpwrap by default
> 
> Scott Garman (2):
>   relocatable.bbclass: Account for case when ORIGIN is in RPATH
>   kernel.bbclass: put perf .debug dir in -dbg package
> 
> Valentin Popa (2):
>   build-appliance-image: rename from self-hosted-image
>   xz: updated to version 5.1.1alpha
> 
> Xin Ouyang (1):
>   libatomics-ops: update to the latest version 7.2
> 
> Zhenhua Luo (1):
>   valgrind: fix debug info reading error when do memcheck on ppc
>     targets

These got merged to the denzil branch, thanks.

Richard


