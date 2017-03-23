Return-Path: <lsorense@csclub.uwaterloo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6552AE00AAB; Thu, 23 Mar 2017 09:07:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 447 seconds by postgrey-1.32 at yocto-www;
	Thu, 23 Mar 2017 09:07:37 PDT
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
	[129.97.134.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38140E00777
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 09:07:37 -0700 (PDT)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
	id 76E73C0086; Thu, 23 Mar 2017 12:00:09 -0400 (EDT)
Date: Thu, 23 Mar 2017 12:00:09 -0400
To: Andy Pont <andy.pont@sdcsystems.com>
Message-ID: <20170323160009.GA14190@csclub.uwaterloo.ca>
References: <alpine.LFD.2.20.1703030819430.10734@uk63952.mitel.com>
	<CAJTo0LaNo5inrbahsW9suovVtP3F2xD28h_Bnbw24sokqOSZ0w@mail.gmail.com>
	<00b801d29425$cfb126c0$6f137440$@sdcsystems.com>
MIME-Version: 1.0
In-Reply-To: <00b801d29425$cfb126c0$6f137440$@sdcsystems.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Cc: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: Re: any rumblings about a newer YP powerpc reference board than mpc8315e-rdb?
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
X-List-Received-Date: Thu, 23 Mar 2017 16:07:41 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 03, 2017 at 01:55:24PM -0000, Andy Pont wrote:
> Ross Burton wrote...
> 
> >> it seems of limited value for YP to have a powerpc reference board,
> >> mpc8315e-rdb, that is essentially impossible to procure. is there any
> >> effort being made to look around for a newer powerpc reference board
> >> that people could actually buy?
> >
> >Do you have any suggestions?
> 
> If we are being strictly pedantic then is isn't PowerPC (at least in the world that is Freescale / NXP / Whoever they are this week).
> 
> I would look at one of the P10xx series QorIQ boards.  Digi-Key list the P1021RDB-PC-ND and P1024RDB-PA-ND as being active parts which are either single or dual e500 cores.

Well it is a decent powerpcspe reference, but I sure wouldn't consider
it a powerpc reference.  It isn't quite compatible with standard powerpc.

Where I used to work we told freescale that nothing with the e500 was
ever going to be of interest, since if wasn't compatible with our existing
83xx based stuff, nor anything in the future like the e5500/e6500 or
even e500mc.

Sure for some uses it is fine, but I consider it wrong to call it
powerpc without clearly mentioning it is the SPE variant, not the
traditional type one would be used to.

-- 
Len Sorensen

