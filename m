Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D82AE00939; Tue, 16 Jun 2015 12:02:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 495C1E00496
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 12:02:00 -0700 (PDT)
Received: from [99.240.204.5] (port=55848 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Z4w80-00010M-7x; Tue, 16 Jun 2015 15:02:32 -0400
Date: Tue, 16 Jun 2015 15:01:55 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@Device-040570
To: Yocto discussion list <yocto@yoctoproject.org>, 
	meta-freescale@yoctoproject.org
Message-ID: <alpine.LFD.2.11.1506161450490.26405@Device-040570>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: how to "harden" a freescale yocto-produced OS?
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
X-List-Received-Date: Tue, 16 Jun 2015 19:02:05 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i'm mailing to both lists since, while this question relates
specifically to the freescale SDK, i suspect others on the general
yocto list might have some opinions.

  an acquaintance asks if there is a way to security harden an OS
produced by the freescale v1.7 linux sdk, which i'm assuming is the
one available here:

 http://www.freescale.com/webapp/sps/site/prod_summary.jsp?code=SDKLINUX

so, other than the obvious technique of manually crawling over the
build configuration and locking things down, is there in fact a
recommended approach for locking down a yocto build, either in general
or perhaps specifically for the freescale SDK?

rday

p.s. i'm aware of the meta-security layer, although i've never taken a
close look at it. maybe now is the time.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

