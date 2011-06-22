Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E7514C80479
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2011 13:00:11 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Jun 2011 11:00:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,407,1304319600"; d="scan'208";a="19371440"
Received: from unknown (HELO [10.255.13.180]) ([10.255.13.180])
	by fmsmga002.fm.intel.com with ESMTP; 22 Jun 2011 11:00:10 -0700
Message-ID: <4E022DA5.4020304@linux.intel.com>
Date: Wed, 22 Jun 2011 11:00:05 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1308639171.git.dvhart@linux.intel.com>
	<1308758811.20015.84.camel@rex>
In-Reply-To: <1308758811.20015.84.camel@rex>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH v2 0/3] beagleboard: machine conf, xorg, audio mixer
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
X-List-Received-Date: Wed, 22 Jun 2011 18:00:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06/22/2011 09:06 AM, Richard Purdie wrote:
> On Tue, 2011-06-21 at 00:19 -0700, Darren Hart wrote:
>> Refresh the meta-yocto components of the beagleboard BSP in support of the
>> recently sent linux-yocto updates for the kernel. The audio mixer patch is a
>> stop-gap that should be eventually replaced with a more generic implementation,
>> such as alsa-state - but it ensures the beagleboard boots with sane mixer
>> defaults. Also, switch to the xf86-lite xserver from kdrive. This keeps the
>> Yocto Project BSP more inline with the meta-texasinstruments BSP, and eliminates
>> some trouble with keyboard handling present with the kdrive server.
>>
>>
>> The following changes since commit 2163461ec94528ecf046a04edc5db3d2dd3a6b8b:
>>
>>   systemtap: remove non-core COMPATIBLE_MACHINES (2011-06-16 22:14:06 +0100)
>>
>> are available in the git repository at:
>>   git://git.pokylinux.org/poky-contrib dvhart/beagle
>>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/beagle
>>
>> Darren Hart (3):
>>   beagleboard: cleanup machine config commentary
>>   beagleboard: add basic audio mixer defaults
>>   beagleboard: switch to xserver-xf86-lite
> 
> I merged these but I did add a commit of my own following up on
> beagleboard-audio to make it machine specific (using COMPATIBLE_MACHINE)
> and also INHIBIT_DEFAULT_DEPS which just means it can build before the
> toolchain is built.

Ack - thanks RP, noted for future reference. Note that beagleboard-audio
has a limited lifespan, hopefully to be replaced soonish by alsa-state
and per-BSP config files.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

