Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1422E009CD; Thu,  9 Feb 2017 00:22:54 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CC5DE006C6
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 00:22:52 -0800 (PST)
Received: from mfilter24-d.gandi.net (mfilter24-d.gandi.net [217.70.178.152])
	by relay5-d.mail.gandi.net (Postfix) with ESMTP id CC9AE41C08E;
	Thu,  9 Feb 2017 09:22:51 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter24-d.gandi.net
Received: from relay5-d.mail.gandi.net ([IPv6:::ffff:217.70.183.197])
	by mfilter24-d.gandi.net (mfilter24-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id P2afUlXMsavd; Thu,  9 Feb 2017 09:22:49 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: paul@paulbarker.me.uk)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 4086F41C074;
	Thu,  9 Feb 2017 09:22:49 +0100 (CET)
Date: Thu, 9 Feb 2017 08:22:48 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170209082248.446b1937@host0.betafive.co.uk>
In-Reply-To: <20170209054903.31598-4-raj.khem@gmail.com>
References: <20170209054903.31598-1-raj.khem@gmail.com>
	<20170209054903.31598-4-raj.khem@gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 4/9] linux-raspberrypi_dev.bb: Add recipe for tracking development tip
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
X-List-Received-Date: Thu, 09 Feb 2017 08:22:54 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed,  8 Feb 2017 21:48:58 -0800
Khem Raj <raj.khem@gmail.com> wrote:

> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_dev.bb | 8 ++++++++
>  1 file changed, 8 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_dev.bb
> 
> diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
> new file mode 100644
> index 0000000..9440d80
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
> @@ -0,0 +1,8 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> +
> +LINUX_VERSION ?= "4.9.0-rc7"
> +
> +SRCREV = "10da0c942de1830b48dfbfb5d68ec00af7ca7c43"
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
> +"
> +require linux-raspberrypi.inc

Can we hold off on this and target 4.10 here when it comes out in a week
or two instead of 4.9-rc7? I find it confusing to have the _dev recipe
be behind the _4.9 recipe.

