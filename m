Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 448584C80A47
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 13:51:44 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Jul 2011 11:51:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,522,1304319600"; d="scan'208";a="26859550"
Received: from unknown (HELO [10.255.13.215]) ([10.255.13.215])
	by orsmga001.jf.intel.com with ESMTP; 12 Jul 2011 11:51:43 -0700
From: Joshua Lock <josh@linux.intel.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Date: Tue, 12 Jul 2011 11:51:38 -0700
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1310496703.2162.17.camel@scimitar>
Mime-Version: 1.0
Subject: Supporting upcoming distribution releases
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
X-List-Received-Date: Tue, 12 Jul 2011 18:51:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

In our technical team call today we spent some time discussing how to
support distribution releases that are due to happen around the time of
Yocto 1.1.

Yocto 1.1 is scheduled for release on October 6th[1], the same month in
which both Ubuntu and Fedora have new releases planned[2,3].
OpenSUSE doesn't have a release scheduled until November 10th[4].

We should accommodate for these releases in our planning around 1.1 as
we need to ensure that Yocto 1.1 can be used on the new versions of the
chosen supported distros.

I had initially suggested we have people doing test and any relevant
development around the beta cycles of Ubuntu and Fedora:

Fedora Beta (2011-09-20)
Ubuntu (2011-09-01)
In this time frame OpenSUSE will be on Milestone 5 (2011-09-01) which
afaict (based on the 6th milestone being followed by an RC) should
roughly equate to a beta.

However this aligns with our RC period at which point we may not want to
accept large patches?

To meet our stabilise complete goal of August 29th we'd have to have
people testing with:
Fedora Alpha (2011-08-16)
Ubuntu Alpha 3 (2011-08-04)
OpenSUSE Milestone 4 (2011-08-11)

What are peoples thoughts on this? I think the onus for this testing
will fall on engineers as the project QA is already pretty stretched. I
have a tendency to update to early releases on at least one machine so
will no doubt do some testing on Fedora but it would be nice to have a
genuine strategy for this rather than relying on ad-hoc developer
upgrades.

Final note: I'm left wondering if this emails contents also make sense
as a wiki page?

Cheers,
Joshua

1. https://wiki.pokylinux.org/wiki/Yocto_1.1_Schedule
2. https://wiki.ubuntu.com/OneiricReleaseSchedule
3. http://fedoraproject.org/wiki/Releases/16/Schedule
4. http://en.opensuse.org/Roadmap
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


