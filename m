Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4928CE006AD
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2012 15:20:27 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Jul 2012 15:20:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="161878974"
Received: from unknown (HELO helios.localnet) ([10.252.120.228])
	by orsmga001.jf.intel.com with ESMTP; 05 Jul 2012 15:20:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Date: Thu, 05 Jul 2012 23:20:25 +0100
Message-ID: <1609342.c99bAcXVHq@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46A8C089@ORSMSX101.amr.corp.intel.com>
References: <40776A41FC278F40B59438AD47D147A90FDC7F83@SHSMSX102.ccr.corp.intel.com>
	<1652708.uFroLZqztD@helios>
	<C6510F6D410BB64A8C15398EDC6B847C46A8C089@ORSMSX101.amr.corp.intel.com>
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
X-List-Received-Date: Thu, 05 Jul 2012 22:20:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 05 July 2012 21:29:35 Zhang, Jessica wrote:
> So firstly, in the design, any change to a project made by a user that
> occurs while another user is also configuring a build on that same project
> should be reflected in real-time in the other user's interface, and will be
> accompanied by a notification that a change has been made.
> 
> <JZ> Can we clarify some definition here, when we talk about project build
> configuration, are they the same as in current hob's saved template? So, if
> a user configure a build for the project and want to preserve the changes,
> he/she will achieve so through save template? And we only allow one build
> configuration per project? </JZ>

Templates are for starting new projects from scratch, as in the current hob 
they are for starting new builds from scratch. Changes to a project's 
configuration are saved to the project itself immediately - there's no need to 
hit "save" anywhere; that's why it has to be reflected in real-time for other 
logged-in users. If you close the browser in the middle of configuring the 
project then some time later re-log in, the project's configuration will be 
exactly how you left it (assuming nobody else has changed it in the mean 
time).

> When more than one user is working on a project, it is expected that they
> would all be working towards the same goal. Creating separate projects for
> separate work efforts that may have different needs is intended to be easy.
> 
> <JZ> Agreed overall, but let's look at some particular cases to flesh out
> the rule further.  Say we have a project webhobtesting. For user A he set
> the package system as RPM, where user B wants to use deb.  So should we 1)
> create 2 projects webhobtesting-rpm and webhobtesting-ipk; 2)one
> webhobtesting project, but depends on who made the modification last, the
> package system will be set as the last user's preference? This will be what
> Dongxiao's talking about in the original question.  After user A configure
> as RPM and told TME to open the project and run the build.  In the
> meantime, user B switch it to deb.  So the TME's build output will not
> match what he'd expected that user A has set it to.  Also, we can't expect
> that user A is also login to receive the notification that his
> configuration has been changed; 3) we allow multiple configuration files
> against same project, which requires a project level configuration
> management mechanism. </JZ>

So leaving aside that this specific example is completely artificial, user B has 
failed to exercise discipline in editing a shared resource which in this case 
appears to have some business value. If user B has access rights to modify 
this shared project, then they are presumably trusted to know when it's 
appropriate to make changes to that project. It's the same situation as a 
"rogue" developer with access to commit to a source code repository making an 
ill-considered commit to the release branch the day before a release build.

I don't think we should move to a #3 state at this stage because not only does 
it add an extra level of configuration selections, it also means we will likely 
have to provide the ability to compare and merge separate configurations which 
is yet more complex functionality both to implement and to present to the 
user.

>  If a user does want to do some experimenting on a project in isolation, the
> design provides for the ability to duplicate the project which can then be
> modified privately without affecting the original project.
> 
> <JZ> So this means we will allow each individual user to create his/her own
> sandbox which I agree.  Then we'll need to design the mechanism to
> distinguish the real project build configuration and user private ones. And
> the implication of that </JZ>

The design already covers this although it is not explicit - a "user private" 
project is simply a project where only one user has permission to view/edit 
it; so we shouldn't need any extra functionality here.

> > 2) Another issue may be how to avoid global project changes happened
> > together? For example user A and user B change the setting in the same
> > time?
> 
> At the implementation level, with the usual database-level locking there
> must be a "winner" and a "loser" in this situation. The "winner" in our
> case should be whoever made the change last. As above there will be
> notifications shown to both users.
> 
> <JZ> But if we are really talking about concurrency here, isn't committing
> the change will be protected by a critical section and whoever got the lock
> wins?</JZ>

That's what I mean, yes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

