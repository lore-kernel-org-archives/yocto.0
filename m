Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA36AE00B3D; Tue, 17 Nov 2015 10:02:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FF6DE00B2C
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 10:02:10 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 17 Nov 2015 10:02:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,308,1444719600"; d="scan'208";a="853128590"
Received: from deshpand-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.141.76])
	by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2015 10:02:02 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 18 Nov 2015 07:02:01 +1300
Message-ID: <7169720.ScqY2G0nCp@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.10-100.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <CABcZANnBeR7BN8M1_GaFDQKbQjbfJtg7_4fy=wH76hMV0vdDuQ@mail.gmail.com>
References: <564B48D3.7050304@mlbassoc.com>
	<CABcZANnBeR7BN8M1_GaFDQKbQjbfJtg7_4fy=wH76hMV0vdDuQ@mail.gmail.com>
MIME-Version: 1.0
Cc: Christopher Larson <clarson@kergoth.com>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: New warning(s)
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
X-List-Received-Date: Tue, 17 Nov 2015 18:02:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 17 November 2015 08:39:55 Christopher Larson wrote:
> On Tue, Nov 17, 2015 at 8:33 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> > When I run bitbake using layers that are not GIT repos, I'm
> > 
> > now getting a lot of messages like this:
> >   fatal: Not a git repository (or any parent up to mount point /raid)
> >   Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not
> > 
> > set).
> > 
> > This seems to be new (I've built from such trees many times
> > before with no such messages) and it hardly seems "fatal".
> > The messages apparently are coming from 'git' (I tested with
> > git version 1.9.1 and 1.7.11)
> > 
> > Why the change?
> 
> I believe we need https://github.com/kergoth/meta-mentor/commit/2125799
> applied to oe-core, haven't had a chance to submit it yet, but it looked to
> me like an accidental loss of the stderr capture/suppression when the
> metadata_scm functions were reworked recently.

I already sent a patch for this, it hasn't been applied yet:

http://patchwork.openembedded.org/patch/107081/

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

