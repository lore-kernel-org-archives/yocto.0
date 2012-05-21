Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60426E0030B
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 10:51:15 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 18C49F811FB; Mon, 21 May 2012 11:51:15 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4DA25F811F9;
	Mon, 21 May 2012 11:51:13 -0600 (MDT)
Message-ID: <4FBA8091.1040509@mlbassoc.com>
Date: Mon, 21 May 2012 11:51:13 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Trouble building RasberryPi with Yocto/Poky
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 May 2012 17:51:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I tried to build a simple image using just Poky+meta-raspberrypi
Build Configuration:
BB_VERSION        = "1.15.2"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "raspberrypi"
DISTRO            = "poky"
DISTRO_VERSION    = "1.2+snapshot-20120521"
TUNE_FEATURES     = "armv6 vfp arm1176jzfs"
TARGET_FPU        = "vfp"
meta
meta-yocto        = "master:f24d8df3af52e2a2911233746ad69f8899bbdf93"
meta-raspberrypi  = "master:d1e802561ab5c70680fd6ee70a47791fe78aa977"

When I ran 'bitbake core-image-sato', I got this error:

| make[1]: *** No rule to make target 
`/local/rpi_poky/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi-3.1.9-rpi+r1+git0ec4154d64ebba48ca2446cde60a90546311defc-r1/image/lib/firmware/./', needed by 
`/local/rpi_poky/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi-3.1.9-rpi+r1+git0ec4154d64ebba48ca2446cde60a90546311defc-r1/image/lib/firmware/ti_3410.fw'.  Stop.

Any ideas how to move forward?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

