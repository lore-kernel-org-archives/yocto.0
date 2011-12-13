Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A09AE00742
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 08:44:11 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so5755131qcs.35
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 08:44:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:from:to:cc:in-reply-to:references:content-type:date
	:message-id:mime-version:x-mailer:content-transfer-encoding;
	bh=2DMAvGYn21qXnPPf3VO5SOkiFwzP7KbwZTHL8mbs96E=;
	b=N2Fq1LNCsmdi/jCL7KqyZunxbsEvQYwuNz78wIncig7VsMZS0q5u5d1kZhLPO25NGh
	c9/6Dy3hWoyj+wfEEUBqSh2SN2TWHR4+RGx1HOSs7d/60gpcFikMEyJPe+cxpA27a5Eb
	TRcuCoiT88+j8Itj005L00LmyZMBYbR9gB9p0=
Received: by 10.229.135.77 with SMTP id m13mr1112724qct.119.1323794650575;
	Tue, 13 Dec 2011 08:44:10 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	df3sm44510253qab.6.2011.12.13.08.44.09 (version=SSLv3 cipher=OTHER);
	Tue, 13 Dec 2011 08:44:10 -0800 (PST)
From: Jim Abernathy <jfabernathy@gmail.com>
To: autif khan <autif.mlist@gmail.com>
In-Reply-To: <CADzUK1L9a_VUPD=wvmCW-wiPjMJ0Sdvh2BOrpKU9V9Sovx7Zhg@mail.gmail.com>
References: <CADzUK1Jr=9+-Q0Y+nQtdyELinjZdxz_27tTWDuCHTCF14x0Kcw@mail.gmail.com>
	<1323793712.1631.1.camel@jim-ubuntu>
	<CADzUK1L9a_VUPD=wvmCW-wiPjMJ0Sdvh2BOrpKU9V9Sovx7Zhg@mail.gmail.com>
Date: Tue, 13 Dec 2011 11:44:09 -0500
Message-ID: <1323794649.1951.2.camel@jim-ubuntu>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 13 Dec 2011 16:44:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2011-12-13 at 11:37 -0500, autif khan wrote:
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
If you use the prebuilt binaries they have EMGD already included. I had
to download and install the EMGD  before baking it all, as mentioned in
the README below:

Downloading and extracting the binaries using the EMGD Linux tarball
--------------------------------------------------------------------

The first step of the process is to download the EMGD 1.8 Driver.
Here is the current link to the URL from which it can be downloaded:

http://edc.intel.com/Software/Downloads/EMGD/

In the Download Now tab, select:

Intel® architecture-based product: Linux Tar Ball
Operating System: MeeGo* 1.2 IVI Linux* (kernel 2.6.37, X.server 1.9,
Mesa 7.9)

That will give you a large .tgz file:

Lin_EMGD_1_8_RC_2032.tgz

Extract the files in the tar file, which will in turn give you a
directory named IEMGD_HEAD_Linux.

The binaries are contained in an rpm file; you can extract the
binaries from the rpm file using rpm2cpio and cpio:

$ cd IEMGD_HEAD_Linux/MeeGo1.2
$ rpm2cpio emgd-bin-2032-1.6.i586.rpm > emgd-bin-2032-1.6.i586.cpio
$ mkdir extracted; cd extracted
$ cpio -idv < ../emgd-bin-2032-1.6.i586.cpio

Finally, you can copy the xorg-xserver binaries to the
emgd-driver-bin-1.8 directory in meta-intel/common:

$ cp -a usr/lib
meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8

You also need to copy the IEMGD License.txt file to the same directory:

$ cp IEMGD_HEAD_Linux/License/License.txt
meta-intel/common/recipes/xorg-xserver/emgd-driver-bin-1.8

At this point, you should be able to build meta-crownbay images as
usual.

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



