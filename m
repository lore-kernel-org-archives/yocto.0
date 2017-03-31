Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99FB2E00A71; Thu, 30 Mar 2017 21:07:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EA4BE009DA
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 21:07:27 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id C075C68A01A; Fri, 31 Mar 2017 05:07:26 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 5F79568A01A;
	Fri, 31 Mar 2017 05:07:26 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 04D7467403CD;
	Fri, 31 Mar 2017 06:07:25 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <b1ac4315-7369-b67a-ae61-f85bb2e82155@mlbassoc.com>
Date: Fri, 31 Mar 2017 06:07:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
Subject: GCC on ARM
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
X-List-Received-Date: Fri, 31 Mar 2017 04:07:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

[slightly off-topic]

I work with a number of embedded ARM devices, all with different
processors, hence somewhat different tuning and build directories:
   Raspberry-Pi (1,2,3 - mostly 3):
     TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4 callconvention-hard cortexa7"
     build dirs:
       tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi
   BeagleBoneBlack:
     TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard"
     build dirs:
       tmp/work/armv7ahf-neon-poky-linux-gnueabi
   i.MX6:
     TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard cortexa9"
     build dirs:
       tmp/work/cortexa9hf-neon-poky-linux-gnueabi
       tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi
       tmp/work/cortexa9t2hf-neon-mx6qdl-poky-linux-gnueabi

What I'm wondering is, except for the obvious programs that use SoC specific
functions like the IPU/GPU on the i.MX6, how different are these really?  So
much so that they have to all have unique binaries?  Surely I could build
busybox or python and run the same binary on all three?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

