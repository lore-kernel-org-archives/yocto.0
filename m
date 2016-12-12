Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 727A5E00C38; Mon, 12 Dec 2016 07:21:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_PH_BODY_ACCOUNTS_PRE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 TVD_PH_BODY_ACCOUNTS_PRE The body matches phrases such as
	"accounts
	*      suspended", "account credited", "account verification"
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22F48E00C31
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 07:21:41 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20161212152140025_0484
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 15:21:40 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=36755 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cGSQ2-0000HV-If
	for yocto@yoctoproject.org; Mon, 12 Dec 2016 10:21:34 -0500
Date: Mon, 12 Dec 2016 10:20:16 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1612121012290.18661@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: suggestions for version controlling multi-layer reproducible builds?
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
X-List-Received-Date: Mon, 12 Dec 2016 15:21:43 -0000
Content-Type: text/plain; charset=US-ASCII


  (if there's already a doc section for this somewhere, a pointer to
it would be just ducky.)

  if one is building an image for a releasable, commercial product,
and that image involves pulling in numerous layers, then dumping all
sorts of proprietary apps on top of it, what are the possibilities for
how to version number the released images such that, if a client has
an issue, they can identify precisely the state of components that
went into the system they're working with?

  in addition to all of the layers involved in the build, one has to
take into account that, when critical bugs are identified, an updated
RPM might be sent out and applied, whereupon that system's version
number is no longer perfectly accurate. in the end, the state of
someone's running system will be determined by a possibly huge
combination of selected packages, preferred package versions, build
config options, additional user space apps, hot fixes that have been
applied and so on.

  what sort of meaningful "version number" can be applied to something
like that? i'm sure at least a few other people have to be doing
something like that, so i'm open to suggestions.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================



