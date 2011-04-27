Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 38BE54C80506
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2011 12:20:45 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Apr 2011 10:20:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,275,1301900400"; d="scan'208";a="426532069"
Received: from unknown (HELO [10.255.13.94]) ([10.255.13.94])
	by azsmga001.ch.intel.com with ESMTP; 27 Apr 2011 10:20:44 -0700
Message-ID: <4DB8506B.9000709@intel.com>
Date: Wed, 27 Apr 2011 10:20:43 -0700
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4DB786E3.4080800@linux.intel.com>	<B23A229A-15A2-491F-BFE9-4C9BB5F681FB@dominion.thruhere.net>
	<4DB82C1A.2030008@linux.intel.com>
In-Reply-To: <4DB82C1A.2030008@linux.intel.com>
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
X-List-Received-Date: Wed, 27 Apr 2011 17:20:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

A few notes, since I talked with Darren about this earlier.

As one of the people in charge of maintaining the git repo, I would like to avoid having, as Darren suggested, a whole 
bunch of -contrib repos. However, maybe I'm missing something here, as I think basic git solves this issue:

Use Case: Tomz has a branch of meta-intel that he has pushed to poky-contrib.git:tomz/foo. dvhart wants to look at it 
from his local repo:

git remote add poky-contrib ssh://git@git.pokylinux.org/poky-contrib.git
git fetch poky-contrib tomz/foo:foo
git checkout foo

The fetch allows a sparse checkout of *just* tomz's branch. No need to download all 75M of poky-contrib which is what 
you would do with "git remote update". Git remote update is the wrong way to do this and I'd like to avoid having to 
swap infrastructure around when it seems to me that this is just one of those "git being a pain to learn"

-b

On 04/27/2011 07:45 AM, Darren Hart wrote:
>
>
> On 04/27/2011 12:56 AM, Koen Kooi wrote:
>>
>> Op 27 apr 2011, om 05:00 heeft Darren Hart het volgende geschreven:
>>
>>> git.yoctoproject.org hosts a number of different repositories, some of
>>> which host limited user contributions (such as poky-contrib). These
>>> repositories are setup and administered by a yoctoproject.org system admin.
>>>
>>> As our developer base grows, the need for user creatable git trees also
>>> grows. Eventually, *-contrib isn't going to scale, and neither will the
>>> system admin. There are plenty of available places individuals can
>>> create publicly accessible trees (github, kernel.org, or any number of
>>> similar sites). However, I think it would be beneficial for at least
>>> very active developers to be able to create and destroy trees on a whim,
>>> without having to involve the system admin with each event.
>>>
>>> kernel.org provides a git web interface for user created trees. I'd like
>>> to see something similar available at yoctoproject.org in order to
>>> establish single place to go looking for "yocto developer trees". Users
>>> would have to justify their request for a user account and agree to a
>>> terms of use. This has served the Linux kernel community very well. I
>>> think it could do the same for us.
>>>
>>> Note: I am not offering to setup such a service or even say that it's
>>> possible with the current resources. I just wanted to throw the idea out
>>> there and see if others have found a similar gap in the development
>>> environment and if this idea would address that gap.
>>
>>
>> Have you though about setting up a gitorious instance on git.yocto?
>
> I think that is a fantastic idea, it gets my vote.
>
> gitorious++
>
>

-- 
---------------
Elizabeth Flanagan
Yocto Project
Release Engineer

