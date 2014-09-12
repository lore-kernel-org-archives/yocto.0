Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84E53E0078E; Fri, 12 Sep 2014 12:26:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BDD5E006C5
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 12:26:36 -0700 (PDT)
Received: from [192.168.1.10] (c-68-38-40-177.hsd1.nj.comcast.net
	[68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id 8063C2116FD6;
	Fri, 12 Sep 2014 19:24:45 +0000 (UTC)
Message-ID: <5413487C.4050707@mindchasers.com>
Date: Fri, 12 Sep 2014 15:24:44 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Nemicolopterus Crypticus <ncrypticus@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAMSG=xXz_1rwzc-gdfNNeMGx3cx051X+sfnCBEZMPbvgryvH6A@mail.gmail.com>
	<CAMSG=xXmfOnQJwkQ5qHsSendSRX+xSHRH94jc5kJKGqqNV0gAg@mail.gmail.com>
In-Reply-To: <CAMSG=xXmfOnQJwkQ5qHsSendSRX+xSHRH94jc5kJKGqqNV0gAg@mail.gmail.com>
Subject: Re: Specified toolchain directory does not contain a toolchain generated with meta-ide-support.
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
X-List-Received-Date: Fri, 12 Sep 2014 19:26:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/12/2014 12:57 PM, Nemicolopterus Crypticus wrote:
>  >Just double checking that you are specifying the "toolchain root
> location" as your top level build directory (the one above
> /conf/local.conf - the directory where you run bitbake).
>
> Yes that occurred to me too, since the phrasing is a bit unclear. I
> tried both.  Here's a depiction of my directory structure:
>
> oe-core
>       |---- build
>            |---- conf (including local.conf)
>            |---- downloads
>            |---- tmp-eglibc
>               |---- environment-setup-blahblah
>               |---- <etc.>
>            |---- <etcc>
>       |---- bitbake
>       |---- gcc-toolchain
>       |---- meta
>       |---- <etc. lots more>
>
> I tried with the root at build, and in build/tmp-eglibc with no luck.
>
> Is it possible the toolchain didn't get built?

What happens when you source your environment script?  You should have 
your path set up to find your cross toolchain.  If that's the case, you 
should be able to run the toolchain on the command line.

I work with the powerpc toolchain, so I can cross-compile a simple test 
app after sourcing my env script:

powerpc64-poky-linux-gcc main.c -o tst

and verify I have generated a 64-bit powerpc ELF executable with

file tst




I'm just wondering since
> that's what the error claims. Is there any way to confirm that the
> toolchain did indeed get built?  I ran bitbake meta-ide-toolchain, but
> our system is large and I'm not familiar with every aspect of it. Is it
> possible some other settings elsewhere got changed in a way that would
> prevent the toolchain from building?


