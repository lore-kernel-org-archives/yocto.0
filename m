Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32AAFE009AC; Mon,  7 Oct 2019 02:58:00 -0700 (PDT)
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
	*      [209.85.166.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6586E00805
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2019 02:57:58 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id a1so27160840ioc.6
	for <yocto@yoctoproject.org>; Mon, 07 Oct 2019 02:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=R4h7bzdCH0rJMtRwmMxt4QaBt5fB3W7QHK81g1MZlSw=;
	b=ZJavBEhXlzwlEFjuR3o/AlmT5DdlEAmY/6Igz7MGymR491yzcWMDMts8ELv4BmvOfq
	Zvj63vZrpHulFMU1gM2tSEKSlB89L3KQdQgGxHev3NTia5lz2LrbR4M0bjtmZfPL9Ube
	Xsb6e0HHjvV/aVf6i6R19rX9/29O75fGW8T/7tSiwsZz3T8CRnlmz/nuW7w+uxHj2jmt
	BlPrmYZO6RO9/DtQqRDDFvr+8l5ru3U+FA/fjfGNLNWtEhXJ97mxwNK4s6M5gT6IdMPm
	i0Opm+b9AOtOtATeAgIcsOYxzgbSIOIOqPglwJI2gAa+XYq8XiipO3u2VMFe5IPQn9qs
	qASg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=R4h7bzdCH0rJMtRwmMxt4QaBt5fB3W7QHK81g1MZlSw=;
	b=rQs8I4cv26iwsKxqP/IoANJ0VrIXii1ssCTTBmtFmeGrX5knf8KzaUj+2WMpXeUzl5
	pKdfMjhnhwOub2WkP9q90ZU1ttmfk/v3tawk4H7f6FDDhshP14LTUvLJc8AizPboTgWU
	6K7OlgffIC16jbDzrzERLCQrRbwEVGLZRbzemHoqvZApWWZjsMnuQofDb0fOBRjXmNsr
	1/QeLNoRm6pWfV+VqlxvlTaFKx++axJOcA4A+VnH9Vra7Gw8BrqiEIevlN2aUX3g5B36
	4Dt45jEE/cG+Y3xXl6CZh8QisM9pDPAD3T5fR+DoRcF7+V2H6IOvimGEegKqpy/ZQ+b9
	FcAA==
X-Gm-Message-State: APjAAAV8Kom70Odi2sxyWPBs8LwyEPRW3ojdgEvueuSbHMSKWHDqqXKU
	AD9Ztd9tPbVAiCX8Ye+FUtDPbbIl8shrRn0tJBhCsJ2R
X-Google-Smtp-Source: APXvYqx8HdRvRasF/1ipjxSSAKkLBk4+IZ5e4hw/5Mc0RL78kQ6b3GzEJWwsGV/adwgpfZSUhDQKLLEoaFLq8pfTYyE=
X-Received: by 2002:a05:6638:73d:: with SMTP id
	j29mr27246025jad.21.1570442278140; 
	Mon, 07 Oct 2019 02:57:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP;
	Mon, 7 Oct 2019 02:57:57 -0700 (PDT)
In-Reply-To: <d33f7621-c00f-b8a4-83d5-728444eb8db2@gmx.de>
References: <CAA=hcWQxUaCcNW2GxyoO6cx1i7OFUip8y-BaBVWtB1-A=OWPRQ@mail.gmail.com>
	<d33f7621-c00f-b8a4-83d5-728444eb8db2@gmx.de>
From: JH <jupiter.hce@gmail.com>
Date: Mon, 7 Oct 2019 20:57:57 +1100
Message-ID: <CAA=hcWQQPGaRinR8N2A5nt=WNssD3ukUc58aPJ5XkYu61gEW_A@mail.gmail.com>
To: Moritz Porst <moritz.porst@gmx.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel.bbclass do_bundle_initramfs did not work
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
X-List-Received-Date: Mon, 07 Oct 2019 09:58:00 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Moritz,

On 10/4/19, Moritz Porst <moritz.porst@gmx.de> wrote:
> Hey JH,
>
> I had a similiar problem before. What branch and revision do you have
> checked out for your meta-layers ? Mine looks like the following and I
> get an initramfs built into my image:
>
> meta-yocto-bsp       = "warrior:01b8a8b54bc569e5ef3f5e6fc6abcee365ab25d9"
> meta-intel           = "warrior:6bd7b2edafe90e61a3a52cd089432080b82a7891"
> meta-qt5             = "warrior:2a5f9415e48a38f6f4eb0cf375737a2d8438e2fe"
> meta-mingw           = "warrior:10695afe8cd406844e0d0dd868c11677e07557d4"
> meta-initramfs       = "warrior:8d5dcd6522e9d15e68637b6d7dda0401f9bb91d0"

I am using thud, I guess the major problem is how to define the
variables correctly according to the the class. Correct me if I am
wrong, but I think the initramfs is implemented in kernel.bbclass, the
INITRAMFS_IMAGE and INITRAMFS_IMAGE_BUNDLE = "1" need be defined to
run copy_initramfs() and do_bundle_initramfs (). For some reason, both
functions were not called. Did you define INITRAMFS_IMAGE and
INITRAMFS_IMAGE_BUNDLE in local.conf to get it work?

> Further more what happens if you build only an initramfs ?
>
> bitbake core-image-minimal-initramfs

That was fine for building it on qemux86, but I could not build for imx6:

ERROR: Nothing PROVIDES 'core-image-minimal-initramfs'
core-image-minimal-initramfs was skipped: incompatible with host
arm-oe-linux-gnueabi (not in COMPATIBLE_HOST)

I hacked to add arm-oe-linux-gnueabi to COMPATIBLE_HOST in
core-image-minimal-initramfs.bb, it still got the same error.

> Any error messages ? If not, how is your initramfs =called ? The issue
> *could* also be a misspelling in zImage-initramfs.

Did you refer the initramfs in core-image-minimal-initramfs qemux86 build?

core-image-minimal-initramfs-qemux86-20191004234320.rootfs.cpio.gz
core-image-minimal-initramfs-qemux86-20191004234320.qemuboot.conf
bzImage--4.18.27+git0+9e348b6f9d_62f0a3acff-r0-qemux86-20191004234320.bin
......

I guess that bzImage--4.18.27+git0+9e348b6f9d_62f0a3acff-r0-qemux86-20191004234320.bin
should be an initramfs zImage file. If I could build
core-image-minimal-initramfs for imx, I could verify it in my test
machine.

Still looking at it.

Thanks Moritz

>
> On 04.10.19 13:26, JH wrote:
>> Hi,
>>
>> It seems to me if both INITRAMFS_IMAGE and INITRAMFS_IMAGE_BUNDLE are
>> set it should generate initramfs, but I did not get. I set up in my
>> image:
>>
>> INITRAMFS_IMAGE = "zImage-initramfs"
>> INITRAMFS_IMAGE_BUNDLE = "1"
>>
>> But it did not build zImage-initramfs, what I could be missing here?
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jh
>

