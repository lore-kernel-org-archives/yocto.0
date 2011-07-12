Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A16CE4C80A47
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 16:08:14 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6CL8B3T023708;
	Tue, 12 Jul 2011 22:08:11 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22209-10; Tue, 12 Jul 2011 22:08:07 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6CL82Zh023702
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 12 Jul 2011 22:08:03 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4E1C9A00.5060005@linux.intel.com>
References: <1310496703.2162.17.camel@scimitar>
	<4E1C9A00.5060005@linux.intel.com>
Date: Tue, 12 Jul 2011 22:08:00 +0100
Message-ID: <1310504880.20015.1080.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 12 Jul 2011 21:08:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-07-12 at 12:01 -0700, Darren Hart wrote:
> 
> On 07/12/2011 11:51 AM, Joshua Lock wrote:
> > In our technical team call today we spent some time discussing how to
> > support distribution releases that are due to happen around the time of
> > Yocto 1.1.
> > 
> > Yocto 1.1 is scheduled for release on October 6th[1], the same month in
> > which both Ubuntu and Fedora have new releases planned[2,3].
> > OpenSUSE doesn't have a release scheduled until November 10th[4].
> > 
> > We should accommodate for these releases in our planning around 1.1 as
> > we need to ensure that Yocto 1.1 can be used on the new versions of the
> > chosen supported distros.
> > 
> > I had initially suggested we have people doing test and any relevant
> > development around the beta cycles of Ubuntu and Fedora:
> > 
> > Fedora Beta (2011-09-20)
> > Ubuntu (2011-09-01)
> > In this time frame OpenSUSE will be on Milestone 5 (2011-09-01) which
> > afaict (based on the 6th milestone being followed by an RC) should
> > roughly equate to a beta.
> > 
> > However this aligns with our RC period at which point we may not want to
> > accept large patches?
> > 
> > To meet our stabilise complete goal of August 29th we'd have to have
> > people testing with:
> > Fedora Alpha (2011-08-16)
> > Ubuntu Alpha 3 (2011-08-04)
> > OpenSUSE Milestone 4 (2011-08-11)
> > 
> > What are peoples thoughts on this?
> 
> At the very least a sanity test to know which sorts of issues we'll hit
> with these would be valuable. However, I believe our policy is N-1, and
> not N+1,N,N-1, so supporting not-yet released versions isn't something I
> think we should spend too much time on. Minor fixes to support these
> post release seem like good candidates for a point release.

Much as I'd like to agree with you, traditionally this does tend to bite
us hard. The fixes some of the releases have needed are sometimes not so
minor too :(.

The reason is that we have a community with a significant portion of
people who do stay close to the edge as far as distros go. They'll take
latest releases and expect Yocto to work on them even if the releases
come out at the same time. Its not often realised how far in advance
trees get frozen for stabilisation.

So summary is I'm in favour of trying to identify problems early and
then doing what we can to address them...

As such, this time around I'll update my build machine to latest Ubuntu
at the beginning of August....

Cheers,

Richard


