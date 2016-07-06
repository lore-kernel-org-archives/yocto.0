Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E2FBE00E06; Wed,  6 Jul 2016 12:27:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E674E00DFF
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 12:27:10 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20160706192708424_0486
	for <yocto@yoctoproject.org>; Wed, 06 Jul 2016 19:27:08 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=53600 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bKsVA-00064g-TJ
	for yocto@yoctoproject.org; Wed, 06 Jul 2016 15:28:53 -0400
Date: Wed, 6 Jul 2016 15:26:09 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1607061517570.3397@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: hang on ... can u-boot binary extend beyond CONFIG_ENV_ADDR?
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
X-List-Received-Date: Wed, 06 Jul 2016 19:27:14 -0000
Content-Type: text/plain; charset=US-ASCII


  ok, one last dumb question before i throw caution to the winds. i'm
looking at the u-boot board defn file for this board,
include/configs/MPC8315ERDB.h, and i see the following in there:

  #if !defined(CONFIG_SYS_RAMBOOT)
        #define CONFIG_ENV_IS_IN_FLASH  1
        #define CONFIG_ENV_ADDR         \
                        (CONFIG_SYS_MONITOR_BASE + CONFIG_SYS_MONITOR_LEN)

i followed all that through, and CONFIG_ENV_ADDR ends up being defined
by:

#define CONFIG_SYS_MONITOR_LEN  (384 * 1024) /* Reserve 384 kB for Mon */

but the u-boot.bin file created via meta-yocto-bsp is larger than
that:

-rwxr-xr-x. 2 rpjday rpjday   423964 Jul  5 06:46
	u-boot-mpc8315e-rdb-v2016.03+gitAUTOINC+df61a74e68-r0.bin

  does that make sense? how can the u-boot binary overlap where the
persistent environment is supposed to live?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


