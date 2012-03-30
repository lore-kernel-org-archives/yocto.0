Return-Path: <tom.rini@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98065E0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 13:45:17 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so794333ghb.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 13:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:organization
	:user-agent; bh=8GFG6J5ZAYledVdfAuyLyaXAI1XlLSxG6M6Gt97+hlI=;
	b=lKndoZ+usapDI0Ikqw+jF33T9vtM74UhofwwlLMT7mGMvrVBn1UC9V/L6eE5kCzzRa
	TAz4GmL0bYTeU/FaDuU7L3R0hYVypW4z3A4mXLuM1iCG8gTvVE0btSO1NUuWMCOalywH
	MSwN96eeI11XyEvf9a+j1ME4IpIVwNFQV2LVcQDB8jdrrFBrxboYdrCIyHNTS2liwjUt
	Vm0zSJeMbMvbvvrrIW/Z7P50AaG3o9DHiD7ePsl6/6Mv4/Yq285fy2FvvycjP9X3F5t4
	Oq41cW11E6yOeUYHmGT7wVyFsgHqol1GctFwFnT5hxDk2Bkl/EU564K1SUEcCYZwgAqg
	1ADA==
Received: by 10.60.2.198 with SMTP id 6mr4810857oew.34.1333140316686;
	Fri, 30 Mar 2012 13:45:16 -0700 (PDT)
Received: from bill-the-cat (ip68-230-54-74.ph.ph.cox.net. [68.230.54.74])
	by mx.google.com with ESMTPS id b6sm10264265obe.12.2012.03.30.13.45.14
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Mar 2012 13:45:15 -0700 (PDT)
Date: Fri, 30 Mar 2012 13:45:16 -0700
From: Tom Rini <tom.rini@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Message-ID: <20120330204516.GA11451@bill-the-cat>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com>
MIME-Version: 1.0
In-Reply-To: <4F7614FE.5000107@windriver.com>
Organization: Texas Instruments
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 30 Mar 2012 20:45:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 30, 2012 at 03:18:06PM -0500, Mark Hatle wrote:
> On 3/30/12 2:33 PM, Koen Kooi wrote:
> >
> >Op 30 mrt. 2012, om 12:26 heeft Mark Hatle het volgende geschreven:
> >
> >>On 3/30/12 1:44 PM, Koen Kooi wrote:
> >>>Hi,
> >>>
> >>>RP said I should raise this on the yocto lists, so here it is:
> >>>
> >>>The Angstrom core team would like to move angstrom under the yocto banner so
> >>>we can formally claim to be 'yocto'.
> >>
> >>For it to be on the yocto project web site, it just need to have the layers hosted on the git.yoctoproject.org.  But there is no "yocto".. It's the Yocto Project, Poky, or specific git repositories.  There is no reason we can't have an angstrom repository.  It could be in a similar format to the Poky repository (everything combined for a single download), or it could be a layer [or layers] that sit on top of Poky.
> >
> >Why on top of poky? I do not want poky, nor do my customers, oe-core is what
> >we need and want. This proposal to move angstrom under yocto is targeted at
> >eliminating 'poky' from the stack while still being able to say 'yocto'.
> 
> Poky is a repository made up of bitbake + oe-core + meta-yocto, as
> well as a distribution definition (in meta-yocto).  I assume
> angstrom has it's own distribution definition.
> 
> So my question is why NOT on top of Poky (the repository, not
> distribution definition)?

What does being on top of poky buy the end user?  ${some_tool} will be
grabbing the repositories so it's not easier to grab bitbake + oe-core
as one.  It adds a barrier to end user to developer conversion since
we'll have a lot of "OK, thanks for your contribution but next time
please base against oe-core directly not poky".  Not to speak for Denys
or Chase but for Arago, why would we want to have the poky sample distro
around on top of our distro?

> >We both know that saying it is 'yocto' is wrong and misleading, but that's
> >what users are asking for and yocto advocates seem to push. Just watch the ELC
> >videos for yocto related presentations, 'yocto' and 'poky' are used
> >interchangeably in most of them.
> >
> >A 'reference' should be just that, a reference, not a mandated part.
> 
> It's hard to call something Yocto Project based unless it used
> something from the Yocto Project.  meta-yocto being on of those
> components.

So bitbake and oe-core don't count because they're external projects?

> There is enough confusion about yocto vs poky vs..  It's slowly
> being reconciled and defined.. but it's a slow process for all of
> us.

Right.  But we should probably reiterate that one of the goals was to be
able to say that components X/Y/Z make up a release.  And while a merged
repo makes sense in terms of a reference platform (and since git
submodules, repo, etc, etc, each have their own problems) it wasn't the
intent to say you must use this merged repo.

-- 
Tom

