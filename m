Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E2FCE00916; Tue, 23 Dec 2014 04:49:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63BC6E0084E
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 04:49:09 -0800 (PST)
Received: by mail-lb0-f180.google.com with SMTP id l4so5351915lbv.11
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 04:49:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=f0k8X2x30NhZnpdM3dgnvNrbfW1gtB8vmoDji4Hnz70=;
	b=DvlvO6TdCqqOy+ItnnAMGegxsfLp0jmOmExVJe90iOKB0T/gQe3g1bdNBgUlxAUfIv
	727BYkMXTfDlA1uuO+kLUUUUZULNepBFnpvaknDtFD1MEHKDumqhLZJd5HWzZDgAVeDp
	p40ihr1NoScU899lp99sbMFk7IVGzm6tbDNN9MKBisUclYN59/bUu27UIzHxTA+middj
	xYD8gXeoVqy9A1KqTG+/JoaoqUtI6pHNqXJkyVBBjz2wbqIDgzpWFcvAubgkTHL6llV5
	K09MMKRcpUCjwXu3HFuaZZ+4oNyN3EVBlBsDCc9Hke5QFG8yBkkFzgiwlwElOnwJl5W4
	sxFQ==
X-Gm-Message-State: ALoCoQmsg7u0iQ31O0Mw+qigp4DqVbBBZ3VB6SCClBrDGC/36SjUtxnEM3NeFsX5bjme+NkLdGIJ
MIME-Version: 1.0
X-Received: by 10.112.101.100 with SMTP id ff4mr27220378lbb.94.1419338948034; 
	Tue, 23 Dec 2014 04:49:08 -0800 (PST)
Received: by 10.25.43.79 with HTTP; Tue, 23 Dec 2014 04:49:07 -0800 (PST)
In-Reply-To: <1419260020.13316.78.camel@linuxfoundation.org>
References: <54958B25.8080505@gmail.com>
	<1419260020.13316.78.camel@linuxfoundation.org>
Date: Tue, 23 Dec 2014 22:49:07 +1000
Message-ID: <CA+aJhH3zuxCVMCe9sKfPsLcKDo+P42U5sN2SHMVsMsF9PwWs7w@mail.gmail.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org, Peter Saunderson <peteasa@gmail.com>
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
X-List-Received-Date: Tue, 23 Dec 2014 12:49:15 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Dec 23, 2014 at 12:53 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> Hi,
>
> On Sat, 2014-12-20 at 14:43 +0000, Peter Saunderson wrote:
>> I have seen a brief IRC chat
>> (https://www.yoctoproject.org/irc/%23yocto.2013-09-23.log.html talking
>> about https://github.com/nathanrossi/meta-parallella) about this
>> question but nothing much else so this is an attempt to get more public
>> feedback on this request.

That was me, as you might have noticed I ended up for now just using a
pre-built toolchain that was copied into the system image with a
recipe. This works but its not ideal.

There have been a few threads recently regarding similar functionality desires:
 * https://lists.yoctoproject.org/pipermail/yocto/2014-December/022751.html
 * https://lists.yoctoproject.org/pipermail/yocto/2014-December/022653.html
(this one is more about multi-machine builds, but still relevant)

>>
>> I am trying to build a cross compiler that runs on the target processor
>> and a cross compiler that runs on the host processor so that I can build
>> code for a third processor (Epiphany).  If you want examples of the
>> traditional way to build this compiler look at
>> https://github.com/adapteva/epiphany-sdk epiphany-gcc epiphany-newlib
>> epiphany-binutils... The end result would be a set of recipes that run
>> on a pc build machine that build both arm code for the interim target
>> and epiphany code for the final target and provides an SDK for the pc
>> that enables you to cross compile for both arm and epiphany.

I have been interested in this myself for the epiphany case as well as
a few additional cases (from a personal interest as well as for
Xilinx/meta-xilinx):
 * epiphany native, nativesdk and target cross compilers
 * baremetal toolchain (using newlib)
 * canadian-cross arch baremetal (e.g. arm host building for
microblaze baremetal)
 * and also (canadian-)cross arch linux

>>
>> As I am just starting to look at this I would like to know what size of
>> task I am up against!  My initial efforts based on review of
>> poky/meta/recipes-devtools/binutils etc seem to suggest that I have to
>> modify at least ${HOST_PREFIX}, ${TARGET_PREFIX}, ${TARGET_ARCH} etc for
>> my epiphany-??? recipes so that the I can install the compiler in a
>> suitable location with a suitable prefix, the IRC chat indicates that
>> there are more things to consider also.
>>
>> The question I have is about how easy it will be to use existing recipes
>> for existing compiler / binutils etc... or is this likely to end up as a
>> completely new set of recipes from the ground up because the existing
>> recipes cant cope with building cross / cross compilers where there are
>> three processors to consider (host (intel based pc), interim target
>> (arm) and final target (epiphany)), or at least a lot of changes in the
>> existing recipes to cope with something like TARGET_TARGET_ARCH =
>> ${TARGET_ARCH}_${FINAL_TARGET_ARCH}??
>
> Funnily enough I've a similar need to do something like this for a
> personal project but targeting AVR.
>
> Certainly OE has the power and capability to do something like this, I'm
> not sure its straightforward though, at least generically, and I say
> that as one of the people with pretty intimate knowledge of the
> toolchain recipes.
>
> The easy parts are creating recipes for binutils and gcc to run on the
> target, targeting a third arch. This is like cross-canadian but built to
> run on MACHINE instead of SDKMACHINE and taretting a new arch (probably
> 'target-cross-canadian'). The massively harder part is the libc for gcc
> to build against and any other libs for the system.
>
> The issue is that bitbake.conf locks the choice of MACHINE early in the
> configuration stage. We added SDKMACHINE as a way of letting us build
> SDKs and we have multilib and BBCLASSEXTEND but these all only target a
> single arch.
>
> Part of me tries to ensure whatever solution we come up with can scale.
> This means I'd like my arm target to be able to build compilers
> targetting x86, mips and ppc as well as arm, all in one build. The
> question then comes to libc and whether you'd rebuild libc each time,
> whether you'd reuse the same libc package as a standard build or whether
> you'd have a special version of the libc for the 'target-cross-canadian'
> toolchain.

There is definitely quite a bit of madness in getting oe to build
additional toolchains even for the same architecture, let alone
different architectures. ;)

I have been playing around with getting a baremetal toolchain to build
alongside the linux one, it seemed like a good place to start before
diving into additional arch, cross-canadian builds. With the
BBCLASSEXTEND stuff, I have gotten a fair way into the process of
having a class providing overrides to the gcc-*/binutils-* recipes to
allow for bitbake to build a secondary baremetal (with newlib)
toolchain alongside the default machine/target toolchain. There are
however changes that I needed to make to the recipes to make them more
friendly within the tmp/sysroot/* structure during the intial and main
pass builds of the toolchain, there is also the whole issue of
dependency naming and virtual/* providers which works reasonably due
to the virtual/${TARGET_PREFIX} being used.

For now I have been overriding TARGET_OS/TCLIBC/etc with the use of
_class-* overrides in local.conf. However the multilib setup relies on
the use of DEFAULTTUNE for the setup of additional configurations,
with some reworking of the tune-*.inc it would be possible to include
multiple architecture types and rely on the DEFAULTTUNE to setup
TUNE_*/TARGET_* with class overrides.

It does seem like it would possible to handle all the cases I am after
(at least) using BBCLASSEXTEND and some dynamic classes in the same
way multilib works. I imagine support for heterogeneous builds could
be a real good selling point for yocto/oe, especially with the large
volume of modern SoC's having some form of mixed architectures these
days :).

Regards,
Nathan

>
> Stepping back from that craziness, I suspect some specialist recipes for
> avr/epiphany would probably be easiest right now, albeit less
> satisfying.
>
> Cheers,
>
> Richard
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

