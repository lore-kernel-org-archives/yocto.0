Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70C6BE0140E
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 11:18:49 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 May 2012 11:18:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="164069658"
Received: from unknown (HELO envy.home) ([10.255.13.57])
	by fmsmga002.fm.intel.com with ESMTP; 09 May 2012 11:18:48 -0700
Message-ID: <4FAAB4EB.8040502@linux.intel.com>
Date: Wed, 09 May 2012 11:18:19 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: Manuel Bessler <manuel.bessler@gmail.com>
References: <CAKSdS8LS3dX_zJpg8cZ5NqdN3DyHbRXdtK01oPukLfNmmfVFDQ@mail.gmail.com>
In-Reply-To: <CAKSdS8LS3dX_zJpg8cZ5NqdN3DyHbRXdtK01oPukLfNmmfVFDQ@mail.gmail.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: initramfs image
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
X-List-Received-Date: Wed, 09 May 2012 18:18:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/08/2012 06:54 PM, Manuel Bessler wrote:
> Hi,
> 
> I'm trying to figure out how to build an image of type initramfs, ie.
> kernel with built-in rootfs.
> I've got a rootfs.cpio.gz in build/tmp/deploy/images. But how do I
> tell the kernel to actually use it
> and "swallow in" the rootfs.

This isn't currently supported. The problem is the kernel would have to
wait for the image to be completed, and the image currently waits for
the kernel to be completed. In practice, this is often done in two
stages, the kernel is built, the rootfs is built, then the kernel is
rebuilt. This workflow has not been configured for OE/Yocto yet. If this
is an important feature for you, please consider opening a feature request.

Regards,

Darren Hart

> 
> I've found a few variable that have to do with initramfs', but there
> are no simple examples,
> and for some variables I've not found any examples nor documentation at all.
> 
> in  .../images/myimage-initramfs.bb I have:
> require myimage.bb
> INITRAMFS_FSTYPES = "cpio.gz"
> IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"
> 
> In the same file I tried to set INITRAMFS_IMAGE to:
> INITRAMFS_IMAGE = "myimage "
> 
> 
> Do I need to set CONFIG_INITRAMFS_SOURCE in my kernel config manually,
> and if yes, to what?
> My kernel recipe is (for now) a simple kernel build, ie "inherit
> kernel"-based only.
> 
> Am I using INITRAMFS_IMAGE the right way? What about INITRAMFS_TASK ?
> I could not find any information on this variable....
> 
> I'm using yocto 1.2.
> 
> 
> Does anyone have a simple example on how to build a kernel with
> initramfs built in?
> 
> I'd appreciate any help.
> Thanks,
> Manuel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

