Return-Path: <ac.rossi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C3ADE00A92; Tue,  4 Aug 2015 07:47:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ac.rossi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DD5EE009C5
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 07:47:28 -0700 (PDT)
Received: by pasy3 with SMTP id y3so10240159pas.2
	for <yocto@yoctoproject.org>; Tue, 04 Aug 2015 07:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=5lPhXO4W7aAhm7zNhD7/BORTeQiOVQ/TpqBdnarWeaM=;
	b=sRacRIBl+O8avudyYjqLyq0gEF1kCYEA6Nm0i0WVkzsLE3TNlWSE8ZcKVNb7U+fAUS
	e7pv798eMI9UHd4Ouu/u5LScFhK8xFJDC9BOODCT/F66/QKYJ5YYzpNB2knqAxVwiw18
	KI6FhwB6R3IzvC1LiZyPd/BgUCNoemrjqr9Wt7OET3Eqdp8Ljh17GK042D2MhdfxpMCs
	vkFL9cdKXmLNJqtJlBp3MXHH1o7eNv3fNfDJbQ7Y3P3kXkQ4GTN9huF5wc0TX6osfogs
	Bubs87XFFgAzGp6nBCW2puvmn9hp5m/VEL6FaB2qsHqQ7nxhDe2hzwDXaCQRngHxgMD3
	a7gQ==
MIME-Version: 1.0
X-Received: by 10.66.245.142 with SMTP id xo14mr8291032pac.151.1438699648125; 
	Tue, 04 Aug 2015 07:47:28 -0700 (PDT)
Received: by 10.70.61.101 with HTTP; Tue, 4 Aug 2015 07:47:27 -0700 (PDT)
Date: Tue, 4 Aug 2015 10:47:27 -0400
Message-ID: <CAPzboydownzwbUC8m6wt7fSLiRTsuM2u0a5YgvXnLn2r0Qnkyw@mail.gmail.com>
From: Adam Rossi <ac.rossi@gmail.com>
To: yocto@yoctoproject.org
Subject: Making a derivative BSP layer - where did I go wrong?
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
X-List-Received-Date: Tue, 04 Aug 2015 14:47:32 -0000
Content-Type: text/plain; charset=UTF-8

Howdy folks. I am having trouble making a derivative BSP layer and am
asking for your help in determining what I am doing wrong.

I am developing a Yocto distro for a beaglebone-based prototype.  I
made a few small changes directly to the meta-yocto-bsp layer and
bitbaked the core-image-sato image, and everything worked great. The
tweaks I made included:

* Edited meta-yocto-bsp/conf/machine/beaglebone.conf to include
additional machine features:

     * MACHINE_FEATURES = "usbgadget usbhost vfat alsa touchscreen"

* Edited meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
to include a cfg file with the following entries:

      * CONFIG_HID_MULTITOUCH=y
        CONFIG_INPUT_MOUSEDEV_SCREEN_Y=600
        CONFIG_INPUT_MOUSEDEV_SCREEN_X=1024

While this works perfectly, it does not feel like a clean solution to
be mucking with the meta-yocto-bsp layer directly. So I created my own
meta-custom BSP layer using the yocto-bsp script to hold these
changes. My bsp-layer has  the following attributes:

*  meta-custom/conf/machine/custom.conf contains the following:

       * require /home/me/poky/meta-yocto-bsp/conf/machine/beaglebone.conf

          MACHINEOVERRIDES = "beaglebone:custom"

          MACHINE_FEATURES = "usbgadget usbhost vfat alsa touchscreen"

*  meta-custom/recipes-kernel/linux/linux-yocto_3.14.bbappend contains
a single line    SRC_URI += to the cfg file mentioned above

When I bitbake the new layer with the new custom machine and the same
image target, I get file outputs which look very similar to the edited
meta-yocto-bsp, with the exception of the zImage, which is much
smaller and will not boot.

Perhaps I have an improper understanding of how layers build upon each
other? I had though that by including meta-yocto-bsp and meta-custom,
and specifying my custom machine in the local.conf file, it would
build the exact same image as my tweaked meta-yocto-bsp.

Your guidance as to my mistake or a pointer to an example of a
derivative bsp-layer would be most appreciated.

