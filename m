Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CA13E00308
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2013 03:30:07 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Nov 2013 03:30:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="436616702"
Received: from akagikob-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.140])
	by orsmga002.jf.intel.com with ESMTP; 17 Nov 2013 03:30:06 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 17 Nov 2013 11:30:05 +0000
Message-ID: <6659736.OPPKFAYCfn@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <20131115231734.GG31430@jama>
References: <CALb2249ae4iDYnv3RG9aQJdVEJCMWP5AH4vOR4jgg_TxuF+BJg@mail.gmail.com>
	<20131115231734.GG31430@jama>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Leo Schwab <lschwab@sensity.com>
Subject: Re: FILESPATH Search Order Changed?
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
X-List-Received-Date: Sun, 17 Nov 2013 11:30:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 16 November 2013 00:17:34 Martin Jansa wrote:
> On Fri, Nov 15, 2013 at 02:52:27PM -0800, Leo Schwab wrote:
> > I'm working on transitioning from 'dylan' to the 'dora' branch for our
> > Freescale-based project, and suddenly my kernel is building with the
> > wrong config.  I've isolated it to a change in (what I presume is) the
> > FILESPATH search order, and shows up very plainly when looking at the
> > log.do_unpack file.
> 
> Yes it was changed just before dora release
> http://git.openembedded.org/openembedded-core/commit/?h=dora&id=92cbf7eeea55
> 3bfa24c7081473fa8bc4ebc1f552

Problems aside, to be completely correct it was merged into the dora branch 
*after* the release.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

