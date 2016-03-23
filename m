Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82FA2E0096D; Wed, 23 Mar 2016 02:09:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F76BE0092C
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 02:09:15 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 7F0B968A01B; Wed, 23 Mar 2016 09:09:14 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 3C54068A019;
	Wed, 23 Mar 2016 09:09:12 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id AE68067400D0;
	Wed, 23 Mar 2016 10:09:12 +0100 (CET)
To: Jens Rehsack <rehsack@gmail.com>
References: <56F2215B.1000309@mlbassoc.com>
	<CAMKF1souitmv7XGJ-0h3mKK2R7W8ZeRakaT9UgL3jDNzQ7OioA@mail.gmail.com>
	<56F24F4E.70607@mlbassoc.com> <56F2568B.2050105@mlbassoc.com>
	<5FCE3D59-914D-413A-8027-80C0C825ADE8@gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56F25D38.1020302@mlbassoc.com>
Date: Wed, 23 Mar 2016 10:09:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <5FCE3D59-914D-413A-8027-80C0C825ADE8@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: perl 5.22 and 32 bit targets
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
X-List-Received-Date: Wed, 23 Mar 2016 09:09:19 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-03-23 09:57, Jens Rehsack wrote:
>
>> Am 23.03.2016 um 09:40 schrieb Gary Thomas <gary@mlbassoc.com>:
>>
>> On 2016-03-23 09:09, Gary Thomas wrote:
>>> On 2016-03-23 06:36, Khem Raj wrote:
>>>> On Tue, Mar 22, 2016 at 9:53 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>>> I hope this is the correct place to discuss this problem.  It
>>>>> is all about a difference in behavior between a program built
>>>>> using bitbake/OE (only OE-core is needed) vs building the program
>>>>> on the target hardware itself.
>>>>>
>>>>> I've been struggling with this problem since perl was upgraded
>>>>> to version 5.22.  I'm working on Amanda (Advanced Maryland Archive
>>>>> tool) which is written primarily in perl and uses swig interfaces
>>>>> to access native C functions.  This code works great when using
>>>>> the previous perl (5.20.x) but fails on all 32 bit targets with
>>>>> perl 5.22
>>>>>
>>>>> The interesting thing is that if I build Amanda on my target
>>>>> directly (using SDK tools), it works perfectly even with perl
>>>>> 5.22, so it seems that there is some [subtle] difference between
>>>>> building using bitbake/OE than when built on the self-hosted
>>>>> target.  I've compared the builds and the only thing I could
>>>>> find (from the output of configure) is a difference in sizeof(off_t)
>>>>> Sadly, when I tried to adjust this in the OE build, it didn't
>>>>> make any difference, but perhaps I didn't make this change
>>>>> correctly or completely.
>>>>
>>>> do you have largefile support turned on ? if you do then it might
>>>> be detecting it wrongly during configure since we cache it to a
>>>> non-largefile case
>>>>
>>>> so try to add something like
>>>>
>>>> EXTRA_OECONF += "${@bb.utils.contains('DISTRO_FEATURES', 'largefile',
>>>> 'ac_cv_sizeof_off_t=8', '', d)}"
>>>>
>>>> while building perl or the affected program and see if that helps
>>>
>>> Thanks for the idea, but that didn't help.  I also forced some CFLAGS
>>> to match, in particular:
>>>    -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
>>> but this didn't make any difference either.
>>>
>>
>> On a whim I just tried a little experiment where I took the *.o files
>> from the perl subdirectory (where all the swig shims live) from a working
>> (self-hosted) build and moved them to my bitbake/OE build.  I then touched
>> all the *.o and *.lo files in the perl tree to force a relink. I then ran
>>   % bitbake amanda -C compile && bitbake core-image-base
>> to my surprise, amanda works!  So the culprit lies somewhere within the
>> swig generated glue.  I've tried comparing these files before and I didn't
>> find anything other than cosmetic differences (mostly comments about the
>> name of the file processed, etc).  I've added this subtree to "results"
>> in my github layer in case someone can see what might be relevant.
>>
>> Any ideas what might be different and make this swig generated glue fail?
>> Note that the swig interface files are rebuilt as part of the build process
>> and both bitbake/OE and self-hosted are using the same swig version.
>
> I digged a bit through your layer (while my up2date scanner over meta-cpan
> blocks my build chain :P) and realized that you use perl-5.20.0 as it was
> in poky. A "simple" downgrade would be more reasonable ... if reason applys
> here in general :)

In practice, I am doing that.  However, I want to understand why perl 5.22
breaks things and get it fixed.

>
> When you fail on cross-build and succeed in target build, try to compare the
> C files and includes (even swig libraries) used.
>
> It smells more like a "wrong source" than a "perl problem" (and even when
> I never would read any python thread, the same problem would likely occur
> there, too ^^).
>
> Which perl headers are used in your build? To dig down, more logs would
> be reasonable ...

Everything comes from the same sources, same revisions, etc, as I'm using
either a bitbake/OE build or the embedded (self-hosted) version from the
same build plus SDK tools.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

