Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB81CE00948; Wed,  2 Mar 2016 19:59:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37C4FE00920
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 19:59:41 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.125])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1abKPd-0006fK-Ko; Thu, 03 Mar 2016 03:58:55 +0000
To: "Radzykewycz, T (Radzy)" <radzy@windriver.com>
References: <33006C99F5A5194A9B7A7715DFA3E383EB84972B@ALA-MBA.corp.ad.wrs.com>
From: Philip Tricca <flihp@twobit.us>
Message-ID: <56D7B6B4.7060401@twobit.us>
Date: Wed, 2 Mar 2016 19:59:48 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.6.0
MIME-Version: 1.0
In-Reply-To: <33006C99F5A5194A9B7A7715DFA3E383EB84972B@ALA-MBA.corp.ad.wrs.com>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux] git recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Mar 2016 03:59:43 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 03/02/2016 07:47 AM, Radzykewycz, T (Radzy) wrote:
> ________________________________________
> On 3/1/16 21:40, Philip Tricca wrote:
>> On 03/01/2016 10:30 AM, Joe MacDonald wrote:
>>> [Re: [yocto] [meta-selinux] git recipes] On 16.02.29 (Mon 08:06) Mark Hatle wrote:
>>>
>>>> On 2/27/16 10:23 PM, Philip Tricca wrote:
>>>>> Adding a sensible subject.
>>>>
>>>> Sorry couldn't reply when I saw this when you first sent it.  Corporate email
>>>> server went down for those of us who DON'T use outlook.. argh..
>>>>
>>>> Anyway..
>>>>
>>>> What I'm generally used to in the Yocto Project work is that the 'git' version
>>>> picks a specific git snapshot and makes it a quick operation for someone to
>>>> arbitrarily change that snapshot by adjusting the SRCREV.
>>>
>>> This has been the approach I'd always tried to take with _git recipes as
>>> well and it tends to work very well for ones that are either the only or
>>> the preferred recipe.  I think in our case we were always preferring the
>>> released versions for several historical reasons and the _git recipes were
>>> relegated to the second-tier because of it.  But that means that basically
>>> they never got updated.
>>>
>>> About a year and a half ago I started seriously talking about dumping the
>>> userspace tools entirely and only ever working out of the _git recipes.
>>> Shrikant started doing that work after I discussed it with him but we
>>> never got beyond the policy recipes.  So if you guys think this is not a
>>> completely insane thing to do, that's the direction I'd like to go with
>>> this.
>>>
>>>> We don't use the AUTOREV parameter, because that causes the system to have to do
>>>> a git pull in order to evaluate the available versions and determine the SRCREV
>>>> to use.  So it's all down to a parsing and performance issue.
>>>
>>> And avoiding surprises on the other side of the bathtub curve, when
>>> updates pop up that we aren't prepared for.  :-)  But we've been behind
>>> on developments aging out, too, so I don't have a strong case to argue
>>> against AUTOREV.
>>>
>>>> What I've done on some of my own projects is have an AUTOREV version (locally),
>>>> then when it triggers a recipe breakage, I think update the SRCREV and fix it in
>>>> the remote tree..  so I get the autorev, the world gets a version of the package
>>>> that keeps working.  (I also update the SRCREV other times as well.. but the
>>>> autorev breakage is one of the key triggers.)
>>>>
>>>> Joe might have some suggestions as well, I'm not against AUTOREV per say, but I
>>>> am worried about any performance issues during the parse.
>>>
>>> I would really rather avoid AUTOREV, but I think the way we would
>>> accomplish that is to edge away from our current recipes and bring the
>>> _git ones back to centre stage.  Then we're likely to stay on top of a
>>> fixed SRCREV anyway.
>>
>> I think there's something to be said for a simple approach. For those
>> showing up and trying to figure out what's going on / how the build
>> works it would likely ease their entry if we had straight forward
>> recipes that build from the usptream release tarballs. For those wanting
>> to verify hashes published by upstream (and maybe signed) this makes
>> life easier as well.
> 
> My comments, FWIW:
> 
> I'm not sure I agree that having both recipes is a simple approach.
> 
> If you're getting started, then you may not be aware of how
> PREFERRED_VERSION works, or even that it is available at all.
> Depending on your personal inclination, you may assume one way
> or the other.
> 
> Using a _git recipe as default, where SRCREV points to something
> similar to the latest release might be a better way than having
> two recipes.

Fair points.

>> Mark's point is well taken though and there's lots of value in having
>> the git recipes for those who want to experiment. I think Marks test /
>> development setup / tracking AUTOREV behind closed doors is very useful.
>>
>> In the interest of not making too many changes too early on I'd like to
>> propose the following:
>> - keep the release-tracking recipes the default, no change in
>> PREFERRED_VERSIONs etc.
>> - Keep the git recipes around and still pointing to a static SRCREV
>> - Update SRCREV to the latest release and keep it up to date as we move
>> the userspace etc forward
>> - Do not maintain a patch queue for the git recipes
>>
>> I think this last point is likely the only departure from our current
>> approach (and my 3rd point is just an update). My reason for removing
>> the patch queue is that if someone wants to experiment with git they'll
>> likely not want any of those patches. The patch queue will probably just
>> get in their way.
> 
> I like the idea of not maintaining a patch queue for git recipes.
> I'm not sure how well it will work in practice, though.  This
> policy would assume that all git recipes are for projects that
> are maintained by reasonable maintainers who accept our input.
> Maybe that's the case most of the time, but I doubt it's always
> the case.  A trivial change to "Do not normally maintain...." would
> sit with me better.

Agree. What I want to avoid is the current situation where people are
submitting patches that add backport patches to the _git recipes that
are already in the upstream git repo. Carrying around patches that
aren't upstream yet (or as you point out, necessary but not accepted
upstream) may be necessary.

Thanks,
Philip

> Enjoy!
> 
> 				-- radzy
> 
>>> But as I say, maybe I'm completely insane on this point.
>>
>> Nothing insane but I'm feeling conservative, maybe just till the dust
>> settles. Agree / disagree with the above as a first step at least?
>>
>> Philip
>>
>>>
>>> -J.
>>>
>>>>
>>>> --Mark
>>>>
>>>>> On 02/27/2016 08:17 PM, Philip Tricca wrote:
>>>>>> While going through the backlog I ran across the 'git' versions of the
>>>>>> user space. I noticed that a recent contribution was adding a patch to
>>>>>> the git recipe and I figured that this patch would already be upstream
>>>>>> and so wouldn't be necessary. Not so. The 'git' versions have SRCREV
>>>>>> hard wired (SRCREV) to a commit id but it's way back from the end of
>>>>>> 2013. They're also disabled via DEFAULT_PREFERENCE = "-1"
>>>>>>
>>>>>> These 'git' versions seem super useful for testing bleeding edge stuff
>>>>>> so IMHO keeping them around would be the right thing to do. Not sure how
>>>>>> I feel about them tracking an ancient commit though. Since they're never
>>>>>> built by default it seems reasonable to track the master branch.
>>>>>>
>>>>>> What's our philosophy w/r to recipes that pull from git? Is there some
>>>>>> history behind this SRCREV?
>>>>>>
>>>>>> Thanks,
>>>>>> Philip


