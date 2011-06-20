Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id AE5334C800A9
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2011 15:39:23 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Jun 2011 13:39:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,396,1304319600"; d="scan'208";a="16080477"
Received: from doubt.jf.intel.com (HELO [10.7.199.145]) ([10.7.199.145])
	by orsmga002.jf.intel.com with ESMTP; 20 Jun 2011 13:39:23 -0700
Message-ID: <4DFFAFF6.1030708@linux.intel.com>
Date: Mon, 20 Jun 2011 13:39:18 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <cover.1308357152.git.dvhart@linux.intel.com>	<f66f8d260f0d9ca587e6dc55cba45a6e0ce224a6.1308357152.git.dvhart@linux.intel.com>	<824516E3-FB4B-47E5-9172-E685149CAD49@dominion.thruhere.net>	<4DFCBE0F.80305@linux.intel.com>
	<F09F96AD-A7B2-4EF6-90E5-23FDFCA1EE80@dominion.thruhere.net>
In-Reply-To: <F09F96AD-A7B2-4EF6-90E5-23FDFCA1EE80@dominion.thruhere.net>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/3] beagleboard: xserver-kdrive xorg.conf	installation
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
X-List-Received-Date: Mon, 20 Jun 2011 20:39:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/18/2011 08:09 AM, Koen Kooi wrote:
> 
> Op 18 jun 2011, om 17:02 heeft Darren Hart het volgende geschreven:
> 
>> 
>> 
>> On 06/18/2011 01:05 AM, Koen Kooi wrote:
>>> 
>>> Op 18 jun 2011, om 02:35 heeft Darren Hart het volgende
>>> geschreven:
>>> 
>>>> Append xserver-kdrive to allow for BSP specific xorg.conf
>>>> files. This also appears to drag in a runtime dependency on
>>>> libhal, so add that to the bbappend's RDEPENDS_${PN} as well.
>>> 
>>> Since when does kdrive use xorg.conf?
>> 
>> This is my first use of xserver-kdrive. I was experimenting with 
>> xorg.conf changes to resolve some USB input issues I was having...
>> it seemed to work. Should it be using something else?
> 
> AFAIK kdrive doesn't read xorg.conf, one of its design principles :)
> That's we have all those x*-common scripts that start Xfbdev with a
> gazillion commandline options. 

Taking a closer look, I'm wondering if it is the xkeyboard-config
package that is reading xorg.conf. Installing this seems a bit at odds
with what I've been able to dig up about xserver-kdrive. I also noticed
the beagleboard.conf in meta-ti use xserver-xorg, not kdrive.

With that information, I'm building a new image using the XSERVER
preferences from the meta-ti beagleboard conf.

Any objections to moving beagleboard to xserver-xorg instead of kdrive?
I'd like us not to diverge from meta-ti without a very good reason.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

