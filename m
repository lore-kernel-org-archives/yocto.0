Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 387ABE00A44; Thu, 22 May 2014 08:59:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from mail.chez-thomas.org (unknown [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 567DBE0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 08:59:38 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 243F0F811F9; Thu, 22 May 2014 09:59:38 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id DE7B9F811F7;
	Thu, 22 May 2014 09:59:36 -0600 (MDT)
Message-ID: <537E1F01.8080401@mlbassoc.com>
Date: Thu, 22 May 2014 10:00:01 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5373B0AB.4070204@mlbassoc.com> <1400187220.28353.15.camel@ted>
In-Reply-To: <1400187220.28353.15.camel@ted>
Subject: Re: Where did my preferred version go?
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
X-List-Received-Date: Thu, 22 May 2014 15:59:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-05-15 14:53, Richard Purdie wrote:
> On Wed, 2014-05-14 at 12:06 -0600, Gary Thomas wrote:
>> I have a number of platforms which [for whatever reason]
>> need older versions of GCC.  I've been supporting this by
>> keeping the older code around in my own layers - I need
>> 4.7.x for some targets, even 4.6.x for others.
>>
>> With the changes in the latest master (post 1.6/daisy), I
>> am no longer able to build those older compilers :-(  First
>> I had to fix up some core changes to just get the recipes to
>> even parse (bb.utils.contains), but now I get a slew of errors
>> like these:
>>
>>     NOTE: preferred version 4.7% of libgcc-initial not available (for item libgcc-initial)
>>     NOTE: versions of libgcc-initial available: 4.8.2 4.9.0
>>
>> I looked at the old recipes and they don't provide these
>> packages which make them unsuitable.
>>
>> I know I should move these targets to the newer GCC, but at
>> this moment there simply are not the resources to do so, but
>> we still want to benefit from other improvements in OE-core
>> (and Poky/Yocto).
>>
>> How can I move forward?  Is there some way to retrofit the
>> older compilers into the new [required] structures?  Perhaps
>> I could use the older compilers as external tool chain, but
>> the last time I tried to use this (in place of the internal,
>> build in place) tools, I could never make things happy :-(
>>
>> Any suggestions more than welcome, thanks
>
> How are you doing this? Have you a completely separate set of gcc
> recipes including the include files or is this using the current include
> files. You basically have two options:
>
> a) Apply the changes that were made in master gcc to the 4.7 recipes,
> you can then probably share includes.
>
> b) Use a separate set of 4.7 files and "undo" some of the changes in
> master using creative variable names. E.g., libgcc-initial was added:
>
> recipes-core/eglibc/eglibc-initial.inc:DEPENDS = "linux-libc-headers virtual/${TARGET_PREFIX}gcc-initial libgcc-initial"
> recipes-core/eglibc/eglibc.inc:DEPENDS = "virtual/${TARGET_PREFIX}gcc-initial libgcc-initial linux-libc-headers virtual/${TARGET_PREFIX}libc-initial"
>
> so you could do a:
>
> DEPENDS_remove_pn-eglibc-initial - "libgcc-initial"
> DEPENDS_remove_pn-eglibc - "libgcc-initial"
>
> Thinking a bit more, the issue that is going to hit you hard are the -PN
> additions to the cross recipe changes (and their change in arch). My
> strong recommendation is therefore a) and then replaying the gcc changes
> made in master against the 4.7 version. These were:
>
> http://git.yoctoproject.org/cgit.cgi/poky/log/meta/recipes-devtools/gcc
>
> there are about 10 or so changes there you'd need to check in your 4.7
> recipes (since the 25th April) but nothing particularly difficult.

I've done this (as you said, nothing too difficult) and it seems to
be working.  My only issue is that I had a deep copy of the old
recipes-devtools/gcc with both the 4.6 and 4.7 recipes included.
This seemed to cause some conflicts if my layer with these recipes
was included when building with GCC 4.8+, in particular when building
the most recent eglibc as pre 4.8 there was no unwind (or different)
support and this is now required.  My solution was to move these
older recipes to a separate layer which is only included for targets
that need the ancient tools, which seems reasonable anyway.

My hope is to find time to move those targets to newer compilers
before I have to do this after the next big toolchain shake-up,
whenever that may be :-)

Thanks for the help

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

