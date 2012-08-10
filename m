Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E81B9E013B2
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 21:30:55 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Aug 2012 21:30:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,744,1336374000"; d="scan'208";a="132251054"
Received: from unknown (HELO [10.255.12.213]) ([10.255.12.213])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Aug 2012 21:30:54 -0700
Message-ID: <1344573053.7235.51.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Thu, 09 Aug 2012 23:30:53 -0500
In-Reply-To: <50248968.501@windriver.com>
References: <cover.1344545782.git.tom.zanussi@intel.com>
	<50247A30.7000805@windriver.com>
	<1344571618.7235.50.camel@trz-ThinkPad-T420>
	<50248968.501@windriver.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, scott.a.garman@intel.com
Subject: Re: [PATCH 00/14][denzil] yocto-bsp updates for denzil, v2
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
X-List-Received-Date: Fri, 10 Aug 2012 04:30:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-08-10 at 00:09 -0400, Bruce Ashfield wrote:
> On 12-08-10 12:06 AM, Tom Zanussi wrote:
> > On Thu, 2012-08-09 at 23:04 -0400, Bruce Ashfield wrote:
> >> On 12-08-09 5:01 PM, tom.zanussi@intel.com wrote:
> >>> From: Tom Zanussi<tom.zanussi@intel.com>
> >>>
> >>> This patchset fixes yocto bugs [YOCTO #2693] and [YOCTO #2587], and
> >>> fixes some other minor usability problems reported by users.
> >>>
> >>> Please pull into the current poky/denzil point release branch.
> >>>
> >>> v2: This is the same patchset as the previous one, but an additional
> >>> patch fixing problems found in testing has been tacked on.
> >>
> >> Tom,
> >>
> >> Do you also need the upcoming master branch validate_branches backported
> >> to denzil to support your use cases ? I can arrange to do that next week,
> >> if you've tested with it, and it meets your needs (I know it works for the
> >> other use cases).
> >>
> >
> > Yeah, I've done all my denzil testing for this patchset with the
> > following patch in place:
> >
> > http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=tzanussi/kern-tools-denzil-update-from-bruce&id=63aca78351c7065c6671ee7296a8ac191465d882
> >
> > I can't say I've tested every use case (were there any that come to mind
> > that it might break?), but I have done quite a few and not seen any
> > problems so far (and conversely lots of problems without it).
> 
> Nothing comes to mind that will break, and it has performed well here.
> I'll send it out as a follow up to Scott this weekend or early next
> week, so it'll be in place by the time it is needed.
> 

OK, great, thanks, Bruce.

Tom

> Cheers,
> 
> Bruce
> 
> >
> > Tom
> >
> >> Cheers,
> >>
> >> Bruce
> >>
> >>>
> >>> The following changes since commit 73cdebf60df225ee10f2eb215935be3b61e1b831:
> >>>
> >>>     documentation/dev-manual/dev-manual-kernel-appendix.xml: Add note about conflict (2012-06-29 15:54:26 +0100)
> >>>
> >>> are available in the git repository at:
> >>>     git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-denzil-update
> >>>     http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-denzil-update
> >>>
> >>> Tom Zanussi (14):
> >>>     yocto-bsp: add new strip_base() function
> >>>     yocto-bsp: strip '/base' from kernel branches in templates
> >>>     yocto-bsp: update default branch names
> >>>     yocto-bsp: allow branch display filtering
> >>>     yocto-bsp: use branches_base
> >>>     yocto-bsp: add standard branch mapping
> >>>     yocto-bsp: use standard branch mapping in bsp templates
> >>>     yocto-bsp: use rstrip() for assignment lines
> >>>     yocto-bsp: remove 'branch' statements in .scc if reusing branch
> >>>     yocto-bsp: add some standard policy
> >>>     yocto-bsp: add i586 option for i386
> >>>     yocto-bsp: use emgd 1.10 for i386 template
> >>>     yocto-bsp: generate default properties even if json specified
> >>>     yocto-bsp: use base branches for qemu 'newbranch' case
> >>>
> >>>    scripts/lib/bsp/engine.py                          |   44 ++++++++++++++++++-
> >>>    scripts/lib/bsp/kernel.py                          |   18 ++++++++
> >>>    .../linux/files/{{=machine}}-standard.scc          |    1 +
> >>>    ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 ++--
> >>>    ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
> >>>    ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 ++--
> >>>    ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
> >>>    .../arch/i386/conf/machine/{{=machine}}.conf       |   14 ++++--
> >>>    .../linux/files/{{=machine}}-preempt-rt.scc        |    7 +++
> >>>    .../linux/files/{{=machine}}-standard.scc          |   14 ++++++-
> >>>    .../recipes-kernel/linux/files/{{=machine}}.scc    |    2 +-
> >>>    ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 ++--
> >>>    ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
> >>>    ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 ++--
> >>>    ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
> >>>    .../linux/files/{{=machine}}-standard.scc          |    1 +
> >>>    ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 ++--
> >>>    ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
> >>>    ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 ++--
> >>>    ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
> >>>    .../linux/files/{{=machine}}-standard.scc          |    1 +
> >>>    ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 ++--
> >>>    ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
> >>>    ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 ++--
> >>>    ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
> >>>    .../linux/files/{{=machine}}-preempt-rt.scc        |    5 +--
> >>>    .../linux/files/{{=machine}}-standard.scc          |    9 +---
> >>>    ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   24 +++++-----
> >>>    ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   24 +++++-----
> >>>    ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   24 +++++-----
> >>>    ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   24 +++++-----
> >>>    .../linux/files/{{=machine}}-preempt-rt.scc        |    7 +++
> >>>    .../linux/files/{{=machine}}-standard.scc          |   10 ++++-
> >>>    ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 ++--
> >>>    ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
> >>>    ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 ++--
> >>>    ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
> >>>    37 files changed, 240 insertions(+), 149 deletions(-)
> >>>
> >>
> >
> >
> 



