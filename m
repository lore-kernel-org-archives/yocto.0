Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C9CFE00905; Mon, 16 Jan 2017 02:30:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF45AE00805
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 02:30:19 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 79F0A68A01C; Mon, 16 Jan 2017 10:30:18 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 1517A68A019;
	Mon, 16 Jan 2017 10:30:16 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id BCBBC6740173;
	Mon, 16 Jan 2017 11:30:15 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <f9e52966-6c08-6cfe-4e97-528f83d63a44@mlbassoc.com>
Date: Mon, 16 Jan 2017 11:30:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
Subject: Debug packages and source files
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
X-List-Received-Date: Mon, 16 Jan 2017 10:30:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

In trying to debug my Xorg server problem, I've installed a
number of xxx-dbg packages (using IPK/OPKG).  One thing that
I noticed is that for some of them, e.g. xserver-xorg, I got
a full source tree which works great for debugging with GDB.
Some other packages, e.g. xf86-video-imxfb-vivante which is
the hardware driver for the i.MX6Q display (VPU/GPU) has none :-(

Any ideas why the difference and more importantly, how I might
arrange to get the sources for xf86-video-imxfb-vivante?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

