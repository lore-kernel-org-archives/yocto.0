Return-Path: <lars@visionweeding.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FE96E00D6D; Sat, 24 Sep 2016 07:27:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.198.169.199 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Sat, 24 Sep 2016 07:27:01 PDT
Received: from mailrelay5.public.one.com (mailrelay5.public.one.com
	[91.198.169.199])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DDBFE008FB
	for <yocto@yoctoproject.org>; Sat, 24 Sep 2016 07:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=visionweeding.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type;
	bh=dMw/0sQP0vTiXDw5q+wBhqFTQ68VwWDpVv82uObA5no=;
	b=IUZ54MXMkPaL/9qyoygH+jotfnp2mgk5eJip8EvKtWkfONTekr6KY7jArmIWG0DkQ5SJLbnUcO92X
	eMC1mdKJE65K56RnCrF53hp3UjWvEk82gg7dsPxMUiwdd4hu8YSRlukFBo+0DtQHWIhjjac6PCm0aY
	ZBpm1MNIB/IPPZnk=
X-HalOne-Cookie: 8ba3e9672bfb6dbfadb8ac07873eca45eb5ba40f
X-HalOne-ID: ce1a5545-8262-11e6-b625-b82a72d03b9b
Received: from [192.168.0.108] (unknown [2.111.129.36])
	by smtpfilter2.public.one.com (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Sat, 24 Sep 2016 14:25:55 +0000 (UTC)
To: yocto@yoctoproject.org
From: Lars Larsen <lars@visionweeding.com>
Message-ID: <57E68CEF.6070905@visionweeding.com>
Date: Sat, 24 Sep 2016 16:25:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
Subject: yocto linuc, initramfs and syslinx.cfg
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
X-List-Received-Date: Sat, 24 Sep 2016 14:27:04 -0000
Content-Type: multipart/alternative;
	boundary="------------090703050601070307000607"

--------------090703050601070307000607
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello yocto world

I desperately need some help
It spawns off my yocto build, so I guess (hope) there is a wise guy or 
two,that can give me some pointers
I realize is not 100% yocto related, but lean towards generic Linux - so 
please forgive me.

I want to be able to boot up from flash, using a rw ramdisk that 
'vanish' when I reboot.
I use SYSLINUX to boot the target.

I have a recipe that can build an image, that works fine.
Now I want it convoluted in an intramfs.

my image recipe

mybase.bb:

DESCRIPTION = "A base image that boots and work"

ALL_MY_APPS= " app1 app2 app3" ## all the software i want on target"
IMAGE_INSTALL = "packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP} \
  ${CORE_IMAGE_EXTRA_INSTALL} ${ALL_MYAPPS}"
inherit core-image


It creates a nice mybase-image-genericxx86.hdd image , I copy the 
contents to my flash card - All very nice
it gets booted,with these lines in syslinux.cfg

LABEL boot
KERNEL /vmlinuz
APPEND initrd=/rootfs.img LABEL=boot  root=/dev/ram0



But If I make a new

conf/initramfs.conf:

IMAGE_FSTYPES = "cpio.gz"

INITRAMFS_IMAGE = "mybase"
INITRAMFS_IMAGE_BUNDLE = "1"

and then run the command
bitbake -R conf/initramfs.conf mybase

As expected I get an bzImage-initramfs-genericx86.bin
I presume this file contains the kernel as well as my rootfs as the initrd
But what to put in syslinux.cfg ?
The logical choice seems to be:


LABEL boot
KERNEL /bzImage-initramfs-genericx86.bin
APPEND LABEL=boot root=/dev/ram0

but it doesn't boot at all. Only flicker on the console, seems to be 
invalid code.

  advice any one ?
BR Lars

--------------090703050601070307000607
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-text-flowed" style="font-family: -moz-fixed;
      font-size: 12px;" lang="x-unicode">Hello yocto world
      <br>
      <br>
      I desperately need some help
      <br>
      It spawns off my yocto build, so I guess (hope) there is a wise
      guy or two,that can give me some pointers
      <br>
      I realize is not 100% yocto related, but lean towards generic
      Linux - so please forgive me.
      <br>
      <br>
      I want to be able to boot up from flash, using a rw ramdisk that
      'vanish' when I reboot.
      <br>
      I use SYSLINUX to boot the target.
      <br>
      <br>
      I have a recipe that can build an image, that works fine.
      <br>
      Now I want it convoluted in an intramfs.
      <br>
      <br>
      my image recipe
      <br>
      <br>
      mybase.bb:
      <br>
      <br>
      DESCRIPTION = "A base image that boots and work"
      <br>
      <br>
      ALL_MY_APPS= " app1 app2 app3" ## all the software i want on
      target"
      <br>
      IMAGE_INSTALL = "packagegroup-core-boot
      ${ROOTFS_PKGMANAGE_BOOTSTRAP} \
      <br>
       ${CORE_IMAGE_EXTRA_INSTALL} ${ALL_MYAPPS}"
      <br>
      inherit core-image
      <br>
      <br>
      <br>
      It creates a nice mybase-image-genericxx86.hdd image , I copy the
      contents to my flash card - All very nice
      <br>
      it gets booted,with these lines in syslinux.cfg
      <br>
      <br>
      LABEL boot
      <br>
      KERNEL /vmlinuz
      <br>
      APPEND initrd=/rootfs.img LABEL=boot  root=/dev/ram0
      <br>
      <br>
      <br>
      <br>
      But If I make a new
      <br>
      <br>
      conf/initramfs.conf:
      <br>
      <br>
      IMAGE_FSTYPES = "cpio.gz"
      <br>
      <br>
      INITRAMFS_IMAGE = "mybase"
      <br>
      INITRAMFS_IMAGE_BUNDLE = "1"
      <br>
      <br>
      and then run the command
      <br>
      bitbake -R conf/initramfs.conf mybase
      <br>
      <br>
      As expected I get an bzImage-initramfs-genericx86.bin
      <br>
      I presume this file contains the kernel as well as my rootfs as
      the initrd
      <br>
      But what to put in syslinux.cfg ?
      <br>
      The logical choice seems to be:
      <br>
      <br>
      <br>
      LABEL boot
      <br>
      KERNEL /bzImage-initramfs-genericx86.bin
      <br>
      APPEND LABEL=boot root=/dev/ram0
      <br>
      <br>
      but it doesn't boot at all. Only flicker on the console, seems to
      be invalid code.
      <br>
      <br>
       advice any one ?
      <br>
      BR Lars
      <br>
    </div>
  </body>
</html>

--------------090703050601070307000607--
