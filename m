Return-Path: <darren.hart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC0414C80578
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2011 12:07:18 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Apr 2011 10:07:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,281,1301900400"; d="scan'208";a="427242046"
Received: from unknown (HELO [10.255.13.11]) ([10.255.13.11])
	by azsmga001.ch.intel.com with ESMTP; 28 Apr 2011 10:07:18 -0700
Message-ID: <4DB99EBD.8040207@intel.com>
Date: Thu, 28 Apr 2011 10:07:09 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4DB786E3.4080800@linux.intel.com>	
	<B23A229A-15A2-491F-BFE9-4C9BB5F681FB@dominion.thruhere.net>	
	<4DB82C1A.2030008@linux.intel.com>	<4DB8506B.9000709@intel.com>	
	<1303938199.21461.21.camel@rex> <4DB89D1E.3010307@intel.com>	
	<4DB8BBDF.6070503@windriver.com> <1303979316.21461.29.camel@rex>
In-Reply-To: <1303979316.21461.29.camel@rex>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 28 Apr 2011 17:07:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/28/2011 01:28 AM, Richard Purdie wrote:
> On Wed, 2011-04-27 at 20:59 -0400, Bruce Ashfield wrote:
>> On 11-04-27 6:47 PM, Darren Hart wrote:
>>> I don't understand wanting to keep multiple distinct source trees in a single
>>> git repositorie. If you have two different layers in there, each in its own
>>> branch, then you can only work with one of them at a time. The end-user then has
>>> to have multiple clones of the same repository in order to work with their two
>>> layers. And they will end up naming them something like:
>>>
>>> yocto-contrib-layer-1.git
>>> yocto-contrib-layer-2.git
>>
>> This is what I was wondering as well. I had my meta-kernel-dev as
>> a branch on poky-extras and ran into exactly this problem. Either
>> have two clones, or get it into master. Master was the choice, since
>> the other seemed clunky.
>>
>> Maybe I'm misunderstanding as well, but sparse fetch or not (and
>> yes I've done/used it), logically I like things that are distinct
>> source trees to be separate repos. Maybe it's a kernel-guy thing ? :)
> 
> I think there are three elements to this:
> 
> a) People do like the logical separation that a repo gives them and 
>    find it easiest to think in those terms.
> b) Most people are used to single relatively monolithic repos such as 
>    the kernel. People like myself who have used svn with multiple 
>    projects contained within like matchbox or the OpenedHand "misc" svn 
>    repo or the BSD projects approach to source control are probably in 
>    the minority.
> c) The git tooling and all the examples out there are geared up to 
>    single repos. git is very much a tool where you need to think as its 
>    authors do.


Agreed.


> Some of this can be addressed with clear example documentation about how
> to use git in this way.
> 
> Partly, these proposals are also working within the constraints of the
> git server solution we have too. Are we really in such a bad position
> that we need to change all the server setup over this or are there ways
> we can work within the existing system (or even extend gitolite)?


I don't know what gitolite is capable of. I would really like to be able
to create and destroy my own repositories in a central location with
other Yocto developers.

However, this doesn't block me from moving forward. I can use kernel.org
or dvhart.com to do this for the time being and make requests of the
admins when I have a repository that looks to have some staying power.
I'll have to time this transition appropriately so that I don't have to
ask too many people to migrate to the new URL, but that would be true of
a personal repository to official repository move as well.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

