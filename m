Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48530E00D68; Sun,  5 Jun 2016 09:44:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_00,HEXHASH_WORD
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  2.4 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A039E00D4A
	for <yocto@yoctoproject.org>; Sun,  5 Jun 2016 09:44:08 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 71D4A68A01B; Sun,  5 Jun 2016 17:44:06 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 1D51368A019;
	Sun,  5 Jun 2016 17:44:06 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 508CD67402C6;
	Sun,  5 Jun 2016 18:44:05 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <575456D5.4080800@mlbassoc.com>
Date: Sun, 5 Jun 2016 18:44:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
Subject: What's this
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
X-List-Received-Date: Sun, 05 Jun 2016 16:44:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I just updated my Poky repo and did a rebuild and saw this "error"
(although it carried on with the build):
ERROR: base-files-3.0.14-r89 do_install: Taskhash mismatch ceb25febc6f11a5cc2b3c4a4b0b2c136 verses 
44f498452dfce5875451bca66b230e31 for /local/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb.do_install
ERROR: Taskhash mismatch ceb25febc6f11a5cc2b3c4a4b0b2c136 verses 44f498452dfce5875451bca66b230e31 for 
/local/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb.do_install

What does this mean?  Should I be worried?

meta              = "master:04319c0340010c4e0f78cab252cfcb0ebe23ee84"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

