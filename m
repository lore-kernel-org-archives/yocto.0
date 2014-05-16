Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69159E00B68; Fri, 16 May 2014 03:50:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from mail.chez-thomas.org (unknown [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89FD4E00975
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 03:50:37 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B6EE3F811F5; Fri, 16 May 2014 04:50:36 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8B110F811E0;
	Fri, 16 May 2014 04:50:35 -0600 (MDT)
Message-ID: <5375ED87.1000605@mlbassoc.com>
Date: Fri, 16 May 2014 04:50:47 -0600
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
X-List-Received-Date: Fri, 16 May 2014 10:50:40 -0000
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

I made a complete copy of recipes-devtools/gcc before the original 4.8
recipes were added.

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

Thanks for these pointers.  I've given them a quick look and indeed
they look manageable, so I'll probably give them a go.

Do you know if anyone has ever [successfully!] used an existing
Poky/Yocto toolchain via the EXTERNAL_TOOLCHAIN method, like is
done by the meta-sourcery layers/tools?  I would think that would
be my safest bet - capture a working toolchain (I use both 4.6.3
and 4.7.2) and then enable the external support with the appropriate
toolchain/version (captured and managed out of band) for the targets
that need them.  How hard might this be?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

