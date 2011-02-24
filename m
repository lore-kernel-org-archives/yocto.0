Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 96FD14C8004D
	for <yocto@yoctoproject.org>; Wed, 23 Feb 2011 18:18:29 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Feb 2011 16:18:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,214,1297065600"; d="scan'208";a="712461283"
Received: from unknown (HELO [10.255.12.104]) ([10.255.12.104])
	by orsmga001.jf.intel.com with ESMTP; 23 Feb 2011 16:18:28 -0800
Message-ID: <4D65A3CE.4010102@intel.com>
Date: Wed, 23 Feb 2011 16:18:22 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Important autobuilder changes.
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
X-List-Received-Date: Thu, 24 Feb 2011 00:18:29 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

All,

Today I implemented some modifications to the current autobuilder infrastructure that I would like to go over so no one
is surprised. Most of these won't effect people's day to day operations but I want everyone to be aware of them.

The first major change was the addition of autobuilder02.pokylinux.org to our build slaves. This machine is known as
builder3 and will be used to build our BSP layers, as a resource for distro/testing and as a general worker. It also
runs the most recent Fedora, so it should help us shake out some host os bugs.

It is also running the most current buildbot source code which I've been wanting to test more thoroughly. I'm currently
running it through some buildsets. If anyone notices an issue with it, please alert me, as there will be of course, a
bit of shake out time as some of the changes I've made were a bit extensive.

The next major change is around BSP builds. I currently have 6 BSP layers (crownbay, crownbay-noemgd, emenlow, n450,
jasperforest and sugarbay) listed on the autobuilder. As these builders use two git clones (one for poky and one for
meta-intel), buildbot was having problems with figuring out what to grab if a branch was indicated on a forced build.
I've now modified the build bot config such that these BSP buildsets are branch aware. Meaning, for example, that if you
want a laverne emenlow build, we can now kick off one from the builder by just letting it know the generic branch name.
The above example should buildout to a directory called emenlow-laverne on the autobuilder02 website (which is still in
process). This not only makes things easier to maintain from a code standpoint, but also makes it the waterfall view is
less cluttered (a matrix of 6 BSP layers by 3 branches would be an unsightly 18 additional buildsets in the waterfall
view!).

This work will eventually be used to create more "generic" builders that allow us to kick of a custom build based on
user selected BSP layer, MACHINE, etc. Again, that ideal is a work in progress, but is one of my eventual goals.

The next major change is the removal of emenlow from nightly. As emenlow is now built via BSP, this should make the
nightly builds run even faster. I have a contrib branch that removes emenlow from poky-master, but could someone please
make sure that the emenlow code that exists in poky-master is synced to the BSP layer?

One last change will occur tomorrow. We will be moving builder2 to a new home sometime tomorrow. It should be down for
about 30 minutes plus whatever time it takes for DNS to propagate out. I will let everyone know via IRC when this occurs.

Thank you for your patience with the recent autobuilder downtime and if you have any questions or issues, please, bring
them to me as soon as possible.

Thanks,
-b

------------------
Elizabeth Flanagan
Yocto Project
Release Engineer

