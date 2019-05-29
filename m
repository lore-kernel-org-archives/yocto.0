Return-Path: <alexander.stein@systec-electronic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85752E00D43; Tue, 28 May 2019 23:34:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [77.236.96.61 listed in list.dnswl.org]
Received: from webbox1416.server-home.net (webbox1416.server-home.net
	[77.236.96.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA342E00B8F
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 23:34:22 -0700 (PDT)
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
	by webbox1416.server-home.net (Postfix) with ESMTPA id 1293A27A5F9
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 08:34:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by imapserver.systec-electronic.com (Postfix) with ESMTP id C5B781A1B6D
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 08:34:21 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at imapserver.systec-electronic.com
Received: from imapserver.systec-electronic.com ([127.0.0.1])
	by localhost (imapserver.systec-electronic.com [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id HhBQfUHRuSHo for <yocto@yoctoproject.org>;
	Wed, 29 May 2019 08:34:19 +0200 (CEST)
Received: from ws-140106.localnet (ws-140106.systec.local [192.168.10.84])
	by imapserver.systec-electronic.com (Postfix) with ESMTPA id
	6B5CA1A1B66
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 08:34:19 +0200 (CEST)
From: Alexander Stein <alexander.stein@systec-electronic.com>
To: yocto@yoctoproject.org
Date: Wed, 29 May 2019 08:34:19 +0200
Message-ID: <8259735.5VA6m7kttD@ws-140106>
MIME-Version: 1.0
Subject: initramfs in rootfs included
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
X-List-Received-Date: Wed, 29 May 2019 06:34:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hello,

is it possible to include an initramfs image in the rootfs? If so, how can I do that?
I want to create a single image including everything: kernel, device tree, rootfs and initramfs.
The initramfs shall contain a custom startup to mount / using overlayfs before calling pivot_root.
A single image is important in order to ease the usage of rauc for updates.
I know about INITRAMFS_IMAGE_BUNDLE which includes the initramfs into the kernel.
This would be great too and creates an kernel containing the initramfs, but unfortunately
this kernel is _not_ included in the rootfs, only the kernel without initramfs.
I tried creating a custom image, based on core-image-minimal-initramfs, but failed at some
point as do_image depends on do_rootfs which depends on do_package. AFAIK the files to install
for a package are installed during do_install which come before do_package, so this does not work.

So I'm wondering how to get an initramfs image into the rootfs.

Best regards,
Alexander




