Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E668E00E1D; Wed,  6 Jul 2016 17:11:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.105.61.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 4200 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Jul 2016 17:11:10 PDT
Received: from 8.mo177.mail-out.ovh.net (8.mo177.mail-out.ovh.net
	[46.105.61.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C508DE00E17
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 17:11:10 -0700 (PDT)
Received: from player746.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo177.mail-out.ovh.net (Postfix) with ESMTP id 5E997FFBE1A
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2016 00:51:35 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player746.ha.ovh.net (Postfix) with ESMTPSA id 69C3F500073;
	Thu,  7 Jul 2016 00:51:33 +0200 (CEST)
Date: Wed, 6 Jul 2016 23:53:46 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Message-ID: <20160706235346.7ac880f3@nuc.betafive.co.uk>
In-Reply-To: <1466248026-4838-1-git-send-email-paul@paulbarker.me.uk>
References: <1466248026-4838-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 10049219620468525481
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeltddrvdejgddujecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Subject: Re: [meta-raspberrypi][PATCH V3 0/4] Drop rpi-mkimage and use upstream u-boot
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
X-List-Received-Date: Thu, 07 Jul 2016 00:11:15 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 18 Jun 2016 12:07:02 +0100
Paul Barker <paul@paulbarker.me.uk> wrote:

> Following discussion on the Raspberry Pi tools bug tracker it was
> found that rpi-mkimage is no longer needed with recent firmware. It
> can therefore be dropped from the layer completely.
> 
> Whilst looking into this I also found that the u-boot-rpi recipe in
> meta-raspberrypi can now be replaced by direct use of the mainline
> u-boot recipe from oe-core. The 2016.03 release of u-boot supports
> the original Raspberry Pi and the Raspberry Pi 2. Configuration of
> the u-boot environment to directly boot the uImage file on the SD
> card must still be done manually - I'm going to look into making this
> work by default in the near future.
> 
> Changes for V2:
>     * Don't remove linux-raspberrypi 3.18 just yet
>     * Drop move of PV setting out of linux-raspberrypi.inc
> 
> Changes for V3:
>     * Rebase onto latest master
> 
> Paul Barker (4):
>   linux-raspberrypi: rpi-mkimage is no longer needed
>   u-boot: Use mainline u-boot recipe from oe-core
>   rpi-mkimage: Remove unused recipe
>   sdcard_image-rpi: Always install dtb files
> 
>  classes/sdcard_image-rpi.bbclass                   | 42
> +++++++++++-----------
> conf/machine/include/rpi-default-providers.inc     |  1 -
> conf/machine/raspberrypi.conf                      |  2 ++
> conf/machine/raspberrypi2.conf                     |  2 ++
> recipes-bsp/rpi-mkimage/rpi-mkimage/License        | 25
> ------------- .../open-files-relative-to-script.patch            | 17
> --------- recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb         | 22
> ------------ recipes-bsp/u-boot/u-boot-rpi_git.bb               | 29
> --------------- recipes-kernel/linux/linux-raspberrypi.inc         |
> 20 ----------- 9 files changed, 25 insertions(+), 135 deletions(-)
> delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/License delete
> mode 100644
> recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch
> delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb delete
> mode 100644 recipes-bsp/u-boot/u-boot-rpi_git.bb
> 

Ping on this.

Thanks,
Paul Barker

