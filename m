Return-Path: <lars@visionweeding.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADDD1E00C0F; Thu, 22 Sep 2016 11:24:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.47.247.221 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 Sep 2016 11:24:16 PDT
Received: from mailrelay3.public.one.com (mailrelay3.public.one.com
	[195.47.247.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D421CE006E3
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 11:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=visionweeding.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=IJJIf2jXjW15Ij9HlnzOFUhe1oHtnNwdABICl3aueAo=;
	b=PXarL4S79pzKheKI/7OFyc7En2gRL2fyLt878YdqicQy6FHHTJ3+t5U9AM56hEN7dvUgku1eUOGPs
	qafKleVcbg0pUfN+hh2UfLf6sEejaXpRV2geiKhfWL7NT41VhvXNLcUqT397JoSOUEPLtgloif32RK
	hA/K9dsktH0zBhX8=
X-HalOne-Cookie: 8b1b976e7e1b771d274d62be0072243efafb84ce
X-HalOne-ID: 9dea7b4d-80f1-11e6-a591-b8ca3afa9d73
Received: from [192.168.1.194] (unknown [86.58.170.151])
	by smtpfilter1.public.one.com (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 18:23:10 +0000 (UTC)
References: <5720A4B2.2060509@visionweeding.com>
	<CAMKF1spSa84Kw_9RL-o4pxc=22rMHCTn1voGEE0R4YF_qUFB0Q@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Lars Larsen <lars@visionweeding.com>
Message-ID: <57E42191.4030003@visionweeding.com>
Date: Thu, 22 Sep 2016 20:23:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1spSa84Kw_9RL-o4pxc=22rMHCTn1voGEE0R4YF_qUFB0Q@mail.gmail.com>
X-Mailman-Approved-At: Mon, 26 Sep 2016 08:13:12 -0700
Subject: yocto linux syslinux and intramfs
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
X-List-Received-Date: Thu, 22 Sep 2016 18:24:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello yocto world

I desperately need some help
It spawns off my yocto build, so I guess (hope) there is a wise guy or 
two,that can give me some pointers
I realize is not 100% yocto related but, lean towards generic Linux - so 
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


It creates a nice mybase-image-genericxx86..hdd image and  I copy the 
contents to my flash card.
All very nice
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

I as expected get an bzImage-initramfs-genericx86.bin
I presume this file contains the kernel as well as my rootfs as the initrd
But what to put in syslinux.cfg ?
The logical choise seems to be:


LABEL boot
KERNEL /bzImage-initramfs-genericx86.bin
APPEND LABEL=boot root=/dev/ram0

but it doesn't boot at all. Only flicker on the console, seems to be 
invalid code.

Any advice any one ?
BR Lars

