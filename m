Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B819E00E5E; Fri, 29 Apr 2016 05:06:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E23BE00E5B
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 05:06:34 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20160429120618354_0684;
	Fri, 29 Apr 2016 12:06:18 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=12338 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1aw7D1-0006lX-Qk; Fri, 29 Apr 2016 08:07:47 -0400
Date: Fri, 29 Apr 2016 08:06:07 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <572204CA.1090309@mlbassoc.com>
Message-ID: <alpine.LFD.2.20.1604290753250.4562@localhost.localdomain>
References: <alpine.LFD.2.20.1604280808070.25680@localhost.localdomain>
	<572204CA.1090309@mlbassoc.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: yocto@yoctoproject.org
Subject: Re: what's the "standard" for adding .dts patches to a BSP layer?
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
X-List-Received-Date: Fri, 29 Apr 2016 12:06:38 -0000
Content-Type: text/plain; charset=US-ASCII

On Thu, 28 Apr 2016, Gary Thomas wrote:

> On 2016-04-28 14:14, Robert P. J. Day wrote:
> >
> >    looking for common practice here ... what's the canonical way
> > that one should add content to a .dts file for a new board -- all
> > at once, or broken into patches associated with corresponding .scc
> > files that come into play only if one selects that functionality?
> >
> >    i ask since i'm a big fan of modularity, but that doesn't seem
> > to work very well here. if i start with a baseline .dts file, and
> > break the rest into optional patches, then based on what a
> > developer selects for his build, some of those patches simply
> > aren't going to apply very cleanly.
> >
> >    it would, of course, be easier to just add everything even
> > potentially necessary to the single .dts file, since that's not
> > really adding any actual functionality, just adding more detailed
> > information about the target board (even if it's never used).
> >
> >    thoughts? am i overthinking this?
>
> One common way is to have a .dts (or .dtsi) file that includes all
> of the sections you might want, but leave them disabled, hence not
> changing the actual setup.  Then add snippets (via .scc or patch)
> that enable the sections.  This is how the i.MX6 space
> (FreeScale/NXP boards and products) is managed.

  i'm not sure that's a total solution, for the following general
reason, which might be completely idiotic if i'm misunderstanding
something.

  if i have *any* text file for which i can apply some subset of
possible changes, and those changes are geographically close to each
other, it seems possible that i'll have conflicting patches trying to
be applied next to each other, no? i tried something like that a while
back, and that's exactly what happened.

  as a trivial example (and, again, maybe i'm being clueless about
this and missing an easy solution), say i have two possible lines i
can add to the end of a text file via patches -- patch 1 appends the
line:

  #include feature1

while patch 2 appends the line

  #include feature2

won't i run into trouble based on whether i apply one patch, or the
other, or both? certainly, in some circumstances, *some* patch
application is going to fail. this seems like a simple example of the
more general issue -- it's probably a bad idea to allow the
conditional application of a set of patches to the same text file.

  the simplest solution i've come up with to retain some semblance of
modularity is to have a base .dts file, then a number of specific
.dtsi files, and just flat out include those .dtsi files, whether i
need them or not. or am i missing something obvious?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


