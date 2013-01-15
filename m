Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8465E0120B
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 10:00:19 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r0FI0GHx002024
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 15 Jan 2013 10:00:16 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Tue, 15 Jan 2013 10:00:15 -0800
Message-ID: <50F5992C.9070705@windriver.com>
Date: Tue, 15 Jan 2013 13:00:12 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Patrick Turley <PatrickTurley@gamestop.com>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>, Brian Lloyd <blloyd@familyhonor.net>
Subject: Re: Build external module against Yocto kernel
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
X-List-Received-Date: Tue, 15 Jan 2013 18:00:20 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-01-15 12:54 PM, Patrick Turley wrote:
> Thank you for directing me toward that documentation. As it happens, I
> have already read that, and it doesn't apply.
>
> The section you mentioned begins with this text:
>
>     While it is always preferable to work with sources integrated into
>     the Linux kernel sources, if you need an external kernel module, the
>     |hello-mod.bb| recipe is available as a template from which you can
>     create your own out-of-tree Linux kernel module recipe.
>
>
> The approach here is to create a recipe that will build a module outside
> the kernel tree, but still within the Yocto system.
>
> That isn't what I'm doing.
>
> I have source code for a kernel module that is entirely outside Yocto.
>   I'm *not* going to write a recipe for this module and integrate it
> into a Yocto layer.
>
> Here's a link to instructions on how I would do this in Ubuntu:
>
>     http://www.cyberciti.biz/tips/build-linux-kernel-module-against-installed-kernel-source-tree.html
>
>
> As you can see, Ubuntu (and, of course, other major distributions) have
> "kernel-headers" packages that carry all the artifacts one needs to
> build a module "after the fact."
>
> Does Yocto have a mechanism for packaging up the necessary artifacts and
> making them available *outside* the Yocto build system and long *after*
> the Yocto build is finished?  Does Yocto recognize the necessity of
> this?  The best I've been able to do is point my module build process at
> something like this:
>
> LINUX_DIR=/home/pturley/yocto-mpu-build/tmp/work/dm8148_mpu-poky-linux-gnueabi/linux-ti81xx-psp-2.6.37-r0+spawnlabs+r0/git
>
> This works but it's messy, unreliable and inconvenient.
>
> So, my question remains: Does Yocto have a graceful way of dealing with
> this situation, perhaps like Ubuntu and friends?

There are ways to do this, your requirement is the same as the on-target
module building requirement. Have enough of the kernel source packaged
to build modules on the target, after it has booted.

The trick is packaging things properly to not get binary/target elements
in the SDK/native packages, and to package just enough for the build. But
the issues have been explored and there was a plan. I know that Darren
(cc'd) has looked into this more than I have recently.

I can't locate the bugzilla entries on this at the moment, but I recall
that some parts were still missing, but may be addressed in yocto 1.4,
when I find the bug numbers, I'll have a better idea.

Cheers,

Bruce



>
>
> On Jan 15, 2013, at 11:09 AM, Brian Lloyd <blloyd@familyhonor.net
> <mailto:blloyd@familyhonor.net>> wrote:
>
>> Or better yet, now that it is past initial, use
>> http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules.
>> <http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules.%C2%A0>
>> :)
>> It worked fine for 1.2 (denzil) for me, though it is written for a
>> later one.
>>
>> Brian
>>
>> On Tue, 2013-01-15 at 11:07 -0600, Brian Lloyd wrote:
>>> Try this in work documentation and let us know how it helps or if
>>> there is something missing that would help more:
>>> http://www.yoctoproject.org/docs/hart/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules
>>>
>>> I just did the exact same thing and was happy to discover there is
>>> support in yocto for doing just this.
>>>
>>> Brian
>>>
>>> On Mon, 2013-01-14 at 23:27 +0000, Patrick Turley wrote:
>>>> I have to build a module from a third-party that has nothing to do with Yocto.
>>>>
>>>> I want to build this module against the kernel Yocto is giving me.
>>>>
>>>> The Make file for this module has a build command like this:
>>>>
>>>>      make -C $(LINUX_DIR) M=`pwd` $(ENV) \
>>>>          EXTRA_CFLAGS="$(EXTRA_CFLAGS)" modules
>>>>
>>>> Obviously, this command needs to connect with either the Linux source tree or something like a "kernel-headers" package.
>>>>
>>>> I used the meta-toolchain-sdk recipe to produce an SDK, and I installed it. Unfortunately, I don't see a "kernel-header" equivalent in there.
>>>>
>>>> This leads me to imagine I must point this command at some sub-tree within the Yocto output (probably under tmp/sysroots). And, if I want that tree available elsewhere, I have to package it up into a tarball and transport it.
>>>>
>>>> Usually, Yocto is way ahead of me on these sorts of things, and there's already a graceful way to deal with this -- I just haven't figure it out yet.
>>>>
>>>> What am I missing?
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org  <mailto:yocto@yoctoproject.org>
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org  <mailto:yocto@yoctoproject.org>
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


