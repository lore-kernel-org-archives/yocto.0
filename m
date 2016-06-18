Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A223E00DFF; Sat, 18 Jun 2016 04:30:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [178.33.253.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 3.mo6.mail-out.ovh.net (3.mo6.mail-out.ovh.net [178.33.253.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F17F4E00DF7
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2016 04:30:44 -0700 (PDT)
Received: from player786.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo6.mail-out.ovh.net (Postfix) with ESMTP id 84C25FF96F0
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2016 13:05:51 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player786.ha.ovh.net (Postfix) with ESMTPSA id 8840280077;
	Sat, 18 Jun 2016 13:05:49 +0200 (CEST)
Date: Sat, 18 Jun 2016 12:07:47 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Message-ID: <20160618120747.3c632424@nuc.betafive.co.uk>
In-Reply-To: <1464983940-32210-1-git-send-email-paul@paulbarker.me.uk>
References: <1464983940-32210-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3102698669902105001
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekledrledvgdefhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Subject: Re: [meta-raspberrypi][PATCH V2 0/4] Drop rpi-mkimage and use upstream u-boot
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
X-List-Received-Date: Sat, 18 Jun 2016 11:30:48 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri,  3 Jun 2016 20:58:56 +0100
Paul Barker <paul@paulbarker.me.uk> wrote:

> Changes for V2:
>     * Don't remove linux-raspberrypi 3.18 just yet
>     * Drop move of PV setting out of linux-raspberrypi.inc
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
> 18 ---------- 9 files changed, 25 insertions(+), 133 deletions(-)
> delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/License delete
> mode 100644
> recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch
> delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb delete
> mode 100644 recipes-bsp/u-boot/u-boot-rpi_git.bb
> 

These patches no longer apply after commit 8a21c1dd so I'm sending a
rebased V3.

Thanks,
Paul Barker

