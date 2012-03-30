Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40D34E0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 16:53:39 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Mar 2012 16:53:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="148044609"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by fmsmga002.fm.intel.com with ESMTP; 30 Mar 2012 16:53:38 -0700
Message-ID: <4F764759.1070801@linux.intel.com>
Date: Fri, 30 Mar 2012 16:52:57 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
In-Reply-To: <1333141865.18082.120.camel@ted>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Fri, 30 Mar 2012 23:53:39 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/30/2012 02:11 PM, Richard Purdie wrote:
> On Fri, 2012-03-30 at 15:18 -0500, Mark Hatle wrote:
>> On 3/30/12 2:33 PM, Koen Kooi wrote:
>>>
>>> Op 30 mrt. 2012, om 12:26 heeft Mark Hatle het volgende geschreven:
>>>
>>>> On 3/30/12 1:44 PM, Koen Kooi wrote:
>>>>> Hi,
>>>>>
>>>>> RP said I should raise this on the yocto lists, so here it is:
>>>>>
>>>>> The Angstrom core team would like to move angstrom under the yocto banner so
>>>>> we can formally claim to be 'yocto'.
> 
> In the interests of clarity, as Tracey will tell you there is no
> "Yocto" (which is an SI prefix), only the "Yocto Project" :). I know
> some of us have bad habits but since we're trying to ensure we're all
> consistent, this is worth highlighting.
> 
>>>> For it to be on the yocto project web site, it just need to have
>> the layers hosted on the git.yoctoproject.org.  But there is no
>> "yocto".. It's the Yocto Project, Poky, or specific git repositories.
>> There is no reason we can't have an angstrom repository.  It could be
>> in a similar format to the Poky repository (everything combined for a
>> single download), or it could be a layer [or layers] that sit on top
>> of Poky.
>>>
>>> Why on top of poky? I do not want poky, nor do my customers, oe-core is what
>>> we need and want. This proposal to move angstrom under yocto is targeted at
>>> eliminating 'poky' from the stack while still being able to say 'yocto'.
>>
>> Poky is a repository made up of bitbake + oe-core + meta-yocto, as well as a 
>> distribution definition (in meta-yocto).  I assume angstrom has it's own 
>> distribution definition.
>>
>> So my question is why NOT on top of Poky (the repository, not distribution 
>> definition)?
> 
> FWIW I don't think it has to be "on top of Poky". 
> 
> Basically the question is whether you'd include the meta-yocto layer or
> not. I know that doesn't have its own repository yet (but that's purely
> a time thing). I have no strong feelings either way about the inclusion
> of that layer. Its purposefully not got that much in it (one distro
> definition and some hardware/BSP addons).
> 
> Also, Angstrom has a different repository format in the way the user
> fetches and interacts with layers. I don't think Yocto mandates any
> requirement in that area, or that it needs to.
> 
>>> We both know that saying it is 'yocto' is wrong and misleading, but that's
>>> what users are asking for and yocto advocates seem to push.
> 
> Try saying this in earshot of Tracey ;-). We are trying to do a better
> job of saying "Yocto Project", please help us!
> 
>>  Just watch the ELC
>>> videos for yocto related presentations, 'yocto' and 'poky' are used
>>> interchangeably in most of them.
>>>
>>> A 'reference' should be just that, a reference, not a mandated part.
>>
>> It's hard to call something Yocto Project based unless it used something from 
>> the Yocto Project.  meta-yocto being on of those components.
> 
> The criteria I see for being part of the Yocto Project are:
> 
> a) Sharing the project's objectives (e.g. making embedded Liunx 
>    development easier)
> b) Willing to be part of the Yocto Project's governance structure
> c) Bringing something new/beneficial to the Yocto Project (often with 
>    mutual benefit)
> d) Have some kind of sustainable resource plan
> 

I'll take a couple careful steps into this arena to offer just one more
possible criteria.

One of the touted goals/advantages/benefits of using the Yocto Project
is to work with a vetted set of sources that are known to all work
together, having had some level of QA performed. This is something the
poky repository accomplishes by bringing specifc versions of bitbake and
oe-core together (along with some other tooling). At some point, this
gets rolled up into a release of the Yocto Project: 0.9, 1.1, and soon
1.2. It's common for someone to refer to these release points as the
base for their BSP.

It therefor seems reasonable to me for a distribution definition (which
is how I think of Angstrom - but feel free to correct me Koen) to make a
statement like "This release of Angstrom builds with the Yocto Project
X.Y release."

I believe this is the sort of language that most outside developers
would immediately understand and associate with being part of the Yocto
Project.

--
Darren

> Note that it I don't list "must use meta-yocto" there since I don't
> think that is true.
> 
> I would want to be clear about where I'd see Angstrom positioned within
> the Yocto Project which would be as a reference binary distribution.
> 
> This is in contrast with Poky which would remain as the getting started
> and reference testing configuration (obviously building from
> source/sstate in contrast to Angstrom).
> 
> I do have some questions related to some of the above points but I'm
> going to hold off those for now and see where this discussion goes. I'd
> also mention that I'd like to see what advice the advisory board has on
> this topic too.
> 
>> There is enough confusion about yocto vs poky vs..  It's slowly being reconciled 
>> and defined.. but it's a slow process for all of us.
> 
> Right, I think we are getting to grips with this slowly and there was a
> good discussion about this on the meta-ti list recently.
> 
> Cheers,
> 
> Richard
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

