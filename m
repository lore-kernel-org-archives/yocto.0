Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E95BFE00BE6; Tue,  1 Mar 2016 06:21:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EEC1E00B9C
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 06:21:14 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u21EL2jG016419
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 1 Mar 2016 06:21:03 -0800
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 1 Mar 2016 06:21:02 -0800
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Andrea Adami
	<andrea.adami@gmail.com>
References: <20160229181912.2795661i683s2v40@astoria.ccjclearline.com>
	<CAAQYJAviVJSJceLhvkyMwfkGTAYg+ZFX9SqOMfLb764uc04e-A@mail.gmail.com>
	<20160301054455.93873ngpmfyku8kk@astoria.ccjclearline.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <56D5A54D.6020100@windriver.com>
Date: Tue, 1 Mar 2016 09:21:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <20160301054455.93873ngpmfyku8kk@astoria.ccjclearline.com>
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
X-List-Received-Date: Tue, 01 Mar 2016 14:21:18 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 16-03-01 05:44 AM, Robert P. J. Day wrote:
> Quoting Andrea Adami <andrea.adami@gmail.com>:
>
>> On Tue, Mar 1, 2016 at 12:19 AM, Robert P. J. Day
>> <rpjday@crashcourse.ca> wrote:
>>>   (i posted a much lengthier version of this on oe-core recently, but
>>> i want
>>> to cut it down and ask specific questions to clarify what i *think*
>>> is going
>>> on.)
>>>
>>>   i want to pull in an existing layer with recipes for linux-4.0.bb and
>>> linux-4.1.bb, and extend them with .bbappend files, to support two
>>> closely-related
>>> machines i'm defining -- call them "mach1" and "mach2". AFAICT, my
>>> patches
>>> will
>>> fall somewhere in a 3x3 matrix of possibilities:
>>>
>>>   * 3 possibilities of applying against mach1, mach2 or both
>>>   * 3 possibilities of applying against linux-4.0, linux-4.1 or both
>>>
>>> so there's my 3x3 matrix.
>>>
>>>   the obvious kernel recipe directory structure would be:
>>>
>>>   linux/
>>>     linux-4.0.bbappend
>>>     linux-4.1.bbappend
>>>     linux-4.0/            [4.0-specific patches]
>>>     linux-4.1/            [4.1-specific patches]
>>>     linux/                [patches that apply to both]
>>>
>>> which suggests that both my .bbappend files would have to contain the
>>> line:
>>>
>>>   FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:${THISDIR}/${BPN}"
>>>
>>> so the SRC_URI search path for linux-4.0.bbappend entries would be
>>> prepended with:
>>>
>>>   * linux-4.0/        [4.0-specific patches]
>>>   * linux/            [patches that apply to both]
>>>
>>> and similarly for linux.4.1.bbappend. how am i doing so far? this would
>>> mean that, for each recipe, the more specific directory would be
>>> searched
>>> before the general directory. but wait ... there's more.
>>>
>>>   now i want to further categorize patches based on exclusive to mach1,
>>> exclusive to mach2, or applicable to both, and since the machine name is
>>> one of the entries in FILESOVERRIDES, i can extend the directory
>>> structure
>>> as:
>>>
>>>   linux-4.0/
>>>     mach1/
>>>     mach2/
>>>   linux-4.1/
>>>     mach1/
>>>     mach2/
>>>   linux/
>>>     mach1/
>>>     mach2/
>>>
>>> and there's my 3x3 matrix of patches, correct? and here's where it gets
>>> unclear.
>>>
>>>   i really don't want to have to number all my patches with prefixes
>>> like
>>> 0001-, 0002- and so on, so what is the ordering of processing for .scc,
>>> .cfg and .patch/.diff files? rather than just lump all the patches into
>>> a single .scc file, i want to refine the patches across multiple .scc
>>> files. is there an imposed order on SRC_URI entries, .scc files and so
>>> on? that's probably all i need to finish this off.
>>>
>>> rday
>>
>> Robert,
>>
>> in the past I have done pretty much the same: scc,cfg and patches all
>> packed in the recipe.
>> Please see these (outdated) layout examples for linux-yocto* that were
>> in meta-handheld.
>>
>> for 3.10, using .cfg & .scc
>> http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/linux?h=dylan
>>
>>
>> Or simplified, for 3.14, using defconfig, with patches listed in SRC_URI
>> http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/linux?h=dizzy
>>
>
>    thanks, i'll check that out. first thing i want to be absolutely clear
> on is, if i have multiple patch directories, i need to add them *all*
> to the search path, as in:
>
>    FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:${THISDIR}/${BPN}"
>
> and certainly in that order, as i want the more specific version
> patches to be found first. so that bit is correct, yes?
>
>    next, i'm still unclear on whether there is any enforced ordering
> on the processing of .scc files. i know that some folks number their
> patch files as 0001-*, 0002-* and so on, in order to enforce a
> patching order (because the order that one specifies patch/diff files
> in the SRC_URI doesn't mean anything, correct?)

I'm waiting for someone to slap me for saying something so definitive,
but here it goes anyay ... The order in the SRC_URI definitely matters.
The order that they are specified is the order the patches are applied.
Otherwise, a patch stack of any depth wouldn't be possible. Only if you
are doing wildcard patches and rely on shell globbing would numbering
be critical.

>
>    however, i would rather not use a numbering scheme like that because,
> well, it's ugly, and given that i will have patches scattered all over
> the patch directories and subdirectories on a per-kernel and a
> per-target board basis, it just wouldn't make much sense.

Agreed.

>
>    so my plan is to (predictably) group related patch files and .cfg
> files into a number of .scc files but (again) is there any enforced
> search order for .scc files? i'm assuming my setting for FILESEXTRAPATHS
> and use of FILESOVERRIDES will kick in here ... will the order of
> the .scc files in SRC_URI have any effect as well?

.scc files will be processed in the order they are found on the
SRC_URI, and then the patches the order they are within the .scc
files.

>
>    also, once a .scc file is located, will the location of the listed
> .cfg and .patch/.diff files inside it start a whole new search process
> based on FILESEXTRAPATHS and FILESOVERRIDES?

The search path is created relative to the .scc file that is referencing
a patch, and across any directory that has a .scc file in the SRC_URI.
The .scc feature descriptions are self contained, hence "reaching outside"
to a parent, or other directory structure isn't a good thing. Just list
things on the SRC_URI if that is required.

>
>    if this is all written down somewhere, just point me to it. thank
> you kindly.

IIRC it is in the kernel development manual (the .scc file parts), but
the SRC_URI and patch order is common to any recipe that bitbake/oe-core
process.

>
> rday
>
> p.s. all of this is in aid of trying to avoid ordering mishaps when
> applying patches, but i'm guessing that if i design my .scc files
> carefully to be logically self-contained, i can probably avoid
> accidents like that in the first place.

Correct. The .scc files, kernel-cache and management found within
the files was created to manage hundreds of patches for overlapping
boards, much like you are describing.

In the end, when complexity gets really high, a git repo with branches
is probably easier ... and with that description, I've just covered
how patch management with .scc files leads to the linux-yocto tree :)

Bruce

>
>


