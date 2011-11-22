Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E101EE00727
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2011 14:50:00 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2011 14:50:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,556,1315206000"; d="scan'208";a="88299301"
Received: from unknown (HELO [10.255.12.38]) ([10.255.12.38])
	by fmsmga001.fm.intel.com with ESMTP; 22 Nov 2011 14:50:00 -0800
Message-ID: <4ECC2718.50008@linux.intel.com>
Date: Tue, 22 Nov 2011 14:50:00 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4ECAF89E.1030505@mindchasers.com>
In-Reply-To: <4ECAF89E.1030505@mindchasers.com>
Subject: Re: Atom netbook recommendation?
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
X-List-Received-Date: Tue, 22 Nov 2011 22:50:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Bob,

On 21/11/11 17:19, Bob Cochran wrote:
> Hello,
>
> We're going to bring an Atom based netbook in house for some additional
> yocto testing. I would greatly appreciate any recommendations for ones
> that behave well with the yocto project & are solid in general. Also,
> letting me know about any netbooks to avoid would also be appreciated.

I assume the plan is to build for the netbooks, not on the netbooks? :-)

I've run Poky built images on a bunch of older netbooks I have lying 
around by Samsung, Acer and Asus.

I think you should be fine with pretty much any netbook you can get but 
I strongly recommend you avoid anything which requires non-open drivers 
- that way you have a better chance of the stock kernel just working.

Just last week I built an image for my Samsung NC10 and the stock kernel 
worked fine.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

