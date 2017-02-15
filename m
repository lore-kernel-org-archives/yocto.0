Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D311AE00970; Wed, 15 Feb 2017 12:06:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.197 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D6DAE008F2
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 12:06:15 -0800 (PST)
Received: from mfilter15-d.gandi.net (mfilter15-d.gandi.net [217.70.178.143])
	by relay5-d.mail.gandi.net (Postfix) with ESMTP id 1BBFF41C08E;
	Wed, 15 Feb 2017 21:06:15 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter15-d.gandi.net
Received: from relay5-d.mail.gandi.net ([IPv6:::ffff:217.70.183.197])
	by mfilter15-d.gandi.net (mfilter15-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id ut3MpAAR6Pg7; Wed, 15 Feb 2017 21:06:13 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: paul@paulbarker.me.uk)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 6C38D41C088;
	Wed, 15 Feb 2017 21:06:13 +0100 (CET)
Date: Wed, 15 Feb 2017 20:06:12 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Darcy Watkins <dwatkins@sierrawireless.com>
Message-ID: <20170215200612.76cf82f5@host0.betafive.co.uk>
In-Reply-To: <SN1PR0201MB1790571A2E65C308ECC3EA44B25B0@SN1PR0201MB1790.namprd02.prod.outlook.com>
References: <SN1PR0201MB1790571A2E65C308ECC3EA44B25B0@SN1PR0201MB1790.namprd02.prod.outlook.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Set aside some packages as supplement to the rootfs creation
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
X-List-Received-Date: Wed, 15 Feb 2017 20:06:18 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 15 Feb 2017 19:09:30 +0000
Darcy Watkins <dwatkins@sierrawireless.com> wrote:

> Hi,
> 
> I want to be able to build an image target in such a way that 'bitbake image-target' builds the target as follows:
> 
> 1.  All of the packages are built for this target, including the RPMs
> 2.  Some of the packages are designated as NOT to be installed into the rootfs generated for the target at build time
> 3.  They need to be available in the RPM feed to be installed on the target subsequent to flashing the rootfs image
> 4.  Need some sort of supplemental manifest that lists these packages that were built, but are NOT in the rootfs
> 
> Are there some variables, bbclasses, etc set up to facilitate this?

I've done this before by creating a pair of recipes, let's say
'image-target' and 'project-target'. You would run 'bitbake
project-target' instead of 'bitbake image-target' to start the build.

* image-target is a normal image recipe including everything you want
  in the rootfs

* project-target DEPENDS on image-target as well as every other package
  you want to be available in the package feed

I'm not sure if there are any extra steps you need to take to update an
RPM package feed though, I usually work with ipk packages.

Thanks,
Paul

