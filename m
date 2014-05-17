Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59534E00BA1; Fri, 16 May 2014 22:30:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ie0-f170.google.com (unknown [209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33367E00B0B
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 22:30:43 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id at1so345290iec.1
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 22:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=xkfUVq2X8G1vePUlphUJjNKhAMhv4icsC7plSJgzHJc=;
	b=z3C0LNk7aZ+/LtU5yEG6C4r1YZyDXzvjTOZq+mHWRzxJ5NzAaHsxeiM2FVVHMu/623
	o3QE7BIpVjZb39bnVXh3dcWl3oxBwa59gICbF724uwEEI/KaBSown5KN2T3ct0vrFjp8
	0TGY4yZKpxX+qcItt6NAIcrGBqZMmKN4vnsMlMrzGciq59Tt/guMGSZ3XM9kfNLf3XID
	DbggkEvV6oQbuaBJdn2EPmEr0J1orqzSbyg4YBekRyMxNxLmZ49nJqxNdK6efmw/Kmc3
	y/b2K3YQYnqKHyAT4gBBOyAav0fszqds3dwbDpvl63wnZc+MM0a/Fyrujg7YiquKhHVG
	H6RA==
X-Received: by 10.50.43.163 with SMTP id x3mr2262555igl.2.1400304643444; Fri,
	16 May 2014 22:30:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.79.133 with HTTP; Fri, 16 May 2014 22:30:11 -0700 (PDT)
In-Reply-To: <537646B0.1020906@mlbassoc.com>
References: <5373B0AB.4070204@mlbassoc.com>
	<70015786.1gtbouFiKb@peggleto-mobl5.ger.corp.intel.com>
	<5375F71D.3020607@mlbassoc.com>
	<70016045.BsQrnv4ilV@peggleto-mobl5.ger.corp.intel.com>
	<537646B0.1020906@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 16 May 2014 22:30:11 -0700
Message-ID: <CAMKF1srpA2CYoVe-MEvR5Lo7=4XgS4x+-WEFJW8-0QaLhCRpsQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Sat, 17 May 2014 05:30:52 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, May 16, 2014 at 10:11 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2014-05-16 06:42, Paul Eggleton wrote:
>>
>> On Friday 16 May 2014 05:31:41 Gary Thomas wrote:
>>>
>>> On 2014-05-16 05:16, Paul Eggleton wrote:
>>>>
>>>> On Friday 16 May 2014 04:50:47 Gary Thomas wrote:
>>>>>
>>>>> On 2014-05-15 14:53, Richard Purdie wrote:
>>>>>>
>>>>>> On Wed, 2014-05-14 at 12:06 -0600, Gary Thomas wrote:
>>>>>>>
>>>>>>> I have a number of platforms which [for whatever reason]
>>>>>>> need older versions of GCC.  I've been supporting this by
>>>>>>> keeping the older code around in my own layers - I need
>>>>>>> 4.7.x for some targets, even 4.6.x for others.
>>>>>>>
>>>>>>> With the changes in the latest master (post 1.6/daisy), I
>>>>>>> am no longer able to build those older compilers :-(  First
>>>>>>> I had to fix up some core changes to just get the recipes to
>>>>>>> even parse (bb.utils.contains), but now I get a slew of errors
>>>>>>>
>>>>>>> like these:
>>>>>>>       NOTE: preferred version 4.7% of libgcc-initial not available
>>>>>>> (for
>>>>>>>       item libgcc-initial) NOTE: versions of libgcc-initial
>>>>>>> available:
>>>>>>>       4.8.2 4.9.0
>>>>>>>
>>>>>>> I looked at the old recipes and they don't provide these
>>>>>>> packages which make them unsuitable.
>>>>>>>
>>>>>>> I know I should move these targets to the newer GCC, but at
>>>>>>> this moment there simply are not the resources to do so, but
>>>>>>> we still want to benefit from other improvements in OE-core
>>>>>>> (and Poky/Yocto).
>>>>>>>
>>>>>>> How can I move forward?  Is there some way to retrofit the
>>>>>>> older compilers into the new [required] structures?  Perhaps
>>>>>>> I could use the older compilers as external tool chain, but
>>>>>>> the last time I tried to use this (in place of the internal,
>>>>>>> build in place) tools, I could never make things happy :-(
>>>>>>>
>>>>>>> Any suggestions more than welcome, thanks
>>>>>>
>>>>>>
>>>>>> How are you doing this? Have you a completely separate set of gcc
>>>>>> recipes including the include files or is this using the current
>>>>>> include
>>>>>
>>>>>
>>>>>> files. You basically have two options:
>>>>>
>>>>> I made a complete copy of recipes-devtools/gcc before the original 4.8
>>>>> recipes were added.
>>>>>
>>>>>> a) Apply the changes that were made in master gcc to the 4.7 recipes,
>>>>>> you can then probably share includes.
>>>>>>
>>>>>> b) Use a separate set of 4.7 files and "undo" some of the changes in
>>>>>> master using creative variable names. E.g., libgcc-initial was added:
>>>>>>
>>>>>> recipes-core/eglibc/eglibc-initial.inc:DEPENDS = "linux-libc-headers
>>>>>> virtual/${TARGET_PREFIX}gcc-initial libgcc-initial"
>>>>>> recipes-core/eglibc/eglibc.inc:DEPENDS =
>>>>>> "virtual/${TARGET_PREFIX}gcc-initial libgcc-initial linux-libc-headers
>>>>>> virtual/${TARGET_PREFIX}libc-initial"
>>>>>>
>>>>>> so you could do a:
>>>>>>
>>>>>> DEPENDS_remove_pn-eglibc-initial - "libgcc-initial"
>>>>>> DEPENDS_remove_pn-eglibc - "libgcc-initial"
>>>>>>
>>>>>> Thinking a bit more, the issue that is going to hit you hard are the
>>>>>> -PN
>>>>>> additions to the cross recipe changes (and their change in arch). My
>>>>>> strong recommendation is therefore a) and then replaying the gcc
>>>>>> changes
>>>>>> made in master against the 4.7 version. These were:
>>>>>>
>>>>>>
>>>>>> http://git.yoctoproject.org/cgit.cgi/poky/log/meta/recipes-devtools/gcc
>>>>>>
>>>>>> there are about 10 or so changes there you'd need to check in your 4.7
>>>>>> recipes (since the 25th April) but nothing particularly difficult.
>>>>>
>>>>>
>>>>> Thanks for these pointers.  I've given them a quick look and indeed
>>>>> they look manageable, so I'll probably give them a go.
>>>>>
>>>>> Do you know if anyone has ever [successfully!] used an existing
>>>>> Poky/Yocto toolchain via the EXTERNAL_TOOLCHAIN method, like is
>>>>> done by the meta-sourcery layers/tools?  I would think that would
>>>>> be my safest bet - capture a working toolchain (I use both 4.6.3
>>>>> and 4.7.2) and then enable the external support with the appropriate
>>>>> toolchain/version (captured and managed out of band) for the targets
>>>>> that need them.  How hard might this be?
>>>>
>>>>
>>>> We don't support this usage at the moment in OE; if you use the OE
>>>> toolchain we recommend you let the system build it, and it will then be
>>>> restored from shared state for subsequent builds. I searched around for
>>>> discussion on this>
>>>> and coincidentally I turned up a thread you were on a few years ago:
>>>>     http://comments.gmane.org/gmane.linux.embedded.poky/7049
>>>>
>>>> There was some discussion at the OEDAM meeting recently about trying to
>>>> bring this back, but I'm pretty sure Richard is keen to avoid going down
>>>> that path for the same reasons we've been avoiding it so far.
>>>
>>>
>>> I looked back through this thread and the enhancement bug I filed
>>> (which for everyone but Richard seemed to be the way to go).  The
>>> result was to reuse sstate, but I don't see how that can solve the
>>> problem I have today.  How can I possibly create sstate cache files
>>> for my old GCC/4.6.3 toolchain and allow them to be used with the
>>> latest builds?
>>
>>
>> Well, it's true that sstate won't help you solve that problem since the
>> recipe
>> still needs to be buildable (i.e. all dependencies need to be satisfied);
>> sstate is rather the answer to "I want an external toolchain to avoid
>> having
>> to build the toolchain on every new build" which is a different problem.
>> However, the recipes for an external toolchain must satisfy the exact same
>> dependencies, so maintaining your old toolchain recipes isn't a whole lot
>> different than an external toolchain at least in that respect, although
>> you
>> might argue that that maintenance would be taken care of by someone else
>> rather you having to do it.
>>
>> BTW, in the meta-openembedded repository there is a toolchain-layer layer
>> that
>> was intended to provide older versions of gcc; I think it hasn't been used
>> much lately so it may have bitrotted, but it may be helpful for people
>> like
>> yourself who need older toolchains to club together and bring it
>> up-to-date.
>
>
> I just tried the meta-sourcery (old CSL) layer and it worked a treat.
> I only had to add that layer and define a single variable to point to
> their tools.  Next week, I think I'll have a go at adapting their layer
> to use an OE derived toolchain.

You best course of action here is to keep mimicing the toolchain build
sequence changes as you hop major releases
similar exercise that external toolchain guys have to do. Its a constant battle.

>
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

