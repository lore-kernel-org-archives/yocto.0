Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B70CE00C3A; Wed, 16 Nov 2016 03:29:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF5B3E00C1A
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 03:29:41 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 63D4568A01C; Wed, 16 Nov 2016 11:29:40 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 187F868A019;
	Wed, 16 Nov 2016 11:29:40 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id B4EA16740070;
	Wed, 16 Nov 2016 12:29:39 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <e433f791-614b-6f53-edc0-e8fe34c7341a@mlbassoc.com>
Date: Wed, 16 Nov 2016 12:29:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
Subject: Kernel too old?
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
X-List-Received-Date: Wed, 16 Nov 2016 11:29:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to run some user code on a [closed] box that it's
difficult (maybe impossible) to update the kernel.  To date,
I've been able to create my own user environment using Yocto
and then just 'chroot XXX'.  That came to an end today with
the latest (version 2.2) like this:

   DiskStation> chroot /volume1/MY.test/
   FATAL: kernel too old
   DiskStation> cat /proc/version
   Linux version 2.6.32.12 (root@build5) (gcc version 4.3.2 (GCC) ) #3202 SMP Fri Mar 1 01:04:06 CST 2013

Where '/volume1/MY.test' is my Yocto-built root file system.

Is there any way around this if I can't update the running kernel?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

