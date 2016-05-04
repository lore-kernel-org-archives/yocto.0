Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0BBEE00927; Wed,  4 May 2016 04:21:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87D15E00870
	for <yocto@yoctoproject.org>; Wed,  4 May 2016 04:21:11 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20160504112109303_0485
	for <yocto@yoctoproject.org>; Wed, 04 May 2016 11:21:09 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=22293 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1axut6-0001cv-GI
	for yocto@yoctoproject.org; Wed, 04 May 2016 07:22:40 -0400
Date: Wed, 4 May 2016 07:20:47 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1605040709320.20578@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: docs: standardizing on "+=" versus "_append" for clarity
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
X-List-Received-Date: Wed, 04 May 2016 11:21:18 -0000
Content-Type: text/plain; charset=US-ASCII


  when i teach OE/YP classes, a moderately regular question is when to
use "+=" versus "_append", given that some of the docs confusingly
bounce back and forth for no apparent reason.

  eg: in-progress kernel dev manual, section 2.2.3, contains snippets:

     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
     SRC_URI += "file://defconfig"

     ... snip ...

     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
     SRC_URI += "file://8250.cfg"

but down in section 2.7, we see:

     SRC_URI_append = " file://test.scc"

     ... snip ...

     KERNEL_FEATURES_append = " test.scc"

and in section 3.2:

     KERNEL_FEATURES += "features/netfilter/netfilter.scc"

     ... snip ...

     KERNEL_FEATURES_append_qemux86 = " cfg/sound.scc"

i understand that there are times when you *want* _append to delay
processing until the end, and i understand that conditional appending
with OVERRIDES requires the "_append" syntax, but other than these
special cases, is there an encouraged standard to use "+=" if either
syntax will do?

rday

p.s. i can assure people that it's exactly this kind of bouncing back
and forth that confuses readers, who suddenly think, "wait a minute, i
thought i understood this, but maybe i don't."

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


