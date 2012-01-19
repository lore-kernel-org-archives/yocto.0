Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96A30E00599
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2012 09:45:26 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Jan 2012 09:45:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="97629610"
Received: from envy.jf.intel.com (HELO envy.home) ([10.24.5.121])
	by azsmga001.ch.intel.com with ESMTP; 19 Jan 2012 09:45:07 -0800
Message-ID: <4F18568E.2050208@linux.intel.com>
Date: Thu, 19 Jan 2012 09:44:46 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Jim Abernathy <jfabernathy@gmail.com>
References: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>	<CANFv2E=WCVdtHMrf9VBC0JX+GjTRk+NZr+ZwA4F-x0SAnc3L1g@mail.gmail.com>	<CANFv2EnCdxjffKM1W42vBU-TTPCG8kL2GTXr5VUP47zDof8VwA@mail.gmail.com>	<4F16DC5D.9070903@mlbassoc.com>	<4F16DDCD.2020701@ti.com>	<CANFv2E=R2NwFm0CdHqmQC0HskVYZFFYCwu49r2vs5wxkmHS=rg@mail.gmail.com>	<4F16E20C.9010909@ti.com>
	<CANFv2EnTYUmywJfVGw27QP4QHqgJnjF9-H9G0DEj-HrTAmpytg@mail.gmail.com>
	<4F16EE0D.1080805@ti.com> <4F16F0A2.9070805@gmail.com>
	<4F16F410.4050800@linux.intel.com> <4F16FBBF.6080406@gmail.com>
	<4F173AD5.4040200@linux.intel.com> <4F1820DE.7060700@gmail.com>
In-Reply-To: <4F1820DE.7060700@gmail.com>
X-Enigmail-Version: 1.3.4
Cc: yocto@yoctoproject.org
Subject: Re: build failure on ubuntu 64bits development system
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
X-List-Received-Date: Thu, 19 Jan 2012 17:45:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/19/2012 05:55 AM, Jim Abernathy wrote:
> On 01/18/2012 04:34 PM, Darren Hart wrote:
>>
>> On 01/18/2012 09:05 AM, Jim Abernathy wrote:
>>
>>> FYI for those wanting to use Soft RAID, make sure you create one very 
>>> small primary partition for GRUB2 to put the second part of the 
>>> boot-loader in.  Can't use the old process.
>> I strongly recommend using a separate DISK for your OS installation.
>> Yocto builds are hard on disks, and RAID 0 increases your risk of
>> failure in exchange for the added performance. I use a small SSD for my
>> OS disk and a large RAID0 array of spinning disks for /build and another
>> array for /virt (where my VM images live - easily recreated).
>>
> Learned a few things in this process. I appreciate all the help and advice.
> 
>  1. So we know that at least with Edison, btrfs does not work with bitbake.
>  2. When I rebuilt the system, this time I put the Linux root directory
>     on an 80GB SSD.  That is where I also have my clone of Linux-Yocto
>     repository, poky, and download directory , DL_DIR.
>  3. I have create /build with EXT4 format on a Software RAID 0 (striped)
>     partition, using 2 separate hard drives,  to use as the working
>     build directory for bitbake. I have a striped swap file on the same
>     two drives.  But with 8GB or RAM, I shouldn't be using that much.
> 
> My build times for some of the basic meta-intel BSPs is around 103 minutes.

You may be able to improve upon that with the following in /etc/fstab:

/dev/md0  /build  ext4  noauto,noatime,nodiratime,commit=6000  0  2

This reduces the number of writes due to updated access time and
increases the commit interval so it doesn't stall while writing out
every 5 minutes per default.

NOTE: THIS INCREASES YOUR RISK OF DATA LOSS

If your machine goes down during a build, you should plan on formatting
that drive. If you only keep builds on it, they easily recreateable and
you may find the performance boost is worth the risk.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

