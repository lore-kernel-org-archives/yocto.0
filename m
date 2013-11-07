Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57989E01757
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 10:45:36 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Nov 2013 10:45:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="431473753"
Received: from dvhart-mobl3.amr.corp.intel.com (HELO [10.7.196.57])
	([10.7.196.57])
	by orsmga002.jf.intel.com with ESMTP; 07 Nov 2013 10:45:36 -0800
Message-ID: <1383849935.5378.51.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Markus Svilans <msvilans@aeonyx.ca>
Date: Thu, 07 Nov 2013 10:45:35 -0800
In-Reply-To: <5277EE4D.2080303@aeonyx.ca>
References: <5277EE4D.2080303@aeonyx.ca>
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Deploying Yocto built images on x86
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
X-List-Received-Date: Thu, 07 Nov 2013 18:45:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-11-04 at 13:58 -0500, Markus Svilans wrote:
> Dear list,
> 
> What do people do for deploying Yocto built images to actual x86
> hardware?

That is a very open ended question :-) There is x86 hardware ranging
from booting from SPI, to SD Cards, all the way up to desktops and
servers...

> I am researching how to build an appliance type Linux box on x86
> hardware, but I am unclear on what are the generally accepted methods
> for doing that. The box would need to have a read-only rootfs, mounted
> in RAM, with one or more partitions for storing persistent files.

Where are you storing the image? SPI, SD, USB, SATA? Assuming SATA as
you are speaking in highly general x86 terms, which typically means "PC"
rather than deeply embedded.

> 
> I am looking for some method, where I could bitbake a recipe, that
> will:
>       * build a FAT image for syslinux and initramfs files

All the core images do that with the hddimg fs type.

>       * build one or more small ext3/4 partitions for persistent
>         storage (config files, log files, etc.)

Core images currently do a single partition of that type.

>       * generate a single binary image, that can be easily installed
>         to a hard drive (via dd or other tool), and will automatically
>         handle the various partitions, boot record, etc. on the target
>         hard drive

The mkefidisk.sh script does this now for EFI images and the WIC tool
(recently added to the 1.5 release) can do this for EFI and PCBIOS type
images.

> 
> 
> The following presentation from 2006 mentions the mkimg and imgloader
> tools, that appear to do just that:
> http://elinux.org/images/1/1b/Jordan_crouse_celf_2006.pdf
> 
> 
> But there seems to be no mention of the mkimg / imgloader tools
> anywhere online. What happened to them? Are they proprietary AMD
> tools?
> 
> 
> 
> Any insights or links to good literature would be much appreciated.
> 

OK, so the tool you are looking for is wic. Search the mailing list for
specifics on the tool, and Cc Tom Zanussi (Cc'd) on questions about wic
to the list (oe-core is probably the best list since the tool has been
integrated there).

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



