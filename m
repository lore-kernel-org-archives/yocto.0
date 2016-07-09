Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A08AE00CF9; Sat,  9 Jul 2016 05:05:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [178.33.107.29 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 6601 seconds by postgrey-1.32 at yocto-www;
	Sat, 09 Jul 2016 05:05:25 PDT
Received: from 15.mo5.mail-out.ovh.net (15.mo5.mail-out.ovh.net
	[178.33.107.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0377EE009C9
	for <yocto@yoctoproject.org>; Sat,  9 Jul 2016 05:05:25 -0700 (PDT)
Received: from player688.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo5.mail-out.ovh.net (Postfix) with ESMTP id BFF1E1000F47
	for <yocto@yoctoproject.org>; Sat,  9 Jul 2016 11:36:01 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player688.ha.ovh.net (Postfix) with ESMTPSA id C74C720069;
	Sat,  9 Jul 2016 11:35:59 +0200 (CEST)
Date: Sat, 9 Jul 2016 10:35:58 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Hammad Ahmed <hammadahmed85@gmail.com>
Message-ID: <20160709103558.140ffe32@nuc.betafive.co.uk>
In-Reply-To: <CACibCHofyRnNQXuK_G2N9jeQ6ATEo5HG4vEp88PDa6+8hVABtg@mail.gmail.com>
References: <CACibCHofyRnNQXuK_G2N9jeQ6ATEo5HG4vEp88PDa6+8hVABtg@mail.gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 14231656299736369419
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeltddrfeefgdduhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] u-boot doesnt boot kernel
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
X-List-Received-Date: Sat, 09 Jul 2016 12:05:29 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 8 Jul 2016 21:04:24 -0400
Hammad Ahmed <hammadahmed85@gmail.com> wrote:

> Hi,
> I wanted to boot with u-boot so I added:
> 
> KERNEL_IMAGETYPE = "uImage"
> 
> u-boot builds fine but when I boot up my raspberrypi, u-boot doesnt
> start the kernel.
> 

Setting the environment variables for a successful boot is currently a
manual process.

U-boot commands needed for my board (the dtb at least may need to change for
other models):
    setenv fdtfile bcm2807-rpi-b.dtb
    setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd'
    setenv do_load_files 'mmc dev 0; fatload mmc 0:1 ${kernel_addr_r} uImage; fatload mmc 0:1 ${fdt_addr_r} ${fdtfile};'
    setenv do_boot_files 'bootm ${kernel_addr_r} - ${fdt_addr_r};'
    setenv bootcmd 'run do_load_files do_boot_files'
    saveenv
    boot

My board here was a Raspberry Pi B+.

I'll have another look at this and see if I can generate a uEnv.txt
with sensible defaults during the build process.

Thanks,
Paul Barker

