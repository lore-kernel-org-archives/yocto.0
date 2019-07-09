Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB79EE00C87; Tue,  9 Jul 2019 04:47:54 -0700 (PDT)
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
	*      [209.85.166.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0762E00C46
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2019 04:47:53 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id u19so42427922ior.9
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2019 04:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=k7NgqOXqFg3ItSm0AUAgSKizFU+mE5MEgRUEc105fkU=;
	b=Nh3cNlOX08ZPcM4XmMRqzMBZ8l9G50o3BwdoHhwlU4DR7b/UADKwLydlHV3hooUN3V
	LMoA4aRTCXRkDKPq+xGZkzxWzJ3RFWzROwYg7rL+D0T6QlJT0O2OvBlPzFuPbHNK6qjX
	FJpQpLQHXtR2WIOEu95YH9lfNGI1ZcUNYhGmqnz6mox/tQKicqTeNpN7OuYD6vgRCInk
	Nd+OqEzVIk+hgKPjTXHe9ESt9l8veaH+4Qsmnl4PBU6NKH6wMRvjVS81qBh8o2umYlYh
	jOB9JlEYqgKMgFoB5ZHK0kQ2QgYSw4jXrioUc2S6gFlDHGNhW6sDNgm/Iq24wjEoGFI5
	c5Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=k7NgqOXqFg3ItSm0AUAgSKizFU+mE5MEgRUEc105fkU=;
	b=rWftwuS9d/f1ZTDNyuN7wLRv1pYq9atzd8FSLKg4CW9ojRdeEfvn3F8q8ylz85Zk2O
	ljHNt1vS6sXqHPIZquqSI0fNgt2E5+L+BW8zfKYJ8Ftj3/1jlXQv61VPxLr/HQExNRXP
	sa5CET1/82ZDB1uBeYuP5q7Fb1N7llGMGp8kaGSNtXwI4cYLKbQ6tbxUzErvpuowdx/Q
	0zvwOh0JBQvb0pVDBv4ZfkpRcAc1V8zSgUM3+E314lA1STzLgl9CRkh5VamO4GR383JW
	rYLJDdVVrfoe7gCp9ooYN9YgSNkNglopBJIG5pbKhPYQ+4HK0yOlrbUYvfYm7JosxX+u
	9Dog==
X-Gm-Message-State: APjAAAWUvILKNtYlyeG4VTX9zTMGIFxFWvfdrwNKxN6peMcAb+x3SmWm
	7Ic1HU+6dSJLhEk6KHkQ9z2UqEHCcIQLd1aVu1I=
X-Google-Smtp-Source: APXvYqwEjFlfarFrSvQQSywtmI6U8GIMXwh7R08c6Qtg4/dDrIxznxaCBC0nzPfOut34mgZa/g6F0xlOlKRnDx1DCdM=
X-Received: by 2002:a6b:3b03:: with SMTP id i3mr24891301ioa.302.1562672873150; 
	Tue, 09 Jul 2019 04:47:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Tue, 9 Jul 2019 04:47:52 -0700 (PDT)
In-Reply-To: <CAGAf8Ly56LcA3wih1BOqi0rbm+z2nwonTi5=jBjjQ_+=55uQNg@mail.gmail.com>
References: <CAA=hcWREgSBse3oq8FhH2bCNcr5FC4SYTyeFuW9_b-KdTX1VGQ@mail.gmail.com>
	<CAGAf8Ly56LcA3wih1BOqi0rbm+z2nwonTi5=jBjjQ_+=55uQNg@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Tue, 9 Jul 2019 21:47:52 +1000
Message-ID: <CAA=hcWSrfdSbKdhDUznCJs2KvfhZPueCdZd6A+PdNXxLZsywkg@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Stuck to build zImage-initramfs
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
X-List-Received-Date: Tue, 09 Jul 2019 11:47:55 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Zoran, I did see that link and your post to run mkimage. Did
you get zImage-initramfs? I have to admit, I lost in that long email
discussion with different approaches, I tried all set up, but there is
no zImage-initramfs to be generated, files built in deploy/images just
could not be used to run uuu on imx6 RAM.

There is post for add KERNEL_INITRAMFS = "-initramfs", it looks like
very close to generate zImage-initramfs, but I could still not get it
:-(.

Thank you very much.

On 7/9/19, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
> Please, read the following thread:
> https://lists.yoctoproject.org/pipermail/yocto/2018-July/041680.html
>
> Zoran
> _______
>
> On Mon, Jul 8, 2019 at 11:43 PM JH <jupiter.hce@gmail.com> wrote:
>>
>> Hi,
>>
>> I have been stuck to build zImage-initramfs for weeks. I've read Yocto
>> latest document, but still failed to generate the initarmfs to run on
>> RAM. I added following statements in local.conf:
>>
>> UBOOT_CONFIG = "ram"
>> INITRAMFS_IMAGE_BUNDLE = "1"
>> DISTRO_FEATURES_append = " ram"
>> IMAGE_FSTYPES_append = " cpio.xz"
>>
>> It built to following images:
>>
>> dev-image.rootfs.cpio.xz
>> u-boot.imx-ram
>> zImage.bin
>>
>> If I extract the dev-image.rootfs.cpio.xz, it contains zImage at boot
>> directory.
>>
>> What I need is the zImage-initramfs to contain the rootfs in initramfs
>> format.
>>
>> I see there is document ramfs-rootfs-initramfs.txt, but it did not
>> mention how to generate zImage-initramfs.
>>
>> There is core-image-minimal-initramfs.bb, but it cannot be run:
>>
>> $ MACHINE="imx6evk" DISTRO="imx6evk" bitbake core-image-minimal-initramfs
>> ERROR: Nothing PROVIDES 'core-image-minimal-initramfs'
>> core-image-minimal-initramfs was skipped: incompatible with host
>> arm-oe-linux-gnueabi (not in COMPATIBLE_HOST)
>>
>> Could any one help what I am missing here and how to build the
>> zImage-initramfs?
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jh
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>

