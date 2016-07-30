Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A26CE00E80; Sat, 30 Jul 2016 01:41:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A741AE00D84
	for <yocto@yoctoproject.org>; Sat, 30 Jul 2016 01:41:16 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id A07F268A019; Sat, 30 Jul 2016 09:41:14 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 2E03668A019;
	Sat, 30 Jul 2016 09:41:14 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id DCE7167403EB;
	Sat, 30 Jul 2016 10:41:13 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <579C6829.8080804@mlbassoc.com>
Date: Sat, 30 Jul 2016 10:41:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
Subject: A question of sstate and compilers
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
X-List-Received-Date: Sat, 30 Jul 2016 08:41:19 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to isolate a problem that showed up in my builds
in the last month.  Little has changed in the sources, but
the one big change was I moved from GCC/4.9 to GCC/5.x  On
the surface, this seemed to be a non-consequence, but I have
one very subtle corner case that is now broken.  In an effort
to isolate the issue (I no longer think it was the compiler
change), I went back to GCC/4.9.  This caused my build (tree)
which has existed for many months (the same build tree started
in Feb 2016) to basically rebuild everything.

There's the rub - shouldn't the sstate-cache hold all of those
old bits and just be able to re-stage?  I'm a bit confused about
that.  Even worse, I switched back to GCC/5.x, didn't touch
anything else in my sources or build tree, and now it's off
again, [re]building the majority of my packages.

Any explanations?  Is this correct behavior?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

