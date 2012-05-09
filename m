Return-Path: <darren.hart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BD57E0140C
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 08:45:07 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 May 2012 08:45:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="140924174"
Received: from unknown (HELO envy.home) ([10.255.13.57])
	by azsmga001.ch.intel.com with ESMTP; 09 May 2012 08:44:46 -0700
Message-ID: <4FAA90D0.1060609@intel.com>
Date: Wed, 09 May 2012 08:44:16 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: "Lu, Lianhao" <lianhao.lu@intel.com>
References: <857BE142E5399E46B20FD45B9DB8A7BC0FDB4798@SHSMSX102.ccr.corp.intel.com>
In-Reply-To: <857BE142E5399E46B20FD45B9DB8A7BC0FDB4798@SHSMSX102.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to launch core-image-minimal built upon poky-tiny
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
X-List-Received-Date: Wed, 09 May 2012 15:45:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 05/09/2012 01:11 AM, Lu, Lianhao wrote:
> Hi Darren,
> 
> Do you know how to use qemu to launch the core-image-minimal image
> build upon the poky-tiny distribution?
> 
> I tried the following command but ended up in "Kernel panic - not
> syncing: No init found."
> 
> tmp/sysroot/x86_64-linux/usr/bin/qemu -kernel
> /tmp/deploy/image/bzImage-qemux86.bin -append "console=ttyS0, 115200
> root=0800" -nographic
> tmp/deploy/images/core-image-minimal-qemux86.ext2

No block devices are defined by default iirc. Try booting using the
cpio.gz as the initrd and with root=/dev/ram0.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

