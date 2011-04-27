Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3E1514C80506
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2011 23:56:11 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Apr 2011 21:56:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,272,1301900400"; d="scan'208";a="684495940"
Received: from unknown (HELO [10.255.12.235]) ([10.255.12.235])
	by fmsmga002.fm.intel.com with ESMTP; 26 Apr 2011 21:56:10 -0700
Message-ID: <4DB7A1E7.3000906@linux.intel.com>
Date: Tue, 26 Apr 2011 21:56:07 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <4DB786E3.4080800@linux.intel.com> <4DB78C10.1030503@windriver.com>
	<4DB79412.6080507@linux.intel.com> <4DB79D9E.8030103@intel.com>
In-Reply-To: <4DB79D9E.8030103@intel.com>
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
X-List-Received-Date: Wed, 27 Apr 2011 04:56:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/26/2011 09:37 PM, Saul Wold wrote:
> On 04/26/2011 08:57 PM, Darren Hart wrote:
>>
>>
>> On 04/26/2011 08:22 PM, Bruce Ashfield wrote:
>>> On 11-04-26 11:00 PM, Darren Hart wrote:
>>>> git.yoctoproject.org hosts a number of different repositories, some of
>>>> which host limited user contributions (such as poky-contrib). These
>>>> repositories are setup and administered by a yoctoproject.org system admin.
>>>>
>>>> As our developer base grows, the need for user creatable git trees also
>>>> grows. Eventually, *-contrib isn't going to scale, and neither will the
>>>> system admin. There are plenty of available places individuals can
>>>> create publicly accessible trees (github, kernel.org, or any number of
>>>> similar sites). However, I think it would be beneficial for at least
>>>> very active developers to be able to create and destroy trees on a whim,
>>>> without having to involve the system admin with each event.
>>>>
>>>> kernel.org provides a git web interface for user created trees. I'd like
>>>> to see something similar available at yoctoproject.org in order to
>>>> establish single place to go looking for "yocto developer trees". Users
>>>> would have to justify their request for a user account and agree to a
>>>> terms of use. This has served the Linux kernel community very well. I
>>>> think it could do the same for us.
>>>>
>>>> Note: I am not offering to setup such a service or even say that it's
>>>> possible with the current resources. I just wanted to throw the idea out
>>>> there and see if others have found a similar gap in the development
>>>> environment and if this idea would address that gap.
>>>>
>>>> Thoughts?
>>>
>>> Only a 2nd vote for something like this. I've had a need for
>>> this on several occasions, and often I'd like to get something out, and
>>> then slot it into a more "official" location later. My current
>>> location for the 2.6.39-yocto kernel on my kernel.org account sort
>>> of says it all :)
>>
>> Right. I just pushed meta-boottime to my kernel.org account as well. I'd
>> much rather have that be:
>>
>> git://git.yoctoproject.org/dvhart/meta-boottime.git
>>
>>
> I also think this is a good idea, but can we wait until we get things 
> transitioned to the new server and stabilized before adding new things 
> right now?

I believe so. Bruce and I can use kernel.org for now. Tom and I can use
personal branches in meta-intel. But I'd like to see a solution here
before we see widespread use of kernel.org and github to manage git
trees as it will be collectively a lot more work to move people to the
new infrastructure - and we'll lose some mindshare in the meantime.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

