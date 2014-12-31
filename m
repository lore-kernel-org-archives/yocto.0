Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD4E7E005B4; Wed, 31 Dec 2014 02:06:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69834E002F9
	for <yocto@yoctoproject.org>; Wed, 31 Dec 2014 02:06:19 -0800 (PST)
Received: from [99.240.204.5] (port=38092 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y6GAM-0000VA-NM; Wed, 31 Dec 2014 05:06:10 -0500
Date: Wed, 31 Dec 2014 05:06:08 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <54A32BC0.3090102@mlbassoc.com>
Message-ID: <alpine.LFD.2.11.1412310504530.30999@localhost>
References: <alpine.LFD.2.11.1412301427370.12620@localhost>
	<54A32BC0.3090102@mlbassoc.com>
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
Cc: yocto@yoctoproject.org
Subject: Re: more BSP Guide pedantry involving customizing a recipe
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
X-List-Received-Date: Wed, 31 Dec 2014 10:06:24 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 30 Dec 2014, Gary Thomas wrote:

> On 2014-12-30 12:31, Robert P. J. Day wrote:
> >
> >    (you can tell i'm bored and want to get back up to speed on stuff
> > ...)
> >
> >    section 1.4 in BSP Guide, "Customizing a Recipe for a BSP", appears
> > to discuss a new layer, "meta-xyz", then suggests the new "interfaces"
> > file for this machine needs to go at the location:
> >
> > meta-xyz/recipes-core/init-ifupdown/files/xyz/interfaces
> >                                            ^^^ ???
> >
> >    but the files/ subdirectory of "xyz/" would appear to be necessary
> > (as we all know) only if this was a more general layer that
> > represented several machines (say, meta-ti) for which we *needed* to
> > distinguish between machines.
> >
> >    so while the above might be technically correct, it might mislead
> > readers to think they *needed* to create a "xyz/" subdirectory for
> > that overriding interfaces file.
>
> Actually, it *is* necessary if meta-xyz supports more than one
> MACHINE and those targets have unique versions of the 'interfaces'
> file (which is common since this file is being tailored for a
> particular target machine)

  i realize that, but it's not clear from the wording of that section
that that could be a possibility. i just like to avoid potential
confusion, and giving the reader the wrong impression.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

