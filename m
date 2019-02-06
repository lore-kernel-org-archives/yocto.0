Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57035E00BFB; Wed,  6 Feb 2019 14:57:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18E84E00546
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2019 14:57:25 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Feb 2019 14:57:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.58,342,1544515200"; d="scan'208";a="273058812"
Received: from skdora9-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.180.13])
	by orsmga004.jf.intel.com with ESMTP; 06 Feb 2019 14:57:22 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: akuster <akuster@mvista.com>
Date: Thu, 07 Feb 2019 11:57:19 +1300
Message-ID: <9627074.qSn1cPC3sq@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <788e482f-5fd3-b3ce-4be4-943bbd47ae27@mvista.com>
References: <cover.1549490398.git.paul.eggleton@linux.intel.com>
	<788e482f-5fd3-b3ce-4be4-943bbd47ae27@mvista.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 00/10] Misc fixes (cover letter only)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Feb 2019 22:57:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Oops, yes, I forgot the [layerindex-web], my apologies.

I can cc the oe-devel list if people really want to see it there as well; up 
to this point we've been using this list only. The other option would be a 
dedicated list but I suspect that would have a very limited subscription.

Cheers,
Paul

On Thursday, 7 February 2019 11:24:24 AM NZDT akuster wrote:
> 
> Hello Paul.
> 
> On 2/6/19 2:00 PM, Paul Eggleton wrote:
> > The following changes since commit 
61e9b048591adab88d1996646286e1d7df024bea:
> >
> >   Fix drop-down alignment on duplicates page (2018-11-20 11:58:42 +1300)
> >
> > are available in the Git repository at:
> >
> >   git://git.yoctoproject.org/layerindex-web paule/fixes12
> >   http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/fixes12
> >
> > Paul Eggleton (10):
> >   Send people an email when another user adds them as a maintainer
> >   Add links to other branch recipes in recipe detail
> >   Fix errors due to races deleting bitbake temp files
> >   local.conf: allow for upstream_tracking.inc to be missing
> >   Use try...finally or with to ensure files get closed
> >   Replace use of assert with exceptions
> >   docker: add wget to dependencies
> >   RRS: fix sorting arrow positioning
> >   rrs_maintainer_history: check out layer branch before looking for
> >     maintainers.inc
> >   RRS: add tool to import/export upstream history data
> 
> Thanks for the updates and fixes. This is  a very useful tool to both YP
> and OE. 
> 
> I had to look at what was actual changes to figure out what this patch
> set was against.  Should we change the "subject" to help clarify? ie
> [layer-index][PATCH ...?
> 
> The layer index is hosted on OE. Should one of the  OE mailing be CC'ed??
> 
> Yes I realize the sources are hosted on YP but the url for the tool is
> http://layers.openembedded.org. can be confusing.
> 
> kind regards,
> Armin
> >
> >  Dockerfile                                 |   1 +
> >  conf/local.conf                            |   2 +-
> >  layerindex/bulkchange.py                   |  18 +-
> >  layerindex/update.py                       |   4 +-
> >  layerindex/update_layer.py                 |  14 +-
> >  layerindex/utils.py                        |  21 ++-
> >  layerindex/views.py                        |  70 ++++++--
> >  rrs/tools/historytool.py                   | 196 +++++++++++++++++++++
> >  rrs/tools/rrs_distros.py                   |  19 +-
> >  rrs/tools/rrs_maintainer_history.py        |  45 ++---
> >  rrs/tools/rrs_upgrade_history.py           |   4 +-
> >  rrs/tools/rrs_upstream_history.py          |   3 +-
> >  rrs/tools/upgrade_history_internal.py      |   3 +-
> >  rrs/views.py                               |   2 +
> >  templates/layerindex/maintemail.txt        |   9 +
> >  templates/layerindex/maintemailsubject.txt |   1 +
> >  templates/layerindex/recipedetail.html     |  27 +++
> >  templates/rrs/maintainers.html             |   2 +-
> >  templates/rrs/recipedetail.html            |  27 +++
> >  templates/rrs/recipes.html                 |   2 +-
> >  20 files changed, 392 insertions(+), 78 deletions(-)
> >  create mode 100755 rrs/tools/historytool.py
> >  create mode 100644 templates/layerindex/maintemail.txt
> >  create mode 100644 templates/layerindex/maintemailsubject.txt
> >
> 
> 


-- 

Paul Eggleton
Intel Open Source Technology Centre



