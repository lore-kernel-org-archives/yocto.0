Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72534E00C5D; Wed,  6 Jul 2016 06:46:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F18E2E0083D
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 06:46:04 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20160706134603218_0685
	for <yocto@yoctoproject.org>; Wed, 06 Jul 2016 06:46:03 -0700
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=26729 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bKnB6-0005Kl-W0
	for yocto@yoctoproject.org; Wed, 06 Jul 2016 09:47:49 -0400
Date: Wed, 6 Jul 2016 09:45:04 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1607060937040.30689@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: for MPC8315E-RDB ref board, is CONFIG_SYS_MONITOR_LEN set too low?
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
X-List-Received-Date: Wed, 06 Jul 2016 13:46:06 -0000
Content-Type: text/plain; charset=US-ASCII


  it's possible i'm just hopelessly misreading something, but i just
built (using pure defaults) an image for my MPC8315E-RDB dev kit, and
while the current board config header file
include/configs/MPC8315ERDB.h contains:

/*
 * The reserved memory
 */
#define CONFIG_SYS_MONITOR_LEN  (384 * 1024) /* Reserve 384 kB for Mon */

the actual u-boot binary constructed for this target was:

  -rwxr-xr-x. 2 rpjday rpjday 423964 Jul  5 06:46  \
	u-boot-mpc8315e-rdb-v2016.03+gitAUTOINC+df61a74e68-r0.bin

  given that that same file defines:

  #if !defined(CONFIG_SYS_RAMBOOT)
        #define CONFIG_ENV_IS_IN_FLASH  1
        #define CONFIG_ENV_ADDR         \
                        (CONFIG_SYS_MONITOR_BASE + CONFIG_SYS_MONITOR_LEN)

isn't that going to result in persistent u-boot environment being
saved over top of the tail end of u-boot in NOR flash?

  or am i just confused?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


