Return-Path: <dev.kurt@vandijck-laurijssen.be>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27B5EE009CC; Thu,  9 Jul 2015 01:37:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.71.1.210 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relaygateway01.edpnet.net (relaygateway01.edpnet.net
	[212.71.1.210])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8197AE00978
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 01:37:07 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AncGAAkynlVt7IXT/2dsb2JhbABbgxJUYIMgv2wCgVdNAQEBAQEBgQuEIwEBAQMBIwQvIxALFAEDAgIFIQICDwUlJBOIJgy3UJYzAQEBAQEBBAEBAQEBHYEhiiqEO0sHgmgvgRQFkUWCZ4t/mGYmggwcgVVtAYJKAQEB
X-IPAS-Result: AncGAAkynlVt7IXT/2dsb2JhbABbgxJUYIMgv2wCgVdNAQEBAQEBgQuEIwEBAQMBIwQvIxALFAEDAgIFIQICDwUlJBOIJgy3UJYzAQEBAQEBBAEBAQEBHYEhiiqEO0sHgmgvgRQFkUWCZ4t/mGYmggwcgVVtAYJKAQEB
X-IronPort-AV: E=Sophos;i="5.15,438,1432591200"; d="scan'208";a="339565753"
Received: from 109.236.133.211.wls.msr91gkk3.adsl.fix.edpnet.net (HELO
	zotac.vandijck-laurijssen.be) ([109.236.133.211])
	by relaygateway01.edpnet.net with ESMTP; 09 Jul 2015 10:37:05 +0200
Received: from vandijck-laurijssen.be (unknown [195.130.156.3])
	by zotac.vandijck-laurijssen.be (Postfix) with ESMTPSA id 101AC1C223F; 
	Thu,  9 Jul 2015 10:37:07 +0200 (CEST)
Date: Thu, 9 Jul 2015 10:36:57 +0200
From: Kurt Van Dijck <dev.kurt@vandijck-laurijssen.be>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20150709083657.GB2707@vandijck-laurijssen.be>
References: <20150707130718.GB3967@vandijck-laurijssen.be>
	<CAJ86T=WEPME4dien+V8Z80_W9eY858nULSTngRksw1tX2MswYw@mail.gmail.com>
	<1588478.7WsJS1fAGp@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <1588478.7WsJS1fAGp@peggleto-mobl.ger.corp.intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: fixed: using shared state cache from other machine
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
X-List-Received-Date: Thu, 09 Jul 2015 08:37:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

--- Original message ---
> Date: Tue, 07 Jul 2015 23:40:49 +0100
> From: Paul Eggleton <paul.eggleton@linux.intel.com>
> On Tuesday 07 July 2015 14:59:37 Andre McCurdy wrote:
> > On Tue, Jul 7, 2015 at 6:07 AM, Kurt Van Dijck
> > <dev.kurt@vandijck-laurijssen.be> wrote:
> > > I started to re-use the shared state cache from a build machine.
> > > If I clean everything locally, I still spend time building.
> > > So, can everything be re-used, or only the target packages.
> > > How different may the build machine & may host be.
> > > The build machine is a (recent) ubuntu. My machine is debian squeeze+sid
> > > mixed version. Is that a problem?
> > 
> > You can try it, but no guarantees.
> > 
> > I have a build machine running Ubuntu 14.04 and a laptop running Linux
> > Mint 17.1 and I regularly rsync sstate from the build server to the
> > laptop without any issues (as expected, since Linux Mint uses Ubuntu
> > packages). 

I defined the mirror over http, so I skip the rsync.

> 
> The theory is this should work provided the distro you use the native sstate 
> artifacts on has the same or newer glibc version as the one on which they were 
> originally built.

I needed to upgrade locally.

> 
> > The trick to avoid rebuilding all native packages is to
> > rename sstate-cache/Ubuntu-14.04 -> sstate-cache/LinuxMint-17.1 after
> > each rsync.
> 
> Rather than renaming, you can simply create a symlink from the other 
> distribution to the one which was used to do the build.

Due to the http retrieval, I put the symlink on the build server.

Now, I just built a basic image in 10 minutes.
Thank you for the support,
thank you Gigabit ethernet & thank you SSD.

Kind regards,
Kurt

