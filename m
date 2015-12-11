Return-Path: <yocto@generictech.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB3BDE00AB7; Fri, 11 Dec 2015 08:32:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4219]
X-Greylist: delayed 4199 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 Dec 2015 08:32:17 PST
Received: from extendnet.co.uk (extendnet.co.uk [91.109.6.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E18ACE008C4
	for <yocto@yoctoproject.org>; Fri, 11 Dec 2015 08:32:17 -0800 (PST)
Received: from host86-139-167-188.range86-139.btcentralplus.com
	([86.139.167.188]:64136 helo=yellow)
	by ultra10.extendnet.co.uk with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.86) (envelope-from <yocto@generictech.co.uk>)
	id 1a7PWI-0000cV-IC
	for yocto@yoctoproject.org; Fri, 11 Dec 2015 15:22:06 +0000
From: "Christopher Hossack" <yocto@generictech.co.uk>
To: <yocto@yoctoproject.org>
References: 
In-Reply-To: 
Date: Fri, 11 Dec 2015 15:22:04 -0000
Message-ID: <FB3B762F85D14CE5824796EC544B34A2@yellow>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdEsM1ZBxMwE10gXTrWq+dkV48iUkAH9B/bQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-Antivirus: avast! (VPS 151211-0, 11/12/2015), Outbound message
X-Antivirus-Status: Clean
X-eXtendnet-MailScanner-Information: Please contact the ISP for more
	information
X-eXtendnet-MailScanner-ID: 1a7PWI-0000cV-IC
X-eXtendnet-MailScanner: Found to be clean
X-eXtendnet-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.901, required 5, ALL_TRUSTED -1.00, BAYES_50 0.80,
	KAM_COUK 1.10, URIBL_BLOCKED 0.00)
X-eXtendnet-MailScanner-From: yocto@generictech.co.uk
X-eXtendnet-MailScanner-Watermark: 1450452127.43931@mx5XLV9EbIDZZuGfu6V3Yw
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - ultra10.extendnet.co.uk
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - generictech.co.uk
X-Get-Message-Sender-Via: ultra10.extendnet.co.uk: authenticated_id:
	hossa1c@generictech.co.uk
X-Authenticated-Sender: ultra10.extendnet.co.uk: hossa1c@generictech.co.uk
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: creating a ubuntu rootfs
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
X-List-Received-Date: Fri, 11 Dec 2015 16:32:20 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
I'm trying to create a Yocto kernel with a ubuntu-core rootfs. At the moment
I'm creating a core-image-base and then splatting an
ubuntu-core-12.04.5-core-armhf.tar.gz over the rootfs on the image. eg

Create a core-image-base image
$ bitbake core-image-base

Insert a sdcard and copy the core image on to it and then mount the rootfs
$ sudo dd if=~/core-image-base-imx6qsabresd.sdcard of=/dev/sdb bs=1M && sync
sudo mount /dev/sdb2 /mnt/sdcard/

Remove all files on the sdcard rootfs (eg sdb2) and then untar the unbuntu
core over the old rootfs, eg
$ cd /mnt/sdcard
$ sudo tar -xf ~/ubuntu-precise-12.04.3-armhf.com-20131129.tar.xz

Then copy the original fsl-image-base lib/modules/* & boot/* over the ubuntu
core rootfs
$ cd ~
$ sudo  mount -o loop -t ext3 core-image-base-imx6qsabresd.ext3 rootfs 
$ sudo rsync -artv rootfs/lib/modules/ /mnt/sdcard/lib/modules/
$ sudo rsync -artv rootfs/boot/ /mnt/sdcard/boot/

This all works, but I would really like to create a recipe that does all of
this work for me. But I believe my new recipe can't delete anything already
installed on the rootfs.

So I need to create a recipe that only installs /lib/modules/* /boot/* and
kernel source files (I also want to build kernel drivers on the target so I
guess I will also need recipe kernel-devsrc) on the rootfs.

I've looked at core-image-base (and others) and this seems to inherit
image.bbclass, but this adds a basic rootfs which will stop me from
splatting my ubuntu-core over it.

Can Yocto be configured to achieve this or should I stick to my current
hack?

Cheers

Chris



