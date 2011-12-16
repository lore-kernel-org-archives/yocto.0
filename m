Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 441CCE013DE
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 20:21:53 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Dec 2011 20:21:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="86315796"
Received: from unknown (HELO [10.255.15.166]) ([10.255.15.166])
	by azsmga001.ch.intel.com with ESMTP; 15 Dec 2011 20:21:51 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: autif khan <autif.mlist@gmail.com>
In-Reply-To: <CADzUK1L9a_VUPD=wvmCW-wiPjMJ0Sdvh2BOrpKU9V9Sovx7Zhg@mail.gmail.com>
References: <CADzUK1Jr=9+-Q0Y+nQtdyELinjZdxz_27tTWDuCHTCF14x0Kcw@mail.gmail.com>
	<1323793712.1631.1.camel@jim-ubuntu>
	<CADzUK1L9a_VUPD=wvmCW-wiPjMJ0Sdvh2BOrpKU9V9Sovx7Zhg@mail.gmail.com>
Date: Thu, 15 Dec 2011 22:20:52 -0600
Message-ID: <1324009252.2870.286.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Where is the emgd.ko module?
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
X-List-Received-Date: Fri, 16 Dec 2011 04:21:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Just a followup to this, in case anyone ever runs into the same
problem...

After some digging and bits of info from autif, the problem was indeed
found to be a kernel problem - CONFIG_EGD wasn't turned on because it
was found to be an invalid config option, in turn because the emgd
driver wasn't in the kernel, in turn because the emgd branch didn't
actually get merged during the kernel build, this due to an unconfigured
git that therefore couldn't do merges i.e. that failed with the below
error.  It wasn't obvious that that had happened - bug 1838 has been
filed to fix that shortcoming...

Tom

yocto/egmd/tmp/work/crownbay-poky-linux/linux-yocto-3.0.4+git1
+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1
+2247da9131ea7e46ed4766a69bb1353dba22f873-r2/linux$
git merge yocto/emgd

*** Please tell me who you are.

Run

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

to set your account's default identity.
Omit --global to set the identity only in this repository.

fatal: empty ident  <.(none)> not allowed

On Tue, 2011-12-13 at 08:37 -0800, autif khan wrote:
> I think that I did. Included is an excerpt that says that I need not
> do anything except bitbake core image sato when MACHINE="crownbay".
> 
> As instructed, I followed the steps in section one (Building the
> meta-crownbay BSP layer) and ignored everything in section two
> (Special notes for building the meta-crownbay BSP layer) which
> includes instructions to patch a "crownbay-noemgd" with the Intel
> driver.
> 
> Included below is the excerpt from the README. Is there a section that
> I am overlooking?
> 
> Thanks
> 
> Autif
> 
> The meta-crownbay layer makes use of the proprietary Intel EMGD
> userspace drivers when building the "crownbay" machine (but not when
> building the "crownbay-noemgd" machine).  If you got the BSP from the
> 'BSP Downloads' section of the Yocto website, the EMGD binaries needed
> to perform the build will already be present in the BSP, located in
> the meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8
> directory, and you can ignore the rest of this section.
> 
> 
> On Tue, Dec 13, 2011 at 11:28 AM, Jim Abernathy <jfabernathy@gmail.com> wrote:
> > On Tue, 2011-12-13 at 11:13 -0500, autif khan wrote:
> >> I built the "crownbay" (not crownbay-noemgd) image as outlined in the
> >> E660 development kit (link
> >> http://www.yoctoproject.org/download/bsp/intel-atom-processor-e660-intel-platform-controller-hub-eg20t-development-kit-1)
> >>
> >> I used poky-edison-6.0.tar.bz2 and crownbay-edison-6.0.0.tar.bz2 and
> >> followed the instructions (short version - extract, move, add
> >> meta-intel/meta-crownbay to bblayers.conf, add MACHINE="crownbay" to
> >> local.conf, bitbake core-image-sato)
> >>
> >> The result was the expected set of images in tmp/deploy/images
> >>
> >> I loop mounted the core-image-sato-crownbay.ext3 and tried to find
> >> emgd.ko in the file system - I could not find it. (find output
> >> attached - notice that there is no emgd.ko)
> >>
> >> Here is the kicker - crownbay-edison-6.0.0.tar.bz2 has a directory
> >> called "binary" which contains core-image-sato-crownbay.hddimg, which
> >> contains rootfs.img, which I also loop mounted and was able to find
> >> the emgd.ko (however this image does not work with my hardware, I am
> >> not sure why). Find output for this is also included below.
> >>
> >> I very much doubt that it is included as a part of the kernel, I
> >> looked at the kernel's .config (in
> >> tmp/work/crownbay-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69bb1353dba22f873-r2/linux-crownbay-standard-build)
> >> and could not find emgd there either.
> >>
> >> So, my questions is if I am doing something wrong? Do I need to do
> >> something to get the emgd.ko to build? I am using the latest release
> >> (6.0 "Edison" (released on October 17th, 2011)). Please advise.
> >>
> > Check out the README file in the meta-crownbay directory. There are
> > instructions on integrating the EMGD driver files into the build.
> >
> > Jim A
> >
> >> Thanks
> >>
> >> Autif
> >>
> >> autif@xu:~/data/dev/yocto/emgd/tmp/deploy/images/1$ sudo find . | grep emgd
> >> ./usr/lib/libemgdsrv_um.so.1.5.15.3226
> >> ./usr/lib/libemgdsrv_um.so
> >> ./usr/lib/libemgdglslcompiler.so.1.5.15.3226
> >> ./usr/lib/libemgdPVR2D_DRIWSEGL.so
> >> ./usr/lib/xorg/modules/drivers/emgd_drv.so
> >> ./usr/lib/libemgdPVR2D_DRIWSEGL.so.1.5.15.3226
> >> ./usr/lib/libemgdsrv_init.so
> >> ./usr/lib/libemgdsrv_init.so.1.5.15.3226
> >> ./usr/lib/libemgdglslcompiler.so
> >> ./usr/lib/dri/emgd_dri.so
> >> autif@xu:~/data/dev/yocto/emgd/tmp/deploy/images/1$
> >>
> >> autif@xu:~/data/dev/yocto/poky-edison-6.0/meta-intel/meta-crownbay/binary/2$
> >> sudo find . | grep emgd
> >> ./usr/lib/libemgdsrv_um.so
> >> ./usr/lib/dri/emgd_dri.so
> >> ./usr/lib/libemgdsrv_init.so.1.5.15.3226
> >> ./usr/lib/libemgdsrv_init.so
> >> ./usr/lib/xorg/modules/drivers/emgd_drv.so
> >> ./usr/lib/libemgdPVR2D_DRIWSEGL.so.1.5.15.3226
> >> ./usr/lib/libemgdglslcompiler.so.1.5.15.3226
> >> ./usr/lib/libemgdsrv_um.so.1.5.15.3226
> >> ./usr/lib/libemgdPVR2D_DRIWSEGL.so
> >> ./usr/lib/libemgdglslcompiler.so
> >> ./lib/modules/3.0.4-yocto-standard+/kernel/drivers/gpu/drm/emgd
> >> ./lib/modules/3.0.4-yocto-standard+/kernel/drivers/gpu/drm/emgd/emgd.ko
> >> ./etc/rpm-postinsts/kernel-module-emgd.sh.done
> >> autif@xu:~/data/dev/yocto/poky-edison-6.0/meta-intel/meta-crownbay/binary/2$
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



