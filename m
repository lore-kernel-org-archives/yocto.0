Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F6BFE007AD; Sat, 18 Mar 2017 02:42:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D79A6E00349
	for <yocto@yoctoproject.org>; Sat, 18 Mar 2017 02:42:55 -0700 (PDT)
Received: from mfilter6-d.gandi.net (mfilter6-d.gandi.net [217.70.178.135])
	by relay3-d.mail.gandi.net (Postfix) with ESMTP id 0E9CBA80BE;
	Sat, 18 Mar 2017 10:42:54 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter6-d.gandi.net
Received: from relay3-d.mail.gandi.net ([IPv6:::ffff:217.70.183.195])
	by mfilter6-d.gandi.net (mfilter6-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id s57QDebV4W3c; Sat, 18 Mar 2017 10:42:52 +0100 (CET)
X-Originating-IP: 82.34.23.153
Received: from lap0 (cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net
	[82.34.23.153]) (Authenticated sender: paul@paulbarker.me.uk)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 29E86A80C8;
	Sat, 18 Mar 2017 10:42:51 +0100 (CET)
Date: Sat, 18 Mar 2017 09:42:50 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20170318094250.4b34ae29@lap0>
In-Reply-To: <20170318080705.GA11330@linux-uys3>
References: <20170318080705.GA11330@linux-uys3>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 20 Mar 2017 10:57:32 -0700
Cc: yocto@yoctoproject.org
Subject: Re: auto kernel version
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
X-List-Received-Date: Sat, 18 Mar 2017 09:42:59 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 18 Mar 2017 04:07:05 -0400
Trevor Woerner <twoerner@gmail.com> wrote:

> Hi,
> 
> Let's say I wanted to create a recipe to follow Linus' mainline or a
> recipe to follow GregKH's staging-next. In those cases I wouldn't
> want to nail them down with a version, I'd want to do AUTOREV. So I
> wouldn't put a version in the recipe filename (linus-mainline.bb or
> gregkh-staging-next_git.bb). But I can't seem to get away with not
> having some sort of version string (LINUX_VERSION, PV) in the recipe
> itself. Is it not possible to extract a PV or LINUX_VERSION
> automatically? Otherwise I'll need to update the recipe and commit
> with every release (which isn't the end of the world, but adds to the
> maintenance).
> 
> 	SUMMARY = "GregKH's Staging-Next"
> 	SECTION = "kernel"
> 	LICENSE = "GPLv2"
> 
> 	inherit kernel
> 	require recipes-kernel/linux/linux-dtb.inc
> 
> 	LIC_FILES_CHKSUM =
> "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> 
> 	SRC_URI =
> "git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git;branch=staging-next"
> SRC_URI_append_rk3288 = " file://defconfig"
> SRC_URI_append_intel-corei7-64 = " file://defconfig" SRCREV =
> "${AUTOREV}"
> 
> 	LINUX_VERSION = "4.11"
> 	PV = "${LINUX_VERSION}+git${SRCPV}"
> 	S = "${WORKDIR}/git"
> 
> 	DEPENDS += "xz-native bc-native coreutils-native"

The problem here is that bitbake needs to know the PV value before
starting do_fetch, as PV becomes part of the path to the work directory
for this recipe. There is special handling in the git fetcher to
resolve AUTOREV during parsing, but it just uses 'git ls-remote' (if I
remember correctly) instead of doing a full git fetch. So at the minute
it's not possible to use 'make kernelversion' or something similar to
determine PV.

For my staging recipes I've just settled for LINUX_VERSION being 4.9
for everything in the 4.9 series, from 4.9-rc1 to the latest 4.9.14.
That way you only need to modify the recipe when you jump from one
mainline release to the next. It's not ideal, but it works for me.

Thanks,
Paul

