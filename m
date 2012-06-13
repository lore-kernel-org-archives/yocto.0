Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BECCE0044A
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 08:57:57 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Jun 2012 08:57:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="179515889"
Received: from unknown (HELO envy.home) ([10.255.12.139])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jun 2012 08:57:26 -0700
Message-ID: <4FD8B81C.2030603@linux.intel.com>
Date: Wed, 13 Jun 2012 08:56:12 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?J=FCrgen_Messerer?= <juergen.messerer@bbv.ch>
References: <A7B59F6D52627C44813C136D437B0832068BC78CACF3@TKSSREX01.outnet.ch>
In-Reply-To: <A7B59F6D52627C44813C136D437B0832068BC78CACF3@TKSSREX01.outnet.ch>
X-Enigmail-Version: 1.4.2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: qemux86 Image won't boot from CF
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
X-List-Received-Date: Wed, 13 Jun 2012 15:57:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit



On 06/12/2012 04:07 AM, Jürgen Messerer wrote:
> Hi everybody.
> 
>  
> 
> The following problem occurs when I try to start a x86 linux system from
> CF-Card.
> 
>  
> 
> I have generate a qemux86 core-image-minimal  image with the latest pokey.
> 

...

> VFS: Unable to mount root fs via NFS, trying floppy.
> 
> VFS: Cannot open root device "hdb1" or unknown-block(2,0)
> 
> Please append a correct "root=" boot option; here are the available
> partitions:
> 
> VFS: Unable to mount root fs on unknown-block(2,0)

The kernel should list the known block devices. It isn't finding any. So
either you don't have the driver for it installed, or it is a removable
device. As Andrea pointed out, rootwait can help with the latter.

However, it should be noted that the qemux86 machine is intended to be
booted under emulation, and has the drivers required for that scenario.
If you want to boot on real hardware, you really should be creating a
machine config and a kernel bbappend with whatever drivers you need for
your hardware in a config fragment.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



