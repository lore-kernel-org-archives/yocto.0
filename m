Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D14A84C80A74
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 16:57:07 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Nov 2010 14:57:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,226,1288594800"; d="scan'208";a="679249211"
Received: from doubt.jf.intel.com (HELO [10.7.199.159]) ([10.7.199.159])
	by orsmga001.jf.intel.com with ESMTP; 19 Nov 2010 14:57:07 -0800
Message-ID: <4CE700C4.3070403@linux.intel.com>
Date: Fri, 19 Nov 2010 14:57:08 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Joshua Lock <joshua.lock@intel.com>
References: <1290083764.2487.24.camel@scimitar>	<B27EBC40D200ED48A3F4CC2EBEABAE0B25BC73A014@orsmsx501.amr.corp.intel.com>
	<1290170323.9343.8.camel@scimitar>
In-Reply-To: <1290170323.9343.8.camel@scimitar>
Cc: yocto@yoctoproject.org
Subject: Re: Documenting Poky dependencies
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
X-List-Received-Date: Fri, 19 Nov 2010 22:57:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/2010 04:38 AM, Joshua Lock wrote:
> On Thu, 2010-11-18 at 12:54 -0800, Stewart, David C wrote:
>> Thanks for doing this!
>>
>> Some ScottR ARs below.
>>
>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>> bounces@yoctoproject.org] On Behalf Of Joshua Lock
>>> Sent: Thursday, November 18, 2010 4:36 AM
>>>
>>> Hi all,
>>>
>>> I've been thinking about the issue of documenting Poky's dependencies in
>>> the handbook.
>>> At the moment the handbook includes a list of required packages and then
>>> explicitly lists commands to install those packages on Ubuntu.
>>>
>>> What I'd like to propose is that we list the required dependencies in
>>> the handbook and then link to a wiki page where we can list explicit
>>> instructions for various distributions.
>>>
>>> This allows us to document the process for as many distributions as
>>> possible without cluttering the handbook. An alternative would be to add
>>> this to an appendix but I quite like the idea of people being able to
>>> edit and add to this information without having to use git.

That makes sense, although keeping current Ubuntu and Fedora doesn't 
take much space and saves some large percentage (90%?) of our userbase 
from having to follow one-more-link to get the required steps.

I'd also like to see the sanity checker do a better job at listing 
package names rather than command names in a format that can be copy and 
pasted into an aptitude or yum install command. If done right, this 
would basically eliminate the need for any explicit list in the 
documentation.

-- 
Darren Hart
Yocto Linux Kernel

