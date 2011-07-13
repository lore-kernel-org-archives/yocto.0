Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D43C4C800B4
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 20:12:37 -0500 (CDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Wed, 13 Jul 2011 09:12:27 +0800
Received: from [192.168.0.101] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Wed, 13 Jul 2011
	09:12:27 +0800
From: NiQingliang <niqingliang@insigma.com.cn>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Wed, 13 Jul 2011 09:15:51 +0800
In-Reply-To: <1310504880.20015.1080.camel@rex>
References: <1310496703.2162.17.camel@scimitar>
	<4E1C9A00.5060005@linux.intel.com> <1310504880.20015.1080.camel@rex>
X-Mailer: Evolution 3.0.2 
Message-ID: <1310519752.2527.20.camel@localhost.localdomain>
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Supporting upcoming distribution releases
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
X-List-Received-Date: Wed, 13 Jul 2011 01:12:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

I think Archlinux is the preferred choice.-_-
Just joke.

I doubt why the bitbake need python2.x but just use /bin/env python. I
think If it need a specific version python, it should write it in the
shebang. e.g. /bin/env python2.6

On Wed, 2011-07-13 at 05:08 +0800, Richard Purdie wrote:
> On Tue, 2011-07-12 at 12:01 -0700, Darren Hart wrote:
> >
> > On 07/12/2011 11:51 AM, Joshua Lock wrote:
> > > In our technical team call today we spent some time discussing how to
> > > support distribution releases that are due to happen around the time of
> > > Yocto 1.1.
> > >
> > > Yocto 1.1 is scheduled for release on October 6th[1], the same month in
> > > which both Ubuntu and Fedora have new releases planned[2,3].
> > > OpenSUSE doesn't have a release scheduled until November 10th[4].
> > >
> > > We should accommodate for these releases in our planning around 1.1 as
> > > we need to ensure that Yocto 1.1 can be used on the new versions of the
> > > chosen supported distros.
> > >
> > > I had initially suggested we have people doing test and any relevant
> > > development around the beta cycles of Ubuntu and Fedora:
> > >
> > > Fedora Beta (2011-09-20)
> > > Ubuntu (2011-09-01)
> > > In this time frame OpenSUSE will be on Milestone 5 (2011-09-01) which
> > > afaict (based on the 6th milestone being followed by an RC) should
> > > roughly equate to a beta.
> > >
> > > However this aligns with our RC period at which point we may not want to
> > > accept large patches?
> > >
> > > To meet our stabilise complete goal of August 29th we'd have to have
> > > people testing with:
> > > Fedora Alpha (2011-08-16)
> > > Ubuntu Alpha 3 (2011-08-04)
> > > OpenSUSE Milestone 4 (2011-08-11)
> > >
> > > What are peoples thoughts on this?
> >
> > At the very least a sanity test to know which sorts of issues we'll hit
> > with these would be valuable. However, I believe our policy is N-1, and
> > not N+1,N,N-1, so supporting not-yet released versions isn't something I
> > think we should spend too much time on. Minor fixes to support these
> > post release seem like good candidates for a point release.
> 
> Much as I'd like to agree with you, traditionally this does tend to bite
> us hard. The fixes some of the releases have needed are sometimes not so
> minor too :(.
> 
> The reason is that we have a community with a significant portion of
> people who do stay close to the edge as far as distros go. They'll take
> latest releases and expect Yocto to work on them even if the releases
> come out at the same time. Its not often realised how far in advance
> trees get frozen for stabilisation.
> 
> So summary is I'm in favour of trying to identify problems early and
> then doing what we can to address them...
> 
> As such, this time around I'll update my build machine to latest Ubuntu
> at the beginning of August....
> 
> Cheers,
> 
> Richard
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
倪庆亮
TEL:    13588371863
E-MAIL: niqingliang@insigma.com.cn
BLOG:   http://niqingliang2003.wordpress.com



