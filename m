Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADA04E00A0C; Sat, 11 Mar 2017 02:01:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [217.70.183.196 listed in list.dnswl.org]
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5763AE00A08
	for <yocto@yoctoproject.org>; Sat, 11 Mar 2017 02:01:49 -0800 (PST)
Received: from mfilter20-d.gandi.net (mfilter20-d.gandi.net [217.70.178.148])
	by relay4-d.mail.gandi.net (Postfix) with ESMTP id 2B5BE1720BC;
	Sat, 11 Mar 2017 11:01:48 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter20-d.gandi.net
Received: from relay4-d.mail.gandi.net ([IPv6:::ffff:217.70.183.196])
	by mfilter20-d.gandi.net (mfilter20-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id czWeStR5-VRS; Sat, 11 Mar 2017 11:01:46 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from lap0 (cpc15-shep11-2-0-cust35.8-3.cable.virginm.net
	[86.24.150.36]) (Authenticated sender: paul@paulbarker.me.uk)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 6DCC81720AF;
	Sat, 11 Mar 2017 11:01:46 +0100 (CET)
Date: Sat, 11 Mar 2017 10:01:45 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170311100145.4e5b0f68@lap0>
In-Reply-To: <fe276ffa-0a4d-82e5-1a90-f9d3147cdfae@gmail.com>
References: <20170213233243.16688-1-paul@paulbarker.me.uk>
	<fe276ffa-0a4d-82e5-1a90-f9d3147cdfae@gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi_4.4: Update to 4.4.48
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
X-List-Received-Date: Sat, 11 Mar 2017 10:01:54 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 10 Mar 2017 17:55:25 -0800
Khem Raj <raj.khem@gmail.com> wrote:

> Hi Paul
> 
> On 2/13/17 3:32 PM, paul@paulbarker.me.uk wrote:
> > From: Paul Barker <paul@paulbarker.me.uk>
> > 
> > Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> > ---
> >  recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> > b/recipes-kernel/linux/linux-raspberrypi_4.4.bb index
> > 0f78225..b235772 100644 ---
> > a/recipes-kernel/linux/linux-raspberrypi_4.4.bb +++
> > b/recipes-kernel/linux/linux-raspberrypi_4.4.bb @@ -1,8 +1,8 @@
> >  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> >  
> > -LINUX_VERSION ?= "4.4.43"
> > +LINUX_VERSION ?= "4.4.48"
> >    
> 
> There is 4.4.50 with rpi0 support. Can you resent this patchset with
> the updated rev
> 

I've got a patch for that ready to send, I just haven't had chance to
boot test it as I've been away all week. I'm now back home though :)

I'll rebase my outstanding patches on top of your kraj/master branch,
give them a quick test and get them sent.

Cheers,
Paul

