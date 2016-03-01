Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D608E00C9C; Tue,  1 Mar 2016 12:18:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EEE6E00C88
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 12:18:27 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20160301201806150_0486;
	Tue, 01 Mar 2016 20:18:06 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [127.0.0.1] (port=38326 helo=localhost)
	by astoria.ccjclearline.com with esmtpa (Exim 4.80)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1aaqlK-0007FG-5P; Tue, 01 Mar 2016 15:19:18 -0500
Received: from 99.240.204.5 ([99.240.204.5]) by astoria.ccjclearline.com
	(Horde Framework) with HTTP; Tue, 01 Mar 2016 15:19:17 -0500
Message-ID: <20160301151917.60296jgnojic36sk@astoria.ccjclearline.com>
Date: Tue, 01 Mar 2016 15:19:17 -0500
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <20160229181912.2795661i683s2v40@astoria.ccjclearline.com>
	<CAAQYJAviVJSJceLhvkyMwfkGTAYg+ZFX9SqOMfLb764uc04e-A@mail.gmail.com>
	<20160301054455.93873ngpmfyku8kk@astoria.ccjclearline.com>
	<56D5A54D.6020100@windriver.com>
In-Reply-To: <56D5A54D.6020100@windriver.com>
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.3.11)
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to organize my patches for multiple kernels and multiple target boards?
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
X-List-Received-Date: Tue, 01 Mar 2016 20:18:32 -0000
Content-Type: text/plain;
 charset=UTF-8;
 DelSp="Yes";
 format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

Quoting Bruce Ashfield <bruce.ashfield@windriver.com>:

> On 16-03-01 05:44 AM, Robert P. J. Day wrote:
>> Quoting Andrea Adami <andrea.adami@gmail.com>:
>>
>>> On Tue, Mar 1, 2016 at 12:19 AM, Robert P. J. Day
>>> <rpjday@crashcourse.ca> wrote:
>>>>  (i posted a much lengthier version of this on oe-core recently, but
>>>> i want
>>>> to cut it down and ask specific questions to clarify what i *think*
>>>> is going
>>>> on.)
>>>>
>>>>  i want to pull in an existing layer with recipes for linux-4.0.bb and
>>>> linux-4.1.bb, and extend them with .bbappend files, to support two
>>>> closely-related
>>>> machines i'm defining -- call them "mach1" and "mach2". AFAICT, my
>>>> patches
>>>> will
>>>> fall somewhere in a 3x3 matrix of possibilities:
>>>>
>>>>  * 3 possibilities of applying against mach1, mach2 or both
>>>>  * 3 possibilities of applying against linux-4.0, linux-4.1 or both
>>>>
>>>> so there's my 3x3 matrix.
>>>>
>>>>  the obvious kernel recipe directory structure would be:
>>>>
>>>>  linux/
>>>>    linux-4.0.bbappend
>>>>    linux-4.1.bbappend
>>>>    linux-4.0/            [4.0-specific patches]
>>>>    linux-4.1/            [4.1-specific patches]
>>>>    linux/                [patches that apply to both]
>>>>
>>>> which suggests that both my .bbappend files would have to contain the
>>>> line:
>>>>
>>>>  FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:${THISDIR}/${BPN}"
>>>>
>>>> so the SRC_URI search path for linux-4.0.bbappend entries would be
>>>> prepended with:
>>>>
>>>>  * linux-4.0/        [4.0-specific patches]
>>>>  * linux/            [patches that apply to both]
>>>>
>>>> and similarly for linux.4.1.bbappend. how am i doing so far? this would
>>>> mean that, for each recipe, the more specific directory would be
>>>> searched
>>>> before the general directory. but wait ... there's more.
>>>>
>>>>  now i want to further categorize patches based on exclusive to mach1,
>>>> exclusive to mach2, or applicable to both, and since the machine name is
>>>> one of the entries in FILESOVERRIDES, i can extend the directory
>>>> structure
>>>> as:
>>>>
>>>>  linux-4.0/
>>>>    mach1/
>>>>    mach2/
>>>>  linux-4.1/
>>>>    mach1/
>>>>    mach2/
>>>>  linux/
>>>>    mach1/
>>>>    mach2/
>>>>
>>>> and there's my 3x3 matrix of patches, correct? and here's where it gets
>>>> unclear.
>>>>
>>>>  i really don't want to have to number all my patches with prefixes
>>>> like
>>>> 0001-, 0002- and so on, so what is the ordering of processing for .scc,
>>>> .cfg and .patch/.diff files? rather than just lump all the patches into
>>>> a single .scc file, i want to refine the patches across multiple .scc
>>>> files. is there an imposed order on SRC_URI entries, .scc files and so
>>>> on? that's probably all i need to finish this off.
>>>>
>>>> rday
>>>
>>> Robert,
>>>
>>> in the past I have done pretty much the same: scc,cfg and patches all
>>> packed in the recipe.
>>> Please see these (outdated) layout examples for linux-yocto* that were
>>> in meta-handheld.
>>>
>>> for 3.10, using .cfg & .scc
>>> http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/linux?h=dylan
>>>
>>>
>>> Or simplified, for 3.14, using defconfig, with patches listed in SRC_URI
>>> http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/linux?h=dizzy
>>>
>>
>>   thanks, i'll check that out. first thing i want to be absolutely clear
>> on is, if i have multiple patch directories, i need to add them *all*
>> to the search path, as in:
>>
>>   FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:${THISDIR}/${BPN}"
>>
>> and certainly in that order, as i want the more specific version
>> patches to be found first. so that bit is correct, yes?
>>
>>   next, i'm still unclear on whether there is any enforced ordering
>> on the processing of .scc files. i know that some folks number their
>> patch files as 0001-*, 0002-* and so on, in order to enforce a
>> patching order (because the order that one specifies patch/diff files
>> in the SRC_URI doesn't mean anything, correct?)
>
> I'm waiting for someone to slap me for saying something so definitive,
> but here it goes anyay ... The order in the SRC_URI definitely matters.
> The order that they are specified is the order the patches are applied.
> Otherwise, a patch stack of any depth wouldn't be possible. Only if you
> are doing wildcard patches and rely on shell globbing would numbering
> be critical.

eggcellent ... i assume that SRC_URI ordering is imposed on *all* SRC_URI
items, that being .scc, .cfg and .patch/.diff files, as in SRC_URI is
processed strictly in order for all of its constituent items? i always
assumed as much, i just don't recall ever seeing that written down. and,
uh, i suspect scott rifenbark can testify that i'm moderately familiar
with the manuals. :-)

>>   however, i would rather not use a numbering scheme like that because,
>> well, it's ugly, and given that i will have patches scattered all over
>> the patch directories and subdirectories on a per-kernel and a
>> per-target board basis, it just wouldn't make much sense.
>
> Agreed.
>
>>   so my plan is to (predictably) group related patch files and .cfg
>> files into a number of .scc files but (again) is there any enforced
>> search order for .scc files? i'm assuming my setting for FILESEXTRAPATHS
>> and use of FILESOVERRIDES will kick in here ... will the order of
>> the .scc files in SRC_URI have any effect as well?
>
> .scc files will be processed in the order they are found on the
> SRC_URI, and then the patches the order they are within the .scc
> files.

getting better and better ...

>>   also, once a .scc file is located, will the location of the listed
>> .cfg and .patch/.diff files inside it start a whole new search process
>> based on FILESEXTRAPATHS and FILESOVERRIDES?
>
> The search path is created relative to the .scc file that is referencing
> a patch, and across any directory that has a .scc file in the SRC_URI.
> The .scc feature descriptions are self contained, hence "reaching outside"
> to a parent, or other directory structure isn't a good thing. Just list
> things on the SRC_URI if that is required.

   ah, so to clarify, if i refer to a .scc file, my FILESEXTRAPATHS and
FILESOVERRIDES will kick in to *find* it, but once found, its internal
references will be treated as local to where the .scc file was found?
good, that makes sense, i like that.

>>   if this is all written down somewhere, just point me to it. thank
>> you kindly.
>
> IIRC it is in the kernel development manual (the .scc file parts), but
> the SRC_URI and patch order is common to any recipe that bitbake/oe-core
> process.

>> p.s. all of this is in aid of trying to avoid ordering mishaps when
>> applying patches, but i'm guessing that if i design my .scc files
>> carefully to be logically self-contained, i can probably avoid
>> accidents like that in the first place.
>
> Correct. The .scc files, kernel-cache and management found within
> the files was created to manage hundreds of patches for overlapping
> boards, much like you are describing.
>
> In the end, when complexity gets really high, a git repo with branches
> is probably easier ... and with that description, I've just covered
> how patch management with .scc files leads to the linux-yocto tree :)
>
> Bruce

   smugness becomes you. :-)

rday



