Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C017E00DB5; Fri, 23 Aug 2019 09:04:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDE42E00BA1
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2019 09:04:57 -0700 (PDT)
Received: by mail-qt1-f175.google.com with SMTP id g4so1835466qtq.7
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2019 09:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=QFHbIMLjI87ANibr4e6JnHtNHvTwZt990c/UaoyTMRo=;
	b=qKQ66vohFGOg2E92gsQMHQoeZfheiMakcFcxaooSAdZl+y1rhyJE92rrBFmclyVstv
	04QHvdXLmfGoiu6pN4bSQtinmgtg4AiREv8L3dPBgr/z2WYE/NniDDl6CwCm4C6m2+vG
	4t8XzQaVbL5GX/SpInw3qyvCeTfiEP1uXlTy1tC4PRJ/hLXXs7h2kQGRWVvNSQ4EtjeI
	/rRw+TfW9EyWSW0G6icjUNXtnUi/wdPVo7wR6VF2fq/9ld8EZ6wBZhqsJ+aYa88gLVPC
	dQpHeuPX+r4v2trnOacdOPukDCNzfaYXMJpt68NZvZ6IrpWSS585uap8YOJKQ3fBC+6b
	pZXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=QFHbIMLjI87ANibr4e6JnHtNHvTwZt990c/UaoyTMRo=;
	b=QHBlWDSNKWyGIM919/YustKSLI/SXUgosQshyB8kvdXue2GRPvmyrxJUu+ivZoKrem
	0EbFRar4hZ8jaoHfsZ+VvocIUEYcT1oQnSVgHiG2dqk0br/kjdN/1GcYR7VEvu8CuoVN
	pDV5qYV+rzStnriSxt0HsrztvhTvOVrJI9CihA9NlzmewguLfEVeK4BUIXbY97A+feAo
	Un2iiUj+hSnBnohIiw/s40cgxhVjKjf+QI4B7qlyguOab49MMYSb8KjhoiLeVc+pyLE/
	X68knTJyTcdMmXVUIIznYdZ7lSt7iCperyEo3CO9AC7kdLZrceEVYRgHJMj2aBbA0fqo
	JIRg==
X-Gm-Message-State: APjAAAU4/m2HhwSqcOedm6YnbEoEUE2XXvc9jIWO8gRsZqgAMFG4y4Wp
	KWiMrd/5px0zv0ghqMMCNBCtpuB4ceLPBMC0iK09j1TQ
X-Google-Smtp-Source: APXvYqwFYpHotU8ymIkiKKGS8jJhDvxmkli9O6wzaUdbtkWZJc2pAYy1HNroDab8Z3HHLRjSUUdv6jrczeQ2tmj3KRc=
X-Received: by 2002:ac8:6105:: with SMTP id a5mr5319793qtm.285.1566576296263; 
	Fri, 23 Aug 2019 09:04:56 -0700 (PDT)
MIME-Version: 1.0
From: Patrick Doyle <wpdster@gmail.com>
Date: Fri, 23 Aug 2019 12:04:30 -0400
Message-ID: <CAF_dkJCVmf9_B6xHwZsPw_rRP2aYVPdseh0db1ecp+qxFeJffw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: How to include the checksum of the (read-only) rootfs in an initramfs
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
X-List-Received-Date: Fri, 23 Aug 2019 16:04:59 -0000
Content-Type: text/plain; charset="UTF-8"

Is this a solved problem?  If so, what is the correct solution?

Here are some more details of the problem statement...
I want to verify that my read-only rootfs has not been modified when I
boot.  So I bundle the checksum of the the rootfs in /etc/rootfs.hash
in my initramfs using something a lot like:

do_install() {
    install -d -m 0755 ${D}/etc
    sha256sum -b ${DEPLOY_DIR_IMAGE}/base-image-${MACHINE}.squashfs-xz
| cut -c-64 > ${D}/etc/rootfs.hash
    install -d -m 0755 ${D}/init.d
    install -m 0755 ${WORKDIR}/rootfs ${D}/init.d/90-rootfs
}

This is part of my "validate-rootfs.bb" recipe which is part of my
initramfs image.

The problem is, I need to ensure that
${DEPLOY_DIR_IMAGE}/base-image-${MACHINE}.squashfs-xz is up to date
prior to the execution of my do_install() task.  So I added:

do_install[depends] += "base-image:do_image_complete"

to my recipe.  That has worked great... until I noticed that if I do:

$ bitbake base-image -ccleansstate
$ bitbake base-image

I generate a new rootfs, with new timestamps, which means that it will
have a new checksum.

The problem is, since none of the inputs to base-image.bb have
changed, none of the checksums have changed, so bitbake doesn't think
it needs to run my validate-rootfs.bb recipe, so I don't get a new
checksum embedded in my initramfs.

So, I feel like I am doing something wrong here.  I _could_ generate
rootfs.hash as part of generating
${DEPLOY_DIR_IMAGE}/base-image-${MACHINE}.squashfs-xz, but I think I
would still have the problem of making validate-rootfs.bb notice that
a file in ${DEPLOY_DIR_IMAGE} has changed and therefore it should run
again.

Digging through the output of

$ bitbake-dumpsig -t validate-rootfs do_install

I noticed a line that read:

This task depends on the checksums of files: []

which looked promising.  Digging through the source code, I intuited
that I could add something like:

do_install[file-checksums] +=
"${DEPLOY_DIR_IMAGE}/base-image-${MACHINE}.squashfs-xz:False"

to my recipe.  This appeared to work at first, but also appears to be
totally undocumented, and even as I write this, I am seeing situations
where the checksum doesn't get recalculated.

So I wonder if other folks have tried to solve this problem, and how
they have done so.

--wpd

