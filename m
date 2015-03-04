Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4C95E008CA; Wed,  4 Mar 2015 01:47:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26C53E0076F
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 01:46:54 -0800 (PST)
Received: from [99.240.204.5] (port=43021 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YT5tF-000102-Kl
	for yocto@yoctoproject.org; Wed, 04 Mar 2015 04:46:53 -0500
Date: Wed, 4 Mar 2015 04:46:50 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@Device-040570
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1503040441040.31152@Device-040570>
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
Subject: possible "include" flags within .scc files?
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
X-List-Received-Date: Wed, 04 Mar 2015 09:47:02 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  ok, i might need to switch to decaf shortly ...

  wandering through linux-yocto-3.19 git repo, the meta branch,
collecting examples of things to use in class, and ran across this:

http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.19/tree/meta/cfg/kernel-cache/ktypes/standard/standard.scc?h=meta

and the first few lines:

# Note: if only the features are desired, but not the configuration
#       then this should be included as:
#             include ktypes/standard/standard.scc nocfg
#       if no chained configuration is desired, include it as:
#             include ktypes/standard/standard.scc nocfg inherit

  i was unaware of those flags for include lines, "nocfg" and
"inherit"; they're not mentioned anywhere in the kernel dev manual.
but the "inherit" one doesn't seem right, anyway ... i popped over to
kern-tools and looked at the "spp" script, and i see this:

  # if we have a "nocfg" or "nopatch" on the include directive,
  # then we need to set the variables so they'll be passed down to
  # the nested process call

so the spp script seems to indicate there are two valid include flags,
"nocfg" and "nopatch." should these be doecumented somewhere in the
kernel-dev manual? do they have value for yocto developers beyond
being used for defining kernel types?

  and does that standard.scc file need to be corrected to not refer to
a flag named "inherit"?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

