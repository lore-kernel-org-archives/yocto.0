Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41075E006B1
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2012 03:01:04 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 05 Jul 2012 03:01:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="119081917"
Received: from unknown (HELO helios.localnet) ([10.252.120.245])
	by AZSMGA002.ch.intel.com with ESMTP; 05 Jul 2012 03:01:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 05 Jul 2012 11:01:01 +0100
Message-ID: <1652708.uFroLZqztD@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <40776A41FC278F40B59438AD47D147A90FDC7F83@SHSMSX102.ccr.corp.intel.com>
References: <40776A41FC278F40B59438AD47D147A90FDC7F83@SHSMSX102.ccr.corp.intel.com>
MIME-Version: 1.0
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
X-List-Received-Date: Thu, 05 Jul 2012 10:01:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 03 July 2012 12:10:57 Xu, Dongxiao wrote:
> Today Jessica and PRC team had a discussion of the webhob tasks listed in
> the wiki page, and about the "Group" and "Project" concept, we still have
> some questions.

Let's be clear though from the below, we're talking about projects only.
 
> Say user A and user B are privileged users, who have the right to customize
> images, while user C is normal user (Say a TME) and only "building image"
> is allowed.
> 
> 1) If user A customized an image with certain configurations, and he told
> user C that the environment is ready, and user C can build his demo image
> there. However, before user C starts to build, user B changed some
> configurations, making the final output not the expected version.

So firstly, in the design, any change to a project made by a user that occurs 
while another user is also configuring a build on that same project should be 
reflected in real-time in the other user's interface, and will be accompanied 
by a notification that a change has been made.

When more than one user is working on a project, it is expected that they 
would all be working towards the same goal. Creating separate projects for 
separate work efforts that may have different needs is intended to be easy. If a 
user does want to do some experimenting on a project in isolation, the design 
provides for the ability to duplicate the project which can then be modified 
privately without affecting the original project.

It's also a similar situation to working with any other shared resource such 
as a source code repository or a shared document - some discipline is 
required, and there's a limit to how much the tool can enforce in terms of 
people not messing up other people's work (other than providing a permissions 
framework, of course).

> 2) Another issue may be how to avoid global project changes happened
> together? For example user A and user B change the setting in the same
> time?

At the implementation level, with the usual database-level locking there must 
be a "winner" and a "loser" in this situation. The "winner" in our case should 
be whoever made the change last. As above there will be notifications shown to 
both users.
 
> 3) If user A changes the global project setting, what's the impact to the
> user B who already kicked off a build based on the original setting?

Once the build has started it should be isolated from the configuration within 
the interface, i.e. any subsequent changes should not affect it. Internally in 
the implementation I would recommend taking a lock on the project settings as 
soon as the user requests the build to start, which shortly afterwards can be 
released once the build has actually started - but this is not something that 
should be visible at a user level, except as a minor delay. In case user B 
goes back in to view the settings that are now different to what is being used 
for the build, the system should be able to fairly easily show a note within 
the configuration screen that the settings shown have been changed since the 
currently executing build was started.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

