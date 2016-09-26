Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2931EE00D64; Mon, 26 Sep 2016 00:37:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B06C3E00C17
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 00:37:22 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id D3C3868A01A; Mon, 26 Sep 2016 08:37:20 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 73D2868A019;
	Mon, 26 Sep 2016 08:37:20 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id C756D6740258;
	Mon, 26 Sep 2016 09:37:19 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <6bb7a3dc-56fd-7fed-07a7-15229d8a99ab@mlbassoc.com>
Date: Mon, 26 Sep 2016 09:37:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
Subject: Generic watchdog question
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
X-List-Received-Date: Mon, 26 Sep 2016 07:37:25 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

A little off-topic but driven by some recent changes in OE-core.

My board has two watchdog devices - one on the SoC and the
other is an external device.  With my latest kernel (4.1.15)
I have these devices:

   # ls -l /dev/watch*
   crw------- 1 root root  10, 130 Jan  3  1970 /dev/watchdog
   crw------- 1 root root 251,   0 Jan  3  1970 /dev/watchdog0
   crw------- 1 root root 251,   1 Jan  3  1970 /dev/watchdog1

I've only been able to get my watchdog to "feel happy" when I
use /dev/watchdog1 as the device being watched over by the
watchdog processes.  I'm just wondering what those other devices
are - maybe /dev/watchdog is supposed to be a composite (although
that doesn't seem to be the case)

Can anyone explain how this is expected to work, especially in
light of the recent changes to the watchdog recipes in OE-core?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

