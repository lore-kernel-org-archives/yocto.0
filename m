Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 002D1E008F1; Tue, 22 Mar 2016 21:53:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AE7DE008C6
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 21:53:50 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 8A8CE68A01C; Wed, 23 Mar 2016 04:53:48 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id DB39B68A019;
	Wed, 23 Mar 2016 04:53:47 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 8393D67400A8;
	Wed, 23 Mar 2016 05:53:47 +0100 (CET)
To: yocto discussion <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56F2215B.1000309@mlbassoc.com>
Date: Wed, 23 Mar 2016 05:53:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
Subject: perl 5.22 and 32 bit targets
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
X-List-Received-Date: Wed, 23 Mar 2016 04:53:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I hope this is the correct place to discuss this problem.  It
is all about a difference in behavior between a program built
using bitbake/OE (only OE-core is needed) vs building the program
on the target hardware itself.

I've been struggling with this problem since perl was upgraded
to version 5.22.  I'm working on Amanda (Advanced Maryland Archive
tool) which is written primarily in perl and uses swig interfaces
to access native C functions.  This code works great when using
the previous perl (5.20.x) but fails on all 32 bit targets with
perl 5.22

The interesting thing is that if I build Amanda on my target
directly (using SDK tools), it works perfectly even with perl
5.22, so it seems that there is some [subtle] difference between
building using bitbake/OE than when built on the self-hosted
target.  I've compared the builds and the only thing I could
find (from the output of configure) is a difference in sizeof(off_t)
Sadly, when I tried to adjust this in the OE build, it didn't
make any difference, but perhaps I didn't make this change
correctly or completely.

Anyway, I'm looking for some help to solve this.  I've put
all the relevant pieces and notes about the process at:
   https://github.com/GaryThomas/meta-amanda.git

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

