Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D033E00A28; Thu,  9 Feb 2017 00:23:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CBBCE00A30
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 00:23:30 -0800 (PST)
Received: from mfilter40-d.gandi.net (mfilter40-d.gandi.net [217.70.178.171])
	by relay2-d.mail.gandi.net (Postfix) with ESMTP id D8F86C5A5D;
	Thu,  9 Feb 2017 09:23:29 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter40-d.gandi.net
Received: from relay2-d.mail.gandi.net ([IPv6:::ffff:217.70.183.194])
	by mfilter40-d.gandi.net (mfilter40-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id qI0lIEHzQhnL; Thu,  9 Feb 2017 09:23:28 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: paul@paulbarker.me.uk)
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 4B8F7C5A5A;
	Thu,  9 Feb 2017 09:23:28 +0100 (CET)
Date: Thu, 9 Feb 2017 08:23:27 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170209082327.59112e3b@host0.betafive.co.uk>
In-Reply-To: <20170209054903.31598-7-raj.khem@gmail.com>
References: <20170209054903.31598-1-raj.khem@gmail.com>
	<20170209054903.31598-7-raj.khem@gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 7/9] linux-raspberrypi_4.9.bb: Upgrade to 4.9.8
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
X-List-Received-Date: Thu, 09 Feb 2017 08:23:42 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed,  8 Feb 2017 21:49:01 -0800
Khem Raj <raj.khem@gmail.com> wrote:

> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> index 1f8fe11..c59bae5 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>  
> -LINUX_VERSION ?= "4.9.5"
> +LINUX_VERSION ?= "4.9.8"
>  
> -SRCREV = "fd03479116aebe4a9faf64e108b3ab7eeb8cb71a"
> +SRCREV = "a5204ea3b15aa8eaaf2c3c7db7dfb177a84af730"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
>  "
>  require linux-raspberrypi.inc

Can we squash this with the upgrade to 4.9.5?

