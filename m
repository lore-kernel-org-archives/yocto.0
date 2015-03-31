Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18EC5E0059F; Tue, 31 Mar 2015 15:26:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB78FE0049A
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 15:26:42 -0700 (PDT)
Received: from [99.240.204.5] (port=51522 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Yd4cW-0006z1-M8
	for yocto@yoctoproject.org; Tue, 31 Mar 2015 18:26:52 -0400
Date: Tue, 31 Mar 2015 18:26:38 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1503311824570.28969@localhost>
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
Subject: "fatal: A branch named 'meta-orig' already exists."
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
X-List-Received-Date: Tue, 31 Mar 2015 22:26:45 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  oh, what fresh hell is this?

... snip ...
NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_validate_branches (log file is located at
/home/rpjday/oe/builds/qemux86/tmp/work/qemux86-poky-linux/linux-yocto/3.19.2+gitAUTOINC+9e70b482d3_31b35da6a5-r0/temp/log.do_validate_branches.17524)
ERROR: Logfile of failure stored in:
/home/rpjday/oe/builds/qemux86/tmp/work/qemux86-poky-linux/linux-yocto/3.19.2+gitAUTOINC+9e70b482d3_31b35da6a5-r0/temp/log.do_validate_branches.17524
Log data follows:
| DEBUG: Executing shell function do_validate_branches
| NOTE: Setting branch meta to
9e70b482d3773abf92c9c5850e134cbca1d5651f
| fatal: A branch named 'meta-orig' already exists.

  this is building core-image-minimal for qemux86, and i'm assuming
this is not fedora rawhide related.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

