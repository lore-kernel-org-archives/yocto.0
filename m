Return-Path: <peteasa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69BD2E008F6; Sun, 11 Jan 2015 07:24:20 -0800 (PST)
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
	*      [209.85.212.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C178E008A6
	for <yocto@yoctoproject.org>; Sun, 11 Jan 2015 07:24:06 -0800 (PST)
Received: by mail-wi0-f180.google.com with SMTP id n3so10333035wiv.1
	for <yocto@yoctoproject.org>; Sun, 11 Jan 2015 07:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=vVUsqMFwRUqphDwn6y7WxylGKEizRE/E0dkYmDQNMAs=;
	b=JQabajkc2Eh7Dpc18Z90uH1+Yhi2g9RmZL3/mtud+yzjZtH7n280Gvn8wu5NTP6Q0X
	YDcqr20kr6dJE5FylA7QQiHD26rJhPaCb07w5wmFGqBcuqTOUAQ1YzLV26ymwCwTkv2H
	eS4Xz3/BVGWDV6O+4N/q7EmfeBd65ube5Ddz/QXgwgtY/XZP6LhNp8QDejUscpHkKW8s
	kJouCPMepGEW0eYk8TthyuhPDKqc1eSxu8kdCnw+VoWaztFsj+Swtq4+hVTfNEo31Edg
	MdTJGmacTt4nryO0lx6rS/9JeGctMrEJX545PdUXM+vJAu/kwm/o0G62JyBUbsAiouln
	sWkA==
X-Received: by 10.180.36.226 with SMTP id t2mr22805916wij.16.1420989844997;
	Sun, 11 Jan 2015 07:24:04 -0800 (PST)
Received: from [192.169.0.118] (cpc18-heme10-2-0-cust113.9-1.cable.virginm.net.
	[81.96.152.114])
	by mx.google.com with ESMTPSA id pl1sm6507071wic.16.2015.01.11.07.24.03
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 11 Jan 2015 07:24:04 -0800 (PST)
Message-ID: <54B2958F.5000908@gmail.com>
Date: Sun, 11 Jan 2015 15:23:59 +0000
From: Peter Saunderson <peteasa@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Nathan Rossi <nathan@nathanrossi.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
References: <54958B25.8080505@gmail.com>	<1419260020.13316.78.camel@linuxfoundation.org>
	<CA+aJhH3zuxCVMCe9sKfPsLcKDo+P42U5sN2SHMVsMsF9PwWs7w@mail.gmail.com>
	<54996A78.40508@gmail.com>
In-Reply-To: <54996A78.40508@gmail.com>
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
X-List-Received-Date: Sun, 11 Jan 2015 15:24:20 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Richard,

As you can see from https://github.com/peteasa/meta-epiphany I have been 
busy and am now getting closer to my specialist recipes for the Epiphany 
processor where I create a cross compiler that runs on the target arm 
processor that will enable development of Epiphany code in the embedded 
arm environment and later will move onto creating a Yocto SDK that 
provides the environment to build Epiphany code on the build machine.  I 
created super project https://github.com/peteasa/parallella-yoctobuild 
that pulls the various bits together if anyone is interested in helping out!

There are a number of issues that I have yet to solve and wonder if 
there is a suitable Yocto list to discuss these issues on? Building a 
cross compiler for a third processor type to run on the target seems to 
be an obvious requirement for Yocto moving forward.

It seemed too complicated to inherit or include 
poky/meta/recipes-devtools/gcc and much easier to create a completely 
new layer to create the epiphany-elf version of the compiler.  Obviously 
the simplest approach was taken by Nathan with his attempts, however 
these do not help with aim of creating a Yocto SDK that enables build of 
Epiphany code on the build machine.  Perhaps there is a way to inherit 
or include poky/meta/recipes-devtools/gcc .. that I have missed?

Because I have used poky/meta/recipes-devtools/gcc as a basis (but 
changed target to epiphany-elf from --build=x86_64-linux 
--host=arm-poky-linux-gnueabi --target=arm-poky-linux-gnueabi -> 
--build=x86_64-linux --host=arm-poky-linux-gnueabi 
--target=epiphany-elf) I am using work folders in 
tmp/work/x86_64-poky-linux-gnueabi.. perhaps I should be creating a new 
work directory for cross compiler generation?
I have tried to package the newlib and libgcc components but for some 
reason the packaging fails and I get for example:
error: packagegroup-epiphany-elf-buildessentialfromsource-1.0-r0 
requires epiphany-elf-newlib.  I can copy the generated files by hand to 
the target and they work.  I am sure that I will be able to find how to 
get this packaged correctly by yocto, but its not obvious at the moment 
how to do that when the epiphany-elf-gcc and epiphany-elf-binutils seem 
to package ok.. its not obvious to me what the differences are apart 
from newlib and libgcc both being built with --build=x86_64-linux 
--host=epiphany-elf --target=epiphany-elf.

Any thoughts on these questions would be most welcome.

Peter.

On 23/12/14 13:13, Peter Saunderson wrote:
> Hi Richard,
>
> Thanks for the samples.
>
> I have been taking a slightly different approach.  It seems to me that 
> poky/cross-canadian.bbclass is very specific to SDK generation, and 
> could almost be called cross-canadian-sdk.bbclass where the sdk 
> reflects the choice of host architecture.  There are four 
> architectures to consider (build, host, target and crosstarget) so my 
> cross-canadian-target.bbclass is intended to have build set to the 
> build machine, host set to the target and then target set to whatever 
> crosstarget is configured with.  Not got very far with this yet but 
> that is the plan and I await with interest to see what problems I get 
> when cross compiling the version of gcc!
>
> I guess the problem is that so many of the scripts like 
> autotools.bbclass use variables specific to a particular configuration 
> (--target=${TARGET_SYS}) rather than using internal generic variables 
> that are assigned by the layer that uses the class.  Thus 
> autotools.bbclass could use autotools_target_sys that gets configured 
> by the calling layer and thus avoiding having to apply replace patches 
> like:
>
> replace('CONFIGUREOPTS', '--target=${TARGET_SYS}','--target=avr', d)
>
> or
>
> HOST_SYS := "${TARGET_SYS}"
> TARGET_SYS = "avr"
>
> Far better if the layers were based on a four architecture model 
> (build, host, target and crosstarget) with at least some of the core 
> classes avoiding specific configurations.
>
> Anyway as I said thank you for your input and have a good Christmas 
> and New Year!
>
> Peter
>
>
> On 23/12/14 12:49, Nathan Rossi wrote:
>> On Tue, Dec 23, 2014 at 12:53 AM, Richard Purdie
>> <richard.purdie@linuxfoundation.org> wrote:
>>> Hi,
>>>
>>> On Sat, 2014-12-20 at 14:43 +0000, Peter Saunderson wrote:
>>>> I have seen a brief IRC chat
>>>> (https://www.yoctoproject.org/irc/%23yocto.2013-09-23.log.html talking
>>>> about https://github.com/nathanrossi/meta-parallella) about this
>>>> question but nothing much else so this is an attempt to get more 
>>>> public
>>>> feedback on this request.
>> That was me, as you might have noticed I ended up for now just using a
>> pre-built toolchain that was copied into the system image with a
>> recipe. This works but its not ideal.
>>
>> There have been a few threads recently regarding similar 
>> functionality desires:
>>   * 
>> https://lists.yoctoproject.org/pipermail/yocto/2014-December/022751.html
>>   * 
>> https://lists.yoctoproject.org/pipermail/yocto/2014-December/022653.html
>> (this one is more about multi-machine builds, but still relevant)
>>
>>>> I am trying to build a cross compiler that runs on the target 
>>>> processor
>>>> and a cross compiler that runs on the host processor so that I can 
>>>> build
>>>> code for a third processor (Epiphany).  If you want examples of the
>>>> traditional way to build this compiler look at
>>>> https://github.com/adapteva/epiphany-sdk epiphany-gcc epiphany-newlib
>>>> epiphany-binutils... The end result would be a set of recipes that run
>>>> on a pc build machine that build both arm code for the interim target
>>>> and epiphany code for the final target and provides an SDK for the pc
>>>> that enables you to cross compile for both arm and epiphany.
>> I have been interested in this myself for the epiphany case as well as
>> a few additional cases (from a personal interest as well as for
>> Xilinx/meta-xilinx):
>>   * epiphany native, nativesdk and target cross compilers
>>   * baremetal toolchain (using newlib)
>>   * canadian-cross arch baremetal (e.g. arm host building for
>> microblaze baremetal)
>>   * and also (canadian-)cross arch linux
>>
>>>> As I am just starting to look at this I would like to know what 
>>>> size of
>>>> task I am up against!  My initial efforts based on review of
>>>> poky/meta/recipes-devtools/binutils etc seem to suggest that I have to
>>>> modify at least ${HOST_PREFIX}, ${TARGET_PREFIX}, ${TARGET_ARCH} 
>>>> etc for
>>>> my epiphany-??? recipes so that the I can install the compiler in a
>>>> suitable location with a suitable prefix, the IRC chat indicates that
>>>> there are more things to consider also.
>>>>
>>>> The question I have is about how easy it will be to use existing 
>>>> recipes
>>>> for existing compiler / binutils etc... or is this likely to end up 
>>>> as a
>>>> completely new set of recipes from the ground up because the existing
>>>> recipes cant cope with building cross / cross compilers where there 
>>>> are
>>>> three processors to consider (host (intel based pc), interim target
>>>> (arm) and final target (epiphany)), or at least a lot of changes in 
>>>> the
>>>> existing recipes to cope with something like TARGET_TARGET_ARCH =
>>>> ${TARGET_ARCH}_${FINAL_TARGET_ARCH}??
>>> Funnily enough I've a similar need to do something like this for a
>>> personal project but targeting AVR.
>>>
>>> Certainly OE has the power and capability to do something like this, 
>>> I'm
>>> not sure its straightforward though, at least generically, and I say
>>> that as one of the people with pretty intimate knowledge of the
>>> toolchain recipes.
>>>
>>> The easy parts are creating recipes for binutils and gcc to run on the
>>> target, targeting a third arch. This is like cross-canadian but 
>>> built to
>>> run on MACHINE instead of SDKMACHINE and taretting a new arch (probably
>>> 'target-cross-canadian'). The massively harder part is the libc for gcc
>>> to build against and any other libs for the system.
>>>
>>> The issue is that bitbake.conf locks the choice of MACHINE early in the
>>> configuration stage. We added SDKMACHINE as a way of letting us build
>>> SDKs and we have multilib and BBCLASSEXTEND but these all only target a
>>> single arch.
>>>
>>> Part of me tries to ensure whatever solution we come up with can scale.
>>> This means I'd like my arm target to be able to build compilers
>>> targetting x86, mips and ppc as well as arm, all in one build. The
>>> question then comes to libc and whether you'd rebuild libc each time,
>>> whether you'd reuse the same libc package as a standard build or 
>>> whether
>>> you'd have a special version of the libc for the 
>>> 'target-cross-canadian'
>>> toolchain.
>> There is definitely quite a bit of madness in getting oe to build
>> additional toolchains even for the same architecture, let alone
>> different architectures. ;)
>>
>> I have been playing around with getting a baremetal toolchain to build
>> alongside the linux one, it seemed like a good place to start before
>> diving into additional arch, cross-canadian builds. With the
>> BBCLASSEXTEND stuff, I have gotten a fair way into the process of
>> having a class providing overrides to the gcc-*/binutils-* recipes to
>> allow for bitbake to build a secondary baremetal (with newlib)
>> toolchain alongside the default machine/target toolchain. There are
>> however changes that I needed to make to the recipes to make them more
>> friendly within the tmp/sysroot/* structure during the intial and main
>> pass builds of the toolchain, there is also the whole issue of
>> dependency naming and virtual/* providers which works reasonably due
>> to the virtual/${TARGET_PREFIX} being used.
>>
>> For now I have been overriding TARGET_OS/TCLIBC/etc with the use of
>> _class-* overrides in local.conf. However the multilib setup relies on
>> the use of DEFAULTTUNE for the setup of additional configurations,
>> with some reworking of the tune-*.inc it would be possible to include
>> multiple architecture types and rely on the DEFAULTTUNE to setup
>> TUNE_*/TARGET_* with class overrides.
>>
>> It does seem like it would possible to handle all the cases I am after
>> (at least) using BBCLASSEXTEND and some dynamic classes in the same
>> way multilib works. I imagine support for heterogeneous builds could
>> be a real good selling point for yocto/oe, especially with the large
>> volume of modern SoC's having some form of mixed architectures these
>> days :).
>>
>> Regards,
>> Nathan
>>
>>> Stepping back from that craziness, I suspect some specialist recipes 
>>> for
>>> avr/epiphany would probably be easiest right now, albeit less
>>> satisfying.
>>>
>>> Cheers,
>>>
>>> Richard
>>>
>>>
>>>
>>> -- 
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>


