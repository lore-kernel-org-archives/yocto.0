Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 213A5E00903; Mon, 22 Dec 2014 06:54:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3268DE008E5
	for <yocto@yoctoproject.org>; Mon, 22 Dec 2014 06:53:54 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sBMErEPI010819; Mon, 22 Dec 2014 14:53:14 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id XkuVohtnVVjK; Mon, 22 Dec 2014 14:53:14 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sBMEr3RH010814
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 22 Dec 2014 14:53:14 GMT
Message-ID: <1419260020.13316.78.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Peter Saunderson <peteasa@gmail.com>
Date: Mon, 22 Dec 2014 14:53:40 +0000
In-Reply-To: <54958B25.8080505@gmail.com>
References: <54958B25.8080505@gmail.com>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
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
X-List-Received-Date: Mon, 22 Dec 2014 14:54:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

On Sat, 2014-12-20 at 14:43 +0000, Peter Saunderson wrote:
> I have seen a brief IRC chat 
> (https://www.yoctoproject.org/irc/%23yocto.2013-09-23.log.html talking 
> about https://github.com/nathanrossi/meta-parallella) about this 
> question but nothing much else so this is an attempt to get more public 
> feedback on this request.
> 
> I am trying to build a cross compiler that runs on the target processor 
> and a cross compiler that runs on the host processor so that I can build 
> code for a third processor (Epiphany).  If you want examples of the 
> traditional way to build this compiler look at 
> https://github.com/adapteva/epiphany-sdk epiphany-gcc epiphany-newlib 
> epiphany-binutils... The end result would be a set of recipes that run 
> on a pc build machine that build both arm code for the interim target 
> and epiphany code for the final target and provides an SDK for the pc 
> that enables you to cross compile for both arm and epiphany.
> 
> As I am just starting to look at this I would like to know what size of 
> task I am up against!  My initial efforts based on review of 
> poky/meta/recipes-devtools/binutils etc seem to suggest that I have to 
> modify at least ${HOST_PREFIX}, ${TARGET_PREFIX}, ${TARGET_ARCH} etc for 
> my epiphany-??? recipes so that the I can install the compiler in a 
> suitable location with a suitable prefix, the IRC chat indicates that 
> there are more things to consider also.
> 
> The question I have is about how easy it will be to use existing recipes 
> for existing compiler / binutils etc... or is this likely to end up as a 
> completely new set of recipes from the ground up because the existing 
> recipes cant cope with building cross / cross compilers where there are 
> three processors to consider (host (intel based pc), interim target 
> (arm) and final target (epiphany)), or at least a lot of changes in the 
> existing recipes to cope with something like TARGET_TARGET_ARCH = 
> ${TARGET_ARCH}_${FINAL_TARGET_ARCH}??

Funnily enough I've a similar need to do something like this for a
personal project but targeting AVR.

Certainly OE has the power and capability to do something like this, I'm
not sure its straightforward though, at least generically, and I say
that as one of the people with pretty intimate knowledge of the
toolchain recipes.

The easy parts are creating recipes for binutils and gcc to run on the
target, targeting a third arch. This is like cross-canadian but built to
run on MACHINE instead of SDKMACHINE and taretting a new arch (probably
'target-cross-canadian'). The massively harder part is the libc for gcc
to build against and any other libs for the system.

The issue is that bitbake.conf locks the choice of MACHINE early in the
configuration stage. We added SDKMACHINE as a way of letting us build
SDKs and we have multilib and BBCLASSEXTEND but these all only target a
single arch.

Part of me tries to ensure whatever solution we come up with can scale.
This means I'd like my arm target to be able to build compilers
targetting x86, mips and ppc as well as arm, all in one build. The
question then comes to libc and whether you'd rebuild libc each time,
whether you'd reuse the same libc package as a standard build or whether
you'd have a special version of the libc for the 'target-cross-canadian'
toolchain.

Stepping back from that craziness, I suspect some specialist recipes for
avr/epiphany would probably be easiest right now, albeit less
satisfying.

Cheers,

Richard




