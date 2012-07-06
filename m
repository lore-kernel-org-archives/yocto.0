Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C26C5E006AD
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 10:29:45 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 06 Jul 2012 10:29:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="119594528"
Received: from unknown (HELO helios.localnet) ([10.252.120.217])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Jul 2012 10:29:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Stewart, David C" <david.c.stewart@intel.com>
Date: Fri, 06 Jul 2012 18:29:42 +0100
Message-ID: <1658624.ZVpO79IcDh@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <CDED78A957032E45B3239CDDA7642D151C8985E5@ORSMSX105.amr.corp.intel.com>
References: <40776A41FC278F40B59438AD47D147A90FDC7F83@SHSMSX102.ccr.corp.intel.com>
	<63888840.0N6Y68VfOI@helios>
	<CDED78A957032E45B3239CDDA7642D151C8985E5@ORSMSX105.amr.corp.intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Some questions about the webhob design
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
X-List-Received-Date: Fri, 06 Jul 2012 17:29:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 06 July 2012 17:13:45 Stewart, David C wrote:
> > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > Sent: Friday, July 06, 2012 4:23 AM
> > To: Stewart, David C
> > 
> > On Thursday 05 July 2012 23:00:17 Stewart, David C wrote:
> > > Guys - I'm really struggling with this overall concept of concurrency.
> > > 
> > > It implies that if Paul and I are sharing the same project and I make
> > > a change to a .bb file to experiment with something (assuming we have
> > > the ability to do that, refer to my last email) and my change breaks
> > > my build, it will break everyone else's build as well.  But the beauty
> > > thing is that it breaks it silently, because the configuration
> > > silently changed for everyone on the project.
> > 
> > The key word there I think is "experiment". Is it reasonable to expect to
> > handle people making experimental changes to something that others are
> > relying upon? It seems to me that whether experimental changes are likely
> > and whether or not it will seriously impact other users depends on what
> > development stage the particular project is at.
> 
> Whether it is reasonable or not, if it's possible for people to shoot
> themselves in the foot, they will.  Even with safety guards on a circular
> saw, I have seen people routinely disable them, so there you go.

Right, and the logical extension from this is that no matter what safeguards 
we put in, there will be users that find a way shoot themselves in the foot. Of 
course we should try to make it harder to do the wrong thing, but there's a 
limit to what we can do. Despite this however I'm still convinced it's 
important to offer the ability for people to work on the same thing.

> How about a strongly visible warning on the Projects page that simultaneous
> user changes will affect all users of the project's files? How about an
> asynchronous notification to users on the main screen that some files have
> changed since their last build (and maybe list them).

I'm not opposed to a warning, but the thing is the scenario presented earlier 
wasn't strictly speaking a case of simultaneous user changes (which I think we 
have pretty well covered in the design in terms of showing real-time warnings 
to go together with real-time changes to the project) - in the scenario one 
user set up the project, and some time later another user attempted to use 
that project, and in the mean time someone broke it while neither of the other 
two users were logged in. A warning to help in that case could only be along 
the lines of "This project is shared with other users, so please take care 
when making changes."

> Again, writing a user story is what I'm looking for. I would do it myself,
> but I'm still struggling. :-)

I spoke to Jim about this and he's going to put something together, but it's 
likely that if what you're after is a full explanation of the workflow that 
it's a significant exercise.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

