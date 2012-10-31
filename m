Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96169E0027E
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 13:57:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 31 Oct 2012 13:57:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,688,1344236400"; d="scan'208";a="213673457"
Received: from unknown (HELO [10.255.14.154]) ([10.255.14.154])
	by orsmga001.jf.intel.com with ESMTP; 31 Oct 2012 13:57:53 -0700
Message-ID: <1351717072.1762.38.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 31 Oct 2012 15:57:52 -0500
In-Reply-To: <CAJTo0LaGuVd+30ZR6SvyiwY0qLSDdg2s9aUR__eU-k68=vvEQQ@mail.gmail.com>
References: <cover.1351650062.git.nitin.a.kamble@intel.com>
	<1351696672.1762.8.camel@empanada>
	<CAJTo0LYZwOa2twSCABHYHcqaTg_hdR-pkG--dCcKdd2Sb6NL0A@mail.gmail.com>
	<CAJTo0LaGuVd+30ZR6SvyiwY0qLSDdg2s9aUR__eU-k68=vvEQQ@mail.gmail.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: darren.hart@intel.com, yocto@yoctoproject.org
Subject: Re: [PATCH 0/4] misc fixes for 1.3 meta-intel release
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
X-List-Received-Date: Wed, 31 Oct 2012 20:57:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-10-31 at 20:53 +0000, Burton, Ross wrote:
> On 31 October 2012 15:21, Burton, Ross <ross.burton@intel.com> wrote:
> > On 31 October 2012 15:17, Tom Zanussi <tom.zanussi@intel.com> wrote:
> >> That just leaves cedartrail before we can pull this in.
> >
> > That's odd, I was just about to write a mail.  My current images are
> > broken as they are based on master which has a duff udev.  I'll do a
> > rebuild against danny but that might not happen promptly.
> 
> Just tested on Cedar Trail, good old Sintel plays fine at 4% CPU.
> 

OK, sounds like it works everywhere, so can be pulled in, but...

Nitin, did you need to refresh this patchset to .18 or should I pull
this in and pull in a .18 update later?

Tom


> Ross



