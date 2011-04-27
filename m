Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5A1D84C804D4
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2011 09:45:47 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Apr 2011 07:45:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,274,1301900400"; d="scan'208";a="915121509"
Received: from unknown (HELO [10.255.13.11]) ([10.255.13.11])
	by fmsmga001.fm.intel.com with ESMTP; 27 Apr 2011 07:45:46 -0700
Message-ID: <4DB82C1A.2030008@linux.intel.com>
Date: Wed, 27 Apr 2011 07:45:46 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <4DB786E3.4080800@linux.intel.com>
	<B23A229A-15A2-491F-BFE9-4C9BB5F681FB@dominion.thruhere.net>
In-Reply-To: <B23A229A-15A2-491F-BFE9-4C9BB5F681FB@dominion.thruhere.net>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 27 Apr 2011 14:45:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/27/2011 12:56 AM, Koen Kooi wrote:
> 
> Op 27 apr 2011, om 05:00 heeft Darren Hart het volgende geschreven:
> 
>> git.yoctoproject.org hosts a number of different repositories, some of
>> which host limited user contributions (such as poky-contrib). These
>> repositories are setup and administered by a yoctoproject.org system admin.
>>
>> As our developer base grows, the need for user creatable git trees also
>> grows. Eventually, *-contrib isn't going to scale, and neither will the
>> system admin. There are plenty of available places individuals can
>> create publicly accessible trees (github, kernel.org, or any number of
>> similar sites). However, I think it would be beneficial for at least
>> very active developers to be able to create and destroy trees on a whim,
>> without having to involve the system admin with each event.
>>
>> kernel.org provides a git web interface for user created trees. I'd like
>> to see something similar available at yoctoproject.org in order to
>> establish single place to go looking for "yocto developer trees". Users
>> would have to justify their request for a user account and agree to a
>> terms of use. This has served the Linux kernel community very well. I
>> think it could do the same for us.
>>
>> Note: I am not offering to setup such a service or even say that it's
>> possible with the current resources. I just wanted to throw the idea out
>> there and see if others have found a similar gap in the development
>> environment and if this idea would address that gap.
> 
> 
> Have you though about setting up a gitorious instance on git.yocto? 

I think that is a fantastic idea, it gets my vote.

gitorious++


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

