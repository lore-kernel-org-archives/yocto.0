Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F1F4E009C3; Fri,  3 Mar 2017 03:19:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.198 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E01BDE0094C
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 03:19:46 -0800 (PST)
Received: from mfilter39-d.gandi.net (mfilter39-d.gandi.net [217.70.178.170])
	by relay6-d.mail.gandi.net (Postfix) with ESMTP id 87DFBFB8B3;
	Fri,  3 Mar 2017 12:19:45 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter39-d.gandi.net
Received: from relay6-d.mail.gandi.net ([IPv6:::ffff:217.70.183.198])
	by mfilter39-d.gandi.net (mfilter39-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id UJMuZc8a8gRv; Fri,  3 Mar 2017 12:19:43 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: paul@paulbarker.me.uk)
	by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 8D18CFB8AC;
	Fri,  3 Mar 2017 12:19:43 +0100 (CET)
Date: Fri, 3 Mar 2017 11:19:42 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <20170303111942.423697ff@host0.betafive.co.uk>
In-Reply-To: <20170219092924.055a2802@host0.betafive.co.uk>
References: <20170218193913.28490-1-paul@paulbarker.me.uk>
	<20170219041307.GD6680@carbonA>
	<20170219092924.055a2802@host0.betafive.co.uk>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Fix uImage build on 4.9.y and later
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
X-List-Received-Date: Fri, 03 Mar 2017 11:19:49 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 19 Feb 2017 09:29:24 +0000
Paul Barker <paul@paulbarker.me.uk> wrote:

> On Sat, 18 Feb 2017 20:13:07 -0800
> Andrei Gherzan <andrei@gherzan.ro> wrote:
> 
> > On Sat, Feb 18, 2017 at 07:39:13PM +0000, paul@paulbarker.me.uk wrote:  
> > > From: Paul Barker <paul@paulbarker.me.uk>
> > >
> > > Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> > > ---
> > >  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 5 +++++
> > >  recipes-kernel/linux/linux-raspberrypi_dev.bb | 5 +++++
> > >  2 files changed, 10 insertions(+)
> > >
> > > diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> > > index dcca369..b113674 100644
> > > --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> > > +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> > > @@ -7,3 +7,8 @@ SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y
> > >             file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
> > >  "
> > >  require linux-raspberrypi.inc
> > > +
> > > +# A LOADADDR is needed when building a uImage format kernel. This value is not
> > > +# set by default in rpi-4.8.y and later branches so we need to provide it
> > > +# manually. This value unused if KERNEL_IMAGETYPE is not uImage.
> > > +KERNEL_EXTRA_ARGS += "LOADADDR=0x00008000"
> > > diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
> > > index bec0d23..e45903b 100644
> > > --- a/recipes-kernel/linux/linux-raspberrypi_dev.bb
> > > +++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
> > > @@ -7,3 +7,8 @@ SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.10.y
> > >             file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
> > >  "
> > >  require linux-raspberrypi.inc
> > > +
> > > +# A LOADADDR is needed when building a uImage format kernel. This value is not
> > > +# set by default in rpi-4.8.y and later branches so we need to provide it
> > > +# manually. This value unused if KERNEL_IMAGETYPE is not uImage.
> > > +KERNEL_EXTRA_ARGS += "LOADADDR=0x00008000"    
> > 
> > Any reason not to set this in the machine configuration file?
> >   
> 
> It's not needed for the 4.4.y kernel series and I haven't tested it
> with that.
> 
> I've also opened an upstream bug which may lead to futher changes down
> the line: https://github.com/raspberrypi/linux/issues/1850
> 
> So I think for now I'd just keep the setting in the affected recipes.
> We can tidy it up in the future if we drop 4.4.y and based on any
> response to the upstream bug.

Ping on this. I don't feel strongly about where KERNEL_EXTRA_ARGS is
set so we can either merge this as-is or I can move it to the machine
conf file and test with the 4.4.y kernel.

Thanks,
Paul

