Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06227E00CE5; Tue, 19 Jul 2016 23:50:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A30B7E00CE5
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2016 23:50:33 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id C241168A01C; Wed, 20 Jul 2016 07:50:31 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 6F61A68A019;
	Wed, 20 Jul 2016 07:50:31 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 169956740361;
	Wed, 20 Jul 2016 08:50:31 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <578F1F36.5030601@mlbassoc.com>
Date: Wed, 20 Jul 2016 08:50:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
Subject: Stuck tainted task
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
X-List-Received-Date: Wed, 20 Jul 2016 06:50:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Sometimes I like to make a quick change/test, e.g. in the Linux
kernel, and then rebuild using
   % bitbake virtual/kernel -C compile
This works great and does just what I want.  However, the "tainted
task" flag remains even if the recipe is rebuilt from scratch, say
after I commit the change and update my kernel recipe.  Shouldn't
it be cleared if some task (step/phase) which precedes it is run?

To be clear, this message happens every run after the "-C compile" run:
   WARNING: /local/poky-cutting-edge/meta-fsl-arm-extra/recipes-kernel/linux/linux-boundary_3.14.52.bb.do_compile is 
tainted from a forced run
and the only way to clear it is to run
   % bitbake virtual/kernel -c clean

Is this behavior correct, or buggy?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

