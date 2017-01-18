Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 885DDE00992; Tue, 17 Jan 2017 23:03:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D346E0098A
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 23:02:56 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 22BEE68A019; Wed, 18 Jan 2017 07:02:55 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id B684468A019;
	Wed, 18 Jan 2017 07:02:54 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 524FB67402AC;
	Wed, 18 Jan 2017 08:02:54 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <48565564-9e2f-f8e7-e3da-21aad9fca0a3@mlbassoc.com>
Date: Wed, 18 Jan 2017 08:02:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
Subject: x86 testing
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
X-List-Received-Date: Wed, 18 Jan 2017 07:03:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to track down some recent changes in the X server
(using the latest Poky/Yocto master).  I've had failures on
a number of the embedded targets I work with, so I thought
I'd give it a go on platforms with a larger base - x86 machines.

It used to be that I could run qemu and it would pop up a separate
window that emulated a display+keyboard+mouse.  That doesn't seem
to be the same now, or at least I don't see how to make it work.
Advice on this would be great as I need to test the "native" X
setup, not VNC connections.

I'd also be happy to try this on real hardware, e.g. my wife's
laptop, but I need some way to do that non-destructively.  Again,
pointers would be greatly appreciated.

Once I get this figured out, I'll disappear back down my embedded
rabbit hole...

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

