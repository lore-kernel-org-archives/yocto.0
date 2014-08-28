Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E916E007FE; Thu, 28 Aug 2014 00:19:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40446E007F6
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 00:19:07 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s7S7J2TC005096; Thu, 28 Aug 2014 08:19:02 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id D42h7vauOkbs; Thu, 28 Aug 2014 08:19:02 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s7S7IuDa005092
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Thu, 28 Aug 2014 08:18:57 +0100
Message-ID: <1409210337.29296.131.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
Date: Thu, 28 Aug 2014 08:18:57 +0100
In-Reply-To: <20140828064051.GA13139@haswell>
References: <20140828064051.GA13139@haswell>
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org,
	openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [RFT] Moving on from eglibc to glibc 2.20
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
X-List-Received-Date: Thu, 28 Aug 2014 07:19:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2014-08-27 at 23:41 -0700, Khem Raj wrote:
> Hi All
> 
> As we all know eglibc has been merged back into glibc and 2.19 was the
> last release, here I have put together the recipes for upcoming glibc
> 2.20 release and removed eglibc 2.19 in favor of move.
> 
> I also thought about leaving eglibc in there but then eglibc and glibc
> were pretty much same as they always have been that it would be an
> incremental change with lot more patches this time.
> 
> The tree is here
> 
> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/eglibc-to-glibc-2.20
> 
> This has not recieved much testing yet and I am looking out for helping
> hands here, so try it out in your buid environments and machines of
> interest and report back on issues.
> 
> The patches also forward port the options group support and few other
> patches from eglibc, details are in commit logs, which I think would make 
> good candidates for future glibc merge.
> 
> This tree will be reworked and rebased so sync back if you see issues
> which we will address here
> 
> Thanks for your help

Thanks for doing this Khem, its quite some work and much appreciated!

Just to be clear, what is the intent here? Is it intended to get this
into 1.7 or is this 1.8 material at this point? We're effectively past
the toolchain freeze point for 1.7, just about at complete feature
freeze but I'd like to make sure we're thinking the same things.

I'm certainly happy to get this through the autobuilder and see what
happens...

Cheers,

Richard


