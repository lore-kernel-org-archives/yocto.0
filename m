Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 657C7E00A4D; Fri,  4 Nov 2016 00:26:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [178.33.253.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 3.mo6.mail-out.ovh.net (3.mo6.mail-out.ovh.net [178.33.253.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D568E0081E
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 00:26:47 -0700 (PDT)
Received: from player776.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo6.mail-out.ovh.net (Postfix) with ESMTP id 68798570DF
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 08:17:16 +0100 (CET)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player776.ha.ovh.net (Postfix) with ESMTPSA id 742CB400070;
	Fri,  4 Nov 2016 08:17:13 +0100 (CET)
Date: Fri, 4 Nov 2016 07:17:12 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161104071712.5ecf5a4f@nuc.betafive.co.uk>
In-Reply-To: <49487B19-7092-405D-8B74-C8DE45676DF8@gmail.com>
References: <d3a15e96-ecd8-50c5-65e2-c13937d101ee@mlbassoc.com>
	<49487B19-7092-405D-8B74-C8DE45676DF8@gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3889702704097888743
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelvddrkeekgdduuddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: Shallow git clones?
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
X-List-Received-Date: Fri, 04 Nov 2016 07:26:51 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 3 Nov 2016 12:19:56 -0700
Khem Raj <raj.khem@gmail.com> wrote:

> 
> > On Nov 3, 2016, at 6:06 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> > 
> > I recall seeing some discussion in the past about using shallow
> > GIT clones when importing repositories?  Is this ever going to
> > happen?
> > 
> > The reason I ask is that I routinely save the GIT tarballs and
> > some of them are obscenely obese :-(  The worst of the bunch
> > is the device firmware for the RaspberryPi (as of today):
> >  -rw-rw-r-- 1 gthomas gthomas 6321877646 Nov  3 12:13 git2_github.com.raspberrypi.firmware.git.tar.gz
> > 
> > This particular tar file increased by more than 300MB since
> > the last time I downloaded it (only 2016-09-13!)  I routinely
> > slosh these files across the oceans (sometimes using tin cans
> > and strings it seems) and this can be very tedious.  Is there
> > anything that can be done to make these files a bit more manageable?
> 
> while shallow clones is a comprehensive solution and we should probably slot it for 2.3 release
> the above recipe should stop using git fetcher and convert to using tarballs
> since this git repo hosts binaries, it will bloat with every time they push
> stuff into it. Someone should teach these RPi folks to not abuse github.
> 

I raised this years ago:
https://github.com/raspberrypi/firmware/issues/175

I also did a bit of investigation and found that the files we actually
use from the firmware repo total under 3MB as a tar.xz file. I have
scripts which can create an appropriate tar.xz file from the git repo
and so I could start publishing these archives again if there's any
interest in using them in the meta-raspberrypi layer.

At 3MB per archive, even if we update the firmware once per week this
would never get as bad as the current firmware repository.

Thanks,
Paul Barker

