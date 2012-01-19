Return-Path: <wmills@ti.com>
Received: from bear.ext.ti.com (bear.ext.ti.com [192.94.94.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 224C2E00599
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2012 07:44:55 -0800 (PST)
Received: from dlep26.itg.ti.com ([157.170.170.121])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id q0JFiru7030898;
	Thu, 19 Jan 2012 09:44:53 -0600
Received: from DFLE71.ent.ti.com (localhost [127.0.0.1])
	by dlep26.itg.ti.com (8.13.8/8.13.8) with ESMTP id q0JFiqEd018912;
	Thu, 19 Jan 2012 09:44:52 -0600 (CST)
Received: from dlelxv22.itg.ti.com (172.17.1.197) by dfle71.ent.ti.com
	(128.247.5.62) with Microsoft SMTP Server id 14.1.323.3;
	Thu, 19 Jan 2012 09:44:52 -0600
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.100.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	q0JFiqEe030291;	Thu, 19 Jan 2012 09:44:52 -0600
Message-ID: <4F183A73.2060901@ti.com>
Date: Thu, 19 Jan 2012 10:44:51 -0500
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11
MIME-Version: 1.0
To: Jim Abernathy <jfabernathy@gmail.com>
References: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>	<CANFv2E=WCVdtHMrf9VBC0JX+GjTRk+NZr+ZwA4F-x0SAnc3L1g@mail.gmail.com>	<CANFv2EnCdxjffKM1W42vBU-TTPCG8kL2GTXr5VUP47zDof8VwA@mail.gmail.com>	<4F16DC5D.9070903@mlbassoc.com>	<4F16DDCD.2020701@ti.com>	<CANFv2E=R2NwFm0CdHqmQC0HskVYZFFYCwu49r2vs5wxkmHS=rg@mail.gmail.com>	<4F16E20C.9010909@ti.com>	<CANFv2EnTYUmywJfVGw27QP4QHqgJnjF9-H9G0DEj-HrTAmpytg@mail.gmail.com>	<4F16EE0D.1080805@ti.com>
	<4F16F0A2.9070805@gmail.com>	<4F16F410.4050800@linux.intel.com>
	<4F16FBBF.6080406@gmail.com>	<4F173AD5.4040200@linux.intel.com>
	<4F1820DE.7060700@gmail.com>
In-Reply-To: <4F1820DE.7060700@gmail.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
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
X-List-Received-Date: Thu, 19 Jan 2012 15:44:55 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 01/19/2012 08:55 AM, Jim Abernathy wrote:
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
>    1. So we know that at least with Edison, btrfs does not work with
>       bitbake.

This looks pretty important to me.  Can you create a bug report for this 
Jim?  It may be decided that it is a dup of the one Darren already 
pointed to but I would like to see someone prove that.  It is not clear 
to me why the blockstats feature could not be supported on btrfs so 
could justify seperate tracking anyway.  (The resolution of the one 
Darren pointed to will be to just disable blockstats for filesystem that 
don't have block devices.)

>    2. When I rebuilt the system, this time I put the Linux root
>       directory on an 80GB SSD. That is where I also have my clone of
>       Linux-Yocto repository, poky, and download directory , DL_DIR.
>    3. I have create /build with EXT4 format on a Software RAID 0
>       (striped) partition, using 2 separate hard drives, to use as the
>       working build directory for bitbake. I have a striped swap file on
>       the same two drives. But with 8GB or RAM, I shouldn't be using
>       that much.
>
> My build times for some of the basic meta-intel BSPs is around 103 minutes.
>
> Jim A
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

