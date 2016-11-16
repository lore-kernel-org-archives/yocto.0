Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8A1EE00C45; Wed, 16 Nov 2016 04:08:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DC5AE00C1A
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 04:08:14 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 29CF268A01A; Wed, 16 Nov 2016 12:08:14 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 75C8E68A019;
	Wed, 16 Nov 2016 12:08:11 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 0AEA66740169;
	Wed, 16 Nov 2016 13:08:11 +0100 (CET)
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
References: <e433f791-614b-6f53-edc0-e8fe34c7341a@mlbassoc.com>
	<CAHiDW_HZLEGiPG7nXOx5hPce4WTC+v0Mkhv6+TGB1=wsCO+rVg@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <0583f5ed-b9d5-936b-5477-db944299c064@mlbassoc.com>
Date: Wed, 16 Nov 2016 13:08:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAHiDW_HZLEGiPG7nXOx5hPce4WTC+v0Mkhv6+TGB1=wsCO+rVg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel too old?
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
X-List-Received-Date: Wed, 16 Nov 2016 12:08:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-11-16 12:55, Jussi Kukkonen wrote:
> On 16 November 2016 at 13:29, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     I'm trying to run some user code on a [closed] box that it's
>     difficult (maybe impossible) to update the kernel.  To date,
>     I've been able to create my own user environment using Yocto
>     and then just 'chroot XXX'.  That came to an end today with
>     the latest (version 2.2) like this:
>
>       DiskStation> chroot /volume1/MY.test/
>       FATAL: kernel too old
>       DiskStation> cat /proc/version
>       Linux version 2.6.32.12 (root@build5) (gcc version 4.3.2 (GCC) ) #3202 SMP Fri Mar 1 01:04:06 CST 2013
>
>     Where '/volume1/MY.test' is my Yocto-built root file system.
>
>     Is there any way around this if I can't update the running kernel?
>
>
> Modern glibc needs linux 3.2, see http://repo.or.cz/glibc.git/commit/5b4ecd3f95695ef593e4474b4ab5a117291ba5fc
> (apparently on x86* you could still get away with setting OLDEST_KERNEL to 2.6.32).

Given that my code was running fine as recently as mid-summer with
a version of glibc that was called 2.24-r0, do you think I can get
away with this?  Can I just set that variable in local.conf?

(I know it's only speculation...)

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

