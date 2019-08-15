Return-Path: <antonio.teixeira@bry.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A161E00E0A; Thu, 15 Aug 2019 15:19:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [186.250.187.24 listed in list.dnswl.org]
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Aug 2019 15:19:11 PDT
Received: from mail.bry.com.br (mail.bry.com.br [186.250.187.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94074E00DE2
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2019 15:19:11 -0700 (PDT)
Received: (qmail 8559 invoked from network); 15 Aug 2019 22:12:28 +0000
Received: from 189-112-062-214.static.ctbctelecom.com.br (HELO
	?192.168.100.10?) (antonio.teixeira@bry.com.br@189.112.62.214)
	by mail.bry.com.br with SMTP; 15 Aug 2019 22:12:28 +0000
To: yocto@yoctoproject.org
From: Antonio Teixeira <antonio.teixeira@bry.com.br>
Message-ID: <e30590c0-3122-15f6-013b-2e6c565c89c9@bry.com.br>
Date: Thu, 15 Aug 2019 19:12:28 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
Subject: Trouble using initramfs
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
X-List-Received-Date: Thu, 15 Aug 2019 22:19:12 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello.

I've been having trouble with loading initramfs on boot when the 
initramfs is bundled with the kernel image.
I've been using the following options in local.conf:
INITRAMFS_IMAGE = "core-image-minimal-initramfs"
INITRAMFS_IMAGE_BUNDLE = "1"

I'm using the linux-intel kernel from the meta-intel layer, however, 
when booting, the kernel simply doesn't load the initramfs.

If I set INITRAMFS_IMAGE_BUNDLE to "0", copy the generated initramfs 
image to the boot partition, and then point grub to the external 
initramfs.cpio.gz image using the initrd option in the boot entry 
config, the kernel loads it fine and everything works.

I'm booting in a x86_64 computer (not an embedded device) using these 
instructions:

https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_hard_drive.3F

Am I missing something? Do I need to set some other kernel parameters? 
Is there any way I can check if the resulting kernel image indeed has an 
initramfs bundled with it?

