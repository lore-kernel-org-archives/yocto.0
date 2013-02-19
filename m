Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f43.google.com (mail-qe0-f43.google.com
	[209.85.128.43]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id ADE9AE00721
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 13:02:31 -0800 (PST)
Received: by mail-qe0-f43.google.com with SMTP id 3so3298717qeb.16
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 13:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=SMmfMG4dTAmj0iKebaD5VXFA8q9xu/tK7+naNapbhFA=;
	b=sIYH9+2TQpuSBn/2z+9mCxRAnXHcCBSMoXS0an8QWDUHz+spGmJhR0Qq4IzFq2ZRxM
	CNtlDCU6pb2qruCSono/rZ76RjjC2+lHqjdPRCtOuakXY3h9qLWjT47mcySWK5GJeZD2
	tTQV4/ZPhJqM9Y8vRQ5tQ1rGZeNomA53rWde64d/P6FM8o5/7EtLvfRNTACyaS9I5xxt
	8b9u6rHblCYvrO5JsBwIEgiSzn67hnnRRptzBIFa+IWQk6MgdWhfkN9y+S38FO8WmqZu
	lhtHvewWwduYDuWG5mXi9SamAX3jeSBT/cIIb6jEdRptNpDOCM8B6m4S+rM0++I1Bywm
	CMhg==
MIME-Version: 1.0
X-Received: by 10.224.58.201 with SMTP id i9mr8295423qah.81.1361307750693;
	Tue, 19 Feb 2013 13:02:30 -0800 (PST)
Received: by 10.49.60.39 with HTTP; Tue, 19 Feb 2013 13:02:30 -0800 (PST)
Date: Tue, 19 Feb 2013 22:02:30 +0100
Message-ID: <CAFyqS9qOfZ1m_nUMCF8qK+kxOvXF5XPBb_ZuQFGvSoRMdOCGwQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: bitbake: how to resolve a dependency to kernel-devicetree when building rootfs
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
X-List-Received-Date: Tue, 19 Feb 2013 21:02:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

First of all, I am a total noob when it comes to bitbake, but I am
struggling and slowly getting there ( I think).
So, I am sorry if my questions seems stupid, but this one I just can
not seem to figure out on my own.
What I am trying to do is to build a custom ARM based rootfs image
using the ELDK toolchain that should include all the modules from my
kernel build. But the rootfs build stage fails! If I exclude the
kernel modules everything work just fine.

The bitbake error I get is

| Collected errors:
|  * satisfy_dependencies_for: Cannot satisfy the following
dependencies for kernel-modules:
|  *    kernel-devicetree *
|  * opkg_install_cmd: Cannot install package kernel-modules.


My simple rootfs.bb looks like this

require recipes-core/images/core-image-minimal.bb

# The list of packages used to build images.
IMAGE_INSTALL += "kernel-modules"

# Formats of root filesystem images that you want to have created.
IMAGE_FSTYPES = "jffs2"


The device tree blob was built successfully and is located in the
kernel deploy image folder.
I can see that I have the following files under the kernel work path

./packages-split/kernel-devicetree
./pkgdata/runtime/kernel-devicetree
./pkgdata/runtime-reverse/kernel-devicetree

Any advice on what I have missed?

Hans

