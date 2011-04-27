Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A3A84C80188
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2011 13:29:13 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Apr 2011 11:29:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,275,1301900400"; d="scan'208";a="634936496"
Received: from unknown (HELO [10.255.13.94]) ([10.255.13.94])
	by orsmga002.jf.intel.com with ESMTP; 27 Apr 2011 11:29:13 -0700
Message-ID: <4DB86078.5060206@intel.com>
Date: Wed, 27 Apr 2011 11:29:12 -0700
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4DB786E3.4080800@linux.intel.com>	<B23A229A-15A2-491F-BFE9-4C9BB5F681FB@dominion.thruhere.net>	<4DB82C1A.2030008@linux.intel.com>
	<4DB8506B.9000709@intel.com> <1303928099.2242.2.camel@scimitar>
In-Reply-To: <1303928099.2242.2.camel@scimitar>
Subject: Re: Personal git repositories
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
X-List-Received-Date: Wed, 27 Apr 2011 18:29:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


On 04/27/2011 11:14 AM, Joshua Lock wrote:
> On Wed, 2011-04-27 at 10:20 -0700, Elizabeth Flanagan wrote:
>> A few notes, since I talked with Darren about this earlier.
>>
>> As one of the people in charge of maintaining the git repo, I would like to avoid having, as Darren suggested, a whole
>> bunch of -contrib repos. However, maybe I'm missing something here, as I think basic git solves this issue:
>
> I don't agree. I have a few sparse layers and some other code that I am
> not sharing because they need repositories *somewhere*.

Different use case from what I'm seeing as the general concern, however, I would say that if someone has code that 
doesn't belong in oe-core but it's standalone and useful to the project, then you would put in a request to have a new 
repo added. And maybe that's a good argument for new infrastructure if the current process doesn't scale well (which I 
don't have data that would come to any conclusion like that).

> Having said that some of these recipes may be useful to others yet
> definitely don't belong in oe-core. What do I do with them? The
> mechanism Darren describes seems like it would work for my use case.

Ask me to create a repo. If I was getting a flood of repo creation requests or there was a use case that was compelling, 
I'd be on board with this in a heartbeat, but to me, it just seems like it's better served by people understanding the 
process better.

The current process is to send me an email (ccing RP), saying what repo you want, why you need it and then we go from 
there and create it, if it makes sense. I think I'm specifically worried less about your use case (I get *maybe* a repo 
request a month) than I am about people justifying an infrastructure change in order to have a whole bunch of contrib 
repos. That is better served by sparse fetches of needed branches from poky-contrib.


---------------
Elizabeth Flanagan
Yocto Project
Release Engineer

