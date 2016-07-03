Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCE79E009C9; Sun,  3 Jul 2016 10:47:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54579E009C9
	for <yocto@yoctoproject.org>; Sun,  3 Jul 2016 10:46:58 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20160703174656572_0486
	for <yocto@yoctoproject.org>; Sun, 03 Jul 2016 17:46:56 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=43664 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bJlVY-0001Hw-5F
	for yocto@yoctoproject.org; Sun, 03 Jul 2016 13:48:40 -0400
Date: Sun, 3 Jul 2016 13:45:58 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1607031342300.19699@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: Poky/MPC8315E-RDB: "preferred version v2013.07% of u-boot not available (for item u-boot)"
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
X-List-Received-Date: Sun, 03 Jul 2016 17:47:01 -0000
Content-Type: text/plain; charset=US-ASCII


  building with current poky for yocto bsp ref board MPC8315E-RDB,
and it still prefers a version of u-boot that is no longer available:

NOTE: Resolving any missing task queue dependencies
NOTE: preferred version v2013.07% of u-boot not available (for item u-boot)
NOTE: versions of u-boot available: v2016.03+gitAUTOINC+df61a74e68
NOTE: preferred version v2013.07% of u-boot not available (for item u-boot)
NOTE: versions of u-boot available: v2016.03+gitAUTOINC+df61a74e68
NOTE: preferred version v2013.07% of u-boot not available (for item u-boot-dev)
NOTE: versions of u-boot available: v2016.03+gitAUTOINC+df61a74e68

Build Configuration:
BB_VERSION        = "1.31.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "powerpc-poky-linux"
MACHINE           = "mpc8315e-rdb"
DISTRO            = "poky"
DISTRO_VERSION    = "2.1+snapshot-20160703"
TUNE_FEATURES     = "m32 fpu-hard ppce300c3"
TARGET_FPU        = ""
meta
meta-poky
meta-yocto-bsp    = "master:5c11e365e19357f721c49d076971567e7b64b61b"

  should i submit a patch that just deletes the PREFERRED_VERSION
line?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


