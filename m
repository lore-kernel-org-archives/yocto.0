Return-Path: <bds@bsmucker.eu.org>
Received: from mxout-07.mxes.net (mxout-07.mxes.net [216.86.168.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BBBAE0027E
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 12:40:02 -0700 (PDT)
Received: from [192.168.0.52] (unknown [199.167.96.14])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.mxes.net (Postfix) with ESMTPSA id 79E5B22E257
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 15:40:01 -0400 (EDT)
Message-ID: <50902D13.5020206@bsmucker.eu.org>
Date: Tue, 30 Oct 2012 12:40:03 -0700
From: Brian Smucker <bds@bsmucker.eu.org>
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:16.0) Gecko/20121010 Thunderbird/16.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <50901799.2090408@am.sony.com>
In-Reply-To: <50901799.2090408@am.sony.com>
Subject: Re: supported IMAGE_FSTYPES
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
X-List-Received-Date: Tue, 30 Oct 2012 19:40:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

 From a yocto also-newbie:

This is a helpful command: bitbake -e |grep xxx
where xxx is something like ^IMAGE_FSTYPE=

That retrieves the current settings of that variable.

It doesn't answer your main question of what are the options.  I had 
that exact question a week or so ago.

Thanks

Brian

On 10/30/2012 11:08 AM, Tim Bird wrote:
> I am in the process of creating my own distro, and trying to figure out
> all the different build variables.  This is a pretty daunting task
> for a yocto project/Poky newbie.
>
> Is there some place where the possible values for IMAGE_FSTYPE are
> documented?  The Poky reference manual has this helpful sentence:
> "Formats of root filesystem images that you want to have created."
> However, it does not describe the possible values this variable
> should have.
>
> At the root of the poky source dir, doing a 'find -type f -print 0 | xargs -0 grep IMAGE_FSTYPES'
> seems to reveal the following used or checked-for image types:
>   jffs2 sdimg tar.bz2 ubi ext3 ext2 cpio.gz live vmdk
>
> It appears the cpio.gz corresponds to an image suitable for an initramfs.
> jffs2, ext2, ext3, ubi and tar.bz2 appear self-explanatory.
> I have a pretty good idea that vmdk is somehow related to the
> virtual build image.
>
> What does 'live' do?
>
> Wait a sec...
>
> Reading meta/classes/image_types.bbclass I just found IMAGE_TYPES,
> which says it is "available to request which values are suitable
> for IMAGE_FSTYPES".
>
> This has the following definition in denzil:
> IMAGE_TYPES = "jffs2 sum.jffs2 cramfs ext2 ext2.gz ext2.bz2 ext3 ext3.gz
> ext2.lzma btrfs live squashfs squashfs-lzma ubi tar tar.gz tar.bz2 tar.xz
> cpio cpio.gz cpio.xz cpio.lzma vmdk"
>
> How does one query this variable?  Other than reading the source, is
> there a way to know that such variables (which list the allowed values
> for other variables) exist?
>
> I apologize if these are newbie questions.
>
> Thanks,
>   -- Tim
>
> =============================
> Tim Bird
> Architecture Group Chair, CE Workgroup of the Linux Foundation
> Senior Staff Engineer, Sony Network Entertainment
> =============================
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


