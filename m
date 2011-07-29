Return-Path: <malcolm.crossley@ge.com>
Received: from exprod5og114.obsmtp.com (exprod5og114.obsmtp.com [64.18.0.28])
	by mx1.pokylinux.org (Postfix) with ESMTP id BD0B94C803E4
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2011 09:11:18 -0500 (CDT)
Received: from Cinmlip05.e2k.ad.ge.com ([12.71.149.1]) (using TLSv1) by
	exprod5ob114.postini.com ([64.18.4.12]) with SMTP
	ID DSNKTjK/gZ/rRB+kpzulgEHsZEGbOCEzGbCu@postini.com;
	Fri, 29 Jul 2011 07:11:19 PDT
Received: from unknown (HELO alpmlip01.e2k.ad.ge.com) ([3.159.17.48])
	by Cinmlip05.e2k.ad.ge.com with ESMTP; 29 Jul 2011 10:11:13 -0400
Received: from es-641xt3j.amer.consind.ge.com (HELO [3.138.54.93])
	([3.138.54.93])
	by alpmlip01.e2k.ad.ge.com with ESMTP; 29 Jul 2011 10:11:12 -0400
Message-ID: <4E32BF7E.4070306@ge.com>
Date: Fri, 29 Jul 2011 15:11:10 +0100
From: Malcolm Crossley <malcolm.crossley@ge.com>
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:5.0) Gecko/20110624 Thunderbird/5.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <20110729072359.GA5109@localhost.localdomain>	<20110729100525.GA26451@localhost.localdomain>	<4E32B1B6.4010608@windriver.com>
	<4E32BC5C.7070305@ge.com> <4E32BD65.7080507@windriver.com>
In-Reply-To: <4E32BD65.7080507@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: crownbay-noemgd poky-image-minimal fails to build
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
X-List-Received-Date: Fri, 29 Jul 2011 14:11:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 29/07/2011 15:02, Bruce Ashfield wrote:
> On 07/29/11 09:57, Malcolm Crossley wrote:
>> On 29/07/2011 14:12, Bruce Ashfield wrote:
>>> On 07/29/11 06:05, Andre Haupt wrote:
>>>> On Fri, Jul 29, 2011 at 09:23:59AM +0200, Andre Haupt wrote:
>>>>> Hi all,
>>>>>
>>>>> I am trying to build a poky bernard image for crownbay-noemgd.
>>>>> For this i checked out the bernard branch of both poky and meta-intel
>>>>> from git.yoctoproject.org.
>>>>>
>>>>> Bitbake fails during the kernels compile_perf task complaining that
>>>>> it can not
>>>>> find libdw.h and bfd.h and that using /usr/local/include as include
>>>>> location is unsafe for cross compilation (full log attached).
>>>>>
>>>>> What do i miss here?
>>>>
>>>> I did work around this with
>>>>
>>>> diff --git a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
>>>> b/meta/recipes-
>>>> index 3c1e669..85caa92 100644
>>>> --- a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
>>>> +++ b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
>>>> @@ -42,4 +42,4 @@ KERNEL_FEATURES=features/netfilter
>>>> addtask kernel_link_vmlinux after do_compile before do_install
>>>> addtask validate_branches before do_patch after do_kernel_checkout
>>>>
>>>> -require linux-tools.inc
>>>> +#require linux-tools.inc
>>>>
>>>>
>>>> not sure that this is the right thing to do though.
>>>
>>> It's an acceptable work around to keep you building on your
>>> local machine, assuming that you don't need perf. But the
>>> linux-yocto recipes always want to provide perf, and hence
>>> have that include.
>>>
>>> I'm trying to dust off my memory here. I know that this has
>>> been seen, and I also know that this built fine in the bernard
>>> release.
>>>
>>> The first part of the issue is the:
>>>
>>> Makefile:508: No libdw.h found or old libdw.h found, disables dwarf
>>> support. Please install elfutils-devel/elfutils-dev
>>>
>>> We may have a missing host dependency in the checks. Have you
>>> tried installing the relevant package for F13 ?
>>>
>>> As for the second, there's a patch in the 2.6.34 kernel tree
>>> that is dealing with it:
>>>
>>> http://git.pokylinux.org/cgit/cgit.cgi/linux-yocto-2.6.34/commit/?h=standard&id=72ca49ab08b8eb475cec82a10049503602325791 
>>>
>>>
>>>
>>> It sounds like there may be a SRCREV problem for the board that
>>> isn't picking up that change. Can you confirm that this commit
>>> is in your board branch ? You can check in your build directory
>>> for linux.
>>
>> I have found that stable branch 2.6.34 contains a bug when trying to
>> build the perf tools. I have a patch but I've not been able to upstream
>> it yet, I've copy pasted it inline here, hopefully it doesn't wrap too
>> badly:
>
> Just so I've got all the context here. This failure is
> on top of the one you were asking about ? (the unsafe
> / includes). And this is unique to the 2.6.34-stable
> perf variant (i.e. no other newer kernel release has
> the issue) ?
The patch is required on 2.6.34-stable but not on 2.6.34 vanilla. I have 
not tested newer kernels but I believe there would be some compliants if 
it was still broken. So I think there was some specific backporting 
breakage with 2.6.34-stable.  Without the patch I got this error on 
2.6.34.6:

NOTE: make -j 2 DESTDIR=/home/gefanuc/auto/main/build/work/ge-sbc612-angstrom-linux/linux-ge-2.6.x+22411-r0/image CC=powerpc-angstrom-linux-gcc  LD=powerpc-angstrom-linux-ld
Makefile:508: No libdw.h found or old libdw.h found, disables dwarf support. Please install elfutils-devel/elfutils-dev
touch .perf.dev.null
     CC perf.o
     CC bench/sched-messaging.o
bench/sched-messaging.c:34: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'use_pipes'
bench/sched-messaging.c:36: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'thread_mode'
bench/sched-messaging.c: In function 'fdpair':
bench/sched-messaging.c:61: error: 'use_pipes' undeclared (first use in this function)
bench/sched-messaging.c:61: error: (Each undeclared identifier is reported only once
bench/sched-messaging.c:61: error: for each function it appears in.)
bench/sched-messaging.c: In function 'receiver':
bench/sched-messaging.c:120: error: 'thread_mode' undeclared (first use in this function)
bench/sched-messaging.c: In function 'create_worker':
bench/sched-messaging.c:149: error: 'thread_mode' undeclared (first use in this function)
bench/sched-messaging.c: In function 'reap_worker':
bench/sched-messaging.c:189: error: 'thread_mode' undeclared (first use in this function)
bench/sched-messaging.c: In function 'group':
bench/sched-messaging.c:232: error: 'thread_mode' undeclared (first use in this function)
bench/sched-messaging.c: At top level:
bench/sched-messaging.c:255: error: 'use_pipes' undeclared here (not in a function)
bench/sched-messaging.c:257: error: 'thread_mode' undeclared here (not in a function)
make: *** [bench/sched-messaging.o] Error 1
make: *** Waiting for unfinished jobs....

Regards

Malcolm


>
> with those answers, I can appropriately deal with it
> and vector it to the right places.
>
> Cheers,
>
> Bruce
>
>>
>> Author: Malcolm Crossley <malcolm.crossley@ge.com>
>> Date: Fri Jul 22 22:44:53 2011 +0100
>>
>> Kernel version 2.6.34.6. has a bug with regards to it's perf tool source
>> files. This patch adds a missing include directive.
>>
>> Signed-off-by: Malcolm Crossley <malcolm.crossley@ge.com>
>>
>> diff --git a/tools/perf/perf.h b/tools/perf/perf.h
>> index 6fb379b..3c497c5 100644
>> --- a/tools/perf/perf.h
>> +++ b/tools/perf/perf.h
>> @@ -73,6 +73,7 @@
>> #include <unistd.h>
>> #include <sys/types.h>
>> #include <sys/syscall.h>
>> +#include <stdbool.h>
>>
>> #include "../../include/linux/perf_event.h"
>> #include "util/types.h"
>>
>>
>> Regards
>>
>> Malcolm
>>
>>>
>>> Bruce
>>>
>>>>
>>>> cheers,
>>>>
>>>> Andre
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


