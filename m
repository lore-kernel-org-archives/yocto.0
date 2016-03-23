Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC636E00931; Wed, 23 Mar 2016 05:07:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E87EE00920
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 05:07:41 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id E9EDA68A01A; Wed, 23 Mar 2016 12:07:40 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id BDADD68A019;
	Wed, 23 Mar 2016 12:07:35 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 763EA67400D0;
	Wed, 23 Mar 2016 13:07:35 +0100 (CET)
To: Jens Rehsack <rehsack@gmail.com>
References: <56F2215B.1000309@mlbassoc.com>
	<CAMKF1souitmv7XGJ-0h3mKK2R7W8ZeRakaT9UgL3jDNzQ7OioA@mail.gmail.com>
	<56F24F4E.70607@mlbassoc.com> <56F2568B.2050105@mlbassoc.com>
	<5FCE3D59-914D-413A-8027-80C0C825ADE8@gmail.com>
	<56F25D38.1020302@mlbassoc.com>
	<BB452600-8B65-4332-AF41-CF834000B14C@gmail.com>
	<D4D8BD30-C54F-4979-AA46-80F4709DBE85@gmail.com>
	<56F27865.8060303@mlbassoc.com>
	<367137C3-C1A0-46FF-8961-2B05370BA030@gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56F28707.5070501@mlbassoc.com>
Date: Wed, 23 Mar 2016 13:07:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <367137C3-C1A0-46FF-8961-2B05370BA030@gmail.com>
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
X-List-Received-Date: Wed, 23 Mar 2016 12:07:46 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-03-23 12:43, Jens Rehsack wrote:
>
>> Am 23.03.2016 um 12:05 schrieb Gary Thomas <gary@mlbassoc.com>:
>>
>> On 2016-03-23 10:48, Jens Rehsack wrote:
>>>
>>>> Am 23.03.2016 um 10:14 schrieb Jens Rehsack <rehsack@gmail.com>:
>>>>
>>>>>
>>>>> Am 23.03.2016 um 10:09 schrieb Gary Thomas <gary@mlbassoc.com>:
>>>>>
>>>>> On 2016-03-23 09:57, Jens Rehsack wrote:
>>>>>>
>>>>>>> Am 23.03.2016 um 09:40 schrieb Gary Thomas <gary@mlbassoc.com>:
>>>>>>>
>>>>>>> On 2016-03-23 09:09, Gary Thomas wrote:
>>>>>>>> On 2016-03-23 06:36, Khem Raj wrote:
>>>>>>>>> On Tue, Mar 22, 2016 at 9:53 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>>>>>>>> I hope this is the correct place to discuss this problem.  It
>>>>>>>>>> is all about a difference in behavior between a program built
>>>>>>>>>> using bitbake/OE (only OE-core is needed) vs building the program
>>>>>>>>>> on the target hardware itself.
>>>>>>>>>>
>>>>>>>>>> I've been struggling with this problem since perl was upgraded
>>>>>>>>>> to version 5.22.  I'm working on Amanda (Advanced Maryland Archive
>>>>>>>>>> tool) which is written primarily in perl and uses swig interfaces
>>>>>>>>>> to access native C functions.  This code works great when using
>>>>>>>>>> the previous perl (5.20.x) but fails on all 32 bit targets with
>>>>>>>>>> perl 5.22
>>>>>>>>>>
>>>>>>>>>> The interesting thing is that if I build Amanda on my target
>>>>>>>>>> directly (using SDK tools), it works perfectly even with perl
>>>>>>>>>> 5.22, so it seems that there is some [subtle] difference between
>>>>>>>>>> building using bitbake/OE than when built on the self-hosted
>>>>>>>>>> target.  I've compared the builds and the only thing I could
>>>>>>>>>> find (from the output of configure) is a difference in sizeof(off_t)
>>>>>>>>>> Sadly, when I tried to adjust this in the OE build, it didn't
>>>>>>>>>> make any difference, but perhaps I didn't make this change
>>>>>>>>>> correctly or completely.
>>>>>>>>>
>>>>>>>>> do you have largefile support turned on ? if you do then it might
>>>>>>>>> be detecting it wrongly during configure since we cache it to a
>>>>>>>>> non-largefile case
>>>>>>>>>
>>>>>>>>> so try to add something like
>>>>>>>>>
>>>>>>>>> EXTRA_OECONF += "${@bb.utils.contains('DISTRO_FEATURES', 'largefile',
>>>>>>>>> 'ac_cv_sizeof_off_t=8', '', d)}"
>>>>>>>>>
>>>>>>>>> while building perl or the affected program and see if that helps
>>>>>>>>
>>>>>>>> Thanks for the idea, but that didn't help.  I also forced some CFLAGS
>>>>>>>> to match, in particular:
>>>>>>>>   -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
>>>>>>>> but this didn't make any difference either.
>>>>>>>>
>>>>>>>
>>>>>>> On a whim I just tried a little experiment where I took the *.o files
>>>>>>> from the perl subdirectory (where all the swig shims live) from a working
>>>>>>> (self-hosted) build and moved them to my bitbake/OE build.  I then touched
>>>>>>> all the *.o and *.lo files in the perl tree to force a relink. I then ran
>>>>>>> % bitbake amanda -C compile && bitbake core-image-base
>>>>>>> to my surprise, amanda works!  So the culprit lies somewhere within the
>>>>>>> swig generated glue.  I've tried comparing these files before and I didn't
>>>>>>> find anything other than cosmetic differences (mostly comments about the
>>>>>>> name of the file processed, etc).  I've added this subtree to "results"
>>>>>>> in my github layer in case someone can see what might be relevant.
>>>>>>>
>>>>>>> Any ideas what might be different and make this swig generated glue fail?
>>>>>>> Note that the swig interface files are rebuilt as part of the build process
>>>>>>> and both bitbake/OE and self-hosted are using the same swig version.
>>>>>>
>>>>>> I digged a bit through your layer (while my up2date scanner over meta-cpan
>>>>>> blocks my build chain :P) and realized that you use perl-5.20.0 as it was
>>>>>> in poky. A "simple" downgrade would be more reasonable ... if reason applys
>>>>>> here in general :)
>>>>>
>>>>> In practice, I am doing that.  However, I want to understand why perl 5.22
>>>>> breaks things and get it fixed.
>>>>
>>>> I did a diff between your 5.20 and poky's 5.22 and realize some fixes applied
>>>> in 5.22 regarding library path's aren't applied in your copy. Maybe swig relies
>>>> on wrong library locations and when we know, we can fix.
>>>>
>>>> So it's maybe not a 5.20 vs. 5.22 problem, it's maybe a weird swig setup problem.
>>>>
>>>>>> When you fail on cross-build and succeed in target build, try to compare the
>>>>>> C files and includes (even swig libraries) used.
>>>>>>
>>>>>> It smells more like a "wrong source" than a "perl problem" (and even when
>>>>>> I never would read any python thread, the same problem would likely occur
>>>>>> there, too ^^).
>>>>>>
>>>>>> Which perl headers are used in your build? To dig down, more logs would
>>>>>> be reasonable ...
>>>>>
>>>>> Everything comes from the same sources, same revisions, etc, as I'm using
>>>>> either a bitbake/OE build or the embedded (self-hosted) version from the
>>>>> same build plus SDK tools.
>>>>
>>>> And your SDK does not include any host tools? Did you prove the intermediate
>>>> amanda build files (eg. generated by SWIG) for relicts from wrong source?
>>>> Did you check the logs which include directories had been used?
>>>
>>> I give it a quick shot and got:
>>>
>>> ../../arm-poky-linux-gnueabi-libtool  --tag=CC   --mode=compile arm-poky-linux-gnueabi-gcc  -march=armv7-a -marm  -mthumb-interwork -mfloat-abi=hard -mfpu=neon -mtune=cortex-a9 --sysroot=/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voegeln-eine-freude-machen/tmp/sysroots/curie -DHAVE_CONFIG_H -I. -I../../config -I../../common-src -I../../common-src -I../../xfer-src -I../../gnulib -I../../ndmp-src -I/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voegeln-eine-freude-machen/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.22.1/CORE   -fno-strict-aliasing -D_GNU_SOURCE -pthread -I/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voegeln-eine-freude-machen/tmp/sysroots/curie/usr/include/glib-2.0 -I/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voegeln-eine-freude-machen/tmp/sysroots/curie/usr/lib/glib-2.0/include -DSWIG  -O2 -pipe -g -feliminate-unused-debug-types -fipa-pta -ftree-partial-pre -ftree-loop-distribution -ftree-loop-distribute-patterns -fgcse-af
 t
e
>> r
>> -reload -fgcse-sm -fgcse-las  -fno-strict-aliasing  -c -o xferwrap.lo xferwrap.c
>>>
>>> Do you see the "-I/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voegeln-eine-freude-machen/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.22.1/CORE" ?
>>>
>>> Any further blames of perl-5.22? :)
>>
>> I'm not sure what you are getting at here.  Indeed it is supposed to be
>> using perl-5.22.1 for everything.  The version 5.22.0 in meta-amanda layer
>> is just for testing and should not be used at the moment.
>
> Please compare word wise ...
>
> -I/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voegeln-eine-freude-machen/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.22.1/CORE
> -I/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voegeln-eine-freude-machen/tmp/sysroots/curie/usr/include/glib-2.0
>
> Probably this helps getting my point:
>
> $ ls -l tmp/work
> total 149
> drwxrwxr-x  54 sno sno  54 Mar 22 23:49 all-poky-linux
> drwxrwxr-x 269 sno sno 269 Mar 22 23:49 arm926ejse-poky-linux-gnueabi
> drwxrwxr-x   3 sno sno   3 Mar 22 23:48 bohr-nand-poky-linux-gnueabi
> drwxrwxr-x  19 sno sno  19 Mar 22 23:49 bohr-poky-linux-gnueabi
> drwxrwxr-x   9 sno sno   9 Mar 22 21:38 cortexa9hf-vfp-neon-mx6qdl-poky-linux-gnueabi
> drwxrwxr-x 326 sno sno 326 Mar 23 11:28 cortexa9hf-vfp-neon-poky-linux-gnueabi
> drwxrwxr-x   3 sno sno   3 Mar 22 21:37 curie-emmc-poky-linux-gnueabi
> drwxrwxr-x  29 sno sno  29 Mar 22 21:50 curie-poky-linux-gnueabi
> drwxrwxr-x 196 sno sno 196 Mar 23 11:28 x86_64-linux
>
>> All of my comparisons and testing (see instructions in the README) are
>> for perl-5.22.1 only and in fact I've only been using the bits from bitbake/OE
>> and not building that any more (I found that it wasn't necessary - one only
>> needs to build amanda on the target)
>>
>> Sorry for the confusion.
>

Huzzah!  This seems to be on the right track.  I adjusted the PERL_INC
value in perl/Makefile (the *.h files used by the swig interfaces) to
point to the target ones and not the perl-native ones and now it works :-)

I'm not sure what's different between the two sets of include files, and
more interestingly why it worked with previous versions of perl, but this
does seem to be the culprit.

Now I just need to figure out how to convince the 'configure' process to
do it correctly.

Thanks for the help!

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

