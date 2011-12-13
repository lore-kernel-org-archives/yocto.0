Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECBADE00742
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 08:40:17 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Dec 2011 08:40:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="86786159"
Received: from unknown (HELO [10.255.12.61]) ([10.255.12.61])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2011 08:40:16 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: autif khan <autif.mlist@gmail.com>
In-Reply-To: <CADzUK1Jr=9+-Q0Y+nQtdyELinjZdxz_27tTWDuCHTCF14x0Kcw@mail.gmail.com>
References: <CADzUK1Jr=9+-Q0Y+nQtdyELinjZdxz_27tTWDuCHTCF14x0Kcw@mail.gmail.com>
Date: Tue, 13 Dec 2011 10:39:59 -0600
Message-ID: <1323794399.2870.113.camel@elmorro>
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
X-List-Received-Date: Tue, 13 Dec 2011 16:40:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-12-13 at 08:13 -0800, autif khan wrote:
> I built the "crownbay" (not crownbay-noemgd) image as outlined in the
> E660 development kit (link
> http://www.yoctoproject.org/download/bsp/intel-atom-processor-e660-intel-platform-controller-hub-eg20t-development-kit-1)
> 
> I used poky-edison-6.0.tar.bz2 and crownbay-edison-6.0.0.tar.bz2 and
> followed the instructions (short version - extract, move, add
> meta-intel/meta-crownbay to bblayers.conf, add MACHINE="crownbay" to
> local.conf, bitbake core-image-sato)
> 
> The result was the expected set of images in tmp/deploy/images
> 
> I loop mounted the core-image-sato-crownbay.ext3 and tried to find
> emgd.ko in the file system - I could not find it. (find output
> attached - notice that there is no emgd.ko)
> 
> Here is the kicker - crownbay-edison-6.0.0.tar.bz2 has a directory
> called "binary" which contains core-image-sato-crownbay.hddimg, which
> contains rootfs.img, which I also loop mounted and was able to find
> the emgd.ko (however this image does not work with my hardware, I am
> not sure why). Find output for this is also included below.
> 
> I very much doubt that it is included as a part of the kernel, I
> looked at the kernel's .config (in
> tmp/work/crownbay-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69bb1353dba22f873-r2/linux-crownbay-standard-build)
> and could not find emgd there either.
> 

In the .config, do you see this?:

CONFIG_DRM_EGD=m

If not, then for some reason the options in drm-emgd.cfg from the
drm-emgd feature aren't being picked up.  Let me try a build myself here
from the instructions, and see if I can reproduce the problem.

A missing emgd.ko would be a kernel build/config problem, and nothing to
do with the emgd userspace tarballs...

Tom

> So, my questions is if I am doing something wrong? Do I need to do
> something to get the emgd.ko to build? I am using the latest release
> (6.0 "Edison" (released on October 17th, 2011)). Please advise.
> 
> Thanks
> 
> Autif
> 
> autif@xu:~/data/dev/yocto/emgd/tmp/deploy/images/1$ sudo find . | grep emgd
> ./usr/lib/libemgdsrv_um.so.1.5.15.3226
> ./usr/lib/libemgdsrv_um.so
> ./usr/lib/libemgdglslcompiler.so.1.5.15.3226
> ./usr/lib/libemgdPVR2D_DRIWSEGL.so
> ./usr/lib/xorg/modules/drivers/emgd_drv.so
> ./usr/lib/libemgdPVR2D_DRIWSEGL.so.1.5.15.3226
> ./usr/lib/libemgdsrv_init.so
> ./usr/lib/libemgdsrv_init.so.1.5.15.3226
> ./usr/lib/libemgdglslcompiler.so
> ./usr/lib/dri/emgd_dri.so
> autif@xu:~/data/dev/yocto/emgd/tmp/deploy/images/1$
> 
> autif@xu:~/data/dev/yocto/poky-edison-6.0/meta-intel/meta-crownbay/binary/2$
> sudo find . | grep emgd
> ./usr/lib/libemgdsrv_um.so
> ./usr/lib/dri/emgd_dri.so
> ./usr/lib/libemgdsrv_init.so.1.5.15.3226
> ./usr/lib/libemgdsrv_init.so
> ./usr/lib/xorg/modules/drivers/emgd_drv.so
> ./usr/lib/libemgdPVR2D_DRIWSEGL.so.1.5.15.3226
> ./usr/lib/libemgdglslcompiler.so.1.5.15.3226
> ./usr/lib/libemgdsrv_um.so.1.5.15.3226
> ./usr/lib/libemgdPVR2D_DRIWSEGL.so
> ./usr/lib/libemgdglslcompiler.so
> ./lib/modules/3.0.4-yocto-standard+/kernel/drivers/gpu/drm/emgd
> ./lib/modules/3.0.4-yocto-standard+/kernel/drivers/gpu/drm/emgd/emgd.ko
> ./etc/rpm-postinsts/kernel-module-emgd.sh.done
> autif@xu:~/data/dev/yocto/poky-edison-6.0/meta-intel/meta-crownbay/binary/2$
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



