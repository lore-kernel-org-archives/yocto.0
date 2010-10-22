Return-Path: <BATV+7bf9cf367cf79d1a0b08+2616+infradead.org+hohndel@canuck.srs.infradead.org>
Received: from canuck.infradead.org (canuck.infradead.org [134.117.69.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 731984C811A9
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 17:25:27 -0500 (CDT)
Received: from localhost ([127.0.0.1] helo=x201s.gr8dns.org)
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P9Q3C-0004gB-Vv; Fri, 22 Oct 2010 22:25:27 +0000
Received: by x201s.gr8dns.org (Postfix, from userid 500)
	id B5063355E39; Fri, 22 Oct 2010 10:48:12 -0700 (PDT)
From: Dirk Hohndel <hohndel@infradead.org>
To: Mark Hatle <mark.hatle@windriver.com>, yocto@yoctoproject.org
In-Reply-To: <4CC1C8D8.2090207@windriver.com>
References: <4CC1C88B.707@linux.intel.com> <4CC1C8D8.2090207@windriver.com>
User-Agent: Notmuch/0.3.1-105-g45d00c2 (http://notmuchmail.org) Emacs/23.2.1
	(x86_64-redhat-linux-gnu)
Date: Fri, 22 Oct 2010 10:48:12 -0700
Message-ID: <m3d3r2w23n.fsf@x201s.gr8dns.org>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hohndel@infradead.org> by
	canuck.infradead.org See http://www.infradead.org/rpr.html
Subject: Re: Last minute changes - Review Request
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 22:25:27 -0000
Content-Type: text/plain; charset=us-ascii


On Fri, 22 Oct 2010 12:24:40 -0500, Mark Hatle <mark.hatle@windriver.com> wrote:
> Add a +1 to reviewed, worried, but accepting column.  They each seem reasonable, 
> low-enough risk..

same here 

We won't have a bug free release. No one ever does. And any change
increases the risk.

So the question is "are they worth the added risk?". I believe the
proposed changes address issues that people WILL run into as they start
playing with things, so I think the risk is worth the reward.

/D


> On 10/22/10 12:23 PM, Saul G. Wold wrote:
> > On 10/22/2010 09:32 AM, Stewart, David C wrote:
> >>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >>> bounces@yoctoproject.org] On Behalf Of Richard Purdie
> >>> Sent: Friday, October 22, 2010 7:24 AM
> >>>
> >>> Coming up to release there are a few things that the extended testing
> >>> has shown up which we have fixes for and which we should consider
> >>> including in the release. I also finally got around to doing the final
> >>> sstate stress testing and found several problematic issues. Given that
> >>> sstate and checksums are a significant feature of this release, I'd
> >>> really like them to work as well as we can make them. Prior to this I
> >>> had stress tested the backend up not the use of the packages. These
> >>> changes don't change any sstate packages themselves, just the use of
> >>> them.
> >>>
> >>> Since we already have the release images prepared and tested and these
> >>> are not going to change, the criteria for potential changes:
> >>>
> >>> a) We can unit test the changes and be confident they don't
> >>>     break/regress things.
> >
> > For the Future: Besides doing a basic build, we need to have some real
> > unit tests for bitbake and the poky infrastructure, I guess I need to
> > turn this into a Testing feature request for 1.0 (look for it soon).
> >
> >>> b) They fix important bugs that the user can easily run into
> >>>     or that make the project look bad.
> > After reviewing the changes I agree, don't get me wrong, I am still very
> > nervous about these changes.
> >
> >>> c) The changes are small, well documented and are obviously correct
> >>>     looking at the code/patch.
> > Some times we over look the obvious changes, been caught by that myself
> > too many time.
> >
> >>> d) The don't change the generated images.
> >
> > <SNIP>
> >
> >>> I'm not happy about being in this position and I know Dave will be very
> >>> nervous about these late changes. To mitigate this I'd like to propose
> >>> that a selection of people (Josh, Mark, Saul?) review these changes and
> >>> report back on whether they feel these are appropriate and also give the
> >>> build some testing with these applied.
> >>
> >> I'm so predictable... :-) Yes, I'm nervous. I looked at all of the patches and with the exception of one or two, they mostly seem like good ones. I will accept these if Josh/Mark/Saul give us a +1 on their review&   testing.
> >>
> >
> > If there was 1 or 2 changes, I would be much happier, but there are
> > almost a dozen changes, yes mostly individually they are OK, I am still
> > reviewing them all, and have not started any testing with them yet.
> >
> > I agree with Dave that there are a couple that I am more nervous about
> > the pseudo/fakeroot as we have had so much trouble in the past, yes I
> > know this will make things better, but what else will crop up?
> >
> >
> >>> Cheers,
> >>>
> >>> Richard
> >>>
> >>>
> >>>
> >>>
> >>>
> >>>
> >>>
> >>>
> >>>
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.pokylinux.org/listinfo/yocto
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.pokylinux.org/listinfo/yocto
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.pokylinux.org/listinfo/yocto
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto

-- 
Dirk Hohndel
Intel Open Source Technology Center

