Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB22F4C8101B
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 10:54:27 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Oct 2010 08:54:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,224,1286175600"; d="scan'208";a="619354918"
Received: from unknown (HELO [10.255.12.77]) ([10.255.12.77])
	by fmsmga002.fm.intel.com with ESMTP; 22 Oct 2010 08:54:27 -0700
Message-ID: <4CC1B3B2.4010403@linux.intel.com>
Date: Fri, 22 Oct 2010 08:54:26 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.11) Gecko/20101006 Thunderbird/3.1.5
MIME-Version: 1.0
To: Joshua Lock <joshua.lock@intel.com>
References: <4CC0C252.1020501@linux.intel.com>
	<1287732591.2208.3.camel@scimitar>
In-Reply-To: <1287732591.2208.3.camel@scimitar>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Media Network Demo: Black Sand and Netbook
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 15:54:27 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/22/2010 12:29 AM, Joshua Lock wrote:
> On Thu, 2010-10-21 at 15:44 -0700, Darren Hart wrote:
>> I build mediatomb and rygel live atom-pc images from today's poky/master
>> + meta-demo/master. I booted mediatomb on the BlackSand and rygel on the
>> netbook. I had to manually start the rygel renderer on the netbook. I
>> didn't see gupnp-av-cp on the rygel image as I expected and the
>> gupnp-universal-cp command failed to start on the netbook (via a sato
>> terminal) complaining about missing icons. If I tried to stabrt this
>> over an ssh - connection, the gupnp-universal-cp started fine (strange).
>
> Hmm, I've commits to fix both of those issues in meta-demo master since
> at least yesterday morning.b

I think my build just has some stale data that the various cleans 
haven't cleared. I'm going to try some clean builds today.


-- 
Darren Hart
Embedded Linux Kernel

