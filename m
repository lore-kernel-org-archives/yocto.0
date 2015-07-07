Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA736E00957; Tue,  7 Jul 2015 15:41:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7939CE006C6
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 15:40:52 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 07 Jul 2015 15:40:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,426,1432623600"; d="scan'208";a="742490150"
Received: from apodgors-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.2.82])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jul 2015 15:40:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andre McCurdy <armccurdy@gmail.com>,
	Kurt Van Dijck <dev.kurt@vandijck-laurijssen.be>
Date: Tue, 07 Jul 2015 23:40:49 +0100
Message-ID: <1588478.7WsJS1fAGp@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.6-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <CAJ86T=WEPME4dien+V8Z80_W9eY858nULSTngRksw1tX2MswYw@mail.gmail.com>
References: <20150707130718.GB3967@vandijck-laurijssen.be>
	<CAJ86T=WEPME4dien+V8Z80_W9eY858nULSTngRksw1tX2MswYw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: using shared state cache from other machine
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
X-List-Received-Date: Tue, 07 Jul 2015 22:41:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 07 July 2015 14:59:37 Andre McCurdy wrote:
> On Tue, Jul 7, 2015 at 6:07 AM, Kurt Van Dijck
> <dev.kurt@vandijck-laurijssen.be> wrote:
> > I started to re-use the shared state cache from a build machine.
> > If I clean everything locally, I still spend time building.
> > So, can everything be re-used, or only the target packages.
> > How different may the build machine & may host be.
> > The build machine is a (recent) ubuntu. My machine is debian squeeze+sid
> > mixed version. Is that a problem?
> 
> You can try it, but no guarantees.
> 
> I have a build machine running Ubuntu 14.04 and a laptop running Linux
> Mint 17.1 and I regularly rsync sstate from the build server to the
> laptop without any issues (as expected, since Linux Mint uses Ubuntu
> packages). 

The theory is this should work provided the distro you use the native sstate 
artifacts on has the same or newer glibc version as the one on which they were 
originally built.

> The trick to avoid rebuilding all native packages is to
> rename sstate-cache/Ubuntu-14.04 -> sstate-cache/LinuxMint-17.1 after
> each rsync.

Rather than renaming, you can simply create a symlink from the other 
distribution to the one which was used to do the build.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

