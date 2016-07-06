Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0842AE00C60; Wed,  6 Jul 2016 07:39:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52B44E00855
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 07:39:48 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id B408E68A01B; Wed,  6 Jul 2016 15:39:47 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 2D1FD68A019;
	Wed,  6 Jul 2016 15:39:47 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id D8C366740071;
	Wed,  6 Jul 2016 16:39:46 +0200 (CEST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <577CD922.4000405@mlbassoc.com>
	<CAEjjReJO62jjENv868u8owRazP0yBV+kBVG9yt2rxPBTxSfj2Q@mail.gmail.com>
	<577D144F.8050208@mlbassoc.com>
	<CAJTo0LaSR8xk2OqRBQKAuoM6VWs3_vJ-YSuZyN9yJJEeMV-dfQ@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <577D1832.2080002@mlbassoc.com>
Date: Wed, 6 Jul 2016 16:39:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaSR8xk2OqRBQKAuoM6VWs3_vJ-YSuZyN9yJJEeMV-dfQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What keeps sstate from being used?
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
X-List-Received-Date: Wed, 06 Jul 2016 14:39:50 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-07-06 16:27, Burton, Ross wrote:
>
> On 6 July 2016 at 15:23, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     Dependency on checksum of file MIPS-GAS-Fix-an-ISA-override-not-lifting-ABI-restrictions.patch was removed
>
>
> As this show binutils changing its SRC_URI this suggests that you did something in between the two runs, or those hashes
> are not the relevant pair.

I could send the whole trace of how I got there, but basically
I noticed that 'patch' was being rebuilt for the target, so I
tracked that back to gcc-cross-arm which led me to binutils-cross-arm

Maybe I've done something wrong or don't totally understand the output
of the tools, but it's clear that something is a little off here as
my original build was 99% complete (only a dozen or so tasks remaining)
and when I reran it from sstate, it more or less started over.

If you have pointers on how I can diagnose this, or at least retrace it,
I'm all ears as I really want to see this work the way it's advertised
"on the tin"

Ideas/suggestions more than welcome

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

