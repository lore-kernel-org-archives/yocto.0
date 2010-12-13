Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BDFC64C80050
	for <yocto@yoctoproject.org>; Sun, 12 Dec 2010 20:16:33 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Dec 2010 18:16:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,333,1288594800"; d="scan'208";a="686464977"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga001.jf.intel.com with ESMTP; 12 Dec 2010 18:16:33 -0800
Received: from [10.255.13.66] (10.255.13.66) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Sun, 12 Dec 2010 19:16:32 -0700
Message-ID: <4D0581FC.2030600@intel.com>
Date: Sun, 12 Dec 2010 18:16:28 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Ke, Liping" <liping.ke@intel.com>
References: <789F9655DD1B8F43B48D77C5D30659733104D391@shsmsx501.ccr.corp.intel.com>	
	<4D013F9C.2010404@intel.com> <1291988079.1554.939.camel@rex>
	<789F9655DD1B8F43B48D77C5D3065973312DC52B@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D3065973312DC52B@shsmsx501.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Add extra parameters for qemu script
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
X-List-Received-Date: Mon, 13 Dec 2010 02:16:34 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/2010 05:43 PM, Ke, Liping wrote:
>> I tend to feel that this approach is more flexible, and scales better
>>> than having to support each and every qemu option with our own script
>>> syntax. Is this acceptable, or should we continue to support our own
>>> custom options in addition to Criping's new approach?
>>
>> My gut feeling is that having some simplified way to trigger possibly
>> complex option combinations is still desirable but adding a way to pass
>> additional custom commandline is equally good. This gives us the
>> maximum
>> flexibility moving forwards but keeps the script easy to use?
>>
>
> Hi, Scott
>
> So the conclusion is that I should keep the old (serial nographic) option while
> adding the new "<-XXX -XXX -XXX>" option?
> OK. I will send out the modified patch to you for review later.

Yes, please respin the patch with those changes.

Thanks!

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

