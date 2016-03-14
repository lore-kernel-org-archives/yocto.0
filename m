Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BFE7E00D50; Sun, 13 Mar 2016 22:17:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D70B9E00CE8
	for <yocto@yoctoproject.org>; Sun, 13 Mar 2016 22:17:03 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 9E46E68A01A; Mon, 14 Mar 2016 05:16:59 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 78BBA68A019;
	Mon, 14 Mar 2016 05:16:57 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 670A767401D5;
	Mon, 14 Mar 2016 06:16:56 +0100 (CET)
To: yocto@yoctoproject.org
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56E64947.5020606@mlbassoc.com>
Date: Mon, 14 Mar 2016 06:16:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
Subject: Problems building live image
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
X-List-Received-Date: Mon, 14 Mar 2016 05:17:08 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I'd like to to some testing that qemu just doesn't seem up to
so I attempted to build a live ISO per the documentation. I
added these lines to local.conf:
   IMAGE_FSTYPES_genericx86 += "live"
   NOISO_genericx86 = "0"

When I try to build core-image-base I get this error:
   ERROR: INITRD_IMAGE_LIVE core-image-minimal-initramfs cannot use image live, hddimg or iso.
   ERROR: Check IMAGE_FSTYPES and INITRAMFS_FSTYPES settings.
   ERROR: Failed to parse recipe: /local/poky-cutting-edge/meta/recipes-core/images/core-image-minimal-initramfs.bb

I'm using a recent Poky checkout (d53413d3a8444c38a83ea37867c8af7754d8e702)

Am I just doing something wrong here? I was following this section of the mega-manual:

   26.56. image-live.bbclass¶

   The image-live class supports building "live" images.

   Normally, you do not use this class directly. Instead, you add "live" to IMAGE_FSTYPES.
   For example, if you were building an ISO image, you would add "live" to IMAGE_FSTYPES,
   set the NOISO variable to "0" and the build system would use the image-live class to
   build the ISO image.

I don't have any available hardware for this testing, so I thought
I'd use VirtualBox.  Is this a reasonable approach?  I want to use
a live ISO so I get a writable file system.  I tried just using the
.hddimage but that doesn't boot with VirtualBox :-(

To be clear, along with the additions above in local.conf, I tried:
   $ MACHINE=genericx86 bitbake core-image-base

Thanks for any ideas

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

