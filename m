Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB575E00935; Tue,  7 Feb 2017 06:31:53 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BD5EE0083C
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 06:31:49 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20170207143148135_0486
	for <yocto@yoctoproject.org>; Tue, 07 Feb 2017 14:31:48 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=44320 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cb6o2-0003QZ-6I
	for yocto@yoctoproject.org; Tue, 07 Feb 2017 09:31:42 -0500
Date: Tue, 7 Feb 2017 09:31:40 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1702070921520.13830@uk63952.mitel.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: is there a list somewhere of OE/YP-supported system perf/monitoring tools?
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
X-List-Received-Date: Tue, 07 Feb 2017 14:31:53 -0000
Content-Type: text/plain; charset=US-ASCII


  colleague asked me for a list of OE/YP recipes for monitoring system
performance/resource utilization/profiling, i'm unaware of any single
list that tracks that sort of thing so i'll just ask what people are
aware of. just off the top of my head:

 * sysstat
 * atop
 * collectd
 * netdata
 * rrdtool
 * dstat

i'm going to stop there since that's just a sample list. what other
recipes should be added to that list that people find spectacularly
useful? thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


