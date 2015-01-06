Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51A03E005B4; Tue,  6 Jan 2015 07:28:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1BFDE002F9
	for <yocto@yoctoproject.org>; Tue,  6 Jan 2015 07:28:50 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 06 Jan 2015 07:26:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,708,1413270000"; d="scan'208";a="657567631"
Received: from vgannu-mobl2.amr.corp.intel.com (HELO [10.254.107.145])
	([10.254.107.145])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jan 2015 07:28:48 -0800
Message-ID: <1420558128.8591.28.camel@picadillo>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>
Date: Tue, 06 Jan 2015 09:28:48 -0600
In-Reply-To: <7B6FE55CD594D7478CED8A39DF3BFC0A5E70ED9C@UT40SVCWEM001.atk.com>
References: <BLU406-EAS388E30ADBB7B8ABF5E862C58B580@phx.gbl>
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E70EBD9@UT40SVCWEM001.atk.com>
	<BLU406-EAS2048C24D52F9E36403A1FAB8B590@phx.gbl>
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E70ED9C@UT40SVCWEM001.atk.com>
X-Mailer: Evolution 3.10.4 (3.10.4-4.fc20) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Andre Marschalek <andre.marschalek@outlook.com>
Subject: Re: separate partition support
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
X-List-Received-Date: Tue, 06 Jan 2015 15:28:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

As far as wic goes, I think this is something that should be supported,
and probably wouldn't be too hard to implement, but I really haven't
thought about the details much.  Off the top of my head, I think it
would mainly require some changes to the Wic_PartData and rootfs plugin
and an extension to the rootfs syntax - possibly just appending the
directory within the rootfs to the rootfs plugin e.g.:  

part / --source rootfs --ondisk sda --fstype=ext3 --label platform --align 1024
part /var --source rootfs/var --ondisk sda --fstype=ext3 --label data --align 1024

The second line would cause just the contents of the /var directory of
rootfs to be put into a separate partition and mounted as /var.

One complication would be then subtracting that from the rootfs and
leaving just the remainder mounted as / - it would probably require a
copy and subtraction.

Tom

On Tue, 2015-01-06 at 15:05 +0000, Moore, Thomas (FtWorth) wrote:
> Andre,
> 
>  
> 
> I spent some time trying to determine how to generate multiple images
> as you’ve mentioned. However, the process used to generate the rootfs
> image appears to be buried deep in the Open Embedded core and I wasn’t
> able to figure out how it works. Maybe someone else can chime in on
> how that might be accomplished.
> 
>  
> 
> Thomas Moore
> 
> 
>  
> 
> From: Andre Marschalek [mailto:andre.marschalek@outlook.com] 
> Sent: Tuesday, January 06, 2015 8:34 AM
> To: Moore, Thomas (FtWorth); yocto@yoctoproject.org
> Subject: RE: [yocto] separate partition support
> 
> 
>  
> 
> Hi Thomas,
> 
>  
> 
> what I need is to have one image per partition
> 
>  
> 
> for example if i need to have /opt on a different partition i would
> need 2 image files at the end
> 
>  
> 
> one containing the root partition but without /opt and one with the
> contents of /opt (without /opt itself because this image will be
> mounted as /opt at the end)
> 
>  
> 
> br
> 
> Andre
> 
>  
> 
> From: Moore, Thomas (FtWorth) [mailto:Thomas.Moore2@ATK.COM] 
> Sent: Tuesday, January 6, 2015 1:01 AM
> To: Andre Marschalek; yocto@yoctoproject.org
> Subject: RE: [yocto] separate partition support
> 
> 
>  
> 
> I’m actually experimenting with this today.
> 
>  
> 
> Per the Development Manual, my first attempt was to use wic. While I
> was able to create an image with multiple partitions, there appears to
> be no way to split up the rootfs image that is created amongst the
> multiple partitions. Below is the wks file I created for my test:
> 
>  
> 
> part /boot --source bootimg-pcbios --ondisk sda --label boot --active
> --align 1024
> 
> part / --source rootfs --ondisk sda --fstype=ext3 --label platform
> --align 1024
> 
> part /var --source rootfs --ondisk sda --fstype=ext3 --label data
> --align 1024
> 
>  
> 
> bootloader  --timeout=0  --append="rootwait rootfstype=ext3
> video=vesafb vga=0x318 console=tty0"
> 
>  
> 
> After running wic, I was able to examine the resulting image and there
> were three partitions. However, the second and third partitions (/
> and /var) both contained the entire rootfs. In this case, I was hoping
> that wic would realize that I only wanted the contents /var in the
> third partition and to also not be included in the second partition.
> 
>  
> 
> While it may be possible to create a new plugin for wic to achieve my
> desired result, I’m not sure if it would be possible for the instance
> of the plugin creating the / partition to be aware of the other
> partitions and their mount points to be able to exclude those folders
> from the / partition. Does anyone have any thoughts on this?
> 
>  
> 
> Thanks,
> 
>  
> 
> Thomas Moore
> 
> 
>  
> 
> From:yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Andre Marschalek
> Sent: Monday, January 05, 2015 5:50 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] separate partition support
> 
> 
>  
> 
> hi,
> 
>  
> 
> splitting the root file filesystem into different partitions is a
> common task and supported from every operating system during install
> and should be also supported from yocto’s build system
> 
> based on the current available documentation it seems impossible to
> accomplish this task, the only available result is one full blown
> image containing the root partition
> 
>  
> 
> currently the only idea i had is to run bitbake which will generate
> the root image containing everything
> 
> create afterwards my own images with the desired size (also a new root
> image because in this case IMAGE_ROOTFS_SIZE does not reflect the
> ending image size)
> 
> mount every image and move the directories from the bitbake produced
> image into this new images
> 
> and finally flash that images to my devices
> 
>  
> 
> what do you mean?
> 
> should this basic core functionality part of yocto’s build process
> without an overhead for everyone to create isolated solutions?
> 
> do you see a better workaround as to create new images and movements
> after the build process?
> 
>  
> 
> thank you in advance
> 
>  
> 
> br
> 
> Andre
> 
> 



