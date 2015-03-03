Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2DB6E0076F; Tue,  3 Mar 2015 08:46:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3061E00750
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2015 08:46:53 -0800 (PST)
Received: from [99.240.204.5] (port=42495 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YSpy8-0003kX-7P; Tue, 03 Mar 2015 11:46:52 -0500
Date: Tue, 3 Mar 2015 11:46:49 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@Device-040570
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <54F5E194.5010404@windriver.com>
Message-ID: <alpine.LFD.2.11.1503031145400.16747@Device-040570>
References: <alpine.LFD.2.11.1503030407310.18866@localhost>
	<alpine.LFD.2.11.1503030537270.24261@localhost>
	<54F5C552.5000406@windriver.com>
	<alpine.LFD.2.11.1503031124590.15385@Device-040570>
	<54F5E194.5010404@windriver.com>
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
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 03 Mar 2015 16:46:59 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 3 Mar 2015, Bruce Ashfield wrote:

... snip ...

> This format:  KERNEL_FEATURES="features/netfilter"
>
> Is the historical remnant. The tools can convert that to
> features/netfilter/netfiler.scc internally. It was a shortcut to
> make the features more human readable when they followed that
> defined form "<dirname>/<dirname>.scc"
>
> >
> >    as it stands now, it would *appear* that the statement:
> >
> >    KERNEL_FEATURES += "features/netfilter.scc"
> >
> > is simply wrong and can't possibly work, correct?
>
> That one is wrong, but the tools can also do a basename before
> running the test, which converts it to that other format, and
> then it can be expanded to find the feature description.
>
> Both are non-obvious, and error prone .. hence why they are not
> used anymore.
>
> So the answer is that the docs should be updated to purge the
> old references.

  thank you, that was the "A" answer.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

