Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6504E00746
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 00:17:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Apr 2012 00:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="128173842"
Received: from unknown (HELO envy.home) ([10.255.12.222])
	by orsmga001.jf.intel.com with ESMTP; 12 Apr 2012 00:17:48 -0700
Message-ID: <4F867FEB.1060301@linux.intel.com>
Date: Thu, 12 Apr 2012 00:10:35 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Bob Cochran <yocto@mindchasers.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com> <4F865C88.3080102@mindchasers.com>
In-Reply-To: <4F865C88.3080102@mindchasers.com>
X-Enigmail-Version: 1.4
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build time data
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
X-List-Received-Date: Thu, 12 Apr 2012 07:17:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/11/2012 09:39 PM, Bob Cochran wrote:
> On 04/11/2012 08:30 PM, Darren Hart wrote:
>> SSDs are one way to
>> go, but we've been known to chew through them and they aren't priced as
>> consumables.
> 
> Hi Darren,
> 
> Could you please elaborate on "been known to chew through them"?
> 
> Are you running into an upper limit on write / erase cycles?  Are you 
> encountering hard (or soft) failures?

Some have reported early physical disk failure. Due to the cost of SSDs,
not a lot of people seem to be trying it out. I *believe* the current
generation of SSDs would perform admirably, but I haven't tested that. I
know Deny builds with SSDs, perhaps he would care to comment?


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

