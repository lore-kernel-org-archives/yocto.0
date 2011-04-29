Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 072784C804FF
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2011 23:04:33 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Apr 2011 21:04:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,284,1301900400"; d="scan'208";a="427558203"
Received: from unknown (HELO [10.255.13.24]) ([10.255.13.24])
	by azsmga001.ch.intel.com with ESMTP; 28 Apr 2011 21:04:29 -0700
Message-ID: <4DBA38CC.5080805@linux.intel.com>
Date: Thu, 28 Apr 2011 21:04:28 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4DB786E3.4080800@linux.intel.com>	<B23A229A-15A2-491F-BFE9-4C9BB5F681FB@dominion.thruhere.net>	<4DB82C1A.2030008@linux.intel.com>	<4DB8506B.9000709@intel.com>
	<1303938199.21461.21.camel@rex> <4DB89D1E.3010307@intel.com>
In-Reply-To: <4DB89D1E.3010307@intel.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 29 Apr 2011 04:04:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/27/2011 03:47 PM, Darren Hart wrote:
> On 04/27/2011 02:03 PM, Richard Purdie wrote:
>> On Wed, 2011-04-27 at 10:20 -0700, Elizabeth Flanagan wrote:
>>> A few notes, since I talked with Darren about this earlier.
>>>
>>> As one of the people in charge of maintaining the git repo, I would like to
>>> avoid having, as Darren suggested, a whole bunch of -contrib repos. However,
>>> maybe I'm missing something here, as I think basic git solves this issue:
>>>
>>> Use Case: Tomz has a branch of meta-intel that he has pushed to
>>> poky-contrib.git:tomz/foo. dvhart wants to look at it from his local repo:
> 
> I'm curious how many people reading this feel this is "basic git". Anyone
> willing to admit this was the first time they have seen a targeted branch
> fetch used to avoid a larger download? If everyone is comfortable with this,
> fine. If not, we should consider the impact of this type of access on our
> users.
> 
>>> git remote add poky-contrib ssh://git@git.pokylinux.org/poky-contrib.git
>>> git fetch poky-contrib tomz/foo:foo
>>> git checkout foo
> 
> My biggest complaint with this is the lack of self discovery from within git
> without doing a git remote update. Unless tomz is online at the time to tell me
> it's tomz/foo-bar, not tomz/foo_bar, then I have to go load the web browser and
> check which branches are available, or resort to downloading all the objects.


I just realized another major issue I have with this approach. It
doesn't just mean that I _can_ use git fetch to get a specific branch to
avoid pulling in a massive pile of objects I don't need, it means I have
to stop using "git remote update" entirely for everything else I do in
that repository and I have to fetch all the other branches manually. The
recommended approach here is VIRAL.

--
Darren


> 
> 
> I confess though, it still just feels wrong to keep unrelated source trees in
> the same repository.
> 
>>>
>>> The fetch allows a sparse checkout of *just* tomz's branch. No need to
>>> download all 75M of poky-contrib which is what you would do with "git remote
>>> update". Git remote update is the wrong way to do this and I'd like to avoid
>>> having to swap infrastructure around when it seems to me that this is just
>>> one of those "git being a pain to learn"
>>
>> Just to add to this discussion, with gitolite, it should be easy to
>> setup a yocto-contrib repo where each user "owns" the branches under
>> <keyname>/*. This means as ssh keys are added, they'd automatically get
>> their own "scratch" area. As Beth points out above, its perfectly
>> possible to checkout branches and manipulate them as long as you know
>> the commands. 
>>
>> This isn't a set of repos per user but when you think about this, how
>> often do we really need that? Yes, some people like Bruce have usecases
>> but I'm not sure they're typical and in those small number of cases I'm
>> sure we can come up with some generic testing/dev repos to assist too.
>> As soon as something grows to the point where the branch is problematic,
>> it deserves its own repo and it should be properly namespaced, not user
>> specific anyway.
> 
> 
> I don't understand wanting to keep multiple distinct source trees in a single
> git repositorie. If you have two different layers in there, each in its own
> branch, then you can only work with one of them at a time. The end-user then has
> to have multiple clones of the same repository in order to work with their two
> layers. And they will end up naming them something like:
> 
> yocto-contrib-layer-1.git
> yocto-contrib-layer-2.git
> 
> And keep them checked out to the appropriate set of branches... that seems like
> a lot of pain to impose on users to avoid setting up personal git repositories.
> Personally, I think I would revert to my kernel.org repositories rather than try
> and make this work.
> 
> Or - is my git-fu weak? Is there a better way to handle the above?
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

