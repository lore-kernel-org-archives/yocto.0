Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21B2FE00E85; Mon,  1 Aug 2016 07:26:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC3C1E00E61
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 07:26:03 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 4AE9268A01A; Mon,  1 Aug 2016 15:26:02 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id BB8B668A019;
	Mon,  1 Aug 2016 15:26:01 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 678F267403A2;
	Mon,  1 Aug 2016 16:26:01 +0200 (CEST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <579C6829.8080804@mlbassoc.com>
	<CAJTo0LZ=h9Yoya4CyMNz3jeJR2XzeDqWi+cgmr6rcPRKBxZCJQ@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <6dc9bda6-6399-19ce-37d3-6886e38b4054@mlbassoc.com>
Date: Mon, 1 Aug 2016 16:26:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZ=h9Yoya4CyMNz3jeJR2XzeDqWi+cgmr6rcPRKBxZCJQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: A question of sstate and compilers
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
X-List-Received-Date: Mon, 01 Aug 2016 14:26:07 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-08-01 16:04, Burton, Ross wrote:
>
> On 30 July 2016 at 09:41, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     I'm trying to isolate a problem that showed up in my builds
>     in the last month.  Little has changed in the sources, but
>     the one big change was I moved from GCC/4.9 to GCC/5.x  On
>     the surface, this seemed to be a non-consequence, but I have
>     one very subtle corner case that is now broken.  In an effort
>     to isolate the issue (I no longer think it was the compiler
>     change), I went back to GCC/4.9.  This caused my build (tree)
>     which has existed for many months (the same build tree started
>     in Feb 2016) to basically rebuild everything.
>
>     There's the rub - shouldn't the sstate-cache hold all of those
>     old bits and just be able to re-stage?  I'm a bit confused about
>     that.  Even worse, I switched back to GCC/5.x, didn't touch
>     anything else in my sources or build tree, and now it's off
>     again, [re]building the majority of my packages.
>
>
> It's possible that there was some other change that caused a rebuild.  bitbake-whatchanged, bitbake -S printdiff, etc
> will help you chase this if you want to.

Nothing else changed, I'm sure.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

