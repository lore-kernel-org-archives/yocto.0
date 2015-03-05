Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8D41E008CC; Wed,  4 Mar 2015 23:53:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85338E00718
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 23:53:48 -0800 (PST)
Received: from [99.240.204.5] (port=51802 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YTQbL-0001ZT-Kn; Thu, 05 Mar 2015 02:53:47 -0500
Date: Thu, 5 Mar 2015 02:53:43 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@Device-040570
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <54F77A6C.2090901@windriver.com>
Message-ID: <alpine.LFD.2.11.1503050250590.19909@Device-040570>
References: <alpine.LFD.2.11.1503041007020.13143@Device-040570>
	<54F77A6C.2090901@windriver.com>
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
Subject: Re: should YP docs explain "type=kmeta" and "destsuffix="?
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
X-List-Received-Date: Thu, 05 Mar 2015 07:53:50 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


On Wed, 4 Mar 2015, Bruce Ashfield wrote:

... snip my stuff ...

> It's not really a typical developer option. It is for maintaining a
> separate repository of meta-data, and then allowing the tools and
> kernel to use that meta data as part of the build.
>
> Only someone maintaining (and sharing) a large set of their own
> kernel fragments would be interested in this.
>
> So I'm on the fence if it is worth documenting, but lean towards at
> least mentioning it and offering a simple use case.

  just FYI, of all the layers i have checked out and try to keep up
with, the meta-xilinx layer is the only one that takes advantage of
that "type=kmeta" feature and nathan rossi on that list suggested that
he did that just to get something working and out the door, so it's
entirely possible that that really *isn't* a normal developer option
that needs to be documented.

  so i'll leave this with people higher up the food chain ... perhaps
it really is something that needs explanation only in an advanced
kernel workflow section or something like that.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

