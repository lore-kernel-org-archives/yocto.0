Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ACAEE00A07; Tue, 16 Jun 2015 06:55:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A011E009AE
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 06:55:32 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Jun 2015 06:55:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,626,1427785200"; d="scan'208";a="744431705"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.252.25.227])
	by fmsmga002.fm.intel.com with ESMTP; 16 Jun 2015 06:55:31 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 16 Jun 2015 14:55:30 +0100
Message-ID: <1614328.cu5a7zT3SO@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/4.0.4-202.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <557DE4A6.3040703@mlbassoc.com>
References: <557896F3.2040207@mlbassoc.com> <557DE4A6.3040703@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Strange sstate problem
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
X-List-Received-Date: Tue, 16 Jun 2015 13:55:36 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 14 June 2015 14:31:34 Gary Thomas wrote:
> On 2015-06-10 13:58, Gary Thomas wrote:
> > I'm building for two similar targets and sharing sstate between
> > them.  Actually, I build for target A and use that sstate cache
> > in my SSTATE_MIRRORS for target B.
> > 
> > If I try to build target B from scratch, i.e. wipe out most
> > 
> > everything from my build tree:
> >    % mv cache sstate-cache tmp old2; rm -fr old&
> > 
> > I also have a PR server for each target - in local.conf:
> >    PRSERV_HOST = "localhost:0"
> > 
> > When I build in target B, I'm getting a ton of QA errors, basically
> > one for every package selected, e.g.
> > 
> >    ERROR: QA Issue: Package version for package fsl-alsa-plugins went
> >    backwards which would break package feeds from (0:1.0.25-r0.2 to
> >    0:1.0.25-r0.0) [version-going-backwards]> 
> > What could be going on here?
> > 
> > n.b. I'm using a fairly recent Poky/Yocto master
> > (a05663bfa10352fd5af6ca9a9d7b323c1c099f35)
>
> I discovered what was causing these errors - I have buildhistory
> enabled for target B.  Periodically I rebuild target A from scratch
> and this gives buildhistory on target B fits.  For now, I'll just
> disable buildhistory...
> 
> BTW, except for the buildhistory "errors", using sstate like
> this does help quite a lot.

FWIW buildhistory is only trying to help preserve the ability to do upgrades 
from your feeds here - if you don't care to see such errors you can remove 
"version-going-backwards" from your ERROR_QA value.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

