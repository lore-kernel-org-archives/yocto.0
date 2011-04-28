Return-Path: <xiaoxianghua@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id C39234C80337
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2011 22:12:11 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm7 with SMTP id 7so2768039fxm.35
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2011 20:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=ENrlFMBHUTTygxLyygCejKT2AraXW5J/6f/fMBRa1mc=;
	b=GHRHckJe5/Wtz7xoRgrsi+L40aeOYBTfO0UPipT2mCuwNWuMubWkNpmh7bQIsksNvj
	hlP0b6v+58K/2QWhiZh73LTyg5MIu3uawzE+D+Jlweb0DxLQd/pFdXi6H72lSMEJM0UD
	QcItL4TJbg7bGpv1PJACNpgPLeVN5pErhFo0c=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=KEAGYf5xRxGhsx3xCTdXzpw9kKRphF50vrL4pObfQWNzNLbfDXwYUphEcOfNzRNolq
	uG3IWuaVqWq2C3nI6/yBrDV4TIM9Tw+9XocZ9QAvFlNsn8KrxClMaxABmWhVCtVaxUo5
	r0/hJPwAX/wQr/GLM7FBriUl8YZK6oxeALS7U=
MIME-Version: 1.0
Received: by 10.223.30.82 with SMTP id t18mr993133fac.106.1303960330583; Wed,
	27 Apr 2011 20:12:10 -0700 (PDT)
Received: by 10.223.1.141 with HTTP; Wed, 27 Apr 2011 20:12:10 -0700 (PDT)
In-Reply-To: <4DB8BBDF.6070503@windriver.com>
References: <4DB786E3.4080800@linux.intel.com>
	<B23A229A-15A2-491F-BFE9-4C9BB5F681FB@dominion.thruhere.net>
	<4DB82C1A.2030008@linux.intel.com> <4DB8506B.9000709@intel.com>
	<1303938199.21461.21.camel@rex> <4DB89D1E.3010307@intel.com>
	<4DB8BBDF.6070503@windriver.com>
Date: Wed, 27 Apr 2011 22:12:10 -0500
Message-ID: <BANLkTinj5aHFBJw_h8FidnJL7XefVC_mHg@mail.gmail.com>
From: Xianghua Xiao <xiaoxianghua@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Darren Hart <darren.hart@intel.com>, yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 28 Apr 2011 03:12:12 -0000
Content-Type: text/plain; charset=UTF-8

most if not all meego repo is on gitorious, why can't Yocto leverage
it, at least for now while everything is changing fast?

Xianghua

On Wed, Apr 27, 2011 at 7:59 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 11-04-27 6:47 PM, Darren Hart wrote:
>>
>> On 04/27/2011 02:03 PM, Richard Purdie wrote:
>>>
>>> On Wed, 2011-04-27 at 10:20 -0700, Elizabeth Flanagan wrote:
>>>>
>>>> A few notes, since I talked with Darren about this earlier.
>>>>
>>>> As one of the people in charge of maintaining the git repo, I would like
>>>> to
>>>> avoid having, as Darren suggested, a whole bunch of -contrib repos.
>>>> However,
>>>> maybe I'm missing something here, as I think basic git solves this
>>>> issue:
>>>>
>>>> Use Case: Tomz has a branch of meta-intel that he has pushed to
>>>> poky-contrib.git:tomz/foo. dvhart wants to look at it from his local
>>>> repo:
>>
>> I'm curious how many people reading this feel this is "basic git". Anyone
>> willing to admit this was the first time they have seen a targeted branch
>> fetch used to avoid a larger download? If everyone is comfortable with
>> this,
>> fine. If not, we should consider the impact of this type of access on our
>> users.
>>
>>>> git remote add poky-contrib ssh://git@git.pokylinux.org/poky-contrib.git
>>>> git fetch poky-contrib tomz/foo:foo
>>>> git checkout foo
>>
>> My biggest complaint with this is the lack of self discovery from within
>> git
>> without doing a git remote update. Unless tomz is online at the time to
>> tell me
>> it's tomz/foo-bar, not tomz/foo_bar, then I have to go load the web
>> browser and
>> check which branches are available, or resort to downloading all the
>> objects.
>>
>>
>> I confess though, it still just feels wrong to keep unrelated source trees
>> in
>> the same repository.
>>
>>>>
>>>> The fetch allows a sparse checkout of *just* tomz's branch. No need to
>>>> download all 75M of poky-contrib which is what you would do with "git
>>>> remote
>>>> update". Git remote update is the wrong way to do this and I'd like to
>>>> avoid
>>>> having to swap infrastructure around when it seems to me that this is
>>>> just
>>>> one of those "git being a pain to learn"
>>>
>>> Just to add to this discussion, with gitolite, it should be easy to
>>> setup a yocto-contrib repo where each user "owns" the branches under
>>> <keyname>/*. This means as ssh keys are added, they'd automatically get
>>> their own "scratch" area. As Beth points out above, its perfectly
>>> possible to checkout branches and manipulate them as long as you know
>>> the commands.
>>>
>>> This isn't a set of repos per user but when you think about this, how
>>> often do we really need that? Yes, some people like Bruce have usecases
>>> but I'm not sure they're typical and in those small number of cases I'm
>>> sure we can come up with some generic testing/dev repos to assist too.
>>> As soon as something grows to the point where the branch is problematic,
>>> it deserves its own repo and it should be properly namespaced, not user
>>> specific anyway.
>>
>>
>> I don't understand wanting to keep multiple distinct source trees in a
>> single
>> git repositorie. If you have two different layers in there, each in its
>> own
>> branch, then you can only work with one of them at a time. The end-user
>> then has
>> to have multiple clones of the same repository in order to work with their
>> two
>> layers. And they will end up naming them something like:
>>
>> yocto-contrib-layer-1.git
>> yocto-contrib-layer-2.git
>
> This is what I was wondering as well. I had my meta-kernel-dev as
> a branch on poky-extras and ran into exactly this problem. Either
> have two clones, or get it into master. Master was the choice, since
> the other seemed clunky.
>
> Maybe I'm misunderstanding as well, but sparse fetch or not (and
> yes I've done/used it), logically I like things that are distinct
> source trees to be separate repos. Maybe it's a kernel-guy thing ? :)
>
> Cheers,
>
> Bruce
>
>>
>> And keep them checked out to the appropriate set of branches... that seems
>> like
>> a lot of pain to impose on users to avoid setting up personal git
>> repositories.
>> Personally, I think I would revert to my kernel.org repositories rather
>> than try
>> and make this work.
>>
>> Or - is my git-fu weak? Is there a better way to handle the above?
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

