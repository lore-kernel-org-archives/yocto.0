Return-Path: <peteasa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5B5FE00916; Tue, 23 Dec 2014 05:13:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (peteasa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 011C6E0084E
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 05:13:31 -0800 (PST)
Received: by mail-wg0-f50.google.com with SMTP id a1so9083872wgh.9
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 05:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=vlJhIPzXRdUmZQGshkp14WLSQuMR1DHufEd4XrnPkHE=;
	b=lQWHeYXRVA3qkTSoZtFgMuVabf97BcmehDi6EaOrRlOLQXOL8nUGdJCwdYbAJjrNWe
	esKPOpz1fvHpbNbO2Q9qkq9sEpq5ZdAq/nszEz/yMNlbMg6ahqemVTbWcuuP9H6VBm/v
	lT1IdeZexa8KllFLcPmUVyWmjoYcDRVkyqv7wyUE6/IFczfikM2A4Vq40jCqq6so6yaK
	1YlzCxvpJsDfmG2DPMHiICb0RIeYvhtLYMj9EdgefnlBhZ1fA4Sak0usJL8QSNdvRH2+
	jstk/x4yBnY7s7vfQef2rA/eE3YbH5YMne7QPnRJPvj2TKuCFsj5+b3Lzaen4lmvj/sO
	i7/A==
X-Received: by 10.194.235.193 with SMTP id uo1mr50955560wjc.105.1419340410673; 
	Tue, 23 Dec 2014 05:13:30 -0800 (PST)
Received: from [192.169.0.118] (cpc18-heme10-2-0-cust113.9-1.cable.virginm.net.
	[81.96.152.114])
	by mx.google.com with ESMTPSA id s9sm17241542wiz.12.2014.12.23.05.13.29
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Dec 2014 05:13:29 -0800 (PST)
Message-ID: <54996A78.40508@gmail.com>
Date: Tue, 23 Dec 2014 13:13:28 +0000
From: Peter Saunderson <peteasa@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Nathan Rossi <nathan@nathanrossi.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
References: <54958B25.8080505@gmail.com>	<1419260020.13316.78.camel@linuxfoundation.org>
	<CA+aJhH3zuxCVMCe9sKfPsLcKDo+P42U5sN2SHMVsMsF9PwWs7w@mail.gmail.com>
In-Reply-To: <CA+aJhH3zuxCVMCe9sKfPsLcKDo+P42U5sN2SHMVsMsF9PwWs7w@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Cross compiler which runs on the target architecture.
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
X-List-Received-Date: Tue, 23 Dec 2014 13:13:34 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Richard,

Thanks for the samples.

I have been taking a slightly different approach.  It seems to me that 
poky/cross-canadian.bbclass is very specific to SDK generation, and 
could almost be called cross-canadian-sdk.bbclass where the sdk reflects 
the choice of host architecture.  There are four architectures to 
consider (build, host, target and crosstarget) so my 
cross-canadian-target.bbclass is intended to have build set to the build 
machine, host set to the target and then target set to whatever 
crosstarget is configured with.  Not got very far with this yet but that 
is the plan and I await with interest to see what problems I get when 
cross compiling the version of gcc!

I guess the problem is that so many of the scripts like 
autotools.bbclass use variables specific to a particular configuration 
(--target=${TARGET_SYS}) rather than using internal generic variables 
that are assigned by the layer that uses the class.  Thus 
autotools.bbclass could use autotools_target_sys that gets configured by 
the calling layer and thus avoiding having to apply replace patches like:

replace('CONFIGUREOPTS', '--target=${TARGET_SYS}','--target=avr', d)

or

HOST_SYS := "${TARGET_SYS}"
TARGET_SYS = "avr"

Far better if the layers were based on a four architecture model (build, 
host, target and crosstarget) with at least some of the core classes 
avoiding specific configurations.

Anyway as I said thank you for your input and have a good Christmas and 
New Year!

Peter


On 23/12/14 12:49, Nathan Rossi wrote:
> On Tue, Dec 23, 2014 at 12:53 AM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>> Hi,
>>
>> On Sat, 2014-12-20 at 14:43 +0000, Peter Saunderson wrote:
>>> I have seen a brief IRC chat
>>> (https://www.yoctoproject.org/irc/%23yocto.2013-09-23.log.html talking
>>> about https://github.com/nathanrossi/meta-parallella) about this
>>> question but nothing much else so this is an attempt to get more public
>>> feedback on this request.
> That was me, as you might have noticed I ended up for now just using a
> pre-built toolchain that was copied into the system image with a
> recipe. This works but its not ideal.
>
> There have been a few threads recently regarding similar functionality desires:
>   * https://lists.yoctoproject.org/pipermail/yocto/2014-December/022751.html
>   * https://lists.yoctoproject.org/pipermail/yocto/2014-December/022653.html
> (this one is more about multi-machine builds, but still relevant)
>
>>> I am trying to build a cross compiler that runs on the target processor
>>> and a cross compiler that runs on the host processor so that I can build
>>> code for a third processor (Epiphany).  If you want examples of the
>>> traditional way to build this compiler look at
>>> https://github.com/adapteva/epiphany-sdk epiphany-gcc epiphany-newlib
>>> epiphany-binutils... The end result would be a set of recipes that run
>>> on a pc build machine that build both arm code for the interim target
>>> and epiphany code for the final target and provides an SDK for the pc
>>> that enables you to cross compile for both arm and epiphany.
> I have been interested in this myself for the epiphany case as well as
> a few additional cases (from a personal interest as well as for
> Xilinx/meta-xilinx):
>   * epiphany native, nativesdk and target cross compilers
>   * baremetal toolchain (using newlib)
>   * canadian-cross arch baremetal (e.g. arm host building for
> microblaze baremetal)
>   * and also (canadian-)cross arch linux
>
>>> As I am just starting to look at this I would like to know what size of
>>> task I am up against!  My initial efforts based on review of
>>> poky/meta/recipes-devtools/binutils etc seem to suggest that I have to
>>> modify at least ${HOST_PREFIX}, ${TARGET_PREFIX}, ${TARGET_ARCH} etc for
>>> my epiphany-??? recipes so that the I can install the compiler in a
>>> suitable location with a suitable prefix, the IRC chat indicates that
>>> there are more things to consider also.
>>>
>>> The question I have is about how easy it will be to use existing recipes
>>> for existing compiler / binutils etc... or is this likely to end up as a
>>> completely new set of recipes from the ground up because the existing
>>> recipes cant cope with building cross / cross compilers where there are
>>> three processors to consider (host (intel based pc), interim target
>>> (arm) and final target (epiphany)), or at least a lot of changes in the
>>> existing recipes to cope with something like TARGET_TARGET_ARCH =
>>> ${TARGET_ARCH}_${FINAL_TARGET_ARCH}??
>> Funnily enough I've a similar need to do something like this for a
>> personal project but targeting AVR.
>>
>> Certainly OE has the power and capability to do something like this, I'm
>> not sure its straightforward though, at least generically, and I say
>> that as one of the people with pretty intimate knowledge of the
>> toolchain recipes.
>>
>> The easy parts are creating recipes for binutils and gcc to run on the
>> target, targeting a third arch. This is like cross-canadian but built to
>> run on MACHINE instead of SDKMACHINE and taretting a new arch (probably
>> 'target-cross-canadian'). The massively harder part is the libc for gcc
>> to build against and any other libs for the system.
>>
>> The issue is that bitbake.conf locks the choice of MACHINE early in the
>> configuration stage. We added SDKMACHINE as a way of letting us build
>> SDKs and we have multilib and BBCLASSEXTEND but these all only target a
>> single arch.
>>
>> Part of me tries to ensure whatever solution we come up with can scale.
>> This means I'd like my arm target to be able to build compilers
>> targetting x86, mips and ppc as well as arm, all in one build. The
>> question then comes to libc and whether you'd rebuild libc each time,
>> whether you'd reuse the same libc package as a standard build or whether
>> you'd have a special version of the libc for the 'target-cross-canadian'
>> toolchain.
> There is definitely quite a bit of madness in getting oe to build
> additional toolchains even for the same architecture, let alone
> different architectures. ;)
>
> I have been playing around with getting a baremetal toolchain to build
> alongside the linux one, it seemed like a good place to start before
> diving into additional arch, cross-canadian builds. With the
> BBCLASSEXTEND stuff, I have gotten a fair way into the process of
> having a class providing overrides to the gcc-*/binutils-* recipes to
> allow for bitbake to build a secondary baremetal (with newlib)
> toolchain alongside the default machine/target toolchain. There are
> however changes that I needed to make to the recipes to make them more
> friendly within the tmp/sysroot/* structure during the intial and main
> pass builds of the toolchain, there is also the whole issue of
> dependency naming and virtual/* providers which works reasonably due
> to the virtual/${TARGET_PREFIX} being used.
>
> For now I have been overriding TARGET_OS/TCLIBC/etc with the use of
> _class-* overrides in local.conf. However the multilib setup relies on
> the use of DEFAULTTUNE for the setup of additional configurations,
> with some reworking of the tune-*.inc it would be possible to include
> multiple architecture types and rely on the DEFAULTTUNE to setup
> TUNE_*/TARGET_* with class overrides.
>
> It does seem like it would possible to handle all the cases I am after
> (at least) using BBCLASSEXTEND and some dynamic classes in the same
> way multilib works. I imagine support for heterogeneous builds could
> be a real good selling point for yocto/oe, especially with the large
> volume of modern SoC's having some form of mixed architectures these
> days :).
>
> Regards,
> Nathan
>
>> Stepping back from that craziness, I suspect some specialist recipes for
>> avr/epiphany would probably be easiest right now, albeit less
>> satisfying.
>>
>> Cheers,
>>
>> Richard
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


