Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 934A3E00AD8; Mon,  6 Mar 2017 04:15:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HEXHASH_WORD
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61573E00935
	for <yocto@yoctoproject.org>; Mon,  6 Mar 2017 04:15:53 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 44FBA68A01C; Mon,  6 Mar 2017 12:15:52 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id DE08268A019;
	Mon,  6 Mar 2017 12:15:51 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 5D6DB674031F;
	Mon,  6 Mar 2017 13:15:51 +0100 (CET)
From: Gary Thomas <gary@mlbassoc.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <0120add4-d828-8f90-1f31-b5ee5e28975b@mlbassoc.com>
Date: Mon, 6 Mar 2017 13:15:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
Subject: Strange error
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
X-List-Received-Date: Mon, 06 Mar 2017 12:15:57 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I wanted to change (disable) extra getty tasks in my target image.  I'm using
sysvinit, so I added this line to my <MACHINE>.conf:
   SYSVINIT_ENABLED_GETTYS = ""

I thought that would get the sysvinit-inittab package rebuilt as do_install
uses that variable, but alas it did not.

So I took out the big hammer and tried:

$ bitbake sysvinit-inittab -c cleanall
$ bitbake sysvinit-inittab

Now I get this error:

ERROR: When reparsing /local/poky-cutting-edge/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb.do_install, the 
basehash value changed from 2b888d6b72e00c404fc7e17436e465eb to 0fd6c915488c10c37cdfd6a674354e65. The metadata is not 
deterministic and this needs to be fixed.
ERROR: Taskhash mismatch 15202ef0ff19a8f7a485533510dab7e8 versus 81fae57019b1a17967258945560affc1 for 
/local/poky-cutting-edge/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb.do_install

So I took out an even bigger hammer:
$ find sstate-cache/ -name "*sysvinit-inittab*" | xargs -t rm -f
$ bitbake sysvinit-inittab -c cleanall
$ bitbake sysvinit-inittab

and I still get the same errors.  How can this be?  How do I get
to rebuild my sysvinit-inittab recipe and make the results stick?

Thanks for any pointers

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

