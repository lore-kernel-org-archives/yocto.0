Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E06EE00798; Thu, 28 Aug 2014 15:51:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8679FE00507
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 15:51:44 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s7SMpWVO012548; Thu, 28 Aug 2014 23:51:32 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id AetZWRoOni8S; Thu, 28 Aug 2014 23:51:32 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s7SMpTxA012545
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Thu, 28 Aug 2014 23:51:31 +0100
Message-ID: <1409266291.29296.147.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
Date: Thu, 28 Aug 2014 23:51:31 +0100
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
X-List-Received-Date: Thu, 28 Aug 2014 22:51:48 -0000
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

We're also seeing:

https://autobuilder.yoctoproject.org/main/builders/build-appliance/builds/15/steps/BuildImages_1/logs/stdio

which turns out to be triggered by the libc change (I confirmed on a
local build). I haven't looked into why. There is also a similar issue
from the synaptics driver.

Cheers,

Richard


