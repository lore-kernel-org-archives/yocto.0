Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 678BBE0077E; Sun,  6 Nov 2016 02:51:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [46.105.60.248 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1498 seconds by postgrey-1.32 at yocto-www;
	Sun, 06 Nov 2016 02:51:10 PST
Received: from 9.mo7.mail-out.ovh.net (9.mo7.mail-out.ovh.net [46.105.60.248])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5237AE006D2
	for <yocto@yoctoproject.org>; Sun,  6 Nov 2016 02:51:10 -0800 (PST)
Received: from player694.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo7.mail-out.ovh.net (Postfix) with ESMTP id F3F741A5DF
	for <yocto@yoctoproject.org>; Sun,  6 Nov 2016 11:14:09 +0100 (CET)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player694.ha.ovh.net (Postfix) with ESMTPSA id 7E5C32C0071;
	Sun,  6 Nov 2016 11:14:08 +0100 (CET)
Date: Sun, 6 Nov 2016 10:14:07 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161106101407.5239767e@nuc.betafive.co.uk>
In-Reply-To: <20161106072515.3505-1-raj.khem@gmail.com>
References: <20161106072515.3505-1-raj.khem@gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 175921862970411495
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelvddrleefgdduvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] firmware: Use release tarballs
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
X-List-Received-Date: Sun, 06 Nov 2016 10:51:15 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun,  6 Nov 2016 00:25:14 -0700
Khem Raj <raj.khem@gmail.com> wrote:

> This is a binary repo and its quite large in size
> we do not need the whole history of this repo since
> most of stuff needed is binaries, therefore switch
> to release tarballs
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-bsp/common/firmware.inc | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> index ed0782f..8862f58 100644
> --- a/recipes-bsp/common/firmware.inc
> +++ b/recipes-bsp/common/firmware.inc
> @@ -1,8 +1,10 @@
> -RPIFW_SRCREV ?= "413fc664838e81caeabdc4118dc51e138d5d6c71"
> -RPIFW_DATE ?= "20161030"
> -RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
> -RPIFW_S ?= "${WORKDIR}/git"
> +RPIFW_DATE ?= "20161020"
> +RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
> +RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
>  
>  SRC_URI = "${RPIFW_SRC_URI}"
> -SRCREV = "${RPIFW_SRCREV}"
> +SRC_URI[md5sum] = "d3c388c114af4c672dd3ee0ed8e984d3"
> +SRC_URI[sha256sum] = "1c7c49d58800aab2dd1b5ff59a1e297934f9ea6f47ebdf0a3f90632561dc690b"
> +
>  PV = "${RPIFW_DATE}"
> +

Khem,

This series doesn't apply to master for me. I'm a bit lost as to which
patches I need to apply as some of your previous series has been merged
to master but not all of it.

Could you point me at which patches I need to apply or at a branch
where this is staged if it's public?

Thanks,
Paul Barker

