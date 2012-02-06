Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA19AE0030B
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 15:59:36 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Feb 2012 15:59:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="114827378"
Received: from unknown (HELO [10.255.14.105]) ([10.255.14.105])
	by fmsmga001.fm.intel.com with ESMTP; 06 Feb 2012 15:59:36 -0800
Message-ID: <4F306968.9000902@linux.intel.com>
Date: Mon, 06 Feb 2012 15:59:36 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
	<4F2AE4E8.3080809@linux.intel.com>
	<4F2AFBF7.8010307@linux.intel.com> <1405123.nGGmjXUAYO@helios>
In-Reply-To: <1405123.nGGmjXUAYO@helios>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 06 Feb 2012 23:59:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/02/12 08:17, Paul Eggleton wrote:
> On Thursday 02 February 2012 13:11:19 Joshua Lock wrote:
>> Apologies. I'm wrong here. It was PRIORITY which we agreed to drop.
>
> It's worth noting however, at the same time PRIORITY removal was discussed it
> was acknowledged that SECTION was questionable. Logical grouping of
> recipes/packages is a useful thing but coming up with groupings that are
> meaningful in all contexts is hard :(

Glad to know my recollection isn't wildly off the mark.

I noticed that there are similar, yet different, SECTION values being 
used. If we opt to keep SECTION I wonder if we should try and 
standardise/sanitise it?

Debian's sections seem like reasonable inspiration? 
http://packages.debian.org/stable/

I think SECTION is useful for tools like Hob and Narcissus, so I'm in 
favour of keeping them.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

