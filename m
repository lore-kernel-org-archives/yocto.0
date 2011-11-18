Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 143DEE005A0
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2011 12:12:11 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Nov 2011 12:12:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="77441319"
Received: from unknown (HELO [10.7.199.102]) ([10.7.199.102])
	by orsmga002.jf.intel.com with ESMTP; 18 Nov 2011 12:12:10 -0800
Message-ID: <4EC6BC19.60501@linux.intel.com>
Date: Fri, 18 Nov 2011 12:12:09 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+YB3ray8bX94Y1subz+7CQYUzRJWjHS2CQX_W2boA2BV7A5ZA@mail.gmail.com>
	<94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com>
	<4EC6280B.1010308@communistcode.co.uk>
In-Reply-To: <4EC6280B.1010308@communistcode.co.uk>
Subject: Re: Yocto usability questions
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
X-List-Received-Date: Fri, 18 Nov 2011 20:12:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 18/11/11 01:40, Jack Mitchell wrote:
> On 17/11/2011 21:38, Chris Tapp wrote:
>> On 16 Nov 2011, at 22:07, Jeff Osier-Mixon wrote:
>>
>>> Mark & everyone else listening:
>>>
>>> Would you say that (1) the need for a recipe and (2) the requirement
>>> to cross-compile are two of the most major usability or
>>> learning-curve disadvantages of working with the Yocto Project (and
>>> oe-core)? What would be a third disadvantage from a usability
>>> standpoint?
>>>
>>> Another way to put it: if you could change three things about the
>>> Yocto Project to make it more approachable for someone who has never
>>> used it before, what would they be?
>>
>> As another very experienced embedded systems developer who is
>> relatively new to embedded linux I would say that documentation and
>> worked examples are what I would really be after.
>>
> I am a fairly in-experienced embedded systems developer (fresh graduate,
> 6 months real work exp) and have used Linux for a few years now and I
> concur that written examples, tutorials if you will, would be a great idea.
>> It can be really frustrating when you can't get something going
>> because you don't understand the phrases / terminology that's being
>> used and it isn't readily available via the documentation. I've seen
>> quite a few posts on here relating to the documentation and it does
>> look like good progress is being made. As someone said earlier in this
>> thread, it would be good it run stuff through new (or relatively new)
>> adopters to see if they can get the examples to work without a fight.
>> I'm more than happy to help (and learn!).
> It is very frustrating when you come to an issue that isn't documented,
> however I have found the IRC an invaluable resource as well as this
> mailing list. If documentation was to become more extensive I feel the
> categories should be defined further and split into more documents.
>>
>> I to started with OE and failed to get a build to complete. Yocto got
>> me there first time, so it is already much better for a novice 'baker' !
>>
>> Some worked examples for 'how to do xxx' would also be nice. E.g.

I agree. We've oft talked about a Yocto Cookbook style document/wiki
page but nobody has yet gotten around to creating one.

The wiki is available and in an ideal world people would document things
as they've discovered them.

>>
>> 1) How do I configure the kernel ?
> This has been covered fairly extensively but a full worked example
> wouldn't go amiss.

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#changing-the-kernel-configuration
?


>> 2) What do I need to do when I change my recipe to ensure that the
>> changes make it in to the image ?
> I don't know how to properly do this so +1
>> 3) How do I change and add startup scripts ?
> I read a lot about startup scripts to figure out how to do this the
> correct way - although it is more generic linux knowledge I believe an
> easy introduction to this with further reading wouldn't go amiss.

Nice cookbook candidate.

>> 4) How do I add data files to the image ?
> I would image these to go in with the software you are developing..
> however the fact I don't have a good answer may mean it needs addressing?

Cookbook candidate. Short answer - create a recipe which copies the
files over at do_install.
Long answer, I'd like to develop an inheritable bbclass to make this a
little simpler.

>> 5) How do I make sure dependencies (e.g. libraries) are included in
>> the image ? i.e. what do DEPENDS, RDEPENDS, etc. do.
> See 8

http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-variables-glos

>> 6) How can I use a layer to hold my project files ?
> See 8

http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#usingpoky-changes

>> 7) Do I need to delete tmp/ and rebuild to ensure I've got a valid
>> project build configured ? (i.e. it doesn't rely on staged items that
>> don't build when I bitbake MyProject).
> Would be very good to get an example of how to ensure your build process
> is stable and will work every time from scratch.

I agree that this should be documented, short answer - no (you shouldn't
have to delete tmp/).

>> 8) How do I make my existing autobuild project in to a recipe ?
> *THIS.* I currently have no idea how to port my autobuild project coded
> using the Eclipse plugin to a recipe structure, couple this with 5 and 6
> and it would make a fantastic from 'start to finish' style manual.

http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#usingpoky-extend-addpkg-autotools

>> 9) How do I set / change the root password ?
> This seems fairly minor, is there a section in the wiki which could be
> devoted to things like this, rather than the faff of creating a new pdf
> etc.. this would also allow for the community to add tricks and tips in
> an easily accessible manner.

Cookbook candidate

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

