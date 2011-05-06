Return-Path: <darren.hart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 546B14C8024E
	for <yocto@yoctoproject.org>; Fri,  6 May 2011 16:36:19 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 May 2011 14:36:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,328,1301900400"; d="scan'208";a="431973321"
Received: from unknown (HELO [10.255.12.35]) ([10.255.12.35])
	by azsmga001.ch.intel.com with ESMTP; 06 May 2011 14:36:16 -0700
Message-ID: <4DC469CC.2040209@intel.com>
Date: Fri, 06 May 2011 14:36:12 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <4DC45A26.3090900@intel.com>
In-Reply-To: <4DC45A26.3090900@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: Results of latest documentation audit, May 2011
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
X-List-Received-Date: Fri, 06 May 2011 21:36:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 05/06/2011 01:29 PM, Scott Garman wrote:
> Hello,
> 
> As a data point for where we stand in ensuring our packages are 
> producing documentation, I have some scripts which build all recipes 
> (using the output of bitbake -s, not world), and then check that a -doc 
> package is generated which is populated with files.
> 
> A summary of the results using yesterday's master are as follows:
> 
> 591 recipes in total
> 308 recipes are building documentation
> 283 recipes are not building documentation
> 
> 31 recipes did not build (and are counted as not building documentation 
> above).
> 
> The lists of recipes are attached to this email. We'd like to improve 
> the percentage of recipes that produce documentation (separated into 
> -doc packages, of course) for our next major release in October.
> 
> Our userspace recipe maintainers should look into setting aside some 
> time to know which of their recipes are in the "not building 
> documentation" list and work to improve them. A lot of this is likely to 
> be low-hanging fruit.
> 

I see "linux-*" in the list. What sort of documentation are we looking
for? The linux-image* packages in Ubuntu, for example, include a
changelog and a copyright.

Thanks,

--
Darren

> Thanks,
> 
> Scott
> 
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

