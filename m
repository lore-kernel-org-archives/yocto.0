Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C189FE0086E; Tue, 26 Jul 2016 07:57:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C576E004F1
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 07:57:23 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id DC57D68A01E; Tue, 26 Jul 2016 15:57:21 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 3A82968A01A;
	Tue, 26 Jul 2016 15:57:21 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id C6A22674034E;
	Tue, 26 Jul 2016 16:57:20 +0200 (CEST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <57976F16.8010700@mlbassoc.com>
	<CAJTo0LYOYF=czvyC4HzhbuP1zFaQv2jwrXz82tmnoG3rnuxQBg@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <57977A50.7080102@mlbassoc.com>
Date: Tue, 26 Jul 2016 16:57:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYOYF=czvyC4HzhbuP1zFaQv2jwrXz82tmnoG3rnuxQBg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: python3 on build host
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
X-List-Received-Date: Tue, 26 Jul 2016 14:57:26 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-07-26 16:20, Burton, Ross wrote:
>
> On 26 July 2016 at 15:09, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     I have a build host that I've used for years.  It is not
>     possible to [directly] update python3 on this system to
>     one which is identified as suitable for use with bitbake.
>
>     To try and work around this, I created a meta-toolchain SDK
>     for my target.  I remember needing to do this years ago when
>     one of my boxes also became out of date.  Sadly, this process
>     has not led me to a solution.
>
>     First question: is this the proper way to solve this problem?
>     I simply can't update python3 on this box (I've tried), so I
>     need another solution so I can continue to use this workhorse.
>
>
> The buildtools-tarball is what you want: you can either build your own (bitbake buildtools-tarball) or just download the
> one we've built for you.  This looks like the right one:
>
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.1/buildtools/poky-glibc-x86_64-buildtools-tarball-core2-64-buildtools-nativesdk-standalone-2.1.sh
>

Yes, this is just what I needed (except I had to build my own because my box is i686)

My bitbake build is now running and it looks like this will work for me.

Thanks

>     Second question: even if this is not the correct way to solve my initial problem
>     of providing a suitable python3 on my build host, shouldn't I be able to run
>     bitbake (or indeed any suitably complex python3 program) using the SDK I installed?
>
>
> Looks like this SDK doesn't actually contain a full copy of Python, just the pieces to make what you have in the SDK
> work (theoretically, at least).  This is why we add python3-modules to the buildtools-tarball, so if you want your SDK
> to ship its own complete Py3 runtime then add python3-core python3-modules to it.

What would be the best way to do that?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

