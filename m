Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D1DCE0142D
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 04:22:40 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Jul 2012 04:22:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="164762963"
Received: from unknown (HELO helios.localnet) ([10.252.120.217])
	by azsmga001.ch.intel.com with ESMTP; 06 Jul 2012 04:22:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Stewart, David C" <david.c.stewart@intel.com>
Date: Fri, 06 Jul 2012 12:22:37 +0100
Message-ID: <63888840.0N6Y68VfOI@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <CDED78A957032E45B3239CDDA7642D151C8977DE@ORSMSX105.amr.corp.intel.com>
References: <40776A41FC278F40B59438AD47D147A90FDC7F83@SHSMSX102.ccr.corp.intel.com>
	<1609342.c99bAcXVHq@helios>
	<CDED78A957032E45B3239CDDA7642D151C8977DE@ORSMSX105.amr.corp.intel.com>
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
X-List-Received-Date: Fri, 06 Jul 2012 11:22:40 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 05 July 2012 23:00:17 Stewart, David C wrote:
> Guys - I'm really struggling with this overall concept of concurrency.
> 
> It implies that if Paul and I are sharing the same project and I make a
> change to a .bb file to experiment with something (assuming we have the
> ability to do that, refer to my last email) and my change breaks my build,
> it will break everyone else's build as well.  But the beauty thing is that
> it breaks it silently, because the configuration silently changed for
> everyone on the project.

The key word there I think is "experiment". Is it reasonable to expect to 
handle people making experimental changes to something that others are relying 
upon? It seems to me that whether experimental changes are likely and whether 
or not it will seriously impact other users depends on what development stage 
the particular project is at.

We're providing an avenue for the user to make a copy of the project that they 
can play with. We also aren't completely managing all of the metadata and 
source code through this tool - that's something git and other version control 
tools do pretty well. So it's perfectly possible to have the shared project 
operating from master or some release branch of a layer, and my copy of that 
project which pulls the layer from my personal branch of the layer; there I 
can make whatever changes to the metadata I like and when they're ready I can 
use my normal development processes to get that change from my branch into the 
branch being used for the shared project.

> If you are saying that it won't happen because people won't share a project
> under active development, then I don't understand the value of sharing a
> project. Is it to share the package repo? The images? There are all kinds
> of ways of doing that.

I'm expecting people will share a project under active development; they just 
might not put changes into it until they've tested them elsewhere (i.e. their 
own copy of the project) first.

The project will share the built packages and shared state cache (assuming 
that isn't shared at a higher level) between users of the project, but the 
main point is providing an avenue for users to collaborate where it makes 
sense on the *configuration* and not encouraging the opposite, which is people 
off building their separate OS images in their own sandboxes. Ultimately if 
you're working on an OS for a product you have to eventually arrive at the 
same configuration (and by extension, the same metadata and therefore the same 
source code).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

