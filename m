Return-Path: <manuel.bessler@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E16E7E01206
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 18:54:55 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so4862080vbj.35
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 18:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=7ugnQ1nbeRaHxSz3rBWfpzTdISrehNfN1lM22H+6pFE=;
	b=rt9CPFwzVYi2GTC8k9bKjeIGkTn7xDk6UQMwBaA9mNX04zmlnvsvr6gtSg2f3TUFQA
	QZAlQXGqcB/JHVZ2rLEgZoEZIbHPM9jXWiThCzX+xhMAIVPv167rFshB6+Kd86TNLDjN
	mmOVCqvbkb1xmID3MBpsTYTEaUqtftvSfJ4VzVjguThdhR7nrZ8Krhf1QCRXqdHC+if8
	ofc156bzbu9rAXm7pOIKoCNyUW/XqOHjjqaCNFwegWaIQWoH2UeUJTisnV/MtxLEnXzQ
	mu/iuufgpXUExzbKnUu0HW/vXbxnX/g4HbDBzeFOFdfAHc4AqeSLDxw7SgCPxEOGxAL0
	U5Ng==
MIME-Version: 1.0
Received: by 10.52.34.241 with SMTP id c17mr2583573vdj.40.1336528494998; Tue,
	08 May 2012 18:54:54 -0700 (PDT)
Received: by 10.220.182.136 with HTTP; Tue, 8 May 2012 18:54:54 -0700 (PDT)
Date: Tue, 8 May 2012 21:54:54 -0400
Message-ID: <CAKSdS8LS3dX_zJpg8cZ5NqdN3DyHbRXdtK01oPukLfNmmfVFDQ@mail.gmail.com>
From: Manuel Bessler <manuel.bessler@gmail.com>
To: yocto@yoctoproject.org
Subject: initramfs image
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
X-List-Received-Date: Wed, 09 May 2012 01:54:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm trying to figure out how to build an image of type initramfs, ie.
kernel with built-in rootfs.
I've got a rootfs.cpio.gz in build/tmp/deploy/images. But how do I
tell the kernel to actually use it
and "swallow in" the rootfs.

I've found a few variable that have to do with initramfs', but there
are no simple examples,
and for some variables I've not found any examples nor documentation at all.

in  .../images/myimage-initramfs.bb I have:
require myimage.bb
INITRAMFS_FSTYPES = "cpio.gz"
IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"

In the same file I tried to set INITRAMFS_IMAGE to:
INITRAMFS_IMAGE = "myimage "


Do I need to set CONFIG_INITRAMFS_SOURCE in my kernel config manually,
and if yes, to what?
My kernel recipe is (for now) a simple kernel build, ie "inherit
kernel"-based only.

Am I using INITRAMFS_IMAGE the right way? What about INITRAMFS_TASK ?
I could not find any information on this variable....

I'm using yocto 1.2.


Does anyone have a simple example on how to build a kernel with
initramfs built in?

I'd appreciate any help.
Thanks,
Manuel

