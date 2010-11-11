Return-Path: <scott.a.garman@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 433C14C80FA4
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 20:30:07 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Nov 2010 18:30:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,181,1288594800"; d="scan'208";a="625634943"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga002.fm.intel.com with ESMTP; 10 Nov 2010 18:29:51 -0800
Received: from [10.7.199.55] (10.7.199.55) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Wed, 10 Nov 2010 19:29:37 -0700
Message-ID: <4CDB5513.7060202@intel.com>
Date: Wed, 10 Nov 2010 18:29:39 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc14 Lightning/1.0b3pre
	Thunderbird/3.1.6
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <AANLkTi=77Owty-Qf1J8-GeNv17ZBjE98YNYGxuH4-_ek@mail.gmail.com>
In-Reply-To: <AANLkTi=77Owty-Qf1J8-GeNv17ZBjE98YNYGxuH4-_ek@mail.gmail.com>
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
X-List-Received-Date: Thu, 11 Nov 2010 02:30:07 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/2010 06:08 PM, sachin kumar wrote:
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
> =============================================================================================
> [root@sachinlinux yocto_tools]# poky-qemu zImage-2.6.34-qemuppc-0.9.bin
> yocto-image-minimal-qemuppc-0.9.rootfs.ext3
> Set MACHINE to [qemuppc-0] based on kernel [zImage-2.6.34-qemuppc-0.9.bin]
> In order for this script to dynamically infer paths
> to kernels or filesystem images, you either need
> bitbake in your PATH or to source poky-init-build-env
> before running this script
>
> =============================================================================================
> I am blank about this message, which script they are referring.

Hi Sachin,

When you installed the toolchain tarball 
(yocto-eglibc-i586-i586-toolchain-sdk-0.9.tar.bz2), it should have 
created a script /opt/poky/environment-setup-<arch>. That's the one you 
want to source.

The other issue is that we changed the naming conventions of the kernel 
and qemu images at the last minute, and the poky-qemu script needs some 
additional help to figure out which machine architecture you're using 
and the format of the image. So you need to add "qemuppc" and "ext3" to 
the list of options to poky-qemu.

$ source /opt/poky/environment-setup-ppc603e-poky-linux
$ poky-qemu qemuppc zImage-2.6.34-qemuppc-0.9.bin 
yocto-image-minimal-qemuppc-0.9.rootfs.ext3 ext3

should get you going.

This needs to get fixed ASAP and I'm going to submit a patch for it 
tomorrow in master. Thanks for your patience.

Scott






