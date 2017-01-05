Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CB3BE006EC; Thu,  5 Jan 2017 13:59:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [217.70.183.196 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [217.70.183.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 8739 seconds by postgrey-1.32 at yocto-www;
	Thu, 05 Jan 2017 13:59:21 PST
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7955E006EC
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 13:59:21 -0800 (PST)
Received: from mfilter12-d.gandi.net (mfilter12-d.gandi.net [217.70.178.129])
	by relay4-d.mail.gandi.net (Postfix) with ESMTP id 1DEE3172097;
	Thu,  5 Jan 2017 22:59:20 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter12-d.gandi.net
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
	by mfilter12-d.gandi.net (mfilter12-d.gandi.net [10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id BV9JcVU8L835; Thu,  5 Jan 2017 22:59:18 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from nuc.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: paul@paulbarker.me.uk)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 1C4FA172093;
	Thu,  5 Jan 2017 22:59:17 +0100 (CET)
Date: Thu, 5 Jan 2017 21:59:16 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20170105215916.072b9215@nuc.betafive.co.uk>
In-Reply-To: <20170105201619.GA7568@openSUSE-i7.site>
References: <20170105174229.1648-1-twoerner@gmail.com>
	<20170105193338.5b1360ec@nuc.betafive.co.uk>
	<20170105201619.GA7568@openSUSE-i7.site>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2] linux-raspberrypi-rt: add
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
X-List-Received-Date: Thu, 05 Jan 2017 21:59:23 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 5 Jan 2017 15:16:19 -0500
Trevor Woerner <twoerner@gmail.com> wrote:

> On Thu 2017-01-05 @ 07:33:38 PM, Paul Barker wrote:
> > On Thu,  5 Jan 2017 12:42:29 -0500
> > Trevor Woerner <twoerner@gmail.com> wrote:
> > 
> > > Add an -rt kernel recipe for Raspberry Pi that includes the FIQ patch which
> > > adds stability to the -rt kernel (with full preemption enabled) and is an
> > > improvement to simply disabling FIQ on the kernel cmdline.
> > > 
> > > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > > ---
> > > 
> > > changes since v1:
> > > 	- use "make savedefconfig" to generate the defconfig instead of just
> > > 	  using the full .config
> > > 
> > >  .../0001-fix-dtbo-rules.patch                      |    44 +
> > >  .../FIQ_PREEMPT_RT_on_raspi.patch                  |   310 +
> > >  .../linux/linux-raspberrypi-rt-4.4/defconfig       |  1249 +
> > >  .../patch-4.4.32-rt43.patch                        | 31403 +++++++++++++++++++
> > >  recipes-kernel/linux/linux-raspberrypi-rt_4.4.bb   |    55 +
> > >  5 files changed, 33061 insertions(+)
> > >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/0001-fix-dtbo-rules.patch
> > >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/FIQ_PREEMPT_RT_on_raspi.patch
> > >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/defconfig
> > >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/patch-4.4.32-rt43.patch
> > >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt_4.4.bb
> > > 
> > 
> > Would it be possible to point SRC_URI at kernel.org [1] instead of
> > including the whole patch in meta-raspberrypi? It feels a bit much to
> > me to include a >1MB patch file.
> > 
> > [1]: https://www.kernel.org/pub/linux/kernel/projects/rt/4.4/older/patch-4.4.32-rt43.patch.gz
> 
> The "virgin" -rt patch from kernel.org doesn't apply cleanly. First off there
> is a slight version mismatch and secondly this is the raspberrypi kernel, not
> a pure upstream kernel.
> 
> Is there a way to patch a patch before it gets applied? If it could be
> fetched from kernel.org then patched before applying that would be ideal!
> The diff isn't that big; it's sad to have to provide a >1MB patch for such
> a small tweak. I guess that's why the yocto kernels/patches have their own
> repositories on yoctoproject.org?

I think it depends how you want to maintain it going forward. With
frequent upgrades to linux-raspberrypi I can see that >1MB patch being
modified very often and I'm not sure how good it will be for the git
repository size and efficiency.

A linux-raspberrypi-rt repository on GitLab[1] or some other git hosting
service may be a good idea. I can see this having value outside the
OpenEmbedded/Yocto Project world, especially if the vanilla -rt patches
don't directly apply to linux-raspberrypi. If you decide to go this
route and need any support to make it happen, let me know and I'll see
what I can do.

Also, are you thinking of moving the -rt recipe to the 4.9 series when
upstream linux-raspberrypi declares that stable? When they declared 4.4
stable they stopped updating the 4.1 series pretty much immediately. I'm
currently investigating whether there is any value in maintaining the
4.4 series ourselves after upstream moves on.

[1]: Personal preference but I'm finding it much better than GitHub
these days.

Thanks,
Paul Barker

