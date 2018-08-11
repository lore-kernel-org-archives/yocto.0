Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 564F7E0079A; Sat, 11 Aug 2018 15:51:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1399AE006C7
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2018 15:51:22 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1foch4-0006eB-1J
	for yocto@yoctoproject.org; Sun, 12 Aug 2018 00:49:10 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Ferry Toth <ftoth@telfort.nl>
Date: Sun, 12 Aug 2018 00:51:13 +0200
Message-ID: <pknp4v$od5$1@blaine.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: KNode/4.14.10
Subject: Removal of VM_DEFAULT_KERNEL in Sumo breaks booting initramfs kernel
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
X-List-Received-Date: Sat, 11 Aug 2018 22:51:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7Bit

We are generating a initramfs kernel and depending on VM_DEFAULT_KERNEL to 
install that into our boot hddimg as vmlinuz, which a U-Boot script looks 
for to load. This works nicely in Rocko.

The patch 'live-vm-common.bbclass: Don't use vmlinuz or VM_DEFAULT_KERNEL' 
for Sumo causes U-Boot to not find vmlinuz. After changing that script to 
load bzImage, kernel won't boot as it has no initramfs.

Is there a better way in Sumo to install bzImage-initramfs-edison.bin 
instead of bzImage to hddimg?

Thanks,
Ferry


