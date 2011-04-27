Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CB0704C80578
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2011 23:53:35 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Apr 2011 21:53:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,272,1301900400"; d="scan'208";a="684495042"
Received: from unknown (HELO [10.255.12.235]) ([10.255.12.235])
	by fmsmga002.fm.intel.com with ESMTP; 26 Apr 2011 21:53:35 -0700
Message-ID: <4DB7A14B.8010401@linux.intel.com>
Date: Tue, 26 Apr 2011 21:53:31 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <4DB786E3.4080800@linux.intel.com>
	<1303879148.2593.231.camel@elmorro>
In-Reply-To: <1303879148.2593.231.camel@elmorro>
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
X-List-Received-Date: Wed, 27 Apr 2011 04:53:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 04/26/2011 09:39 PM, Tom Zanussi wrote:
> On Tue, 2011-04-26 at 20:00 -0700, Darren Hart wrote:
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
>>
>> Thoughts?
>>
> 
> My thinking (I guess - I didn't really think that much about it at the
> time) when requesting the meta-intel-contrib repo was that repos that
> could expect to get continual contributions from many people would
> benefit from having a corresponding -contrib version - so far that's
> poky-contrib, linux-yocto-*.contrib, and openembedded-core-contrib.  To
> me bsp repos fit the same criteria, but I'm not the one who has to
> manage it all, so I understand the desire to avoid the proliferation.
> 
> Seems like the personal repos idea would mitigate the problem...
> 

I think these are two distinct but overlapping problems:

1) place to share on the common core (poky, linux-yocto*)
2) place to share new stuff that may not amount to anything

For #1, the *-contrib git repositories make sense to me. It provides a
single repository that a lot of people use and reduces the git remote
management for everyone. They are therefor worth the added complexity
they add to the yoctoproject git namespace and on the system administrator.

For #2, people need to be able to prepare a tree and poke someone in IRC
with a git URL to try out. Many of these are likely to be short lived,
and to only have a single contributor. As such, they are not worth
polluting the yoctoproject git namespace, nor should we burden our
system admin with setting them up and tearing them down. Indeed, they
are likely to linger, continuing to pollute the namespace long after
they are dead trees simply due to the overhead of removing them!

As for BSP's... these don't seem to have a lot of contributors - at
least from what I have seen. Typically 1 or 2 people. For that scenario,
I see two processes as options:

a) add user branches:
  master
  bernard
  dvhart/topicA
  dvhart/topicB
  tzanussi/topicA
  tzanussi/topicD

b) use the personal repositories described in #2 above

While it is possible to use poky-contrib for things like this, I think
it is non-intuitive to use a repository as a remote to a repository that
isn't based off the remote repository (like BSP layers which aren't part
of poky). For most users, this will result in pulling down MBs of
unnecessary git objects. Yes, you can use --reference when cloning. Yes,
you can use fancy fetch commands. No, nobody will.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

