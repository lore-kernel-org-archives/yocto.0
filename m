Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D96994C80052
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2011 13:49:38 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2011 11:49:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,359,1304319600"; d="scan'208";a="17720537"
Received: from unknown (HELO [10.255.13.21]) ([10.255.13.21])
	by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2011 11:49:37 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4DF657B6.4030609@linux.intel.com>
References: <cover.1307938815.git.tom.zanussi@intel.com>
	<4DF657B6.4030609@linux.intel.com>
Date: Mon, 13 Jun 2011 13:49:49 -0500
Message-ID: <1307990989.10825.14.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] meta-intel: add bbappends for systemtap
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
X-List-Received-Date: Mon, 13 Jun 2011 18:49:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-06-13 at 11:32 -0700, Darren Hart wrote:
> On 06/13/2011 07:32 AM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > Removing any old references to systemtap from meta means we need to add
> > it here.  It also adds systemtap support for the other, previously
> > uncovered meta-intel bsps.
> 
> Wouldn't it make more sense to add systemtap to and image recipe, either
> a new recipe or a bbappend? Also, it seems to me that RRECOMMENDS would
> make more sense than RDEPENDS - as it isn't required for boot.
> 

Hmm, not following you here - why would I want a new image recipe for
systemtap?

Systemtap fits in with the other profiling tools in the
task-core-tools-profile as far as I can see; this patch essentially adds
systemtap to that list, but since it won't run on half the architectures
we support, it can't be simply added to the recipe but needs to be
appended for each machine (well, that may change when I switch to
COMPATIBLE_HOST as pointed out by a couple people, but that was the
reason behind the current appends).

And, yeah, maybe RRECOMMENDs makes more sense here, will think about
changing that on the respin.

Thanks,

Tom

> --
> Darren
> 
> > 
> > The following changes since commit 01d1a545477cbc1b2a1da5b66edb52fd9e783206:
> >   Tom Zanussi (1):
> >         meta-intel: update kernel SRCREVs
> > 
> > are available in the git repository at:
> > 
> >   git://git.yoctoproject.org/meta-intel.git tzanussi/systemtap-update
> >   http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/systemtap-update
> > 
> > Tom Zanussi (2):
> >   meta-emenlow: add systemtap bbappend
> >   meta-intel: add systemtap bbappends
> > 
> >  .../recipes-core/tasks/task-core-tools.bbappend    |    3 +++
> >  .../systemtap/systemtap_git.bbappend               |    1 +
> >  .../systemtap/systemtap_git.bbappend               |    1 +
> >  .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
> >  .../systemtap/systemtap_git.bbappend               |    1 +
> >  .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
> >  .../systemtap/systemtap_git.bbappend               |    1 +
> >  .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
> >  .../systemtap/systemtap_git.bbappend               |    1 +
> >  .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
> >  .../systemtap/systemtap_git.bbappend               |    1 +
> >  11 files changed, 17 insertions(+), 0 deletions(-)
> >  create mode 100644 meta-crownbay/recipes-core/tasks/task-core-tools.bbappend
> >  create mode 100644 meta-crownbay/recipes-kernel/systemtap/systemtap_git.bbappend
> >  create mode 100644 meta-emenlow/recipes-kernel/systemtap/systemtap_git.bbappend
> >  create mode 100644 meta-fishriver/recipes-core/tasks/task-core-tools.bbappend
> >  create mode 100644 meta-fishriver/recipes-kernel/systemtap/systemtap_git.bbappend
> >  create mode 100644 meta-jasperforest/recipes-core/tasks/task-core-tools.bbappend
> >  create mode 100644 meta-jasperforest/recipes-kernel/systemtap/systemtap_git.bbappend
> >  create mode 100644 meta-n450/recipes-core/tasks/task-core-tools.bbappend
> >  create mode 100644 meta-n450/recipes-kernel/systemtap/systemtap_git.bbappend
> >  create mode 100644 meta-sugarbay/recipes-core/tasks/task-core-tools.bbappend
> >  create mode 100644 meta-sugarbay/recipes-kernel/systemtap/systemtap_git.bbappend
> > 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 



