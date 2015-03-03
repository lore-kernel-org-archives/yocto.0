Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E813E00810; Tue,  3 Mar 2015 02:40:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3566E003FA
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2015 02:39:56 -0800 (PST)
Received: from [99.240.204.5] (port=39836 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YSkF0-0000KH-Lj
	for yocto@yoctoproject.org; Tue, 03 Mar 2015 05:39:54 -0500
Date: Tue, 3 Mar 2015 05:39:51 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
In-Reply-To: <alpine.LFD.2.11.1503030407310.18866@localhost>
Message-ID: <alpine.LFD.2.11.1503030537270.24261@localhost>
References: <alpine.LFD.2.11.1503030407310.18866@localhost>
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
Subject: Re: preferred KERNEL_FEATURES format: netfilter or netfilter.scc?
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
X-List-Received-Date: Tue, 03 Mar 2015 10:40:01 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 3 Mar 2015, Robert P. J. Day wrote:

>
>   kernel dev manual uses the KERNEL_FEATURES format of:
>
>      KERNEL_FEATURES += "features/netfilter.scc"
>
> while ref manual variable glossary uses
>
>      KERNEL_FEATURES="features/netfilter"
>
> is there a preference for the usage of the .scc suffix? (i'm assuming
> they're both valid, i didn't actually check that. maybe i should check
> that ...)

  hang on, i think there's an error in the docs ... if i check the
meta branch, i see that the actual structure for the netfilter feature
is "features/netfilter/netfilter.scc", so "features/netfilter.scc"
shouldn't even work, should it? historical remnant?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

