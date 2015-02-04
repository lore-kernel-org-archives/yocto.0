Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FC3BE00827; Wed,  4 Feb 2015 08:20:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33577E00753
	for <yocto@yoctoproject.org>; Wed,  4 Feb 2015 08:20:21 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 3232DF8119A; Wed,  4 Feb 2015 09:20:19 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 37389F8119A;
	Wed,  4 Feb 2015 09:20:19 -0700 (MST)
Message-ID: <54D246C6.8080100@mlbassoc.com>
Date: Wed, 04 Feb 2015 09:20:22 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: package-index error
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
X-List-Received-Date: Wed, 04 Feb 2015 16:20:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

As part of developing a new package for my system,
I've been doing a number of repeated builds like this:
   $ bitbake some-package && bitbake package-index

Over the past two days, I probably ran this command sequence
50 times (lots of iterative development).  On two occasions,
it failed with an error like this:
==============================================================
Build Configuration:
BB_VERSION        = "1.25.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-13.10"
TARGET_SYS        = "arm-amltd-linux-gnueabi"
MACHINE           = "teton-p0381"
DISTRO            = "amltd"
DISTRO_VERSION    = "1.7+snapshot-20150204"
TUNE_FEATURES     = "arm armv7a vfp neon callconvention-hard cortexa7"
TARGET_FPU        = "vfp-neon"
meta              = "master:22c38e2d8a058619e3d05534b5e830b750aa4241"
meta-oe           = "cutting-edge:3e0992a4ff1cabb30c2ab416bdfc82cf0b7745e3"
meta-amltd        = "cutting-edge:180686ee3a8d1d94dd368af05a025b0efbba07ba"
meta-fsl-arm      = "master:2d9b23e7ca473eaf33b8a96839686a331339e43a"
meta-fsl-arm-extra = "master:6054ad663ae2067607b1bb207dace45a447a0a74"
meta-teton-ls1-p0381 = "cutting-edge:ab89731bb0fed2f9fac53f499644b3522016f4b1"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Index creation command '/local/p0381-cutting-edge_2014-11-12/tmp/sysroots/x86_64-linux/usr/bin/opkg-make-index -r 
/local/p0381-cutting-edge_2014-11-12/tmp/deploy/ipk/all/Packages -p /local/p0381-cutting-edge_2014-11-12/tmp/deploy/ipk/all/Packages -m 
/local/p0381-cutting-edge_2014-11-12/tmp/deploy/ipk/all' failed with return code 1:
Traceback (most recent call last):
   File "/local/p0381-cutting-edge_2014-11-12/tmp/sysroots/x86_64-linux/usr/bin/opkg-make-index", line 87, in <module>
     s, f = l.split(" ", 1)
ValueError: need more than 1 value to unpack

ERROR: Function failed: do_package_index
ERROR: Logfile of failure stored in: /local/p0381-cutting-edge_2014-11-12/tmp/work/cortexa7hf-vfp-neon-amltd-linux-gnueabi/package-index/1.0-r0/temp/log.do_package_index.31738
ERROR: Task 7 (/local/poky-cutting-edge/meta/recipes-core/meta/package-index.bb, do_package_index) failed with exit code '1'
NOTE: Tasks Summary: Attempted 118 tasks of which 117 didn't need to be rerun and 1 failed.
No currently running tasks (117 of 119)
==============================================================

I've no idea what the error means, nor how I might track it
down.  As mentioned, it's very sporadic and certainly not
stochastically repeatable.  If I immediately rerun the
'bitbake package-index' it works just fine.

Any ideas what this might be?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

