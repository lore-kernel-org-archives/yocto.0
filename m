Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DBEA64C80FAD
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 21:22:31 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Nov 2010 19:22:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,251,1288594800"; d="scan'208";a="577412411"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga002.jf.intel.com with ESMTP; 24 Nov 2010 19:22:31 -0800
Received: from [10.255.13.172] (10.255.13.172) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Wed, 24 Nov 2010 20:22:30 -0700
Message-ID: <4CEDD672.3090005@intel.com>
Date: Wed, 24 Nov 2010 19:22:26 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: sachin kumar <sachinsomeone@gmail.com>
References: <AANLkTik_ZG=s7P-c0rojD8Udy-AW==WzOxHtKxYa1oON@mail.gmail.com>	<4CED8155.1090904@intel.com>
	<AANLkTim3nRy+F=kUD_FzhhcyiGD1C=P1m8hes4-nMBJn@mail.gmail.com>
In-Reply-To: <AANLkTim3nRy+F=kUD_FzhhcyiGD1C=P1m8hes4-nMBJn@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using poky qemy for powerpc
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
X-List-Received-Date: Thu, 25 Nov 2010 03:22:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/24/2010 06:30 PM, sachin kumar wrote:
> Hello Scott:
>
> I want to run linux on powerpc on qemu. My host machine is running Fedora13.
>
> For that i have downloaded following from yocto project website.
>
> Disk Image: yocto-image-minimal-qemuppc-0.9.rootfs.ext3
> Kernel Image : zImage-2.6.34-qemuppc-0.9.bin
> Toolchain: yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2
>
> I have installed toolchain in /opt/poky
>
> I have also copied Disk "yocto-image-minimal-qemuppc-0.9.rootfs.ext3"
> and "Kernel Image : zImage-2.6.34-qemuppc-0.9.bin" in the /opt/poky
> directory
>
>
> To run qemu i am using following commands
>
>
> [sachin@sachinlinux poky]$ source environment-setup-ppc603e-poky-linux
>
>
> [sachin@sachinlinux poky]$ poky-qemu qemuppc
> zImage-2.6.34-qemuppc-0.9.bin yocto-image-minimal-qemuppc-0.9.rootfs.ext3
> In order for this script to dynamically infer paths
> to kernels or filesystem images, you either need
> bitbake in your PATH or to source poky-init-build-env
> before running this script
>
>
> So i am not able to run poky-qemu command.

Hi Sachin,

You are missing the filesystem type argument. Please add ext3 to the 
argument list:

poky-qemu qemuppc zImage-2.6.34-qemuppc-0.9.bin 
yocto-image-minimal-qemuppc-0.9.rootfs.ext3 ext3

HTH,

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

