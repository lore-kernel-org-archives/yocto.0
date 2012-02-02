Return-Path: <wmills@ti.com>
Received: from devils.ext.ti.com (devils.ext.ti.com [198.47.26.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78EF2E00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 10:37:14 -0800 (PST)
Received: from dlep26.itg.ti.com ([157.170.170.121])
	by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id q12IbBfK004938;
	Thu, 2 Feb 2012 12:37:11 -0600
Received: from DLEE74.ent.ti.com (localhost [127.0.0.1])
	by dlep26.itg.ti.com (8.13.8/8.13.8) with ESMTP id q12IbBOD011320;
	Thu, 2 Feb 2012 12:37:11 -0600 (CST)
Received: from dlelxv22.itg.ti.com (172.17.1.197) by DLEE74.ent.ti.com
	(157.170.170.8) with Microsoft SMTP Server id 14.1.323.3;
	Thu, 2 Feb 2012 12:37:11 -0600
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.100.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	q12IbBft003800;	Thu, 2 Feb 2012 12:37:11 -0600
Message-ID: <4F2AD7D6.5080407@ti.com>
Date: Thu, 2 Feb 2012 13:37:10 -0500
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1328135056.git.dvhart@linux.intel.com>
	<8c5010ca5786a486f2082d711fdf52b8617973af.1328135056.git.dvhart@linux.intel.com>
	<4F2A9924.3050001@ti.com> <4F2AC5A6.6030002@linux.intel.com>
In-Reply-To: <4F2AC5A6.6030002@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [pull-sys940x 3/4] genmac: Replace RANDOM_MAC in	network/interfaces with a randomly generated MAC
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
X-List-Received-Date: Thu, 02 Feb 2012 18:37:14 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 02/02/2012 12:19 PM, Darren Hart wrote:
> On 02/02/2012 06:09 AM, William Mills wrote:
>> So on a non-volatile r/w filesystem this will assign a new random mac to
>> each interface on the first boot and reuse that MAC on each subsquent boot.
> Correct.
>
>> On a volatile r/w filesystem this will use a new MAC addr for each
>> boot.  I guess thats better than nothing and not much to do on a
>> volatile system.
> Correct. The alternative would be to try and sort out some kind of hash
> based on unique data, maybe dmidecode data - but that's not very
> consistent across platforms. I think there is something like this
> available for the Beagleboard.
>
>
>> What does this do on a ro filesystem?  No network?  network with
>> 0:0:0:0:0:0 MAC addr? (horror! but I suspect the kernel won't allow
>> that).  Certainly this script failing should not cause the rest of boot
>> to fail.
> On a read only filesystem with genmac installed and RANDOM_MAC in the
> interfaces file, genmac will run and NOT update interfaces. This was
> written with the pch_gbe driver in mind. If no MAC is in the EEPROM, the
> pch_gbe driver leaves the MAC as 00:00:00:00:00:00 and leaves the
> interface down. It will fail any up command until the MAC has been set.
> So the subsequent networking script will fail to bring up the relevant
> interface. ifconfig -a will list the interface as down and with a MAC of
> 00:00:00:00:00:00.
>
> Other drivers will assign a random MAC within the kernel, making this
> all unnecessary, but David Miller refused this patch for this driver
> (despite the precedent).
>
> If you want to use a RO image on a platform with a pch_gbe nic and no
> EEPROM, you need to hardcode the generated MAC in the interfaces file.
>
> The alternative would be for me to call this pch_gbe_genmac and have it
> call ifconfig directly instead of delegating it to the interfaces file.
> But then I would still want to use a config file to store the
> first-boot-generated MAC so it was the same across boots. Once I have to
> generate a config file, I felt it made more sense to just use
> interfaces, and then it makes sense to make it generic (not pch_gbe
> specific), and that led me to this implementation.
>
> Seem reasonable?
>

Yes I think so.  Just wanted to make sure it failed gracefully.   I 
think your doing the best that can be expected.

Thanks for the detail.

[I'm interested as I have a board that might need this.  Not in OE yet, 
but someday ...]


