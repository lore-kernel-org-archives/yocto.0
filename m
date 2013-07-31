Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A12D6E002F9;
	Tue, 30 Jul 2013 20:26:33 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 30 Jul 2013 20:26:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,783,1367996400"; d="scan'208";a="354651468"
Received: from unknown (HELO [10.255.14.37]) ([10.255.14.37])
	by orsmga001.jf.intel.com with ESMTP; 30 Jul 2013 20:26:31 -0700
Message-ID: <1375241191.1574.45.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Behrens, Holger" <Holger.Behrens@windriver.com>
Date: Tue, 30 Jul 2013 22:26:31 -0500
In-Reply-To: <7A688B48FC95D148BFE83E098348BE503C507792@ALA-MBB.corp.ad.wrs.com>
References: <OF4EE7C2B2.6E6969A5-ONC1257BB3.002ECED6-C1257BB3.00316E7B@retarus.de>
	<1374771477.6515.31.camel@empanada>
	<OF9AE9D621.3F293DD7-ONC1257BB4.0029E8ED-C1257BB4.002AD720@retarus.de>
	<1374934654.1586.10.camel@empanada>
	<7A688B48FC95D148BFE83E098348BE503C507792@ALA-MBB.corp.ad.wrs.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: "meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>,
	"genivi-meta-ivi@lists.genivi.org" <genivi-meta-ivi@lists.genivi.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Antwort: Re: [meta-intel] Boot failure when using meta-intel and meta-ivi
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
X-List-Received-Date: Wed, 31 Jul 2013 03:26:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2013-07-29 at 06:54 +0000, Behrens, Holger wrote:
> Hi,
> 
> > On Fri, 2013-07-26 at 09:48 +0200, Felix01 Fischer wrote:
> > > Tom Zanussi <tom.zanussi@intel.com> schrieb am 25.07.2013 18:57:57:
> > >
> > > > Von: Tom Zanussi <tom.zanussi@intel.com>
> > > > An: Felix01 Fischer <felix01.fischer@iav.de>,
> > > > Kopie: yocto@yoctoproject.org, meta-intel@yoctoproject.org, genivi-
> > > > meta-ivi@lists.genivi.org
> > > > Datum: 25.07.2013 18:58
> > > > Betreff: Re: [meta-intel] Boot failure when using meta-intel and
> > > meta-ivi
> > > >
> > > > On Thu, 2013-07-25 at 11:00 +0200, Felix01 Fischer wrote:
> > > > > Hi,
> > > > > I haven written regarding this issues before. So maybe it sounds
> > > > > familiar :-)
> > > > >
> > > > > I'm unable to produce a booting image when combining a machine
> > > from
> > > > > the meta-intel layer with "DISTRO ?= "poky-ivi-systemd" from the
> > > > > meta-ivi layer.
> > > > > You will find a photograph of my screen attached, but I will
> > > describe
> > > > > the error anyway.
> > > > >
> > > > >
> > > > > Which error do I get?
> > > > >
> > > > > When I'm booting my image the machine fails to boot. The relevant
> > > > > information (IMHO) are the lines:
> > > > >        /init: line 98: mount: not found
> > > > >         /init: line 98: mount: not found
> > > > >         /init: line 98: mount: not found
> > > > > and
> > > > >         cat: can't open '/proc/cmdline': No such file or
> > > directory
> > > > >         Waiting for removable media...
> > > > >
> > > > >
> > > > > When does the error occur?
> > > > >
> > > > > Every image built with the local.conf options
> > > > > MACHINE ?= "crownbay"        OR        MACHINE ?= "chiefriver"
> > > > > AND
> > > > > DISTRO ?= "poky-ivi-systemd"
> > > > >
> > > > > failed to boot.
> > > > >
> > > > I guess more information is needed to even build this.  Using the
> > > poky
> > > > commit id in the README, using either meta-intel/master or
> > > > meta-intel/dylan gives errors like this:
> > > >
> > > > trz@elmorro:/usr/local/dev/yocto/ivi-test/build$ bitbake foton-image
> > > > Pseudo is not present but is required, building this first before
> > > the
> > > > main build
> > > > Loading cache: 100%
> > |###########################################|
> > > ETA:
> > > > 00:00:00
> > > > Loaded 1162 entries from dependency cache.
> > > > ERROR: No recipes available for:
> > > >   /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-extended/common-
> > > > api/dbus_1.6.10.bbappend
> > > >   /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-core-ivi/dbus/
> > > > dbus_1.6.10.bbappend
> > > >   /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-connectivity/
> > > > connman/connman_1.15.bbappend
> > > >   /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-graphics/xorg-
> > > > xserver/xserver-xorg_1.14.0.bbappend
> > > >   /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-core-ivi/busybox/
> > > > busybox_1.21.1.bbappend
> > > >   /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-core-ivi/eglibc/
> > > > eglibc_2.18.bbappend
> > > >   /usr/local/dev/yocto/ivi-test/meta-intel/meta-crownbay/recipes-
> > > > kernel/linux/linux-yocto-rt_3.8.bbappend
> > > >   /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-qt/qt4/qt4-
> > > > embedded_4.8.5.bbappend
> > > >   /usr/local/dev/yocto/ivi-test/meta-intel/common/recipes-graphics/
> > > > mesa/mesa_9.0.2.bbappend
> > > >   /usr/local/dev/yocto/ivi-test/meta-ivi/recipes-core-ivi/netbase/
> > > > netbase_5.1.bbappend
> > > > ERROR: Command execution failed: Exited with 1
> > > >
> > > > So, please supply the relevant commits for all layers used..
> > > >
> > >
> > > First, thank you for your help.
> > > I guess your meta-ivi is not up to date. You have to "git checkout
> > > 4.0.2", which is the latest meta-ivi release
> > > I have been building non-booting images for quite some time now using
> > > various releases of poky, meta-intel and meta-ivi, so it shouldn't
> > > rely on one special commit.
> > > Currently I'm using "git checkout 4.0.2" for meta-ivi and the dylan
> > > branch for poky and meta-intel aswell.
> > >
> > OK, with those commits, I was able to get a good build (the README is
> > also misleading about adding the INCOMPATIBLE_LICENSE line - it doesn't
> > build if you do what it says).
> 
> Can you share where it did lead you and why?
> 

I just followed the instructions from the README.md:

"For creating specific GENIVI compliant images, please make sure you git
checkout on the desired meta-ivi branch and follow the build
instructions
located in the README.md file."
...

4. Add INCOMPATIBLE_LICENSE = "GPLv3" in COREBASE/build/conf/local.conf
file.
...
7. Build foton-image including GENIVI 4.0 (Foton) P1 components

   > $ bitbake foton-image

Doing just what the instructions told me gave me this, not really
helping me get to a bootable image:

ERROR: Nothing RPROVIDES
'parted' (but /usr/local/dev/yocto/ivi-test/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb, /usr/local/dev/yocto/ivi-test/meta/recipes-core/initrdscripts/initramfs-live-install-efi_1.0.bb RDEPENDS on or otherwise requires it)
ERROR: parted was skipped: incompatible with license GPLv3+

> > Anyway, from your error message:
> >    /init: line 98: mount: not found
> > 
> > it can't find mount, which prompted me to look in the rootfs for 'mount'
> > and indeed it's not there, so that causes the init script to fail as
> > above.
> > 
> > The mount command isn't there because meta-ivi applies its own busybox
> > defconfig.  From that defconfig, we can see that it excludes mount:
> 
> Because /bin/mount is provided by util-linux, and we therefore do not need the one from busybox.
> 

Hmm, I don't see anything in meta-ivi that pulls in util-linux though..

> > # CONFIG_MOUNT is not set
> > 
> > which is why the live image init script can't find mount and fails like
> > it does.
> > 
> > Removing the busybox_1.20.2.bbappend in the meta-ivi layer fixes the
> > problem - rebuilding after doing that I'm able to boot crownbay fine
> > with the meta-ivi layer applied.
> 
> That's a workaround yes.  Not sure why meta-intel BSPs can't use the mount command that comes with util-linux.
> 

I didn't know if would be a fix or a workaround for you, but at least it
solved the mystery of why you your images wouldn't boot...

Anyway, there's nothing in meta-intel that says anything about either
busybox or util-linux, so your problem must be somewhere else.  Maybe
adding IMAGE_INSTALL_append = " util-linux" somewhere would help..

Tom

> Regards,
> Holger
> 
> > Tom
> > 
> > > The exact commits are (copied from the crownbay build):
> > >
> > > Build Configuration:
> > > BB_VERSION        = "1.18.0"
> > > BUILD_SYS         = "x86_64-linux"
> > > NATIVELSBSTRING   = "Ubuntu-12.04"
> > > TARGET_SYS        = "i586-oe-linux"
> > > MACHINE           = "crownbay"
> > > DISTRO            = "poky-ivi-systemd"
> > > DISTRO_VERSION    = "4.0.2"
> > > TUNE_FEATURES     = "m32 core2"
> > > TARGET_FPU        = ""
> > > meta
> > > meta-yocto
> > > meta-yocto-bsp    = "dylan:64273e53f2789d2ea8393fc80909ac7086f168a7"
> > > meta-ivi          =
> > > "(nobranch):f906b053e56c3aa009b29359ea12d2a7b8a25d57"
> > > meta-intel
> > > meta-crownbay     = "dylan:048def7bae8e3e1a11c91f5071f99bdcf8e6dd16"
> > > meta-qt5          = "dylan:806fedcc155e28ff1d802cf8d5af9c6d67c210c7"
> > >
> > >
> > >
> > > > > I have tried builds with meta-ivi excalibur (not 100% sure) and
> > > foton
> > > > > releases and the master branch aswell
> > > > > Similar applies to poky and meta-intel. I tried the danny and
> > > dylan
> > > > > releases and the master branch.
> > > > >
> > > > > The boot happens from an USB stick on which I dd'ed
> > > > > "foton-image-$MACHINE-$BUILDDATE.hddimg"
> > > > >
> > > > > All other builds are booting fine.
> > > > >
> > > > > Addind "EXTRA_IMAGE_FEATURE = "udev-extraconf" did not change
> > this
> > > > > behauviour.
> > > > >
> > > > > Building only with meta-intel OR meta-ivi results in a booting
> > > image.
> > > > >
> > > > Not sure what this means - if using only meta-ivi, which machine are
> > > you
> > > > building?
> > > >
> > >
> > >
> > > if using only meta-ivi. I'm building Qemu images.
> > > They have been booting fine all the time.
> > >
> > >
> > >
> > > > Tom
> > > >
> > > >
> > > > > So, any ideas?
> > > > >
> > > > > regards,
> > > > >
> > > > > Viele Grüße
> > > > >
> > > > > Felix Fischer
> > > > >
> > > > > Studentischer Mitarbeiter (VC-D1)
> > > > > Vehicle Cockpit Electronics Devices
> > > > >
> > > > > IAV GmbH
> > > > > Carnotstr. 1
> > > > > 10587 BERLIN
> > > > > GERMANY
> > > > >
> > > > > Phone: +49 30 39978-9540
> > > > > Fax:      +49 30 39978-9411
> > > > > E-Mail:  <mailto:felix01.fischer@iav.de>
> > > > > Internet: http://www.iav.com
> > > > >
> > > > > Sitz/Registered Office: Berlin,
> > > > > Registergericht/Registration Court: Amtsgericht Charlottenburg,
> > > > > Registernummer/Company Registration Number: HRB 21 280,
> > > > > Geschäftsführer/Managing Directors: Kurt Blumenröder, Michael
> > > > > Schubert, Dr. Rüdiger Goyk
> > > > > _______________________________________________
> > > > > meta-intel mailing list
> > > > > meta-intel@yoctoproject.org
> > > > > https://lists.yoctoproject.org/listinfo/meta-intel
> > > >
> > > >
> > 
> > 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto



