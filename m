Return-Path: <sachindhiman123@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E778C4C80B6B
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 05:31:33 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk5 with SMTP id 5so206125gxk.35
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 03:31:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:sender:received
	:in-reply-to:references:date:x-google-sender-auth:message-id:subject
	:from:to:cc:content-type;
	bh=ANdRGsUgu7FzjCPIN3RRbsAloU1Ekb3glEBTvBTHlwU=;
	b=Z6ASUHt2zRImg9UTnB3sXYRFti9wexudZpJE8QcOYAeglypmzY0O9GyMuvzL/Enxij
	7bHykjeDpmTEruOCQaqCfJwy4ng3imGqI+oOScyylacb/noh05GCKq+DaeDSNPKWTlgS
	anv/u6GiTHbjFlz2AEuK4lY2BEOcSQklXSiiI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	b=fezP0+EVu0bxHdhdnCMBKgc3od2QA9Iip4V4O8CMxzv79TO4b20pmw423HVQ4+RikL
	YJuFgSHYs+Rd+CBEbr7PCAg67VVRn0WoJIVGHDxXIaYcEj/3rNPR2xj53X9H76kjNkBm
	Vnku8Hwx3R4tR0/LvUDmf6sf0m8S5MVPqT8Ro=
MIME-Version: 1.0
Received: by 10.100.106.4 with SMTP id e4mr1453894anc.81.1289561493279; Fri,
	12 Nov 2010 03:31:33 -0800 (PST)
Sender: sachindhiman123@gmail.com
Received: by 10.100.225.17 with HTTP; Fri, 12 Nov 2010 03:31:33 -0800 (PST)
In-Reply-To: <B08D4353009C0E4FB5FE1A4D0041EBC4B20774@orsmsx001.amr.corp.intel.com>
References: <AANLkTi=77Owty-Qf1J8-GeNv17ZBjE98YNYGxuH4-_ek@mail.gmail.com>
	<B08D4353009C0E4FB5FE1A4D0041EBC4B20453@orsmsx001.amr.corp.intel.com>
	<AANLkTik1hgwSfbLxndtJq93KW0Q312V4i8hCXEn6PTDo@mail.gmail.com>
	<B08D4353009C0E4FB5FE1A4D0041EBC4B20774@orsmsx001.amr.corp.intel.com>
Date: Fri, 12 Nov 2010 17:01:33 +0530
X-Google-Sender-Auth: fWmZBkIVcnys4ApcEVUmMVvmgkw
Message-ID: <AANLkTikP1bEu+QqHTEh9zYcO3K2ie5+dq_f3fq+=LK-H@mail.gmail.com>
From: sachin kumar <sachinsomeone@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem in running poky-qemu
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
X-List-Received-Date: Fri, 12 Nov 2010 11:31:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi:

i am sorry, again i am getting same message.

Regards
Sachin

On 11/12/10, Zhang, Jessica <jessica.zhang@intel.com> wrote:
> Hi Sachin,
>
> under /opt/poky, can you do the following in exact sequence:
> 1. source environment-setup-ppc603e-poky-linux
> 2. poky-qemy qemuppc zImage-2.6.34.qemuppc-0.9.bin
> yocto-image-minimal-qemuppc-0.9.rootfs.ext3
>
> Thanks,
> Jessica
>
>   _____
>
> From: sachindhiman123@gmail.com [mailto:sachindhiman123@gmail.com] On Behalf
> Of sachin kumar
> Sent: Thursday, November 11, 2010 8:19 AM
> To: Zhang, Jessica
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Problem in running poky-qemu
>
>
> Hello Jessica:
>
> Thanks for your swift response, as per your suggestions i have downloaded
> yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2 file from yocto website.
> I have installed the same.
> you can see now content of my /opt/poky folder as following
>
> [sachin@sachinlinux yocto_tools]$ ls /opt/poky/
> environment-setup-i586-poky-linux     site-config-i586-poky-linux
> sysroots                 version-ppc603e-poky-linux
> environment-setup-ppc603e-poky-linux  site-config-ppc603e-poky-linux
> version-i586-poky-linux
> [sachin@sachinlinux yocto_tools]$
>
> But despite that i am getting same message
>
> [sachin@sachinlinux yocto_tools]$ poky-qemu zImage-2.6.34-qemuppc-0.9.bin
> yocto-image-minimal-qemuppc-0.9.rootfs.ext3
> Set MACHINE to [qemuppc-0] based on kernel [zImage-2.6.34-qemuppc-0.9.bin]
> In order for this script to dynamically infer paths
> to kernels or filesystem images, you either need
> bitbake in your PATH or to source poky-init-build-env
> before running this script
> [sachin@sachinlinux yocto_tools]$
>
>
> I do not which script this is referring.
> Please help me.
>
> Kind regards
>
> Sachin
>
>
>
>
>
> On Thu, Nov 11, 2010 at 7:59 AM, Zhang, Jessica <jessica.zhang@intel.com>
> wrote:
>
>
> Hi Sachin,
>
> First of all, if you want to run ppc, the toolchain you need to download is
> yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2.  After you install it
> under /opt/poky, you should go under /opt/poky and source the
> environment-setup-ppc* and try start qemu again...
>
> Let us know if you still run into issues.
>
> Thanks,
> Jessica
>
>   _____
>
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of sachin kumar
> Sent: Wednesday, November 10, 2010 6:09 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Problem in running poky-qemu
>
>
> Dear All:
>
> I am new to qemu, so please excuse me, i am asking basic question.
>
> Actually i want to run linux image for ppc on qemu.
>
> My host machine is running Fedora13.
>
> For that i have downloaded following from yocto project website.
>
> Disk Image: yocto-image-minimal-qemuppc-0.9.rootfs.ext3
> Kernel Image : zImage-2.6.34-qemuppc-0.9.bin
> Toolchain: yocto-eglibc-i586-i586-toolchain-sdk-0.9.tar.bz2
>
> Now toolchain was installed properly.
>
> Now when i am running poky-qemu from command line it is giving following
> message
> ============================================================================
> =================
> [root@sachinlinux yocto_tools]# poky-qemu zImage-2.6.34-qemuppc-0.9.bin
> yocto-image-minimal-qemuppc-0.9.rootfs.ext3
> Set MACHINE to [qemuppc-0] based on kernel [zImage-2.6.34-qemuppc-0.9.bin]
> In order for this script to dynamically infer paths
> to kernels or filesystem images, you either need
> bitbake in your PATH or to source poky-init-build-env
> before running this script
>
> ============================================================================
> =================
> I am blank about this message, which script they are referring.
> Please help me for the same.
> This will be a great help for me as i am at critical phase of one of my
> project.
>
> Kind Regards
> Sachin
>
>
>
>
>
>
>
>

