Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8D3DE004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 13:34:35 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jan 2012 13:34:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="113740121"
Received: from unknown (HELO envy.home) ([10.255.13.210])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2012 13:34:34 -0800
Message-ID: <4F173AD5.4040200@linux.intel.com>
Date: Wed, 18 Jan 2012 13:34:13 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Jim Abernathy <jfabernathy@gmail.com>
References: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>	<CANFv2E=WCVdtHMrf9VBC0JX+GjTRk+NZr+ZwA4F-x0SAnc3L1g@mail.gmail.com>	<CANFv2EnCdxjffKM1W42vBU-TTPCG8kL2GTXr5VUP47zDof8VwA@mail.gmail.com>	<4F16DC5D.9070903@mlbassoc.com>	<4F16DDCD.2020701@ti.com>	<CANFv2E=R2NwFm0CdHqmQC0HskVYZFFYCwu49r2vs5wxkmHS=rg@mail.gmail.com>	<4F16E20C.9010909@ti.com>
	<CANFv2EnTYUmywJfVGw27QP4QHqgJnjF9-H9G0DEj-HrTAmpytg@mail.gmail.com>
	<4F16EE0D.1080805@ti.com> <4F16F0A2.9070805@gmail.com>
	<4F16F410.4050800@linux.intel.com> <4F16FBBF.6080406@gmail.com>
In-Reply-To: <4F16FBBF.6080406@gmail.com>
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
X-List-Received-Date: Wed, 18 Jan 2012 21:34:35 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/18/2012 09:05 AM, Jim Abernathy wrote:

> FYI for those wanting to use Soft RAID, make sure you create one very 
> small primary partition for GRUB2 to put the second part of the 
> boot-loader in.  Can't use the old process.

I strongly recommend using a separate DISK for your OS installation.
Yocto builds are hard on disks, and RAID 0 increases your risk of
failure in exchange for the added performance. I use a small SSD for my
OS disk and a large RAID0 array of spinning disks for /build and another
array for /virt (where my VM images live - easily recreated).

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

