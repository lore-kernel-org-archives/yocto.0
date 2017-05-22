Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D146E00B51; Mon, 22 May 2017 15:12:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95247E00812
	for <yocto@yoctoproject.org>; Mon, 22 May 2017 15:12:06 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1dCvYU-0004Wk-Np
	for yocto@yoctoproject.org; Tue, 23 May 2017 00:11:58 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Ferry Toth <ftoth@exalondelft.nl>
Date: Mon, 22 May 2017 22:11:51 +0000 (UTC)
Message-ID: <ofvnn7$ngp$1@blaine.gmane.org>
References: <3320411.ypKkNcmLs6@chromium>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Pan/0.141 (Tarzan's Death; 168b179 git.gnome.org/pan2)
Subject: Re: How to build initramfs with modules but without bzImage
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
X-List-Received-Date: Mon, 22 May 2017 22:12:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Op Mon, 22 May 2017 00:05:41 +0200, schreef Ferry Toth:

> I am building 2 images. One has my rootfs, the other builds a kernel
> with builtin initramfs.
> 
> To build the initramfs I did the following:
> In the .../conf directory, I create a file named initramfs.conf and add
> the following:
>  
> INITRAMFS_IMAGE = "core-image-minimal-initramfs"
> INITRAMFS_IMAGE_BUNDLE = "1"
>  
> IMAGE_FSTYPES = "cpio.gz"
>  
> Then to build the initramfs based on the core-image-base recipe, I
> execute the following bitbake command:
>  
>      bitbake -R conf/initramfs.conf core-image-minimal-initramfs
>  
> When it completes, there is a kernel + initramfs file in the .../tmp/
> deploy/images/..../  directory.
>  
> This image boots to the init script, but then hangs as the mmc drivers
> have not been included.
> 
> Now I create a core-image-minimal-initramfs.bbappend file and
> PACKAGE_INSTALL the modules I need (also tried kernel-modules).
> 
> Unfortunately this also installs the kernel bzImage in the /boot
> directory, that appears to be a dependancy. This adds another 6MB to my
> initramfs, which is now to load.
> 
> I expect it should be possible to add the modules without adding the
> kernel, but haven't been able to find a way to do that. Or it should be
> possible to remove the contents of /boot after do_rootfs.
> 
> But I have no clue how to do that.
> 
> Or am I just generating the initramfs in the wrong way?

Thanks people especially paulg and khem on irc,

I added to my core-image-minimal-initramfs.bbappend:

ROOTFS_POSTPROCESS_COMMAND += "clobber_unused"

clobber_unused () {
        rm ${IMAGE_ROOTFS}/boot/*
}

This shrink my initramfs just enough to boot. Of course I can remove more 
files if needed, by adding dir's to the clobber function.


