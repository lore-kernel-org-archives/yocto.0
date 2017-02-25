Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C294E00924; Sat, 25 Feb 2017 01:11:09 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAFB8E00839
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 01:11:06 -0800 (PST)
Received: from mfilter23-d.gandi.net (mfilter23-d.gandi.net [217.70.178.151])
	by relay6-d.mail.gandi.net (Postfix) with ESMTP id A8003FB89F;
	Sat, 25 Feb 2017 10:11:05 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter23-d.gandi.net
Received: from relay6-d.mail.gandi.net ([IPv6:::ffff:217.70.183.198])
	by mfilter23-d.gandi.net (mfilter23-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id FPCtrQTBFZ9s; Sat, 25 Feb 2017 10:11:04 +0100 (CET)
X-Originating-IP: 88.211.79.2
Received: from lap0 (unknown [88.211.79.2])
	(Authenticated sender: paul@paulbarker.me.uk)
	by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 1114DFB8A9;
	Sat, 25 Feb 2017 10:11:03 +0100 (CET)
Date: Sat, 25 Feb 2017 09:11:03 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170225091103.5ebe6324@lap0>
In-Reply-To: <20170225000359.29173-1-raj.khem@gmail.com>
References: <20170225000359.29173-1-raj.khem@gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi_4.9.bb: Update to 4.9.12
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
X-List-Received-Date: Sat, 25 Feb 2017 09:11:09 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 24 Feb 2017 16:03:59 -0800
Khem Raj <raj.khem@gmail.com> wrote:

> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> b/recipes-kernel/linux/linux-raspberrypi_4.9.bb index
> dcca369..b41a8ef 100644 ---
> a/recipes-kernel/linux/linux-raspberrypi_4.9.bb +++
> b/recipes-kernel/linux/linux-raspberrypi_4.9.bb @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>  
> -LINUX_VERSION ?= "4.9.10"
> +LINUX_VERSION ?= "4.9.12"
>  
> -SRCREV = "095c4480e1f623bdc8a221a171ef13b2223706b1"
> +SRCREV = "c1271995832a090a94eb3b1c1678cb51b84ef1ca"
>  SRC_URI =
> "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y
> \
> file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
> \ "

rpi-4.9.y is now the default branch upstream and they've started
merging in new stable releases instead of rebasing. So how soon do we
want to make 4.9.y the default in meta-raspberrypi?

I've already tested a 4.9 series kernel with u-boot on an rpi and an
rpi3 so I'm happy that it all looks good.

I'm away this weekend so I can't send the patch right now myself. If
no-one else jumps on it I'll send a patch towards the end of the week
to change the default.

Thanks,
Paul

