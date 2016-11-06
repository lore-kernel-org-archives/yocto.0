Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B95E5E008D3; Sun,  6 Nov 2016 07:26:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [87.98.143.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 12599 seconds by postgrey-1.32 at yocto-www;
	Sun, 06 Nov 2016 07:26:08 PST
Received: from 2.mo7.mail-out.ovh.net (2.mo7.mail-out.ovh.net [87.98.143.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7798DE006EA
	for <yocto@yoctoproject.org>; Sun,  6 Nov 2016 07:26:08 -0800 (PST)
Received: from player694.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo7.mail-out.ovh.net (Postfix) with ESMTP id 9E469196C9
	for <yocto@yoctoproject.org>; Sun,  6 Nov 2016 11:16:15 +0100 (CET)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player694.ha.ovh.net (Postfix) with ESMTPSA id 73A132C0071;
	Sun,  6 Nov 2016 11:16:14 +0100 (CET)
Date: Sun, 6 Nov 2016 10:16:13 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20161106101613.4a0224eb@nuc.betafive.co.uk>
In-Reply-To: <20161105035658.9590-1-net147@gmail.com>
References: <20161105035658.9590-1-net147@gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 211387708338833786
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelvddrleefgdduvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] rpi-base.inc: Include pi3-disable-bt-overlay.dtb
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
X-List-Received-Date: Sun, 06 Nov 2016 15:26:12 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat,  5 Nov 2016 14:56:58 +1100
Jonathan Liu <net147@gmail.com> wrote:

> This is used to disable Bluetooth and restore the serial console.
> 
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  conf/machine/include/rpi-base.inc | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index 3364516..6657aff 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -36,6 +36,7 @@ KERNEL_DEVICETREE ?= " \
>      overlays/rpi-ft5406.dtbo \
>      overlays/w1-gpio.dtbo \
>      overlays/w1-gpio-pullup.dtbo \
> +    overlays/pi3-disable-bt.dtbo \
>      overlays/pi3-miniuart-bt.dtbo \
>      overlays/vc4-kms-v3d.dtbo \
>      "

Looks good to me.

