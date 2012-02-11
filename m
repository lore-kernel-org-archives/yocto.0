Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2578E003E3
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2012 16:14:49 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Feb 2012 16:14:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="116485301"
Received: from unknown (HELO envy.home) ([10.255.14.215])
	by fmsmga001.fm.intel.com with ESMTP; 10 Feb 2012 16:14:48 -0800
Message-ID: <4F35B2D5.30601@linux.intel.com>
Date: Fri, 10 Feb 2012 16:14:13 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
	<4F2AE4E8.3080809@linux.intel.com>
	<4F2AFBF7.8010307@linux.intel.com> <1405123.nGGmjXUAYO@helios>
	<4F306968.9000902@linux.intel.com>
	<20120207070631.GA3893@jama.jama.net>
In-Reply-To: <20120207070631.GA3893@jama.jama.net>
X-Enigmail-Version: 1.3.5
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: [pull-sys940x 2/4] ranpwd: Add ranpwd recipe
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
X-List-Received-Date: Sat, 11 Feb 2012 00:14:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 02/06/2012 11:06 PM, Martin Jansa wrote:
> On Mon, Feb 06, 2012 at 03:59:36PM -0800, Joshua Lock wrote:
>> On 06/02/12 08:17, Paul Eggleton wrote:
>>> On Thursday 02 February 2012 13:11:19 Joshua Lock wrote:
>>>> Apologies. I'm wrong here. It was PRIORITY which we agreed to drop.
>>>
>>> It's worth noting however, at the same time PRIORITY removal was discussed it
>>> was acknowledged that SECTION was questionable. Logical grouping of
>>> recipes/packages is a useful thing but coming up with groupings that are
>>> meaningful in all contexts is hard :(
>>
>> Glad to know my recollection isn't wildly off the mark.
>>
>> I noticed that there are similar, yet different, SECTION values being 
>> used. If we opt to keep SECTION I wonder if we should try and 
>> standardise/sanitise it?
> 
> If there is standardised SECTION variable why not use
> recipes-${SECTION}/foo_1.0.bb as we already have couple of recipe-*
> directories and it's sometimes hard to decide to which directory
> something belongs.
> 
> Or other way around, standartise recipes-* directories and let bitbake
> decide SECTION from it (like it does for PV and PN).

Brilliant.

--
Darren

> 
> Cheers,
> 
>>
>> Debian's sections seem like reasonable inspiration? 
>> http://packages.debian.org/stable/
>>
>> I think SECTION is useful for tools like Hob and Narcissus, so I'm in 
>> favour of keeping them.
>>
>> Cheers,
>> Joshua
>> -- 
>> Joshua Lock
>>          Yocto Project "Johannes factotum"
>>          Intel Open Source Technology Centre
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

