Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41793E0083A; Sat, 10 Jan 2015 05:46:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8111CE0070B
	for <yocto@yoctoproject.org>; Sat, 10 Jan 2015 05:46:52 -0800 (PST)
Received: from [70.30.87.145] (port=35378 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y9wNM-0007KU-Fc
	for yocto@yoctoproject.org; Sat, 10 Jan 2015 08:46:48 -0500
Date: Sat, 10 Jan 2015 08:46:47 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1501100842310.6408@localhost>
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
Subject: ref manual, 2.5, "Speeding Up the Build, " seems a bit confusing
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
X-List-Received-Date: Sat, 10 Jan 2015 13:46:59 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  from that section:

"If you need to achieve even faster builds than what the build system
produces by default, you can consider and implement some of the
following:

  * BB_NUMBER_THREADS, BB_NUMBER_PARSE_THREADS, and PARALLEL_MAKE: As
previously mentioned, the build system scales the values for these
variables. However, you can manually override them in your local.conf
file if you are not satisfied with the defaults."

  but, as i read it from bitbake.conf and bitbake's cooker.py, all
three of those values are already calculated to max out on whatever
dev host is being used:

self.num_processes = int(self.cfgdata.getVar("BB_NUMBER_PARSE_THREADS", True) or
          multiprocessing.cpu_count())

# Default to setting automatically based on cpu count
BB_NUMBER_THREADS ?= "${@oe.utils.cpu_count()}"

# Default to setting automatically based on cpu count
PARALLEL_MAKE ?= "-j ${@oe.utils.cpu_count()}"

  so given these dev host-based calculations, how exactly would the
developer manually set them to get even *better* performance? or am i
misreading something?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


