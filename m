Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35F5CE00970; Mon, 27 Feb 2017 01:54:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E829DE00874
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 01:54:19 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20170227095417447_0685
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 01:54:17 -0800
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=18044 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1ciI0Q-0000cR-VB
	for yocto@yoctoproject.org; Mon, 27 Feb 2017 04:54:11 -0500
Date: Mon, 27 Feb 2017 04:54:08 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1702270446460.4745@uk63952.mitel.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: couple questions about kernel-dev manual, section 2.6, "emenlow" branch
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
X-List-Received-Date: Mon, 27 Feb 2017 09:54:23 -0000
Content-Type: text/plain; charset=US-ASCII


  still working my way through the kernel-dev manual, and a couple
oddities in section 2.6.

  first, the example given uses the (alleged) standard/emenlow branch,
which i'm pretty sure doesn't exist anymore, yes? if one is going to
use an example, i suggest one base that example on one of the YP
reference BSPs that's guaranteed to always exist, such as beagleboard
or arm-versatile-926ejs.

  next, i'm assuming that one would be running those "git whatchanged"
commands in the project directory, under
tmp/work-shared/<target>/kernel-source, yes? it's just not made clear
in that section where a reader would be doing those things.

  finally, section 2.6.1 reads:

"Here is an example that looks at what has changed in the emenlow
branch of the linux-yocto-3.19 kernel."

  what does the kernel version of 3.19 have to do with those git
commands? how do those commands depend on the particular version of
the linux-yocto recipe you're using?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


