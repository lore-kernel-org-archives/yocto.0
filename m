Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43291E00D68; Tue,  9 Jul 2019 15:01:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D29BE00C6A
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2019 15:01:14 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id g20so242808ioc.12
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2019 15:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TADBLE+FqdOLLSQByI1QfCxRgTIR+2DuW8ri/wJzEPE=;
	b=Brf/iLHCEHSUQDSz8YvbHj4Leho2CrVfUAjhO1coR16GLbVM17TS5wd3/HxmEt0BqV
	TUJiCVR6pmEow/ipm2Eprg0nI6XiQCcrzwGHTjm+d4a1u7S+DZ/8M2JEVQlcBd86iCLW
	W1AwGJy/st+ylPUFG2DrsTs81J24eqJjY2SZ+5q/JRmKzcU+XAeeCA0H1yPvsj04wEVl
	J/hLN6pINn2DG7zBv6N5qOLSYH1dihbOes/8xaRoII9EJgQHWM4ewvvOgS9zlf3tay4O
	P1CtpF/yeOwxh9xYNGze8T5hm1Tu6bIs5W8js907SVB/HoqE4nAE72tNvuVQFZM0SP3g
	5ieg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TADBLE+FqdOLLSQByI1QfCxRgTIR+2DuW8ri/wJzEPE=;
	b=runF1QEc4vPW9NaP+Fm+WRlf1Jbnkwwn3xI2T94dVDE2ziAmD/BROS5xrM2c75+lNf
	xxjIENE7dR/P8ysozudKaYh2L8rY7F4x3MU1kQ0y6arlZgK6MtRRc0owJQfNCNtwOFiT
	QewjBb0xQRxizwNUeQe3zCw9WFpLnwqWk4UBkt96kbC662/tcreTTHIR4Po+2YDemQQn
	uASL4jWK8YVRvs/wSVE0VMP0CUgCYgr1gaC7zqcr7BVmkTiGoBZJPK5Aor9eR8pnOZOB
	xS8RoJ6xtXTp89pG4j/+2gjDmTfJZNSioScLu42E02POeEi+dE8vshrMZKCsPrg7mAAI
	qlPA==
X-Gm-Message-State: APjAAAVoRfiPoaHtRdplwNVavZsr9I2UC9VmL/QKwKFDdXS7Xzh7xdhK
	TVSGsfkf2qLeaUHUyVz2u/wuevRP/UJSjM5xrhI=
X-Google-Smtp-Source: APXvYqxNjRSRDteuNyJgsYLaTdBy98rFWgtTmIwBJ0FcXajcA6rIS5GH38b2ayOcvFBtE3Ia0KSmDhRGcFwQW9nNIUo=
X-Received: by 2002:a6b:8f47:: with SMTP id r68mr22489329iod.204.1562709673867;
	Tue, 09 Jul 2019 15:01:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Tue, 9 Jul 2019 15:01:13 -0700 (PDT)
In-Reply-To: <CAGAf8LwOkrn2TFRai_jnO7KO-7tJSrapXpnRPRWRgLcVOgdPcQ@mail.gmail.com>
References: <CAA=hcWREgSBse3oq8FhH2bCNcr5FC4SYTyeFuW9_b-KdTX1VGQ@mail.gmail.com>
	<CAGAf8Ly56LcA3wih1BOqi0rbm+z2nwonTi5=jBjjQ_+=55uQNg@mail.gmail.com>
	<CAA=hcWSrfdSbKdhDUznCJs2KvfhZPueCdZd6A+PdNXxLZsywkg@mail.gmail.com>
	<CAGAf8LwOkrn2TFRai_jnO7KO-7tJSrapXpnRPRWRgLcVOgdPcQ@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Wed, 10 Jul 2019 08:01:13 +1000
Message-ID: <CAA=hcWTskFKhMCDBfaX7taVWHe3ALgsTQJ=_fO4Q_WU3gHM+5A@mail.gmail.com>
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
X-List-Received-Date: Tue, 09 Jul 2019 22:01:16 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Zoran,

On 7/9/19, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
> Jupiter,
>
> I never read carefully the whole mechanism how to bundle kernel with
> initramfs in YOCTO.

Given Yocto reach features and powerful capacities, I would thought
there must be some simple mechanism to bundle the kernel with
initramfs which is an essential Linux feature, I would be surprised if
Yocto doesn't have that simple solution.

> I have there a description how to organize kernel image WITHOUT
> initramfs (only kernel image by itself) and separately initramfs as
> final stage, so I can do the tests with Lava, but I developed another
> meanings with such a configuration: some another way of testing
> various proofs of concepts.

Ideally, it should all be done in Yocto without separate external manual steps.

> What you are asking is a classical approach: kernel bundled with
> initramfs, which is called Dracut phase, before mounting HDD/SSD
> permanent rootfs... It is non-trivial process, controlled by various
> kernel scripts.

The popularity of initramfs will be beyond traditional PC world, Cloud
and HPC have already use it to boot in virtual computing. For embedded
system, it might not be the only way, but I am using it to burn imx6
nand.

> I also need to analyse this @ thread regarding what you have asked
> for... Maybe this is good time do to such a analysis! If?

I am keen to involve as well. Here is what I have a zImage-initrafs
built from OpenWrt:

$ file zImage-initrafs
zImage-initramfs: Linux kernel ARM boot executable zImage (little-endian)

It can be downloaded to imx6 to burn imx6 nand. I have my zImage built
from Yocto which failed to start rootfs (apparently not bundle the
rootfs well), I am still debugging it, will post more information if
you are interested.

Thank you.

- jupiter

> Zoran
> _______
>
> On Tue, Jul 9, 2019 at 1:47 PM JH <jupiter.hce@gmail.com> wrote:
>>
>> Thanks Zoran, I did see that link and your post to run mkimage. Did
>> you get zImage-initramfs? I have to admit, I lost in that long email
>> discussion with different approaches, I tried all set up, but there is
>> no zImage-initramfs to be generated, files built in deploy/images just
>> could not be used to run uuu on imx6 RAM.
>>
>> There is post for add KERNEL_INITRAMFS = "-initramfs", it looks like
>> very close to generate zImage-initramfs, but I could still not get it
>> :-(.
>>
>> Thank you very much.
>>
>> On 7/9/19, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
>> > Please, read the following thread:
>> > https://lists.yoctoproject.org/pipermail/yocto/2018-July/041680.html
>> >
>> > Zoran
>> > _______
>> >
>> > On Mon, Jul 8, 2019 at 11:43 PM JH <jupiter.hce@gmail.com> wrote:
>> >>
>> >> Hi,
>> >>
>> >> I have been stuck to build zImage-initramfs for weeks. I've read Yocto
>> >> latest document, but still failed to generate the initarmfs to run on
>> >> RAM. I added following statements in local.conf:
>> >>
>> >> UBOOT_CONFIG = "ram"
>> >> INITRAMFS_IMAGE_BUNDLE = "1"
>> >> DISTRO_FEATURES_append = " ram"
>> >> IMAGE_FSTYPES_append = " cpio.xz"
>> >>
>> >> It built to following images:
>> >>
>> >> dev-image.rootfs.cpio.xz
>> >> u-boot.imx-ram
>> >> zImage.bin
>> >>
>> >> If I extract the dev-image.rootfs.cpio.xz, it contains zImage at boot
>> >> directory.
>> >>
>> >> What I need is the zImage-initramfs to contain the rootfs in initramfs
>> >> format.
>> >>
>> >> I see there is document ramfs-rootfs-initramfs.txt, but it did not
>> >> mention how to generate zImage-initramfs.
>> >>
>> >> There is core-image-minimal-initramfs.bb, but it cannot be run:
>> >>
>> >> $ MACHINE="imx6evk" DISTRO="imx6evk" bitbake
>> >> core-image-minimal-initramfs
>> >> ERROR: Nothing PROVIDES 'core-image-minimal-initramfs'
>> >> core-image-minimal-initramfs was skipped: incompatible with host
>> >> arm-oe-linux-gnueabi (not in COMPATIBLE_HOST)
>> >>
>> >> Could any one help what I am missing here and how to build the
>> >> zImage-initramfs?
>> >>
>> >> Thank you.
>> >>
>> >> Kind regards,
>> >>
>> >> - jh
>> >> --
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >
>

