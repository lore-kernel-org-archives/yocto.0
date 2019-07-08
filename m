Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82800E00C6A; Mon,  8 Jul 2019 14:34:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2962E009FA
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2019 14:34:35 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id f4so23146048ioh.6
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2019 14:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=wnfRrY0e2t0wEBGr7iHLE4UZdQ1Q4FxrmqBxOzmFURU=;
	b=ozLVarHOmy2rlO720dysEtC7M3movt5wcX5qpiOPK93PGLMVETJVVr8UTuQXgjr0rP
	69X/NFLkJYepEsF0bkXE6hDiYSVH/ci6JO5WgfPHsvoXDsNsfDt06J8jviS2JTvfpMz8
	qQ7ofxyzONDTY7uyou/7/lVyJLFn/aMes0OrdqZtpg/fy+PTVtJSsGSwwvHxFXgltsAI
	SOvh20LyhzpVNIa8ao9/NP0sOSzYl8EVXKGMjkxqnN8s3hF/4qoODA4WF2lzfH1nzAFT
	YkzObEaWTPSrjPXgLSm91ycLPjZuuwiRHz9pb755X8NS2h+D0ZW6FcOzp5klXpfKvdDh
	ovhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=wnfRrY0e2t0wEBGr7iHLE4UZdQ1Q4FxrmqBxOzmFURU=;
	b=RPGKwEEsz6fuFQBP9Sy2UrrIoV02wJFWcabFuTFmGfROfOgH8gRSGByD9iYUX9wers
	Q9XPyruRMNBG8L5gpaRSxcYt+6kl5n9dYLMRBd2ea/2AYrtq3q/UuRvVGpU24Zn3Q0jL
	jpmTg/WTpa4AiZ/VdXy5E3/VDX5qMDENHmOM+9XvA54y83SxpoWJUEiIVCXgsiYVVQqj
	+gK2oNeayi7SpZW4B9ZhmJ+++ZdGZ2Nv3kJCYmrCRkAhXxR4RZlwYWbsQa7UWrUJLla1
	y0L4u1olcRm92gpTnbNu4Qp4zJ2aDAyVCd89ZQ6qfi8PWX/Id4Xd39k6FBzn7l2RgV7e
	yBDg==
X-Gm-Message-State: APjAAAUCu57gNwzENj+6WJj3VeHQmn+iKx0MTGGNJW4PLbbbfLyxYo5e
	nXGpOdG81reMLomP18r0KZd4diiKBwGsysfroJNMsDKH
X-Google-Smtp-Source: APXvYqzA6//JVoksteLa9HBWL9MRfaGynoSKkhAYBkoPRu5omxzyA8WYzMoj6lQJJClktpix3YkxF60I1iuYCsxtj+8=
X-Received: by 2002:a5e:c247:: with SMTP id w7mr16456033iop.72.1562621675265; 
	Mon, 08 Jul 2019 14:34:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Mon, 8 Jul 2019 14:34:34 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 9 Jul 2019 07:34:34 +1000
Message-ID: <CAA=hcWREgSBse3oq8FhH2bCNcr5FC4SYTyeFuW9_b-KdTX1VGQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Stuck to build zImage-initramfs
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
X-List-Received-Date: Mon, 08 Jul 2019 21:34:36 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I have been stuck to build zImage-initramfs for weeks. I've read Yocto
latest document, but still failed to generate the initarmfs to run on
RAM. I added following statements in local.conf:

UBOOT_CONFIG = "ram"
INITRAMFS_IMAGE_BUNDLE = "1"
DISTRO_FEATURES_append = " ram"
IMAGE_FSTYPES_append = " cpio.xz"

It built to following images:

dev-image.rootfs.cpio.xz
u-boot.imx-ram
zImage.bin

If I extract the dev-image.rootfs.cpio.xz, it contains zImage at boot directory.

What I need is the zImage-initramfs to contain the rootfs in initramfs format.

I see there is document ramfs-rootfs-initramfs.txt, but it did not
mention how to generate zImage-initramfs.

There is core-image-minimal-initramfs.bb, but it cannot be run:

$ MACHINE="imx6evk" DISTRO="imx6evk" bitbake core-image-minimal-initramfs
ERROR: Nothing PROVIDES 'core-image-minimal-initramfs'
core-image-minimal-initramfs was skipped: incompatible with host
arm-oe-linux-gnueabi (not in COMPATIBLE_HOST)

Could any one help what I am missing here and how to build the zImage-initramfs?

Thank you.

Kind regards,

- jh

