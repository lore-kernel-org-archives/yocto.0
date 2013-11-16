Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74853E0162E
	for <yocto@yoctoproject.org>; Sat, 16 Nov 2013 09:50:12 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Vhk0R-00061G-C8
	for yocto@yoctoproject.org; Sat, 16 Nov 2013 18:50:03 +0100
Received: from 212.50.246.122 ([212.50.246.122])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 16 Nov 2013 18:50:03 +0100
Received: from lemonjack05 by 212.50.246.122 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 16 Nov 2013 18:50:03 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Jack lemon <lemonjack05@gmail.com>
Date: Sat, 16 Nov 2013 15:24:57 +0000 (UTC)
Message-ID: <loom.20131116T135512-692@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 212.50.246.122 (Mozilla/5.0 (X11; Ubuntu; Linux x86_64;
	rv:21.0) Gecko/20100101 Firefox/21.0)
Subject: How to modify u-boot in Root File System rootfs.ext2.gz.u-boot ?
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
X-List-Received-Date: Sat, 16 Nov 2013 17:50:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi everybody,

I worked with P1022DS-PB and then designed my custom board according to its
documents. For sd card I adjust u-boot to 115200 baud rate and compile it
with ELDK independently. However in Nor-flash we haven't u-boot.bin
independently. For Nor-Flash I need to adjust baud rate in .ext2.gz.u-boot
image, because for Nor-Flash only kernel,rootfs,dtb files are needed.
How can I modify u-boot in fsl-image-minimal-p1022ds.ext2.gz.u-boot for
adjusting baud rate to 115200?



