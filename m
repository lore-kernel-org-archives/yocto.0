Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 81C154C804FF
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2011 23:39:01 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 26 Apr 2011 21:39:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,272,1301900400"; d="scan'208";a="914886694"
Received: from unknown (HELO [10.255.13.88]) ([10.255.13.88])
	by fmsmga001.fm.intel.com with ESMTP; 26 Apr 2011 21:39:00 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4DB786E3.4080800@linux.intel.com>
References: <4DB786E3.4080800@linux.intel.com>
Date: Tue, 26 Apr 2011 23:39:08 -0500
Message-ID: <1303879148.2593.231.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Personal git repositories
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
X-List-Received-Date: Wed, 27 Apr 2011 04:39:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-04-26 at 20:00 -0700, Darren Hart wrote:
> git.yoctoproject.org hosts a number of different repositories, some of
> which host limited user contributions (such as poky-contrib). These
> repositories are setup and administered by a yoctoproject.org system admin.
> 
> As our developer base grows, the need for user creatable git trees also
> grows. Eventually, *-contrib isn't going to scale, and neither will the
> system admin. There are plenty of available places individuals can
> create publicly accessible trees (github, kernel.org, or any number of
> similar sites). However, I think it would be beneficial for at least
> very active developers to be able to create and destroy trees on a whim,
> without having to involve the system admin with each event.
> 
> kernel.org provides a git web interface for user created trees. I'd like
> to see something similar available at yoctoproject.org in order to
> establish single place to go looking for "yocto developer trees". Users
> would have to justify their request for a user account and agree to a
> terms of use. This has served the Linux kernel community very well. I
> think it could do the same for us.
> 
> Note: I am not offering to setup such a service or even say that it's
> possible with the current resources. I just wanted to throw the idea out
> there and see if others have found a similar gap in the development
> environment and if this idea would address that gap.
> 
> Thoughts?
> 

My thinking (I guess - I didn't really think that much about it at the
time) when requesting the meta-intel-contrib repo was that repos that
could expect to get continual contributions from many people would
benefit from having a corresponding -contrib version - so far that's
poky-contrib, linux-yocto-*.contrib, and openembedded-core-contrib.  To
me bsp repos fit the same criteria, but I'm not the one who has to
manage it all, so I understand the desire to avoid the proliferation.

Seems like the personal repos idea would mitigate the problem...

Tom




