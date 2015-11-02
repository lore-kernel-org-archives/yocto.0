Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB487E00B31; Mon,  2 Nov 2015 09:54:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9A6BE00B04
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 09:54:52 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20151102175441674_0684
	for <yocto@yoctoproject.org>; Mon, 02 Nov 2015 17:54:41 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=33702 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1ZtJKJ-0004Da-Cj
	for yocto@yoctoproject.org; Mon, 02 Nov 2015 12:55:27 -0500
Date: Mon, 2 Nov 2015 12:54:33 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1511021251410.10363@localhost>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: should layers define BB_DANGLINGAPPENDS_WARNONLY ?= "1"?
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
X-List-Received-Date: Mon, 02 Nov 2015 17:54:54 -0000
Content-Type: text/plain; charset=US-ASCII


  perusing the meta-musl layer, and noticed in layer.conf the line:

BB_DANGLINGAPPENDS_WARNONLY ?= "1"

i thought this was a bit odd since (at least to me) it seems like the
sort of thing a *developer* might set in their local.conf to
temporarily deal with a dangling .bbappend file -- it never occurred
to me that it would be appropriate for a layer to define that value
itself as an inherent part of its own ... layerness.

  a quick grep of the couple dozen layers i have checked out revealed
two layers that do that:

./meta-musl/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY ?= "1"
./meta-yocto-kernel-extras/meta-kernel-dev/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY
?= "true"

  i'm curious what others think of this approach.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


