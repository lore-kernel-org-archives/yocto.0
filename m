Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6D2FE0090B
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 14:17:22 -0800 (PST)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id B21EA860F0;
	Thu, 27 Feb 2014 22:17:20 +0000 (UTC)
Message-ID: <530FB970.6000307@dynamicdevices.co.uk>
Date: Thu, 27 Feb 2014 22:17:20 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1393510407.git.ajlennon@dynamicdevices.co.uk>
	<3266133.m0A4OyqJlT@peggleto-mobl5.ger.corp.intel.com>
	<530F8EDA.1030307@dynamicdevices.co.uk>
	<3197986.BDeEZ9PLMT@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <3197986.BDeEZ9PLMT@peggleto-mobl5.ger.corp.intel.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mono] [PATCH 1/1] gtk-sharp: Updated to GTK# 2.12.21
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
X-List-Received-Date: Thu, 27 Feb 2014 22:17:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 27/02/2014 22:04, Paul Eggleton wrote:
> On Thursday 27 February 2014 19:15:38 Alex J Lennon wrote:
>> On 27/02/2014 18:48, Paul Eggleton wrote:
>>> On Thursday 27 February 2014 18:29:59 Alex J Lennon wrote:
>>>> On 27/02/2014 18:18, Paul Eggleton wrote:
>>>>> PR values needn't match up between different distros. The point is they
>>>>> should get increased when a material change to the recipe's output
>>>>> happens; and this can happen for example when:
>>>>>
>>>>> * A class that the recipe inherits is changed
>>>>>
>>>>> * A dependency of the recipe that influences how the recipe is built
>>>>> gets
>>>>> changed
>>>>>
>>>>> * Some global configuration changed that affects how the recipe is built
>>>>> e.g. DISTRO_FEATURES
>>>>>
>>>>> * A bbappend is added or removed
>>>>>
>>>>> In all of these cases the recipe itself does not get changed at all -
>>>>> prior to the PR server we had to remember to manually bump PR in the
>>>>> affected recipes, or (more often) we'd forget to handle it properly
>>>>> altogether. With the PR server, PR bumps happen automatically in
>>>>> response
>>>>> to signatures changing, which is about as accurate an indicator as we
>>>>> can
>>>>> get as far as determining whether the output has changed, and certainly
>>>>> much less prone to mistakes.
>>>> OK so I can't download the source code to a distribution and built
>>>> identical, identically versioned packages to theirs? With something like
>>>> RPM wouldn't I expect to be able to download an RPM source package
>>>> and build an identical, versioned RPM from it?
>>> They'll always be "identical" as far as the material content goes, that's
>>> not in question here - we're just talking about the PR values. For the PR
>>> values it depends - which distro are we talking about? IIRC for example,
>>> SHR and Angstrom both make their PR servers available so that people's PR
>>> values will match up if they build it from source themselves.
>>>
>>> However, I think we're starting to head into territory where you have to
>>> ask who is maintaining this distro you are referring to. If you're making
>>> changes to how things get built, arguably it's now a derivative distro
>>> and you ought to be maintaining it yourself; at which point you shouldn't
>>> expect the PR values to match up. How else would you signify that you'd
>>> made the configuration change (or added your own patch, or ...) if it's
>>> someone else's distro that doesn't contain that change "upstream"?
>>>
>>>> Taking a slightly different tack, if I upgrade a recipe PV from 1.0.0 to
>>>> 2.0.0 to correspond to the upstream source versioning, and at that
>>>> time I remove PR and build some packages.
>>>>
>>>> Then a month later I realise I need something extra added to the
>>>> configuration options, which gives me a different output, what do I
>>>> change to make sure the new package is versioned differently from
>>>> the old package? (i.e. presumably if the network service is
>>>> running it will handle it for me, but if it's not running then new
>>>> package will be versioned identically to my old package?)
>>> Yes. If you care about PR values (i.e. you're using packaging on the
>>> target) then you need to enable and use the PR server. If you do that,
>>> you don't need to make any additional change other than the
>>> configure option change you've already made - EXTRA_OECONF
>>> would presumably have been changed -> do_configure signature
>>> changes -> dependent task signatures change -> the PR value
>>> changes automatically.
>>>
>>>>>> I suppose the other question is, if I release a package of revision X,
>>>>>> then another which is up-rev'd' to Y as I made a change to the recipe
>>>>>> and so the NBPRS up-revs, then somebody comes back to me and tells me
>>>>>> they are having a problem with Xm then how do I link that rev X to the
>>>>>> specific commit that went to build it so I can audit ?
>>>>> The PR server doesn't track this - however, all of this information does
>>>>> go into buildhistory if you enable that.
>>>> Must look at that, yes.
>>> For reference:
>>>
>>> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#mainta
>>> ining-build-output-quality
>>>
>>> Cheers,
>>> Paul
>> I've just noticed this which seems to usefully address some of my
>> questions; include for others who may come across the thread,
>>
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=1556
>>
>> Excellent. So I can export my current set of AUTOPR values to a file,
>> give that to another development team in the handover, or test, or
>> whomever,
>> who can then import and build packages with the same version/name
>> (assuming that they're on another site or otherwise don't have access to
>> my PR
>> network service ). I can see that will obviate the need for an
>> inordinate number of conversations with the test team.
> Ah yes, I completely forgot about that.
>
> The thought springs to mind that if we're not covering this area sufficiently in 
> the manual at the moment, we should probably try to figure out what we need to 
> do to do so.

Well it could of course be me being backward or lazy :) It seems pretty
imorptant though, to a newbie
like myself, as in my work I generally rely on a versioned file name
being a unique descriptor for a certain
snapshot of a binary codebase, whether .exe, archive or whatever.

I get a bit antsie when I can't relate a shipped binary of a given
versioning scheme to a source snapshot that
I can use to rebuild that shipped binary, as this type of thing always
comes back to bite me months or years
later.

I try hard to have a single versioned name that the whole supply chain
can use to relate to a certain
software module. It worries me (perhaps unduly I admit) that there's
additional complexity in this process,
when I'm undoubtedly going to have to explain at length why certain
parts of a file name/archive matter, and certain
other ones don't.

That aside, as I understand it this is a solution to another wider
problem which is the maintenance of those
PRs in the recipes so perhaps it is the lesser evil. Who am I to say?

If it's necessary to have the daemon active to handle bumping PRs, and
if the direction is to remove hardcoded PRs
then perhaps it merits the daemon being automatically launched via a
default local.conf as per #1126 and something
in the newbie guide about why this is?

Cheers, Alex



