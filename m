Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E49AE00A38; Mon, 17 Aug 2015 10:01:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1CD0E006CD
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 10:01:36 -0700 (PDT)
Received: from [70.102.70.91] (helo=[10.10.6.140])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZRNlt-00077C-Mt; Mon, 17 Aug 2015 17:00:35 +0000
Message-ID: <55D21365.80807@twobit.us>
Date: Mon, 17 Aug 2015 10:01:25 -0700
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: wenzong fan <wenzong.fan@windriver.com>, 
	Joe MacDonald <Joe_MacDonald@mentor.com>,
	Randy MacLeod <randy.macleod@windriver.com>
References: <55BB022B.6050800@windriver.com>	<20150731173331.GC5208@mentor.com>	<55CD0E05.4070801@windriver.com>	<20150814003806.GA8204@mentor.com>
	<55CD9575.4040501@windriver.com>
In-Reply-To: <55CD9575.4040501@windriver.com>
X-SA-Exim-Connect-IP: 70.102.70.91
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: "Radzykewycz, T \(Radzy\)" <radzy@windriver.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [oe] [meta-selinux] Re: meta-selinux updates for oe-core-1.9 -- resend to right list.
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
X-List-Received-Date: Mon, 17 Aug 2015 17:01:44 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

I started scoping out an upgrade over the weekend. I'm maintaining a
branch here: https://github.com/flihp/meta-selinux/tree/upgrade

It is very much a WIP so expect rebases. Some notes below:

On 08/14/2015 12:15 AM, wenzong fan wrote:
> I just sent uprev patches for:
> 
> libcap-ng 0.7.3 -> 0.7.7
> python-ipy 0.81 -> 0.83

Thanks for this!

> The remaining list that need to be updated:
> 
> selinux:
>   - libsemanage     2.3     2.4

https://github.com/flihp/meta-selinux/commit/0b75b251f789b4b5eb3adefd7c4c93569be0bc78

>   - sepolgen     1.2.1     1.2.2

Not yet.

>   - checkpolicy     2.3     2.4

https://github.com/flihp/meta-selinux/commit/cdc01a9976571852f123e1da59b99026307863ca

>   - libselinux     2.3     2.4

https://github.com/flihp/meta-selinux/commit/9ffd53dca0a02e16d25c1f382918fd12002c6c1d

>   - libsepol     2.3     2.4

https://github.com/flihp/meta-selinux/commit/41de80ba447ad665245b26bb1b72f9c2168b8288

>   - policycoreutils     2.3     2.4

There is a significant change between 2.3 and 2.4 with the addition of
the CIL. The policy build / link process has changed quite a bit and
there have been new utilities added to policycoreutils (the pp tool).
This tools doesn't play well with bzip2 compressed policy modules:

https://bugzilla.redhat.com/show_bug.cgi?format=multiple&id=1069329

so we may have to drop compressed module support which would be
unfortunate given the size savings. There may be a workaround though so
I haven't given up hope yet. Just haven't found the fix.

I'm working through the upgrade to policycoreutils currently and I'm
slogging through the process of figuring out how to bootstrap a compiled
policy with the new format.

There hasn't been a new setools release to match the latest changes in
the toolchain. This means that the old recipe won't work and we'll have
to build from git if we want setools. I've got a recipe for that but
haven't pushed it. Personally I've never done anything with setools so I
wouldn't oppose dropping it till they do a new release. It looks like
there hasn't been any work on setools in a few years beyond maintaining
compatibility with the toolchain.

I'm also at LinuxCon this week if anyone else happens to be around and
wants to hack-a-thon this some evening :)

Best,
Philip

> On 08/14/2015 08:38 AM, Joe MacDonald wrote:
>> [[oe] [meta-selinux] Re: meta-selinux updates for oe-core-1.9 --
>> resend to right list.] On 15.08.13 (Thu 17:37) Randy MacLeod wrote:
>>
>>>
>>> Resending to the right list.
>>> (yocto@yoctoproject.org rather than
>>>   openembedded-devel@lists.openembedded.org )
>>>
>>> Radzy will be working on meta-selinux and
>>> I've suggested that the start with a package uprev or two
>>> once the upstream selinux release intentions are known.
>>
>> Well, the backlog is cleared out (not quite true, but I'm waiting on a
>> final verification from my autobuilders before merging the last couple
>> of patches) and it looks like I didn't destroy Phil's work on the
>> filesystem labelling bits when rebasing them, so I expect I'll merge
>> those tomorrow too.  Let's say everything after that is negotiable.  :-)
>>
>> -J.
>>
>>>
>>> ../Randy
>>>
>>> ---
>>>
>>> Going on-list like I should have originally.
>>>
>>> On 2015-07-31 01:33 PM, Joe MacDonald wrote:
>>>> Hey Randy,
>>>>
>>>> Good to hear from you.
>>>>
>>>> [meta-selinux updates for oe-core-1.9] On 15.07.31 (Fri 01:05) Randy
>>>> MacLeod wrote:
>>>>
>>>>> What's the plan for meta-selinux in the next 2 months?
>>>
>>> Roy dug up the current meta-selinux, upstream versions:
>>>
>>> swig             2.0.10        3.0.6
>>> python-ipy         0.81         0.83
>>> audit             2.3.2        2.4.3
>>> refpolicy-mls 2.20140311　　　　2.20141203
>>> libcap-ng         0.7.3        0.7.7
>>> setools           3.3.8        3.3.8
>>> sepolgen            git        1.2.2
>>> libsemanage         git          2.4
>>> checkpolicy         2.3          2.4
>>> policycoreutils     git          2.4
>>> selinux-config      0.1          0.1
>>> libsepol            git          2.4
>>> libsemanage         2.3          2.4
>>> sepolgen          1.2.1        1.2.2
>>> libsepol            2.3          2.4
>>> libselinux          git          2.4
>>> policycoreutils     2.3          2.4
>>> libselinux          2.3          2.4
>>> ustr              1.0.4        1.0.4
>>>
>>>
>>>>
>>>> There's a backlog of meta-selinux patches to integrate that have
>>>> been in
>>>> my merge queue for rather a long time now.  I expect to clear that out,
>>>> which will include an update to the most recent (not the current, any
>>>> longer, I don't think) refpolicy and a new recipe that will build from
>>>> the refpolicy git repository rather than release tarballs.  I think
>>>> this'll be a significant benefit to everyone in that it'll make it much
>>>> easier to migrate patches and to try out a new release without waiting
>>>> for a full update.  Those are the big things on the horizon.
>>>>
>>>> The other one is the filesystem labelling work being done by the
>>>> community.  It looks quite good and as soon as I get a few minutes to
>>>> try it out a bit more on some oddball configurations to ensure we
>>>> aren't
>>>> bringing in any new dependencies (after having just scrubbed a bunch of
>>>> bashisms and hidden deps), it'll likely get merged.
>>>>
>>>> There's nothing on the radar in the short term that hasn't already been
>>>> discussed on the mailing list, though, AFAIK.
>>>>
>>>> -J.
>>>
>>> So when Radzy is back in a week from being OOO, hopefully Joe's backlog
>>> will be cleared and we all can update pkgs as needed. We can split
>>> up that work however it makes sense; just tell the list
>>> if you start working on a package.
>>>
>>> My quick review of git logs and my memory of selinux releases
>>> tells me that there tends to be an late fall release.
>>> I looked at the Changelog for a few of the components of:
>>>      https://github.com/SELinuxProject/selinux
>>> and things seem to be moving along more quickly than usual
>>> so that pattern might not hold. Is anyone subscribed to the list:
>>>      https://www.nsa.gov/research/selinux/list.shtml
>>> if so is there talk of an approximate release date that
>>> would help us decide if we went to update now or in a month or so?
>>>
>>> Oh and is selinux happy under gcc-5.2+?
>>>
>>> ../Randy
>>>
>>>
>>>>
>>>>>
>>>>> Roy can you summarize the state of each recipe?
>>>>> i.e. current version and upstream version?
>>>>> I'd like to make sure that we're up to date when
>>>>> oe-core-1.9 is released.
>>>>>
>>>
>>>
>>> -- 
>>> # Randy MacLeod. SMTS, Linux, Wind River
>>> Direct: 613.963.1350 | 350 Terry Fox Drive, Suite 200, Ottawa, ON,
>>> Canada,
>>> K2K 2W5
>>>
>>>


