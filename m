Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97E79E0076F; Tue,  3 Mar 2015 08:27:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A419EE00750
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2015 08:27:42 -0800 (PST)
Received: from [99.240.204.5] (port=42356 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YSpfX-0001lD-Qx; Tue, 03 Mar 2015 11:27:39 -0500
Date: Tue, 3 Mar 2015 11:27:37 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@Device-040570
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <54F5C552.5000406@windriver.com>
Message-ID: <alpine.LFD.2.11.1503031124590.15385@Device-040570>
References: <alpine.LFD.2.11.1503030407310.18866@localhost>
	<alpine.LFD.2.11.1503030537270.24261@localhost>
	<54F5C552.5000406@windriver.com>
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
X-List-Received-Date: Tue, 03 Mar 2015 16:27:48 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 3 Mar 2015, Bruce Ashfield wrote:

> On 15-03-03 05:39 AM, Robert P. J. Day wrote:
> > On Tue, 3 Mar 2015, Robert P. J. Day wrote:
> >
> > >
> > >    kernel dev manual uses the KERNEL_FEATURES format of:
> > >
> > >       KERNEL_FEATURES += "features/netfilter.scc"
> > >
> > > while ref manual variable glossary uses
> > >
> > >       KERNEL_FEATURES="features/netfilter"
> > >
> > > is there a preference for the usage of the .scc suffix? (i'm assuming
> > > they're both valid, i didn't actually check that. maybe i should check
> > > that ...)
> >
> >    hang on, i think there's an error in the docs ... if i check the
> > meta branch, i see that the actual structure for the netfilter feature
> > is "features/netfilter/netfilter.scc", so "features/netfilter.scc"
> > shouldn't even work, should it? historical remnant?
>
> It works, but it is an old shortcut that isn't emphasized or used.
> So yes, its a historical remnant, and explicit .scc references are
> preferred.

  wait ... just to be clear, you're saying that referring to a
features *directory* is a historical remnant? note above that i'm
asking about what appears to be a historical remnant where it looks
like netfilter used to be a .scc file directly under features/, now
it's in a subdirectory.

  as it stands now, it would *appear* that the statement:

  KERNEL_FEATURES += "features/netfilter.scc"

is simply wrong and can't possibly work, correct?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


